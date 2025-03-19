; ModuleID = 'fs/sysfs/group.c'
source_filename = "fs/sysfs/group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_create_group: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_create_group ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_create_groups: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_create_groups ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_update_groups: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_update_groups ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_update_group: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_update_group ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_remove_group: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_remove_group ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_remove_groups: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_remove_groups ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_merge_group: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_merge_group ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_unmerge_group: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_unmerge_group ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_add_link_to_group: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_add_link_to_group ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_remove_link_from_group: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_remove_link_from_group ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_compat_only_sysfs_link_entry_to_kobj: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad compat_only_sysfs_link_entry_to_kobj ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_group_change_owner: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_group_change_owner ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_groups_change_owner: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_groups_change_owner ; .previous"

%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, ptr, ptr, ptr, ptr, ptr }
%struct.iattr = type { i32, i16, %union.anon.13, %union.anon.14, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%union.anon.13 = type { %struct.kuid_t }
%union.anon.14 = type { %struct.kgid_t }
%struct.timespec64 = type { i64, i64 }

@__UNIQUE_ID___addressable_sysfs_create_group261 = internal global ptr @sysfs_create_group, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_sysfs_create_groups262 = internal global ptr @sysfs_create_groups, section ".discard.addressable", align 8, !dbg !68
@__UNIQUE_ID___addressable_sysfs_update_groups263 = internal global ptr @sysfs_update_groups, section ".discard.addressable", align 8, !dbg !70
@__UNIQUE_ID___addressable_sysfs_update_group264 = internal global ptr @sysfs_update_group, section ".discard.addressable", align 8, !dbg !72
@.str = private unnamed_addr constant [47 x i8] c"\014sysfs group '%s' not found for kobject '%s'\0A\00", align 1, !dbg !74
@.str.1 = private unnamed_addr constant [17 x i8] c"fs/sysfs/group.c\00", align 1, !dbg !80
@__UNIQUE_ID___addressable_sysfs_remove_group265 = internal global ptr @sysfs_remove_group, section ".discard.addressable", align 8, !dbg !85
@__UNIQUE_ID___addressable_sysfs_remove_groups266 = internal global ptr @sysfs_remove_groups, section ".discard.addressable", align 8, !dbg !87
@__UNIQUE_ID___addressable_sysfs_merge_group267 = internal global ptr @sysfs_merge_group, section ".discard.addressable", align 8, !dbg !89
@__UNIQUE_ID___addressable_sysfs_unmerge_group268 = internal global ptr @sysfs_unmerge_group, section ".discard.addressable", align 8, !dbg !91
@__UNIQUE_ID___addressable_sysfs_add_link_to_group269 = internal global ptr @sysfs_add_link_to_group, section ".discard.addressable", align 8, !dbg !93
@__UNIQUE_ID___addressable_sysfs_remove_link_from_group270 = internal global ptr @sysfs_remove_link_from_group, section ".discard.addressable", align 8, !dbg !95
@sysfs_symlink_target_lock = external dso_local global %struct.spinlock, align 4
@__UNIQUE_ID___addressable_compat_only_sysfs_link_entry_to_kobj271 = internal global ptr @compat_only_sysfs_link_entry_to_kobj, section ".discard.addressable", align 8, !dbg !97
@__UNIQUE_ID___addressable_sysfs_group_change_owner272 = internal global ptr @sysfs_group_change_owner, section ".discard.addressable", align 8, !dbg !99
@__UNIQUE_ID___addressable_sysfs_groups_change_owner273 = internal global ptr @sysfs_groups_change_owner, section ".discard.addressable", align 8, !dbg !101
@.str.2 = private unnamed_addr constant [45 x i8] c"\014Can't update unknown attr grp name: %s/%s\0A\00", align 1, !dbg !103
@.str.3 = private unnamed_addr constant [39 x i8] c"Attribute %s: Invalid permissions 0%o\0A\00", align 1, !dbg !108
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID___addressable_sysfs_create_group261, ptr @__UNIQUE_ID___addressable_sysfs_create_groups262, ptr @__UNIQUE_ID___addressable_sysfs_update_groups263, ptr @__UNIQUE_ID___addressable_sysfs_update_group264, ptr @__UNIQUE_ID___addressable_sysfs_remove_group265, ptr @__UNIQUE_ID___addressable_sysfs_remove_groups266, ptr @__UNIQUE_ID___addressable_sysfs_merge_group267, ptr @__UNIQUE_ID___addressable_sysfs_unmerge_group268, ptr @__UNIQUE_ID___addressable_sysfs_add_link_to_group269, ptr @__UNIQUE_ID___addressable_sysfs_remove_link_from_group270, ptr @__UNIQUE_ID___addressable_compat_only_sysfs_link_entry_to_kobj271, ptr @__UNIQUE_ID___addressable_sysfs_group_change_owner272, ptr @__UNIQUE_ID___addressable_sysfs_groups_change_owner273], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef %grp) #0 align 16 !dbg !122 {
entry:
  %kobj.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3888, metadata !DIExpression()), !dbg !3890
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !3889, metadata !DIExpression()), !dbg !3891
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3892
  %1 = load ptr, ptr %grp.addr, align 8, !dbg !3893
  %call = call i32 @internal_create_group(ptr noundef %0, i32 noundef 0, ptr noundef %1) #10, !dbg !3894
  ret i32 %call, !dbg !3895
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @internal_create_group(ptr noundef %kobj, i32 noundef %update, ptr noundef %grp) #0 align 16 !dbg !3896 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %update.addr = alloca i32, align 4
  %grp.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %error = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3900, metadata !DIExpression()), !dbg !3913
  store i32 %update, ptr %update.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %update.addr, metadata !3901, metadata !DIExpression()), !dbg !3914
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !3902, metadata !DIExpression()), !dbg !3915
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #11, !dbg !3916
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !3903, metadata !DIExpression()), !dbg !3917
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #11, !dbg !3918
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !3904, metadata !DIExpression()), !dbg !3919
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #11, !dbg !3920
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !3905, metadata !DIExpression()), !dbg !3921
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #11, !dbg !3922
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3906, metadata !DIExpression()), !dbg !3923
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !3924
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3907, metadata !DIExpression()), !dbg !3924
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3924
  %tobool = icmp ne ptr %0, null, !dbg !3924
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3924

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %update.addr, align 4, !dbg !3924
  %tobool1 = icmp ne i32 %1, 0, !dbg !3924
  br i1 %tobool1, label %land.end, label %land.rhs, !dbg !3924

land.rhs:                                         ; preds = %lor.rhs
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !3924
  %sd = getelementptr inbounds %struct.kobject, ptr %2, i32 0, i32 5, !dbg !3924
  %3 = load ptr, ptr %sd, align 8, !dbg !3924
  %tobool2 = icmp ne ptr %3, null, !dbg !3924
  %lnot = xor i1 %tobool2, true, !dbg !3924
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %4 = phi i1 [ false, %lor.rhs ], [ %lnot, %land.rhs ], !dbg !3925
  br label %lor.end, !dbg !3924

lor.end:                                          ; preds = %land.end, %entry
  %5 = phi i1 [ true, %entry ], [ %4, %land.end ]
  %lnot3 = xor i1 %5, true, !dbg !3924
  %lnot4 = xor i1 %lnot3, true, !dbg !3924
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3924
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3924
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !3926
  %tobool5 = icmp ne i32 %6, 0, !dbg !3926
  %lnot6 = xor i1 %tobool5, true, !dbg !3926
  %lnot8 = xor i1 %lnot6, true, !dbg !3926
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !3926
  %conv = sext i32 %lnot.ext9 to i64, !dbg !3926
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3926
  %tobool10 = icmp ne i64 %expval, 0, !dbg !3926
  br i1 %tobool10, label %if.then, label %if.end, !dbg !3924

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !3926

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !3927
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3910, metadata !DIExpression()), !dbg !3927
  store i32 2305, ptr %__flags, align 4, !dbg !3927
  br label %do.body11, !dbg !3927

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !3928

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !3928

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !3927

do.body12:                                        ; preds = %do.end
  %7 = load i32, ptr %__flags, align 4, !dbg !3930
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 115, i32 %7, i64 12) #11, !dbg !3930, !srcloc !3932
  br label %do.cond13, !dbg !3930

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3930

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !3927

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !3933

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !3933

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !3926
  br label %do.cond18, !dbg !3927

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !3927

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !3927

if.end:                                           ; preds = %do.end19, %lor.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !3924
  %tobool20 = icmp ne i32 %8, 0, !dbg !3924
  %lnot21 = xor i1 %tobool20, true, !dbg !3924
  %lnot23 = xor i1 %lnot21, true, !dbg !3924
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !3924
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !3924
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !3924
  store i64 %expval26, ptr %tmp, align 8, !dbg !3926
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !3935
  %9 = load i64, ptr %tmp, align 8, !dbg !3924
  %tobool27 = icmp ne i64 %9, 0, !dbg !3935
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !3936

if.then28:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !3937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3937

if.end29:                                         ; preds = %if.end
  %10 = load i32, ptr %update.addr, align 4, !dbg !3938
  %tobool30 = icmp ne i32 %10, 0, !dbg !3938
  br i1 %tobool30, label %land.rhs31, label %land.end36, !dbg !3938

land.rhs31:                                       ; preds = %if.end29
  %11 = load ptr, ptr %kobj.addr, align 8, !dbg !3938
  %sd32 = getelementptr inbounds %struct.kobject, ptr %11, i32 0, i32 5, !dbg !3938
  %12 = load ptr, ptr %sd32, align 8, !dbg !3938
  %tobool33 = icmp ne ptr %12, null, !dbg !3938
  %lnot34 = xor i1 %tobool33, true, !dbg !3938
  br label %land.end36

land.end36:                                       ; preds = %land.rhs31, %if.end29
  %13 = phi i1 [ false, %if.end29 ], [ %lnot34, %land.rhs31 ], !dbg !3940
  %lnot37 = xor i1 %13, true, !dbg !3938
  %lnot39 = xor i1 %lnot37, true, !dbg !3938
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !3938
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !3938
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 0), !dbg !3938
  %tobool43 = icmp ne i64 %expval42, 0, !dbg !3938
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !3941

if.then44:                                        ; preds = %land.end36
  store i32 -22, ptr %retval, align 4, !dbg !3942
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3942

if.end45:                                         ; preds = %land.end36
  %14 = load ptr, ptr %grp.addr, align 8, !dbg !3943
  %attrs = getelementptr inbounds %struct.attribute_group, ptr %14, i32 0, i32 3, !dbg !3945
  %15 = load ptr, ptr %attrs, align 8, !dbg !3945
  %tobool46 = icmp ne ptr %15, null, !dbg !3943
  br i1 %tobool46, label %if.end50, label %land.lhs.true, !dbg !3946

land.lhs.true:                                    ; preds = %if.end45
  %16 = load ptr, ptr %grp.addr, align 8, !dbg !3947
  %bin_attrs = getelementptr inbounds %struct.attribute_group, ptr %16, i32 0, i32 4, !dbg !3948
  %17 = load ptr, ptr %bin_attrs, align 8, !dbg !3948
  %tobool47 = icmp ne ptr %17, null, !dbg !3947
  br i1 %tobool47, label %if.end50, label %if.then48, !dbg !3949

if.then48:                                        ; preds = %land.lhs.true
  store i32 0, ptr %tmp49, align 4, !dbg !3950
  %18 = load i32, ptr %tmp49, align 4, !dbg !3954
  store i32 0, ptr %retval, align 4, !dbg !3955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3955

if.end50:                                         ; preds = %land.lhs.true, %if.end45
  %19 = load ptr, ptr %kobj.addr, align 8, !dbg !3956
  call void @kobject_get_ownership(ptr noundef %19, ptr noundef %uid, ptr noundef %gid) #10, !dbg !3957
  %20 = load ptr, ptr %grp.addr, align 8, !dbg !3958
  %name = getelementptr inbounds %struct.attribute_group, ptr %20, i32 0, i32 0, !dbg !3960
  %21 = load ptr, ptr %name, align 8, !dbg !3960
  %tobool51 = icmp ne ptr %21, null, !dbg !3958
  br i1 %tobool51, label %if.then52, label %if.else83, !dbg !3961

if.then52:                                        ; preds = %if.end50
  %22 = load i32, ptr %update.addr, align 4, !dbg !3962
  %tobool53 = icmp ne i32 %22, 0, !dbg !3962
  br i1 %tobool53, label %if.then54, label %if.else, !dbg !3965

if.then54:                                        ; preds = %if.then52
  %23 = load ptr, ptr %kobj.addr, align 8, !dbg !3966
  %sd55 = getelementptr inbounds %struct.kobject, ptr %23, i32 0, i32 5, !dbg !3968
  %24 = load ptr, ptr %sd55, align 8, !dbg !3968
  %25 = load ptr, ptr %grp.addr, align 8, !dbg !3969
  %name56 = getelementptr inbounds %struct.attribute_group, ptr %25, i32 0, i32 0, !dbg !3970
  %26 = load ptr, ptr %name56, align 8, !dbg !3970
  %call = call ptr @kernfs_find_and_get(ptr noundef %24, ptr noundef %26) #10, !dbg !3971
  store ptr %call, ptr %kn, align 8, !dbg !3972
  %27 = load ptr, ptr %kn, align 8, !dbg !3973
  %tobool57 = icmp ne ptr %27, null, !dbg !3973
  br i1 %tobool57, label %if.end66, label %if.then58, !dbg !3975

if.then58:                                        ; preds = %if.then54
  br label %do.body59, !dbg !3976

do.body59:                                        ; preds = %if.then58
  br label %do.cond60, !dbg !3979

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !3979

do.end61:                                         ; preds = %do.cond60
  %28 = load ptr, ptr %kobj.addr, align 8, !dbg !3976
  %name63 = getelementptr inbounds %struct.kobject, ptr %28, i32 0, i32 0, !dbg !3976
  %29 = load ptr, ptr %name63, align 8, !dbg !3976
  %30 = load ptr, ptr %grp.addr, align 8, !dbg !3976
  %name64 = getelementptr inbounds %struct.attribute_group, ptr %30, i32 0, i32 0, !dbg !3976
  %31 = load ptr, ptr %name64, align 8, !dbg !3976
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %29, ptr noundef %31) #12, !dbg !3976
  store i32 %call65, ptr %tmp62, align 4, !dbg !3979
  %32 = load i32, ptr %tmp62, align 4, !dbg !3976
  store i32 -22, ptr %retval, align 4, !dbg !3981
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3981

if.end66:                                         ; preds = %if.then54
  br label %if.end82, !dbg !3982

if.else:                                          ; preds = %if.then52
  %33 = load ptr, ptr %kobj.addr, align 8, !dbg !3983
  %sd67 = getelementptr inbounds %struct.kobject, ptr %33, i32 0, i32 5, !dbg !3985
  %34 = load ptr, ptr %sd67, align 8, !dbg !3985
  %35 = load ptr, ptr %grp.addr, align 8, !dbg !3986
  %name68 = getelementptr inbounds %struct.attribute_group, ptr %35, i32 0, i32 0, !dbg !3987
  %36 = load ptr, ptr %name68, align 8, !dbg !3987
  %37 = load ptr, ptr %kobj.addr, align 8, !dbg !3988
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !3989
  %38 = load i32, ptr %coerce.dive, align 4, !dbg !3989
  %coerce.dive69 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !3989
  %39 = load i32, ptr %coerce.dive69, align 4, !dbg !3989
  %call70 = call ptr @kernfs_create_dir_ns(ptr noundef %34, ptr noundef %36, i16 noundef zeroext 493, i32 %38, i32 %39, ptr noundef %37, ptr noundef null) #10, !dbg !3989
  store ptr %call70, ptr %kn, align 8, !dbg !3990
  %40 = load ptr, ptr %kn, align 8, !dbg !3991
  %call71 = call zeroext i1 @IS_ERR(ptr noundef %40) #10, !dbg !3993
  br i1 %call71, label %if.then72, label %if.end81, !dbg !3994

if.then72:                                        ; preds = %if.else
  %41 = load ptr, ptr %kn, align 8, !dbg !3995
  %call73 = call i64 @PTR_ERR(ptr noundef %41) #10, !dbg !3998
  %cmp = icmp eq i64 %call73, -17, !dbg !3999
  br i1 %cmp, label %if.then75, label %if.end78, !dbg !4000

if.then75:                                        ; preds = %if.then72
  %42 = load ptr, ptr %kobj.addr, align 8, !dbg !4001
  %sd76 = getelementptr inbounds %struct.kobject, ptr %42, i32 0, i32 5, !dbg !4002
  %43 = load ptr, ptr %sd76, align 8, !dbg !4002
  %44 = load ptr, ptr %grp.addr, align 8, !dbg !4003
  %name77 = getelementptr inbounds %struct.attribute_group, ptr %44, i32 0, i32 0, !dbg !4004
  %45 = load ptr, ptr %name77, align 8, !dbg !4004
  call void @sysfs_warn_dup(ptr noundef %43, ptr noundef %45) #10, !dbg !4005
  br label %if.end78, !dbg !4005

if.end78:                                         ; preds = %if.then75, %if.then72
  %46 = load ptr, ptr %kn, align 8, !dbg !4006
  %call79 = call i64 @PTR_ERR(ptr noundef %46) #10, !dbg !4007
  %conv80 = trunc i64 %call79 to i32, !dbg !4007
  store i32 %conv80, ptr %retval, align 4, !dbg !4008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4008

if.end81:                                         ; preds = %if.else
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.end66
  br label %if.end85, !dbg !4009

if.else83:                                        ; preds = %if.end50
  %47 = load ptr, ptr %kobj.addr, align 8, !dbg !4010
  %sd84 = getelementptr inbounds %struct.kobject, ptr %47, i32 0, i32 5, !dbg !4012
  %48 = load ptr, ptr %sd84, align 8, !dbg !4012
  store ptr %48, ptr %kn, align 8, !dbg !4013
  br label %if.end85

if.end85:                                         ; preds = %if.else83, %if.end82
  %49 = load ptr, ptr %kn, align 8, !dbg !4014
  call void @kernfs_get(ptr noundef %49) #10, !dbg !4015
  %50 = load ptr, ptr %kn, align 8, !dbg !4016
  %51 = load ptr, ptr %kobj.addr, align 8, !dbg !4017
  %52 = load ptr, ptr %grp.addr, align 8, !dbg !4018
  %53 = load i32, ptr %update.addr, align 4, !dbg !4019
  %coerce.dive86 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4020
  %54 = load i32, ptr %coerce.dive86, align 4, !dbg !4020
  %coerce.dive87 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !4020
  %55 = load i32, ptr %coerce.dive87, align 4, !dbg !4020
  %call88 = call i32 @create_files(ptr noundef %50, ptr noundef %51, i32 %54, i32 %55, ptr noundef %52, i32 noundef %53) #10, !dbg !4020
  store i32 %call88, ptr %error, align 4, !dbg !4021
  %56 = load i32, ptr %error, align 4, !dbg !4022
  %tobool89 = icmp ne i32 %56, 0, !dbg !4022
  br i1 %tobool89, label %if.then90, label %if.end95, !dbg !4024

if.then90:                                        ; preds = %if.end85
  %57 = load ptr, ptr %grp.addr, align 8, !dbg !4025
  %name91 = getelementptr inbounds %struct.attribute_group, ptr %57, i32 0, i32 0, !dbg !4028
  %58 = load ptr, ptr %name91, align 8, !dbg !4028
  %tobool92 = icmp ne ptr %58, null, !dbg !4025
  br i1 %tobool92, label %if.then93, label %if.end94, !dbg !4029

if.then93:                                        ; preds = %if.then90
  %59 = load ptr, ptr %kn, align 8, !dbg !4030
  call void @kernfs_remove(ptr noundef %59) #10, !dbg !4031
  br label %if.end94, !dbg !4031

if.end94:                                         ; preds = %if.then93, %if.then90
  br label %if.end95, !dbg !4032

if.end95:                                         ; preds = %if.end94, %if.end85
  %60 = load ptr, ptr %kn, align 8, !dbg !4033
  call void @kernfs_put(ptr noundef %60) #10, !dbg !4034
  %61 = load ptr, ptr %grp.addr, align 8, !dbg !4035
  %name96 = getelementptr inbounds %struct.attribute_group, ptr %61, i32 0, i32 0, !dbg !4037
  %62 = load ptr, ptr %name96, align 8, !dbg !4037
  %tobool97 = icmp ne ptr %62, null, !dbg !4035
  br i1 %tobool97, label %land.lhs.true98, label %if.end101, !dbg !4038

land.lhs.true98:                                  ; preds = %if.end95
  %63 = load i32, ptr %update.addr, align 4, !dbg !4039
  %tobool99 = icmp ne i32 %63, 0, !dbg !4039
  br i1 %tobool99, label %if.then100, label %if.end101, !dbg !4040

if.then100:                                       ; preds = %land.lhs.true98
  %64 = load ptr, ptr %kn, align 8, !dbg !4041
  call void @kernfs_put(ptr noundef %64) #10, !dbg !4042
  br label %if.end101, !dbg !4042

if.end101:                                        ; preds = %if.then100, %land.lhs.true98, %if.end95
  %65 = load i32, ptr %error, align 4, !dbg !4043
  store i32 %65, ptr %retval, align 4, !dbg !4044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4044

cleanup:                                          ; preds = %if.end101, %if.end78, %do.end61, %if.then48, %if.then44, %if.then28
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #11, !dbg !4045
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #11, !dbg !4045
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #11, !dbg !4045
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #11, !dbg !4045
  %66 = load i32, ptr %retval, align 4, !dbg !4045
  ret i32 %66, !dbg !4045
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_create_groups(ptr noundef %kobj, ptr noundef %groups) #0 align 16 !dbg !4046 {
entry:
  %kobj.addr = alloca ptr, align 8
  %groups.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4050, metadata !DIExpression()), !dbg !4052
  store ptr %groups, ptr %groups.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %groups.addr, metadata !4051, metadata !DIExpression()), !dbg !4053
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4054
  %1 = load ptr, ptr %groups.addr, align 8, !dbg !4055
  %call = call i32 @internal_create_groups(ptr noundef %0, i32 noundef 0, ptr noundef %1) #10, !dbg !4056
  ret i32 %call, !dbg !4057
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @internal_create_groups(ptr noundef %kobj, i32 noundef %update, ptr noundef %groups) #0 align 16 !dbg !4058 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %update.addr = alloca i32, align 4
  %groups.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4062, metadata !DIExpression()), !dbg !4067
  store i32 %update, ptr %update.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %update.addr, metadata !4063, metadata !DIExpression()), !dbg !4068
  store ptr %groups, ptr %groups.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %groups.addr, metadata !4064, metadata !DIExpression()), !dbg !4069
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #11, !dbg !4070
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4065, metadata !DIExpression()), !dbg !4071
  store i32 0, ptr %error, align 4, !dbg !4071
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !4072
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4066, metadata !DIExpression()), !dbg !4073
  %0 = load ptr, ptr %groups.addr, align 8, !dbg !4074
  %tobool = icmp ne ptr %0, null, !dbg !4074
  br i1 %tobool, label %if.end, label %if.then, !dbg !4076

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4077
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4077

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !4078
  br label %for.cond, !dbg !4080

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load ptr, ptr %groups.addr, align 8, !dbg !4081
  %2 = load i32, ptr %i, align 4, !dbg !4083
  %idxprom = sext i32 %2 to i64, !dbg !4081
  %arrayidx = getelementptr ptr, ptr %1, i64 %idxprom, !dbg !4081
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !4081
  %tobool1 = icmp ne ptr %3, null, !dbg !4084
  br i1 %tobool1, label %for.body, label %for.end, !dbg !4084

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %kobj.addr, align 8, !dbg !4085
  %5 = load i32, ptr %update.addr, align 4, !dbg !4087
  %6 = load ptr, ptr %groups.addr, align 8, !dbg !4088
  %7 = load i32, ptr %i, align 4, !dbg !4089
  %idxprom2 = sext i32 %7 to i64, !dbg !4088
  %arrayidx3 = getelementptr ptr, ptr %6, i64 %idxprom2, !dbg !4088
  %8 = load ptr, ptr %arrayidx3, align 8, !dbg !4088
  %call = call i32 @internal_create_group(ptr noundef %4, i32 noundef %5, ptr noundef %8) #10, !dbg !4090
  store i32 %call, ptr %error, align 4, !dbg !4091
  %9 = load i32, ptr %error, align 4, !dbg !4092
  %tobool4 = icmp ne i32 %9, 0, !dbg !4092
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !4094

if.then5:                                         ; preds = %for.body
  br label %while.cond, !dbg !4095

while.cond:                                       ; preds = %while.body, %if.then5
  %10 = load i32, ptr %i, align 4, !dbg !4097
  %dec = add i32 %10, -1, !dbg !4097
  store i32 %dec, ptr %i, align 4, !dbg !4097
  %cmp = icmp sge i32 %dec, 0, !dbg !4098
  br i1 %cmp, label %while.body, label %while.end, !dbg !4095

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %kobj.addr, align 8, !dbg !4099
  %12 = load ptr, ptr %groups.addr, align 8, !dbg !4100
  %13 = load i32, ptr %i, align 4, !dbg !4101
  %idxprom6 = sext i32 %13 to i64, !dbg !4100
  %arrayidx7 = getelementptr ptr, ptr %12, i64 %idxprom6, !dbg !4100
  %14 = load ptr, ptr %arrayidx7, align 8, !dbg !4100
  call void @sysfs_remove_group(ptr noundef %11, ptr noundef %14) #10, !dbg !4102
  br label %while.cond, !dbg !4095, !llvm.loop !4103

while.end:                                        ; preds = %while.cond
  br label %for.end, !dbg !4107

if.end8:                                          ; preds = %for.body
  br label %for.inc, !dbg !4108

for.inc:                                          ; preds = %if.end8
  %15 = load i32, ptr %i, align 4, !dbg !4109
  %inc = add i32 %15, 1, !dbg !4109
  store i32 %inc, ptr %i, align 4, !dbg !4109
  br label %for.cond, !dbg !4110, !llvm.loop !4111

for.end:                                          ; preds = %while.end, %for.cond
  %16 = load i32, ptr %error, align 4, !dbg !4113
  store i32 %16, ptr %retval, align 4, !dbg !4114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4114

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !4115
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #11, !dbg !4115
  %17 = load i32, ptr %retval, align 4, !dbg !4115
  ret i32 %17, !dbg !4115
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_update_groups(ptr noundef %kobj, ptr noundef %groups) #0 align 16 !dbg !4116 {
entry:
  %kobj.addr = alloca ptr, align 8
  %groups.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4118, metadata !DIExpression()), !dbg !4120
  store ptr %groups, ptr %groups.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %groups.addr, metadata !4119, metadata !DIExpression()), !dbg !4121
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4122
  %1 = load ptr, ptr %groups.addr, align 8, !dbg !4123
  %call = call i32 @internal_create_groups(ptr noundef %0, i32 noundef 1, ptr noundef %1) #10, !dbg !4124
  ret i32 %call, !dbg !4125
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_update_group(ptr noundef %kobj, ptr noundef %grp) #0 align 16 !dbg !4126 {
entry:
  %kobj.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4128, metadata !DIExpression()), !dbg !4130
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !4129, metadata !DIExpression()), !dbg !4131
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4132
  %1 = load ptr, ptr %grp.addr, align 8, !dbg !4133
  %call = call i32 @internal_create_group(ptr noundef %0, i32 noundef 1, ptr noundef %1) #10, !dbg !4134
  ret i32 %call, !dbg !4135
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sysfs_remove_group(ptr noundef %kobj, ptr noundef %grp) #0 align 16 !dbg !4136 {
entry:
  %kobj.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4140, metadata !DIExpression()), !dbg !4154
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !4141, metadata !DIExpression()), !dbg !4155
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #11, !dbg !4156
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4142, metadata !DIExpression()), !dbg !4157
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4158
  %sd = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !4159
  %1 = load ptr, ptr %sd, align 8, !dbg !4159
  store ptr %1, ptr %parent, align 8, !dbg !4157
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #11, !dbg !4160
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !4143, metadata !DIExpression()), !dbg !4161
  %2 = load ptr, ptr %grp.addr, align 8, !dbg !4162
  %name = getelementptr inbounds %struct.attribute_group, ptr %2, i32 0, i32 0, !dbg !4163
  %3 = load ptr, ptr %name, align 8, !dbg !4163
  %tobool = icmp ne ptr %3, null, !dbg !4162
  br i1 %tobool, label %if.then, label %if.else, !dbg !4164

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %parent, align 8, !dbg !4165
  %5 = load ptr, ptr %grp.addr, align 8, !dbg !4166
  %name1 = getelementptr inbounds %struct.attribute_group, ptr %5, i32 0, i32 0, !dbg !4167
  %6 = load ptr, ptr %name1, align 8, !dbg !4167
  %call = call ptr @kernfs_find_and_get(ptr noundef %4, ptr noundef %6) #10, !dbg !4168
  store ptr %call, ptr %kn, align 8, !dbg !4169
  %7 = load ptr, ptr %kn, align 8, !dbg !4170
  %tobool2 = icmp ne ptr %7, null, !dbg !4170
  br i1 %tobool2, label %if.end41, label %if.then3, !dbg !4171

if.then3:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !4172
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4144, metadata !DIExpression()), !dbg !4172
  %8 = load ptr, ptr %kn, align 8, !dbg !4172
  %tobool4 = icmp ne ptr %8, null, !dbg !4172
  %lnot = xor i1 %tobool4, true, !dbg !4172
  %lnot5 = xor i1 %lnot, true, !dbg !4172
  %lnot6 = xor i1 %lnot5, true, !dbg !4172
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4172
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4172
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !4173
  %tobool7 = icmp ne i32 %9, 0, !dbg !4173
  %lnot8 = xor i1 %tobool7, true, !dbg !4173
  %lnot10 = xor i1 %lnot8, true, !dbg !4173
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !4173
  %conv = sext i32 %lnot.ext11 to i64, !dbg !4173
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4173
  %tobool12 = icmp ne i64 %expval, 0, !dbg !4173
  br i1 %tobool12, label %if.then13, label %if.end, !dbg !4172

if.then13:                                        ; preds = %if.then3
  br label %do.body, !dbg !4173

do.body:                                          ; preds = %if.then13
  br label %do.body14, !dbg !4174

do.body14:                                        ; preds = %do.body
  br label %do.cond, !dbg !4175

do.cond:                                          ; preds = %do.body14
  br label %do.end, !dbg !4175

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %grp.addr, align 8, !dbg !4174
  %name15 = getelementptr inbounds %struct.attribute_group, ptr %10, i32 0, i32 0, !dbg !4174
  %11 = load ptr, ptr %name15, align 8, !dbg !4174
  %12 = load ptr, ptr %kobj.addr, align 8, !dbg !4174
  %call16 = call ptr @kobject_name(ptr noundef %12) #10, !dbg !4174
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, ptr noundef %11, ptr noundef %call16) #10, !dbg !4174
  br label %do.body17, !dbg !4174

do.body17:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !4177
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4150, metadata !DIExpression()), !dbg !4177
  store i32 2313, ptr %__flags, align 4, !dbg !4177
  br label %do.body18, !dbg !4177

do.body18:                                        ; preds = %do.body17
  br label %do.cond19, !dbg !4178

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !4178

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !4177

do.body21:                                        ; preds = %do.end20
  %13 = load i32, ptr %__flags, align 4, !dbg !4180
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 284, i32 %13, i64 12) #11, !dbg !4180, !srcloc !4182
  br label %do.cond22, !dbg !4180

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !4180

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !4177

do.body24:                                        ; preds = %do.end23
  br label %do.cond25, !dbg !4183

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !4183

do.end26:                                         ; preds = %do.cond25
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !4174
  br label %do.cond27, !dbg !4177

do.cond27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !4177

do.end28:                                         ; preds = %do.cond27
  br label %do.body29, !dbg !4174

do.body29:                                        ; preds = %do.end28
  br label %do.cond30, !dbg !4185

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !4185

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !4174

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !4174

do.end33:                                         ; preds = %do.cond32
  br label %if.end, !dbg !4174

if.end:                                           ; preds = %do.end33, %if.then3
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !4172
  %tobool34 = icmp ne i32 %14, 0, !dbg !4172
  %lnot35 = xor i1 %tobool34, true, !dbg !4172
  %lnot37 = xor i1 %lnot35, true, !dbg !4172
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !4172
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !4172
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !4172
  store i64 %expval40, ptr %tmp, align 8, !dbg !4173
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !4187
  %15 = load i64, ptr %tmp, align 8, !dbg !4172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4188

if.end41:                                         ; preds = %if.then
  br label %if.end42, !dbg !4189

if.else:                                          ; preds = %entry
  %16 = load ptr, ptr %parent, align 8, !dbg !4190
  store ptr %16, ptr %kn, align 8, !dbg !4192
  %17 = load ptr, ptr %kn, align 8, !dbg !4193
  call void @kernfs_get(ptr noundef %17) #10, !dbg !4194
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.end41
  %18 = load ptr, ptr %kn, align 8, !dbg !4195
  %19 = load ptr, ptr %grp.addr, align 8, !dbg !4196
  call void @remove_files(ptr noundef %18, ptr noundef %19) #10, !dbg !4197
  %20 = load ptr, ptr %grp.addr, align 8, !dbg !4198
  %name43 = getelementptr inbounds %struct.attribute_group, ptr %20, i32 0, i32 0, !dbg !4200
  %21 = load ptr, ptr %name43, align 8, !dbg !4200
  %tobool44 = icmp ne ptr %21, null, !dbg !4198
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !4201

if.then45:                                        ; preds = %if.end42
  %22 = load ptr, ptr %kn, align 8, !dbg !4202
  call void @kernfs_remove(ptr noundef %22) #10, !dbg !4203
  br label %if.end46, !dbg !4203

if.end46:                                         ; preds = %if.then45, %if.end42
  %23 = load ptr, ptr %kn, align 8, !dbg !4204
  call void @kernfs_put(ptr noundef %23) #10, !dbg !4205
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4206
  br label %cleanup, !dbg !4206

cleanup:                                          ; preds = %if.end46, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #11, !dbg !4206
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #11, !dbg !4206
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4206

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_find_and_get(ptr noundef %kn, ptr noundef %name) #3 align 16 !dbg !4207 {
entry:
  %kn.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !4211, metadata !DIExpression()), !dbg !4213
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4212, metadata !DIExpression()), !dbg !4214
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !4215
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4216
  %call = call ptr @kernfs_find_and_get_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #10, !dbg !4217
  ret ptr %call, !dbg !4218
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4219 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #3 align 16 !dbg !4222 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4224, metadata !DIExpression()), !dbg !4225
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4226
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !4227
  %1 = load ptr, ptr %name, align 8, !dbg !4227
  ret ptr %1, !dbg !4228
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4229 dso_local void @kernfs_get(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @remove_files(ptr noundef %parent, ptr noundef %grp) #0 align 16 !dbg !4232 {
entry:
  %parent.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %bin_attr = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4236, metadata !DIExpression()), !dbg !4244
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !4237, metadata !DIExpression()), !dbg !4245
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #11, !dbg !4246
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !4238, metadata !DIExpression()), !dbg !4247
  call void @llvm.lifetime.start.p0(i64 8, ptr %bin_attr) #11, !dbg !4248
  call void @llvm.dbg.declare(metadata ptr %bin_attr, metadata !4241, metadata !DIExpression()), !dbg !4249
  %0 = load ptr, ptr %grp.addr, align 8, !dbg !4250
  %attrs = getelementptr inbounds %struct.attribute_group, ptr %0, i32 0, i32 3, !dbg !4252
  %1 = load ptr, ptr %attrs, align 8, !dbg !4252
  %tobool = icmp ne ptr %1, null, !dbg !4250
  br i1 %tobool, label %if.then, label %if.end, !dbg !4253

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %grp.addr, align 8, !dbg !4254
  %attrs1 = getelementptr inbounds %struct.attribute_group, ptr %2, i32 0, i32 3, !dbg !4256
  %3 = load ptr, ptr %attrs1, align 8, !dbg !4256
  store ptr %3, ptr %attr, align 8, !dbg !4257
  br label %for.cond, !dbg !4258

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %attr, align 8, !dbg !4259
  %5 = load ptr, ptr %4, align 8, !dbg !4261
  %tobool2 = icmp ne ptr %5, null, !dbg !4262
  br i1 %tobool2, label %for.body, label %for.end, !dbg !4262

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !4263
  %7 = load ptr, ptr %attr, align 8, !dbg !4264
  %8 = load ptr, ptr %7, align 8, !dbg !4265
  %name = getelementptr inbounds %struct.attribute, ptr %8, i32 0, i32 0, !dbg !4266
  %9 = load ptr, ptr %name, align 8, !dbg !4266
  %call = call i32 @kernfs_remove_by_name(ptr noundef %6, ptr noundef %9) #10, !dbg !4267
  br label %for.inc, !dbg !4267

for.inc:                                          ; preds = %for.body
  %10 = load ptr, ptr %attr, align 8, !dbg !4268
  %incdec.ptr = getelementptr ptr, ptr %10, i32 1, !dbg !4268
  store ptr %incdec.ptr, ptr %attr, align 8, !dbg !4268
  br label %for.cond, !dbg !4269, !llvm.loop !4270

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !4271

if.end:                                           ; preds = %for.end, %entry
  %11 = load ptr, ptr %grp.addr, align 8, !dbg !4272
  %bin_attrs = getelementptr inbounds %struct.attribute_group, ptr %11, i32 0, i32 4, !dbg !4274
  %12 = load ptr, ptr %bin_attrs, align 8, !dbg !4274
  %tobool3 = icmp ne ptr %12, null, !dbg !4272
  br i1 %tobool3, label %if.then4, label %if.end15, !dbg !4275

if.then4:                                         ; preds = %if.end
  %13 = load ptr, ptr %grp.addr, align 8, !dbg !4276
  %bin_attrs5 = getelementptr inbounds %struct.attribute_group, ptr %13, i32 0, i32 4, !dbg !4278
  %14 = load ptr, ptr %bin_attrs5, align 8, !dbg !4278
  store ptr %14, ptr %bin_attr, align 8, !dbg !4279
  br label %for.cond6, !dbg !4280

for.cond6:                                        ; preds = %for.inc12, %if.then4
  %15 = load ptr, ptr %bin_attr, align 8, !dbg !4281
  %16 = load ptr, ptr %15, align 8, !dbg !4283
  %tobool7 = icmp ne ptr %16, null, !dbg !4284
  br i1 %tobool7, label %for.body8, label %for.end14, !dbg !4284

for.body8:                                        ; preds = %for.cond6
  %17 = load ptr, ptr %parent.addr, align 8, !dbg !4285
  %18 = load ptr, ptr %bin_attr, align 8, !dbg !4286
  %19 = load ptr, ptr %18, align 8, !dbg !4287
  %attr9 = getelementptr inbounds %struct.bin_attribute, ptr %19, i32 0, i32 0, !dbg !4288
  %name10 = getelementptr inbounds %struct.attribute, ptr %attr9, i32 0, i32 0, !dbg !4289
  %20 = load ptr, ptr %name10, align 8, !dbg !4289
  %call11 = call i32 @kernfs_remove_by_name(ptr noundef %17, ptr noundef %20) #10, !dbg !4290
  br label %for.inc12, !dbg !4290

for.inc12:                                        ; preds = %for.body8
  %21 = load ptr, ptr %bin_attr, align 8, !dbg !4291
  %incdec.ptr13 = getelementptr ptr, ptr %21, i32 1, !dbg !4291
  store ptr %incdec.ptr13, ptr %bin_attr, align 8, !dbg !4291
  br label %for.cond6, !dbg !4292, !llvm.loop !4293

for.end14:                                        ; preds = %for.cond6
  br label %if.end15, !dbg !4294

if.end15:                                         ; preds = %for.end14, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %bin_attr) #11, !dbg !4295
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #11, !dbg !4295
  ret void, !dbg !4295
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4296 dso_local void @kernfs_remove(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4297 dso_local void @kernfs_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sysfs_remove_groups(ptr noundef %kobj, ptr noundef %groups) #0 align 16 !dbg !4298 {
entry:
  %kobj.addr = alloca ptr, align 8
  %groups.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4302, metadata !DIExpression()), !dbg !4305
  store ptr %groups, ptr %groups.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %groups.addr, metadata !4303, metadata !DIExpression()), !dbg !4306
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !4307
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4304, metadata !DIExpression()), !dbg !4308
  %0 = load ptr, ptr %groups.addr, align 8, !dbg !4309
  %tobool = icmp ne ptr %0, null, !dbg !4309
  br i1 %tobool, label %if.end, label %if.then, !dbg !4311

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4312

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !4313
  br label %for.cond, !dbg !4315

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load ptr, ptr %groups.addr, align 8, !dbg !4316
  %2 = load i32, ptr %i, align 4, !dbg !4318
  %idxprom = sext i32 %2 to i64, !dbg !4316
  %arrayidx = getelementptr ptr, ptr %1, i64 %idxprom, !dbg !4316
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !4316
  %tobool1 = icmp ne ptr %3, null, !dbg !4319
  br i1 %tobool1, label %for.body, label %for.end, !dbg !4319

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %kobj.addr, align 8, !dbg !4320
  %5 = load ptr, ptr %groups.addr, align 8, !dbg !4321
  %6 = load i32, ptr %i, align 4, !dbg !4322
  %idxprom2 = sext i32 %6 to i64, !dbg !4321
  %arrayidx3 = getelementptr ptr, ptr %5, i64 %idxprom2, !dbg !4321
  %7 = load ptr, ptr %arrayidx3, align 8, !dbg !4321
  call void @sysfs_remove_group(ptr noundef %4, ptr noundef %7) #10, !dbg !4323
  br label %for.inc, !dbg !4323

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !4324
  %inc = add i32 %8, 1, !dbg !4324
  store i32 %inc, ptr %i, align 4, !dbg !4324
  br label %for.cond, !dbg !4325, !llvm.loop !4326

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4328
  br label %cleanup, !dbg !4328

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !4328
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4328

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_merge_group(ptr noundef %kobj, ptr noundef %grp) #0 align 16 !dbg !4329 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %error = alloca i32, align 4
  %attr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4331, metadata !DIExpression()), !dbg !4339
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !4332, metadata !DIExpression()), !dbg !4340
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #11, !dbg !4341
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4333, metadata !DIExpression()), !dbg !4342
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #11, !dbg !4343
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4334, metadata !DIExpression()), !dbg !4344
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #11, !dbg !4345
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !4335, metadata !DIExpression()), !dbg !4346
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #11, !dbg !4347
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4336, metadata !DIExpression()), !dbg !4348
  store i32 0, ptr %error, align 4, !dbg !4348
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #11, !dbg !4349
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !4337, metadata !DIExpression()), !dbg !4350
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !4351
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4338, metadata !DIExpression()), !dbg !4352
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4353
  %sd = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !4354
  %1 = load ptr, ptr %sd, align 8, !dbg !4354
  %2 = load ptr, ptr %grp.addr, align 8, !dbg !4355
  %name = getelementptr inbounds %struct.attribute_group, ptr %2, i32 0, i32 0, !dbg !4356
  %3 = load ptr, ptr %name, align 8, !dbg !4356
  %call = call ptr @kernfs_find_and_get(ptr noundef %1, ptr noundef %3) #10, !dbg !4357
  store ptr %call, ptr %parent, align 8, !dbg !4358
  %4 = load ptr, ptr %parent, align 8, !dbg !4359
  %tobool = icmp ne ptr %4, null, !dbg !4359
  br i1 %tobool, label %if.end, label %if.then, !dbg !4361

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !4362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4362

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %kobj.addr, align 8, !dbg !4363
  call void @kobject_get_ownership(ptr noundef %5, ptr noundef %uid, ptr noundef %gid) #10, !dbg !4364
  store i32 0, ptr %i, align 4, !dbg !4365
  %6 = load ptr, ptr %grp.addr, align 8, !dbg !4367
  %attrs = getelementptr inbounds %struct.attribute_group, ptr %6, i32 0, i32 3, !dbg !4368
  %7 = load ptr, ptr %attrs, align 8, !dbg !4368
  store ptr %7, ptr %attr, align 8, !dbg !4369
  br label %for.cond, !dbg !4370

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %attr, align 8, !dbg !4371
  %9 = load ptr, ptr %8, align 8, !dbg !4373
  %tobool1 = icmp ne ptr %9, null, !dbg !4373
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !4374

land.rhs:                                         ; preds = %for.cond
  %10 = load i32, ptr %error, align 4, !dbg !4375
  %tobool2 = icmp ne i32 %10, 0, !dbg !4376
  %lnot = xor i1 %tobool2, true, !dbg !4376
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ], !dbg !4377
  br i1 %11, label %for.body, label %for.end, !dbg !4378

for.body:                                         ; preds = %land.end
  %12 = load ptr, ptr %parent, align 8, !dbg !4379
  %13 = load ptr, ptr %attr, align 8, !dbg !4380
  %14 = load ptr, ptr %13, align 8, !dbg !4381
  %15 = load ptr, ptr %attr, align 8, !dbg !4382
  %16 = load ptr, ptr %15, align 8, !dbg !4383
  %mode = getelementptr inbounds %struct.attribute, ptr %16, i32 0, i32 1, !dbg !4384
  %17 = load i16, ptr %mode, align 8, !dbg !4384
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4385
  %18 = load i32, ptr %coerce.dive, align 4, !dbg !4385
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !4385
  %19 = load i32, ptr %coerce.dive3, align 4, !dbg !4385
  %call4 = call i32 @sysfs_add_file_mode_ns(ptr noundef %12, ptr noundef %14, i16 noundef zeroext %17, i32 %18, i32 %19, ptr noundef null) #10, !dbg !4385
  store i32 %call4, ptr %error, align 4, !dbg !4386
  br label %for.inc, !dbg !4387

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4, !dbg !4388
  %inc = add i32 %20, 1, !dbg !4388
  store i32 %inc, ptr %i, align 4, !dbg !4388
  %21 = load ptr, ptr %attr, align 8, !dbg !4389
  %incdec.ptr = getelementptr ptr, ptr %21, i32 1, !dbg !4389
  store ptr %incdec.ptr, ptr %attr, align 8, !dbg !4389
  br label %for.cond, !dbg !4390, !llvm.loop !4391

for.end:                                          ; preds = %land.end
  %22 = load i32, ptr %error, align 4, !dbg !4393
  %tobool5 = icmp ne i32 %22, 0, !dbg !4393
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !4395

if.then6:                                         ; preds = %for.end
  br label %while.cond, !dbg !4396

while.cond:                                       ; preds = %while.body, %if.then6
  %23 = load i32, ptr %i, align 4, !dbg !4398
  %dec = add i32 %23, -1, !dbg !4398
  store i32 %dec, ptr %i, align 4, !dbg !4398
  %cmp = icmp sge i32 %dec, 0, !dbg !4399
  br i1 %cmp, label %while.body, label %while.end, !dbg !4396

while.body:                                       ; preds = %while.cond
  %24 = load ptr, ptr %parent, align 8, !dbg !4400
  %25 = load ptr, ptr %attr, align 8, !dbg !4401
  %incdec.ptr7 = getelementptr ptr, ptr %25, i32 -1, !dbg !4401
  store ptr %incdec.ptr7, ptr %attr, align 8, !dbg !4401
  %26 = load ptr, ptr %incdec.ptr7, align 8, !dbg !4402
  %name8 = getelementptr inbounds %struct.attribute, ptr %26, i32 0, i32 0, !dbg !4403
  %27 = load ptr, ptr %name8, align 8, !dbg !4403
  %call9 = call i32 @kernfs_remove_by_name(ptr noundef %24, ptr noundef %27) #10, !dbg !4404
  br label %while.cond, !dbg !4396, !llvm.loop !4405

while.end:                                        ; preds = %while.cond
  br label %if.end10, !dbg !4407

if.end10:                                         ; preds = %while.end, %for.end
  %28 = load ptr, ptr %parent, align 8, !dbg !4408
  call void @kernfs_put(ptr noundef %28) #10, !dbg !4409
  %29 = load i32, ptr %error, align 4, !dbg !4410
  store i32 %29, ptr %retval, align 4, !dbg !4411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4411

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !4412
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #11, !dbg !4412
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #11, !dbg !4412
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #11, !dbg !4412
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #11, !dbg !4412
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #11, !dbg !4412
  %30 = load i32, ptr %retval, align 4, !dbg !4412
  ret i32 %30, !dbg !4412
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4413 dso_local void @kobject_get_ownership(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4414 dso_local i32 @sysfs_add_file_mode_ns(ptr noundef, ptr noundef, i16 noundef zeroext, i32, i32, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_remove_by_name(ptr noundef %parent, ptr noundef %name) #3 align 16 !dbg !4420 {
entry:
  %parent.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4424, metadata !DIExpression()), !dbg !4426
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4425, metadata !DIExpression()), !dbg !4427
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !4428
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4429
  %call = call i32 @kernfs_remove_by_name_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #10, !dbg !4430
  ret i32 %call, !dbg !4431
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sysfs_unmerge_group(ptr noundef %kobj, ptr noundef %grp) #0 align 16 !dbg !4432 {
entry:
  %kobj.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %attr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4434, metadata !DIExpression()), !dbg !4438
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !4435, metadata !DIExpression()), !dbg !4439
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #11, !dbg !4440
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4436, metadata !DIExpression()), !dbg !4441
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #11, !dbg !4442
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !4437, metadata !DIExpression()), !dbg !4443
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4444
  %sd = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !4445
  %1 = load ptr, ptr %sd, align 8, !dbg !4445
  %2 = load ptr, ptr %grp.addr, align 8, !dbg !4446
  %name = getelementptr inbounds %struct.attribute_group, ptr %2, i32 0, i32 0, !dbg !4447
  %3 = load ptr, ptr %name, align 8, !dbg !4447
  %call = call ptr @kernfs_find_and_get(ptr noundef %1, ptr noundef %3) #10, !dbg !4448
  store ptr %call, ptr %parent, align 8, !dbg !4449
  %4 = load ptr, ptr %parent, align 8, !dbg !4450
  %tobool = icmp ne ptr %4, null, !dbg !4450
  br i1 %tobool, label %if.then, label %if.end, !dbg !4452

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %grp.addr, align 8, !dbg !4453
  %attrs = getelementptr inbounds %struct.attribute_group, ptr %5, i32 0, i32 3, !dbg !4456
  %6 = load ptr, ptr %attrs, align 8, !dbg !4456
  store ptr %6, ptr %attr, align 8, !dbg !4457
  br label %for.cond, !dbg !4458

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load ptr, ptr %attr, align 8, !dbg !4459
  %8 = load ptr, ptr %7, align 8, !dbg !4461
  %tobool1 = icmp ne ptr %8, null, !dbg !4462
  br i1 %tobool1, label %for.body, label %for.end, !dbg !4462

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %parent, align 8, !dbg !4463
  %10 = load ptr, ptr %attr, align 8, !dbg !4464
  %11 = load ptr, ptr %10, align 8, !dbg !4465
  %name2 = getelementptr inbounds %struct.attribute, ptr %11, i32 0, i32 0, !dbg !4466
  %12 = load ptr, ptr %name2, align 8, !dbg !4466
  %call3 = call i32 @kernfs_remove_by_name(ptr noundef %9, ptr noundef %12) #10, !dbg !4467
  br label %for.inc, !dbg !4467

for.inc:                                          ; preds = %for.body
  %13 = load ptr, ptr %attr, align 8, !dbg !4468
  %incdec.ptr = getelementptr ptr, ptr %13, i32 1, !dbg !4468
  store ptr %incdec.ptr, ptr %attr, align 8, !dbg !4468
  br label %for.cond, !dbg !4469, !llvm.loop !4470

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %parent, align 8, !dbg !4472
  call void @kernfs_put(ptr noundef %14) #10, !dbg !4473
  br label %if.end, !dbg !4474

if.end:                                           ; preds = %for.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #11, !dbg !4475
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #11, !dbg !4475
  ret void, !dbg !4475
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_add_link_to_group(ptr noundef %kobj, ptr noundef %group_name, ptr noundef %target, ptr noundef %link_name) #0 align 16 !dbg !4476 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %group_name.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %link_name.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4480, metadata !DIExpression()), !dbg !4486
  store ptr %group_name, ptr %group_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group_name.addr, metadata !4481, metadata !DIExpression()), !dbg !4487
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !4482, metadata !DIExpression()), !dbg !4488
  store ptr %link_name, ptr %link_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %link_name.addr, metadata !4483, metadata !DIExpression()), !dbg !4489
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #11, !dbg !4490
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4484, metadata !DIExpression()), !dbg !4491
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #11, !dbg !4492
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4485, metadata !DIExpression()), !dbg !4493
  store i32 0, ptr %error, align 4, !dbg !4493
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4494
  %sd = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !4495
  %1 = load ptr, ptr %sd, align 8, !dbg !4495
  %2 = load ptr, ptr %group_name.addr, align 8, !dbg !4496
  %call = call ptr @kernfs_find_and_get(ptr noundef %1, ptr noundef %2) #10, !dbg !4497
  store ptr %call, ptr %parent, align 8, !dbg !4498
  %3 = load ptr, ptr %parent, align 8, !dbg !4499
  %tobool = icmp ne ptr %3, null, !dbg !4499
  br i1 %tobool, label %if.end, label %if.then, !dbg !4501

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !4502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4502

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %parent, align 8, !dbg !4503
  %5 = load ptr, ptr %target.addr, align 8, !dbg !4504
  %6 = load ptr, ptr %link_name.addr, align 8, !dbg !4505
  %call1 = call i32 @sysfs_create_link_sd(ptr noundef %4, ptr noundef %5, ptr noundef %6) #10, !dbg !4506
  store i32 %call1, ptr %error, align 4, !dbg !4507
  %7 = load ptr, ptr %parent, align 8, !dbg !4508
  call void @kernfs_put(ptr noundef %7) #10, !dbg !4509
  %8 = load i32, ptr %error, align 4, !dbg !4510
  store i32 %8, ptr %retval, align 4, !dbg !4511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4511

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #11, !dbg !4512
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #11, !dbg !4512
  %9 = load i32, ptr %retval, align 4, !dbg !4512
  ret i32 %9, !dbg !4512
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4513 dso_local i32 @sysfs_create_link_sd(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sysfs_remove_link_from_group(ptr noundef %kobj, ptr noundef %group_name, ptr noundef %link_name) #0 align 16 !dbg !4516 {
entry:
  %kobj.addr = alloca ptr, align 8
  %group_name.addr = alloca ptr, align 8
  %link_name.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4520, metadata !DIExpression()), !dbg !4524
  store ptr %group_name, ptr %group_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group_name.addr, metadata !4521, metadata !DIExpression()), !dbg !4525
  store ptr %link_name, ptr %link_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %link_name.addr, metadata !4522, metadata !DIExpression()), !dbg !4526
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #11, !dbg !4527
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4523, metadata !DIExpression()), !dbg !4528
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4529
  %sd = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !4530
  %1 = load ptr, ptr %sd, align 8, !dbg !4530
  %2 = load ptr, ptr %group_name.addr, align 8, !dbg !4531
  %call = call ptr @kernfs_find_and_get(ptr noundef %1, ptr noundef %2) #10, !dbg !4532
  store ptr %call, ptr %parent, align 8, !dbg !4533
  %3 = load ptr, ptr %parent, align 8, !dbg !4534
  %tobool = icmp ne ptr %3, null, !dbg !4534
  br i1 %tobool, label %if.then, label %if.end, !dbg !4536

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %parent, align 8, !dbg !4537
  %5 = load ptr, ptr %link_name.addr, align 8, !dbg !4539
  %call1 = call i32 @kernfs_remove_by_name(ptr noundef %4, ptr noundef %5) #10, !dbg !4540
  %6 = load ptr, ptr %parent, align 8, !dbg !4541
  call void @kernfs_put(ptr noundef %6) #10, !dbg !4542
  br label %if.end, !dbg !4543

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #11, !dbg !4544
  ret void, !dbg !4544
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @compat_only_sysfs_link_entry_to_kobj(ptr noundef %kobj, ptr noundef %target_kobj, ptr noundef %target_name, ptr noundef %symlink_name) #0 align 16 !dbg !4545 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %target_kobj.addr = alloca ptr, align 8
  %target_name.addr = alloca ptr, align 8
  %symlink_name.addr = alloca ptr, align 8
  %target = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %link = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4549, metadata !DIExpression()), !dbg !4556
  store ptr %target_kobj, ptr %target_kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target_kobj.addr, metadata !4550, metadata !DIExpression()), !dbg !4557
  store ptr %target_name, ptr %target_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target_name.addr, metadata !4551, metadata !DIExpression()), !dbg !4558
  store ptr %symlink_name, ptr %symlink_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %symlink_name.addr, metadata !4552, metadata !DIExpression()), !dbg !4559
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #11, !dbg !4560
  call void @llvm.dbg.declare(metadata ptr %target, metadata !4553, metadata !DIExpression()), !dbg !4561
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #11, !dbg !4562
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4554, metadata !DIExpression()), !dbg !4563
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #11, !dbg !4564
  call void @llvm.dbg.declare(metadata ptr %link, metadata !4555, metadata !DIExpression()), !dbg !4565
  call void @spin_lock(ptr noundef @sysfs_symlink_target_lock) #10, !dbg !4566
  %0 = load ptr, ptr %target_kobj.addr, align 8, !dbg !4567
  %sd = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !4568
  %1 = load ptr, ptr %sd, align 8, !dbg !4568
  store ptr %1, ptr %target, align 8, !dbg !4569
  %2 = load ptr, ptr %target, align 8, !dbg !4570
  %tobool = icmp ne ptr %2, null, !dbg !4570
  br i1 %tobool, label %if.then, label %if.end, !dbg !4572

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %target, align 8, !dbg !4573
  call void @kernfs_get(ptr noundef %3) #10, !dbg !4574
  br label %if.end, !dbg !4574

if.end:                                           ; preds = %if.then, %entry
  call void @spin_unlock(ptr noundef @sysfs_symlink_target_lock) #10, !dbg !4575
  %4 = load ptr, ptr %target, align 8, !dbg !4576
  %tobool2 = icmp ne ptr %4, null, !dbg !4576
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4578

if.then3:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4, !dbg !4579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4579

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %target, align 8, !dbg !4580
  %6 = load ptr, ptr %target_name.addr, align 8, !dbg !4581
  %call = call ptr @kernfs_find_and_get(ptr noundef %5, ptr noundef %6) #10, !dbg !4582
  store ptr %call, ptr %entry1, align 8, !dbg !4583
  %7 = load ptr, ptr %entry1, align 8, !dbg !4584
  %tobool5 = icmp ne ptr %7, null, !dbg !4584
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4586

if.then6:                                         ; preds = %if.end4
  %8 = load ptr, ptr %target, align 8, !dbg !4587
  call void @kernfs_put(ptr noundef %8) #10, !dbg !4589
  store i32 -2, ptr %retval, align 4, !dbg !4590
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4590

if.end7:                                          ; preds = %if.end4
  %9 = load ptr, ptr %symlink_name.addr, align 8, !dbg !4591
  %tobool8 = icmp ne ptr %9, null, !dbg !4591
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4593

if.then9:                                         ; preds = %if.end7
  %10 = load ptr, ptr %target_name.addr, align 8, !dbg !4594
  store ptr %10, ptr %symlink_name.addr, align 8, !dbg !4595
  br label %if.end10, !dbg !4596

if.end10:                                         ; preds = %if.then9, %if.end7
  %11 = load ptr, ptr %kobj.addr, align 8, !dbg !4597
  %sd11 = getelementptr inbounds %struct.kobject, ptr %11, i32 0, i32 5, !dbg !4598
  %12 = load ptr, ptr %sd11, align 8, !dbg !4598
  %13 = load ptr, ptr %symlink_name.addr, align 8, !dbg !4599
  %14 = load ptr, ptr %entry1, align 8, !dbg !4600
  %call12 = call ptr @kernfs_create_link(ptr noundef %12, ptr noundef %13, ptr noundef %14) #10, !dbg !4601
  store ptr %call12, ptr %link, align 8, !dbg !4602
  %15 = load ptr, ptr %link, align 8, !dbg !4603
  %call13 = call i64 @PTR_ERR(ptr noundef %15) #10, !dbg !4605
  %cmp = icmp eq i64 %call13, -17, !dbg !4606
  br i1 %cmp, label %if.then14, label %if.end16, !dbg !4607

if.then14:                                        ; preds = %if.end10
  %16 = load ptr, ptr %kobj.addr, align 8, !dbg !4608
  %sd15 = getelementptr inbounds %struct.kobject, ptr %16, i32 0, i32 5, !dbg !4609
  %17 = load ptr, ptr %sd15, align 8, !dbg !4609
  %18 = load ptr, ptr %symlink_name.addr, align 8, !dbg !4610
  call void @sysfs_warn_dup(ptr noundef %17, ptr noundef %18) #10, !dbg !4611
  br label %if.end16, !dbg !4611

if.end16:                                         ; preds = %if.then14, %if.end10
  %19 = load ptr, ptr %entry1, align 8, !dbg !4612
  call void @kernfs_put(ptr noundef %19) #10, !dbg !4613
  %20 = load ptr, ptr %target, align 8, !dbg !4614
  call void @kernfs_put(ptr noundef %20) #10, !dbg !4615
  %21 = load ptr, ptr %link, align 8, !dbg !4616
  %call17 = call i32 @PTR_ERR_OR_ZERO(ptr noundef %21) #10, !dbg !4617
  store i32 %call17, ptr %retval, align 4, !dbg !4618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4618

cleanup:                                          ; preds = %if.end16, %if.then6, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #11, !dbg !4619
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #11, !dbg !4619
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #11, !dbg !4619
  %22 = load i32, ptr %retval, align 4, !dbg !4619
  ret i32 %22, !dbg !4619
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !4620 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4626, metadata !DIExpression()), !dbg !4627
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4628
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4628
  call void @_raw_spin_lock(ptr noundef %1) #10, !dbg !4628
  ret void, !dbg !4629
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !4630 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4632, metadata !DIExpression()), !dbg !4633
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4634
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4634
  call void @_raw_spin_unlock(ptr noundef %1) #10, !dbg !4634
  ret void, !dbg !4635
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4636 dso_local ptr @kernfs_create_link(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !4639 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4644, metadata !DIExpression()), !dbg !4645
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4646
  %1 = ptrtoint ptr %0 to i64, !dbg !4647
  ret i64 %1, !dbg !4648
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4649 dso_local void @sysfs_warn_dup(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PTR_ERR_OR_ZERO(ptr noundef %ptr) #3 align 16 !dbg !4652 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4656, metadata !DIExpression()), !dbg !4657
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4658
  %call = call zeroext i1 @IS_ERR(ptr noundef %0) #10, !dbg !4660
  br i1 %call, label %if.then, label %if.else, !dbg !4661

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !4662
  %call1 = call i64 @PTR_ERR(ptr noundef %1) #10, !dbg !4663
  %conv = trunc i64 %call1 to i32, !dbg !4663
  store i32 %conv, ptr %retval, align 4, !dbg !4664
  br label %return, !dbg !4664

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4665
  br label %return, !dbg !4665

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4666
  ret i32 %2, !dbg !4666
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_group_change_owner(ptr noundef %kobj, ptr noundef %grp, i32 %kuid.coerce, i32 %kgid.coerce) #0 align 16 !dbg !4667 {
entry:
  %retval = alloca i32, align 4
  %kuid = alloca %struct.kuid_t, align 4
  %kgid = alloca %struct.kgid_t, align 4
  %kobj.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  %grp_kn = alloca ptr, align 8
  %error = alloca i32, align 4
  %newattrs = alloca %struct.iattr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive1, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4671, metadata !DIExpression()), !dbg !4678
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !4672, metadata !DIExpression()), !dbg !4679
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !4673, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !4674, metadata !DIExpression()), !dbg !4681
  call void @llvm.lifetime.start.p0(i64 8, ptr %grp_kn) #11, !dbg !4682
  call void @llvm.dbg.declare(metadata ptr %grp_kn, metadata !4675, metadata !DIExpression()), !dbg !4683
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #11, !dbg !4684
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4676, metadata !DIExpression()), !dbg !4685
  call void @llvm.lifetime.start.p0(i64 80, ptr %newattrs) #11, !dbg !4686
  call void @llvm.dbg.declare(metadata ptr %newattrs, metadata !4677, metadata !DIExpression()), !dbg !4687
  call void @llvm.memset.p0.i64(ptr align 8 %newattrs, i8 0, i64 80, i1 false), !dbg !4687
  %ia_valid = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 0, !dbg !4688
  store i32 6, ptr %ia_valid, align 8, !dbg !4688
  %0 = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 2, !dbg !4688
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 4 %kuid, i64 4, i1 false), !dbg !4689
  %1 = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 3, !dbg !4688
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %kgid, i64 4, i1 false), !dbg !4690
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !4691
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %2, i32 0, i32 7, !dbg !4693
  %bf.load = load i8, ptr %state_in_sysfs, align 4, !dbg !4693
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !4693
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4693
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4693
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4691
  br i1 %tobool, label %if.end, label %if.then, !dbg !4694

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4695

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %grp.addr, align 8, !dbg !4696
  %name = getelementptr inbounds %struct.attribute_group, ptr %3, i32 0, i32 0, !dbg !4698
  %4 = load ptr, ptr %name, align 8, !dbg !4698
  %tobool2 = icmp ne ptr %4, null, !dbg !4696
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !4699

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %kobj.addr, align 8, !dbg !4700
  %sd = getelementptr inbounds %struct.kobject, ptr %5, i32 0, i32 5, !dbg !4702
  %6 = load ptr, ptr %sd, align 8, !dbg !4702
  %7 = load ptr, ptr %grp.addr, align 8, !dbg !4703
  %name4 = getelementptr inbounds %struct.attribute_group, ptr %7, i32 0, i32 0, !dbg !4704
  %8 = load ptr, ptr %name4, align 8, !dbg !4704
  %call = call ptr @kernfs_find_and_get(ptr noundef %6, ptr noundef %8) #10, !dbg !4705
  store ptr %call, ptr %grp_kn, align 8, !dbg !4706
  br label %if.end7, !dbg !4707

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %kobj.addr, align 8, !dbg !4708
  %sd5 = getelementptr inbounds %struct.kobject, ptr %9, i32 0, i32 5, !dbg !4710
  %10 = load ptr, ptr %sd5, align 8, !dbg !4710
  call void @kernfs_get(ptr noundef %10) #10, !dbg !4711
  %11 = load ptr, ptr %kobj.addr, align 8, !dbg !4712
  %sd6 = getelementptr inbounds %struct.kobject, ptr %11, i32 0, i32 5, !dbg !4713
  %12 = load ptr, ptr %sd6, align 8, !dbg !4713
  store ptr %12, ptr %grp_kn, align 8, !dbg !4714
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %13 = load ptr, ptr %grp_kn, align 8, !dbg !4715
  %tobool8 = icmp ne ptr %13, null, !dbg !4715
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4717

if.then9:                                         ; preds = %if.end7
  store i32 -2, ptr %retval, align 4, !dbg !4718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4718

if.end10:                                         ; preds = %if.end7
  %14 = load ptr, ptr %grp_kn, align 8, !dbg !4719
  %call11 = call i32 @kernfs_setattr(ptr noundef %14, ptr noundef %newattrs) #10, !dbg !4720
  store i32 %call11, ptr %error, align 4, !dbg !4721
  %15 = load i32, ptr %error, align 4, !dbg !4722
  %tobool12 = icmp ne i32 %15, 0, !dbg !4722
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !4724

if.then13:                                        ; preds = %if.end10
  %16 = load ptr, ptr %grp_kn, align 8, !dbg !4725
  %17 = load ptr, ptr %grp.addr, align 8, !dbg !4726
  %call14 = call i32 @sysfs_group_attrs_change_owner(ptr noundef %16, ptr noundef %17, ptr noundef %newattrs) #10, !dbg !4727
  store i32 %call14, ptr %error, align 4, !dbg !4728
  br label %if.end15, !dbg !4729

if.end15:                                         ; preds = %if.then13, %if.end10
  %18 = load ptr, ptr %grp_kn, align 8, !dbg !4730
  call void @kernfs_put(ptr noundef %18) #10, !dbg !4731
  %19 = load i32, ptr %error, align 4, !dbg !4732
  store i32 %19, ptr %retval, align 4, !dbg !4733
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4733

cleanup:                                          ; preds = %if.end15, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 80, ptr %newattrs) #11, !dbg !4734
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #11, !dbg !4734
  call void @llvm.lifetime.end.p0(i64 8, ptr %grp_kn) #11, !dbg !4734
  %20 = load i32, ptr %retval, align 4, !dbg !4734
  ret i32 %20, !dbg !4734
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4735 dso_local i32 @kernfs_setattr(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sysfs_group_attrs_change_owner(ptr noundef %grp_kn, ptr noundef %grp, ptr noundef %newattrs) #0 align 16 !dbg !4740 {
entry:
  %retval = alloca i32, align 4
  %grp_kn.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  %newattrs.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %error = alloca i32, align 4
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %bin_attr = alloca ptr, align 8
  store ptr %grp_kn, ptr %grp_kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp_kn.addr, metadata !4744, metadata !DIExpression()), !dbg !4755
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !4745, metadata !DIExpression()), !dbg !4756
  store ptr %newattrs, ptr %newattrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newattrs.addr, metadata !4746, metadata !DIExpression()), !dbg !4757
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #11, !dbg !4758
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !4747, metadata !DIExpression()), !dbg !4759
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #11, !dbg !4760
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4748, metadata !DIExpression()), !dbg !4761
  %0 = load ptr, ptr %grp.addr, align 8, !dbg !4762
  %attrs = getelementptr inbounds %struct.attribute_group, ptr %0, i32 0, i32 3, !dbg !4763
  %1 = load ptr, ptr %attrs, align 8, !dbg !4763
  %tobool = icmp ne ptr %1, null, !dbg !4762
  br i1 %tobool, label %if.then, label %if.end9, !dbg !4764

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #11, !dbg !4765
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !4749, metadata !DIExpression()), !dbg !4766
  %2 = load ptr, ptr %grp.addr, align 8, !dbg !4767
  %attrs1 = getelementptr inbounds %struct.attribute_group, ptr %2, i32 0, i32 3, !dbg !4769
  %3 = load ptr, ptr %attrs1, align 8, !dbg !4769
  store ptr %3, ptr %attr, align 8, !dbg !4770
  br label %for.cond, !dbg !4771

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %attr, align 8, !dbg !4772
  %5 = load ptr, ptr %4, align 8, !dbg !4774
  %tobool2 = icmp ne ptr %5, null, !dbg !4775
  br i1 %tobool2, label %for.body, label %for.end, !dbg !4775

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %grp_kn.addr, align 8, !dbg !4776
  %7 = load ptr, ptr %attr, align 8, !dbg !4778
  %8 = load ptr, ptr %7, align 8, !dbg !4779
  %name = getelementptr inbounds %struct.attribute, ptr %8, i32 0, i32 0, !dbg !4780
  %9 = load ptr, ptr %name, align 8, !dbg !4780
  %call = call ptr @kernfs_find_and_get(ptr noundef %6, ptr noundef %9) #10, !dbg !4781
  store ptr %call, ptr %kn, align 8, !dbg !4782
  %10 = load ptr, ptr %kn, align 8, !dbg !4783
  %tobool3 = icmp ne ptr %10, null, !dbg !4783
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !4785

if.then4:                                         ; preds = %for.body
  store i32 -2, ptr %retval, align 4, !dbg !4786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4786

if.end:                                           ; preds = %for.body
  %11 = load ptr, ptr %kn, align 8, !dbg !4787
  %12 = load ptr, ptr %newattrs.addr, align 8, !dbg !4788
  %call5 = call i32 @kernfs_setattr(ptr noundef %11, ptr noundef %12) #10, !dbg !4789
  store i32 %call5, ptr %error, align 4, !dbg !4790
  %13 = load ptr, ptr %kn, align 8, !dbg !4791
  call void @kernfs_put(ptr noundef %13) #10, !dbg !4792
  %14 = load i32, ptr %error, align 4, !dbg !4793
  %tobool6 = icmp ne i32 %14, 0, !dbg !4793
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4795

if.then7:                                         ; preds = %if.end
  %15 = load i32, ptr %error, align 4, !dbg !4796
  store i32 %15, ptr %retval, align 4, !dbg !4797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4797

if.end8:                                          ; preds = %if.end
  br label %for.inc, !dbg !4798

for.inc:                                          ; preds = %if.end8
  %16 = load ptr, ptr %attr, align 8, !dbg !4799
  %incdec.ptr = getelementptr ptr, ptr %16, i32 1, !dbg !4799
  store ptr %incdec.ptr, ptr %attr, align 8, !dbg !4799
  br label %for.cond, !dbg !4800, !llvm.loop !4801

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4803
  br label %cleanup, !dbg !4803

cleanup:                                          ; preds = %for.end, %if.then7, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #11, !dbg !4803
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end9, !dbg !4804

if.end9:                                          ; preds = %cleanup.cont, %entry
  %17 = load ptr, ptr %grp.addr, align 8, !dbg !4805
  %bin_attrs = getelementptr inbounds %struct.attribute_group, ptr %17, i32 0, i32 4, !dbg !4806
  %18 = load ptr, ptr %bin_attrs, align 8, !dbg !4806
  %tobool10 = icmp ne ptr %18, null, !dbg !4805
  br i1 %tobool10, label %if.then11, label %if.end32, !dbg !4807

if.then11:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %bin_attr) #11, !dbg !4808
  call void @llvm.dbg.declare(metadata ptr %bin_attr, metadata !4752, metadata !DIExpression()), !dbg !4809
  %19 = load ptr, ptr %grp.addr, align 8, !dbg !4810
  %bin_attrs12 = getelementptr inbounds %struct.attribute_group, ptr %19, i32 0, i32 4, !dbg !4812
  %20 = load ptr, ptr %bin_attrs12, align 8, !dbg !4812
  store ptr %20, ptr %bin_attr, align 8, !dbg !4813
  br label %for.cond13, !dbg !4814

for.cond13:                                       ; preds = %for.inc26, %if.then11
  %21 = load ptr, ptr %bin_attr, align 8, !dbg !4815
  %22 = load ptr, ptr %21, align 8, !dbg !4817
  %tobool14 = icmp ne ptr %22, null, !dbg !4818
  br i1 %tobool14, label %for.body15, label %for.end28, !dbg !4818

for.body15:                                       ; preds = %for.cond13
  %23 = load ptr, ptr %grp_kn.addr, align 8, !dbg !4819
  %24 = load ptr, ptr %bin_attr, align 8, !dbg !4821
  %25 = load ptr, ptr %24, align 8, !dbg !4822
  %attr16 = getelementptr inbounds %struct.bin_attribute, ptr %25, i32 0, i32 0, !dbg !4823
  %name17 = getelementptr inbounds %struct.attribute, ptr %attr16, i32 0, i32 0, !dbg !4824
  %26 = load ptr, ptr %name17, align 8, !dbg !4824
  %call18 = call ptr @kernfs_find_and_get(ptr noundef %23, ptr noundef %26) #10, !dbg !4825
  store ptr %call18, ptr %kn, align 8, !dbg !4826
  %27 = load ptr, ptr %kn, align 8, !dbg !4827
  %tobool19 = icmp ne ptr %27, null, !dbg !4827
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !4829

if.then20:                                        ; preds = %for.body15
  store i32 -2, ptr %retval, align 4, !dbg !4830
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !4830

if.end21:                                         ; preds = %for.body15
  %28 = load ptr, ptr %kn, align 8, !dbg !4831
  %29 = load ptr, ptr %newattrs.addr, align 8, !dbg !4832
  %call22 = call i32 @kernfs_setattr(ptr noundef %28, ptr noundef %29) #10, !dbg !4833
  store i32 %call22, ptr %error, align 4, !dbg !4834
  %30 = load ptr, ptr %kn, align 8, !dbg !4835
  call void @kernfs_put(ptr noundef %30) #10, !dbg !4836
  %31 = load i32, ptr %error, align 4, !dbg !4837
  %tobool23 = icmp ne i32 %31, 0, !dbg !4837
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !4839

if.then24:                                        ; preds = %if.end21
  %32 = load i32, ptr %error, align 4, !dbg !4840
  store i32 %32, ptr %retval, align 4, !dbg !4841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !4841

if.end25:                                         ; preds = %if.end21
  br label %for.inc26, !dbg !4842

for.inc26:                                        ; preds = %if.end25
  %33 = load ptr, ptr %bin_attr, align 8, !dbg !4843
  %incdec.ptr27 = getelementptr ptr, ptr %33, i32 1, !dbg !4843
  store ptr %incdec.ptr27, ptr %bin_attr, align 8, !dbg !4843
  br label %for.cond13, !dbg !4844, !llvm.loop !4845

for.end28:                                        ; preds = %for.cond13
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4847
  br label %cleanup29, !dbg !4847

cleanup29:                                        ; preds = %for.end28, %if.then24, %if.then20
  call void @llvm.lifetime.end.p0(i64 8, ptr %bin_attr) #11, !dbg !4847
  %cleanup.dest30 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest30, label %cleanup33 [
    i32 0, label %cleanup.cont31
  ]

cleanup.cont31:                                   ; preds = %cleanup29
  br label %if.end32, !dbg !4848

if.end32:                                         ; preds = %cleanup.cont31, %if.end9
  store i32 0, ptr %retval, align 4, !dbg !4849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !4849

cleanup33:                                        ; preds = %if.end32, %cleanup29, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #11, !dbg !4850
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #11, !dbg !4850
  %34 = load i32, ptr %retval, align 4, !dbg !4850
  ret i32 %34, !dbg !4850
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_groups_change_owner(ptr noundef %kobj, ptr noundef %groups, i32 %kuid.coerce, i32 %kgid.coerce) #0 align 16 !dbg !4851 {
entry:
  %retval = alloca i32, align 4
  %kuid = alloca %struct.kuid_t, align 4
  %kgid = alloca %struct.kgid_t, align 4
  %kobj.addr = alloca ptr, align 8
  %groups.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive1, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4855, metadata !DIExpression()), !dbg !4861
  store ptr %groups, ptr %groups.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %groups.addr, metadata !4856, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !4857, metadata !DIExpression()), !dbg !4863
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !4858, metadata !DIExpression()), !dbg !4864
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #11, !dbg !4865
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4859, metadata !DIExpression()), !dbg !4866
  store i32 0, ptr %error, align 4, !dbg !4866
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !4865
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4860, metadata !DIExpression()), !dbg !4867
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4868
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7, !dbg !4870
  %bf.load = load i8, ptr %state_in_sysfs, align 4, !dbg !4870
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !4870
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4870
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4870
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4868
  br i1 %tobool, label %if.end, label %if.then, !dbg !4871

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4872
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4872

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %groups.addr, align 8, !dbg !4873
  %tobool2 = icmp ne ptr %1, null, !dbg !4873
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4875

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4876
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4876

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !4877
  br label %for.cond, !dbg !4879

for.cond:                                         ; preds = %for.inc, %if.end4
  %2 = load ptr, ptr %groups.addr, align 8, !dbg !4880
  %3 = load i32, ptr %i, align 4, !dbg !4882
  %idxprom = sext i32 %3 to i64, !dbg !4880
  %arrayidx = getelementptr ptr, ptr %2, i64 %idxprom, !dbg !4880
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !4880
  %tobool5 = icmp ne ptr %4, null, !dbg !4883
  br i1 %tobool5, label %for.body, label %for.end, !dbg !4883

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %kobj.addr, align 8, !dbg !4884
  %6 = load ptr, ptr %groups.addr, align 8, !dbg !4886
  %7 = load i32, ptr %i, align 4, !dbg !4887
  %idxprom6 = sext i32 %7 to i64, !dbg !4886
  %arrayidx7 = getelementptr ptr, ptr %6, i64 %idxprom6, !dbg !4886
  %8 = load ptr, ptr %arrayidx7, align 8, !dbg !4886
  %coerce.dive8 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !4888
  %9 = load i32, ptr %coerce.dive8, align 4, !dbg !4888
  %coerce.dive9 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !4888
  %10 = load i32, ptr %coerce.dive9, align 4, !dbg !4888
  %call = call i32 @sysfs_group_change_owner(ptr noundef %5, ptr noundef %8, i32 %9, i32 %10) #10, !dbg !4888
  store i32 %call, ptr %error, align 4, !dbg !4889
  %11 = load i32, ptr %error, align 4, !dbg !4890
  %tobool10 = icmp ne i32 %11, 0, !dbg !4890
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4892

if.then11:                                        ; preds = %for.body
  br label %for.end, !dbg !4893

if.end12:                                         ; preds = %for.body
  br label %for.inc, !dbg !4894

for.inc:                                          ; preds = %if.end12
  %12 = load i32, ptr %i, align 4, !dbg !4895
  %inc = add i32 %12, 1, !dbg !4895
  store i32 %inc, ptr %i, align 4, !dbg !4895
  br label %for.cond, !dbg !4896, !llvm.loop !4897

for.end:                                          ; preds = %if.then11, %for.cond
  %13 = load i32, ptr %error, align 4, !dbg !4899
  store i32 %13, ptr %retval, align 4, !dbg !4900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4900

cleanup:                                          ; preds = %for.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !4901
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #11, !dbg !4901
  %14 = load i32, ptr %retval, align 4, !dbg !4901
  ret i32 %14, !dbg !4901
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4902 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4906 dso_local ptr @kernfs_create_dir_ns(ptr noundef, ptr noundef, i16 noundef zeroext, i32, i32, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !4909 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4913, metadata !DIExpression()), !dbg !4914
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4915
  %1 = ptrtoint ptr %0 to i64, !dbg !4915
  %2 = inttoptr i64 %1 to ptr, !dbg !4915
  %3 = ptrtoint ptr %2 to i64, !dbg !4915
  %cmp = icmp uge i64 %3, -4095, !dbg !4915
  %lnot = xor i1 %cmp, true, !dbg !4915
  %lnot1 = xor i1 %lnot, true, !dbg !4915
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4915
  %conv = sext i32 %lnot.ext to i64, !dbg !4915
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4915
  %tobool = icmp ne i64 %expval, 0, !dbg !4915
  ret i1 %tobool, !dbg !4916
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @create_files(ptr noundef %parent, ptr noundef %kobj, i32 %uid.coerce, i32 %gid.coerce, ptr noundef %grp, i32 noundef %update) #0 align 16 !dbg !4917 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %parent.addr = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  %update.addr = alloca i32, align 4
  %attr = alloca ptr, align 8
  %bin_attr = alloca ptr, align 8
  %error = alloca i32, align 4
  %i = alloca i32, align 4
  %mode = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %mode81 = alloca i16, align 2
  %__ret_warn_on98 = alloca i32, align 4
  %__flags123 = alloca i32, align 4
  %tmp141 = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive1, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4921, metadata !DIExpression()), !dbg !4956
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4922, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4923, metadata !DIExpression()), !dbg !4958
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !4924, metadata !DIExpression()), !dbg !4959
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !4925, metadata !DIExpression()), !dbg !4960
  store i32 %update, ptr %update.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %update.addr, metadata !4926, metadata !DIExpression()), !dbg !4961
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #11, !dbg !4962
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !4927, metadata !DIExpression()), !dbg !4963
  call void @llvm.lifetime.start.p0(i64 8, ptr %bin_attr) #11, !dbg !4964
  call void @llvm.dbg.declare(metadata ptr %bin_attr, metadata !4928, metadata !DIExpression()), !dbg !4965
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #11, !dbg !4966
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4929, metadata !DIExpression()), !dbg !4967
  store i32 0, ptr %error, align 4, !dbg !4967
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !4966
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4930, metadata !DIExpression()), !dbg !4968
  %0 = load ptr, ptr %grp.addr, align 8, !dbg !4969
  %attrs = getelementptr inbounds %struct.attribute_group, ptr %0, i32 0, i32 3, !dbg !4970
  %1 = load ptr, ptr %attrs, align 8, !dbg !4970
  %tobool = icmp ne ptr %1, null, !dbg !4969
  br i1 %tobool, label %if.then, label %if.end74, !dbg !4971

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !4972
  %2 = load ptr, ptr %grp.addr, align 8, !dbg !4973
  %attrs2 = getelementptr inbounds %struct.attribute_group, ptr %2, i32 0, i32 3, !dbg !4974
  %3 = load ptr, ptr %attrs2, align 8, !dbg !4974
  store ptr %3, ptr %attr, align 8, !dbg !4975
  br label %for.cond, !dbg !4976

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %attr, align 8, !dbg !4977
  %5 = load ptr, ptr %4, align 8, !dbg !4978
  %tobool3 = icmp ne ptr %5, null, !dbg !4978
  br i1 %tobool3, label %land.rhs, label %land.end, !dbg !4979

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, ptr %error, align 4, !dbg !4980
  %tobool4 = icmp ne i32 %6, 0, !dbg !4981
  %lnot = xor i1 %tobool4, true, !dbg !4981
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ], !dbg !4982
  br i1 %7, label %for.body, label %for.end, !dbg !4983

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #11, !dbg !4984
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !4931, metadata !DIExpression()), !dbg !4985
  %8 = load ptr, ptr %attr, align 8, !dbg !4986
  %9 = load ptr, ptr %8, align 8, !dbg !4987
  %mode5 = getelementptr inbounds %struct.attribute, ptr %9, i32 0, i32 1, !dbg !4988
  %10 = load i16, ptr %mode5, align 8, !dbg !4988
  store i16 %10, ptr %mode, align 2, !dbg !4985
  %11 = load i32, ptr %update.addr, align 4, !dbg !4989
  %tobool6 = icmp ne i32 %11, 0, !dbg !4989
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !4991

if.then7:                                         ; preds = %for.body
  %12 = load ptr, ptr %parent.addr, align 8, !dbg !4992
  %13 = load ptr, ptr %attr, align 8, !dbg !4993
  %14 = load ptr, ptr %13, align 8, !dbg !4994
  %name = getelementptr inbounds %struct.attribute, ptr %14, i32 0, i32 0, !dbg !4995
  %15 = load ptr, ptr %name, align 8, !dbg !4995
  %call = call i32 @kernfs_remove_by_name(ptr noundef %12, ptr noundef %15) #10, !dbg !4996
  br label %if.end, !dbg !4996

if.end:                                           ; preds = %if.then7, %for.body
  %16 = load ptr, ptr %grp.addr, align 8, !dbg !4997
  %is_visible = getelementptr inbounds %struct.attribute_group, ptr %16, i32 0, i32 1, !dbg !4999
  %17 = load ptr, ptr %is_visible, align 8, !dbg !4999
  %tobool8 = icmp ne ptr %17, null, !dbg !4997
  br i1 %tobool8, label %if.then9, label %if.end15, !dbg !5000

if.then9:                                         ; preds = %if.end
  %18 = load ptr, ptr %grp.addr, align 8, !dbg !5001
  %is_visible10 = getelementptr inbounds %struct.attribute_group, ptr %18, i32 0, i32 1, !dbg !5003
  %19 = load ptr, ptr %is_visible10, align 8, !dbg !5003
  %20 = load ptr, ptr %kobj.addr, align 8, !dbg !5004
  %21 = load ptr, ptr %attr, align 8, !dbg !5005
  %22 = load ptr, ptr %21, align 8, !dbg !5006
  %23 = load i32, ptr %i, align 4, !dbg !5007
  %call11 = call zeroext i16 %19(ptr noundef %20, ptr noundef %22, i32 noundef %23) #10, !dbg !5001
  store i16 %call11, ptr %mode, align 2, !dbg !5008
  %24 = load i16, ptr %mode, align 2, !dbg !5009
  %tobool12 = icmp ne i16 %24, 0, !dbg !5009
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !5011

if.then13:                                        ; preds = %if.then9
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5012

if.end14:                                         ; preds = %if.then9
  br label %if.end15, !dbg !5013

if.end15:                                         ; preds = %if.end14, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5014
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4937, metadata !DIExpression()), !dbg !5014
  %25 = load i16, ptr %mode, align 2, !dbg !5014
  %conv = zext i16 %25 to i32, !dbg !5014
  %and = and i32 %conv, -4533, !dbg !5014
  %tobool16 = icmp ne i32 %and, 0, !dbg !5014
  %lnot17 = xor i1 %tobool16, true, !dbg !5014
  %lnot18 = xor i1 %lnot17, true, !dbg !5014
  %lnot.ext = zext i1 %lnot18 to i32, !dbg !5014
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5014
  %26 = load i32, ptr %__ret_warn_on, align 4, !dbg !5015
  %tobool19 = icmp ne i32 %26, 0, !dbg !5015
  %lnot20 = xor i1 %tobool19, true, !dbg !5015
  %lnot22 = xor i1 %lnot20, true, !dbg !5015
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5015
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5015
  %expval = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5015
  %tobool25 = icmp ne i64 %expval, 0, !dbg !5015
  br i1 %tobool25, label %if.then26, label %if.end47, !dbg !5014

if.then26:                                        ; preds = %if.end15
  br label %do.body, !dbg !5015

do.body:                                          ; preds = %if.then26
  br label %do.body27, !dbg !5016

do.body27:                                        ; preds = %do.body
  br label %do.cond, !dbg !5017

do.cond:                                          ; preds = %do.body27
  br label %do.end, !dbg !5017

do.end:                                           ; preds = %do.cond
  %27 = load ptr, ptr %attr, align 8, !dbg !5016
  %28 = load ptr, ptr %27, align 8, !dbg !5016
  %name28 = getelementptr inbounds %struct.attribute, ptr %28, i32 0, i32 0, !dbg !5016
  %29 = load ptr, ptr %name28, align 8, !dbg !5016
  %30 = load i16, ptr %mode, align 2, !dbg !5016
  %conv29 = zext i16 %30 to i32, !dbg !5016
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.3, ptr noundef %29, i32 noundef %conv29) #10, !dbg !5016
  br label %do.body30, !dbg !5016

do.body30:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !5019
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4939, metadata !DIExpression()), !dbg !5019
  store i32 2313, ptr %__flags, align 4, !dbg !5019
  br label %do.body31, !dbg !5019

do.body31:                                        ; preds = %do.body30
  br label %do.cond32, !dbg !5020

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !5020

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !5019

do.body34:                                        ; preds = %do.end33
  %31 = load i32, ptr %__flags, align 4, !dbg !5022
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 61, i32 %31, i64 12) #11, !dbg !5022, !srcloc !5024
  br label %do.cond35, !dbg !5022

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5022

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !5019

do.body37:                                        ; preds = %do.end36
  br label %do.cond38, !dbg !5025

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !5025

do.end39:                                         ; preds = %do.cond38
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !5016
  br label %do.cond40, !dbg !5019

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !5019

do.end41:                                         ; preds = %do.cond40
  br label %do.body42, !dbg !5016

do.body42:                                        ; preds = %do.end41
  br label %do.cond43, !dbg !5027

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !5027

do.end44:                                         ; preds = %do.cond43
  br label %do.cond45, !dbg !5016

do.cond45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !5016

do.end46:                                         ; preds = %do.cond45
  br label %if.end47, !dbg !5016

if.end47:                                         ; preds = %do.end46, %if.end15
  %32 = load i32, ptr %__ret_warn_on, align 4, !dbg !5014
  %tobool48 = icmp ne i32 %32, 0, !dbg !5014
  %lnot49 = xor i1 %tobool48, true, !dbg !5014
  %lnot51 = xor i1 %lnot49, true, !dbg !5014
  %lnot.ext52 = zext i1 %lnot51 to i32, !dbg !5014
  %conv53 = sext i32 %lnot.ext52 to i64, !dbg !5014
  %expval54 = call i64 @llvm.expect.i64(i64 %conv53, i64 0), !dbg !5014
  store i64 %expval54, ptr %tmp, align 8, !dbg !5015
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !5029
  %33 = load i64, ptr %tmp, align 8, !dbg !5014
  %34 = load i16, ptr %mode, align 2, !dbg !5030
  %conv55 = zext i16 %34 to i32, !dbg !5030
  %and56 = and i32 %conv55, 4532, !dbg !5030
  %conv57 = trunc i32 %and56 to i16, !dbg !5030
  store i16 %conv57, ptr %mode, align 2, !dbg !5030
  %35 = load ptr, ptr %parent.addr, align 8, !dbg !5031
  %36 = load ptr, ptr %attr, align 8, !dbg !5032
  %37 = load ptr, ptr %36, align 8, !dbg !5033
  %38 = load i16, ptr %mode, align 2, !dbg !5034
  %coerce.dive58 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5035
  %39 = load i32, ptr %coerce.dive58, align 4, !dbg !5035
  %coerce.dive59 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !5035
  %40 = load i32, ptr %coerce.dive59, align 4, !dbg !5035
  %call60 = call i32 @sysfs_add_file_mode_ns(ptr noundef %35, ptr noundef %37, i16 noundef zeroext %38, i32 %39, i32 %40, ptr noundef null) #10, !dbg !5035
  store i32 %call60, ptr %error, align 4, !dbg !5036
  %41 = load i32, ptr %error, align 4, !dbg !5037
  %tobool61 = icmp ne i32 %41, 0, !dbg !5037
  %lnot62 = xor i1 %tobool61, true, !dbg !5037
  %lnot64 = xor i1 %lnot62, true, !dbg !5037
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !5037
  %conv66 = sext i32 %lnot.ext65 to i64, !dbg !5037
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 0), !dbg !5037
  %tobool68 = icmp ne i64 %expval67, 0, !dbg !5037
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !5039

if.then69:                                        ; preds = %if.end47
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5040

if.end70:                                         ; preds = %if.end47
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5041
  br label %cleanup, !dbg !5041

cleanup:                                          ; preds = %if.end70, %if.then69, %if.then13
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode) #11, !dbg !5041
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5042

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %42 = load i32, ptr %i, align 4, !dbg !5043
  %inc = add i32 %42, 1, !dbg !5043
  store i32 %inc, ptr %i, align 4, !dbg !5043
  %43 = load ptr, ptr %attr, align 8, !dbg !5044
  %incdec.ptr = getelementptr ptr, ptr %43, i32 1, !dbg !5044
  store ptr %incdec.ptr, ptr %attr, align 8, !dbg !5044
  br label %for.cond, !dbg !5045, !llvm.loop !5046

for.end:                                          ; preds = %cleanup, %land.end
  %44 = load i32, ptr %error, align 4, !dbg !5048
  %tobool71 = icmp ne i32 %44, 0, !dbg !5048
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !5050

if.then72:                                        ; preds = %for.end
  %45 = load ptr, ptr %parent.addr, align 8, !dbg !5051
  %46 = load ptr, ptr %grp.addr, align 8, !dbg !5053
  call void @remove_files(ptr noundef %45, ptr noundef %46) #10, !dbg !5054
  br label %exit, !dbg !5055

if.end73:                                         ; preds = %for.end
  br label %if.end74, !dbg !5056

if.end74:                                         ; preds = %if.end73, %entry
  %47 = load ptr, ptr %grp.addr, align 8, !dbg !5057
  %bin_attrs = getelementptr inbounds %struct.attribute_group, ptr %47, i32 0, i32 4, !dbg !5058
  %48 = load ptr, ptr %bin_attrs, align 8, !dbg !5058
  %tobool75 = icmp ne ptr %48, null, !dbg !5057
  br i1 %tobool75, label %if.then76, label %if.end168, !dbg !5059

if.then76:                                        ; preds = %if.end74
  store i32 0, ptr %i, align 4, !dbg !5060
  %49 = load ptr, ptr %grp.addr, align 8, !dbg !5061
  %bin_attrs77 = getelementptr inbounds %struct.attribute_group, ptr %49, i32 0, i32 4, !dbg !5062
  %50 = load ptr, ptr %bin_attrs77, align 8, !dbg !5062
  store ptr %50, ptr %bin_attr, align 8, !dbg !5063
  br label %for.cond78, !dbg !5064

for.cond78:                                       ; preds = %for.inc161, %if.then76
  %51 = load ptr, ptr %bin_attr, align 8, !dbg !5065
  %52 = load ptr, ptr %51, align 8, !dbg !5066
  %tobool79 = icmp ne ptr %52, null, !dbg !5067
  br i1 %tobool79, label %for.body80, label %for.end164, !dbg !5067

for.body80:                                       ; preds = %for.cond78
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode81) #11, !dbg !5068
  call void @llvm.dbg.declare(metadata ptr %mode81, metadata !4943, metadata !DIExpression()), !dbg !5069
  %53 = load ptr, ptr %bin_attr, align 8, !dbg !5070
  %54 = load ptr, ptr %53, align 8, !dbg !5071
  %attr82 = getelementptr inbounds %struct.bin_attribute, ptr %54, i32 0, i32 0, !dbg !5072
  %mode83 = getelementptr inbounds %struct.attribute, ptr %attr82, i32 0, i32 1, !dbg !5073
  %55 = load i16, ptr %mode83, align 8, !dbg !5073
  store i16 %55, ptr %mode81, align 2, !dbg !5069
  %56 = load i32, ptr %update.addr, align 4, !dbg !5074
  %tobool84 = icmp ne i32 %56, 0, !dbg !5074
  br i1 %tobool84, label %if.then85, label %if.end89, !dbg !5076

if.then85:                                        ; preds = %for.body80
  %57 = load ptr, ptr %parent.addr, align 8, !dbg !5077
  %58 = load ptr, ptr %bin_attr, align 8, !dbg !5078
  %59 = load ptr, ptr %58, align 8, !dbg !5079
  %attr86 = getelementptr inbounds %struct.bin_attribute, ptr %59, i32 0, i32 0, !dbg !5080
  %name87 = getelementptr inbounds %struct.attribute, ptr %attr86, i32 0, i32 0, !dbg !5081
  %60 = load ptr, ptr %name87, align 8, !dbg !5081
  %call88 = call i32 @kernfs_remove_by_name(ptr noundef %57, ptr noundef %60) #10, !dbg !5082
  br label %if.end89, !dbg !5082

if.end89:                                         ; preds = %if.then85, %for.body80
  %61 = load ptr, ptr %grp.addr, align 8, !dbg !5083
  %is_bin_visible = getelementptr inbounds %struct.attribute_group, ptr %61, i32 0, i32 2, !dbg !5085
  %62 = load ptr, ptr %is_bin_visible, align 8, !dbg !5085
  %tobool90 = icmp ne ptr %62, null, !dbg !5083
  br i1 %tobool90, label %if.then91, label %if.end97, !dbg !5086

if.then91:                                        ; preds = %if.end89
  %63 = load ptr, ptr %grp.addr, align 8, !dbg !5087
  %is_bin_visible92 = getelementptr inbounds %struct.attribute_group, ptr %63, i32 0, i32 2, !dbg !5089
  %64 = load ptr, ptr %is_bin_visible92, align 8, !dbg !5089
  %65 = load ptr, ptr %kobj.addr, align 8, !dbg !5090
  %66 = load ptr, ptr %bin_attr, align 8, !dbg !5091
  %67 = load ptr, ptr %66, align 8, !dbg !5092
  %68 = load i32, ptr %i, align 4, !dbg !5093
  %call93 = call zeroext i16 %64(ptr noundef %65, ptr noundef %67, i32 noundef %68) #10, !dbg !5087
  store i16 %call93, ptr %mode81, align 2, !dbg !5094
  %69 = load i16, ptr %mode81, align 2, !dbg !5095
  %tobool94 = icmp ne i16 %69, 0, !dbg !5095
  br i1 %tobool94, label %if.end96, label %if.then95, !dbg !5097

if.then95:                                        ; preds = %if.then91
  store i32 22, ptr %cleanup.dest.slot, align 4
  br label %cleanup158, !dbg !5098

if.end96:                                         ; preds = %if.then91
  br label %if.end97, !dbg !5099

if.end97:                                         ; preds = %if.end96, %if.end89
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on98) #11, !dbg !5100
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on98, metadata !4949, metadata !DIExpression()), !dbg !5100
  %70 = load i16, ptr %mode81, align 2, !dbg !5100
  %conv99 = zext i16 %70 to i32, !dbg !5100
  %and100 = and i32 %conv99, -4533, !dbg !5100
  %tobool101 = icmp ne i32 %and100, 0, !dbg !5100
  %lnot102 = xor i1 %tobool101, true, !dbg !5100
  %lnot104 = xor i1 %lnot102, true, !dbg !5100
  %lnot.ext105 = zext i1 %lnot104 to i32, !dbg !5100
  store i32 %lnot.ext105, ptr %__ret_warn_on98, align 4, !dbg !5100
  %71 = load i32, ptr %__ret_warn_on98, align 4, !dbg !5101
  %tobool106 = icmp ne i32 %71, 0, !dbg !5101
  %lnot107 = xor i1 %tobool106, true, !dbg !5101
  %lnot109 = xor i1 %lnot107, true, !dbg !5101
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !5101
  %conv111 = sext i32 %lnot.ext110 to i64, !dbg !5101
  %expval112 = call i64 @llvm.expect.i64(i64 %conv111, i64 0), !dbg !5101
  %tobool113 = icmp ne i64 %expval112, 0, !dbg !5101
  br i1 %tobool113, label %if.then114, label %if.end140, !dbg !5100

if.then114:                                       ; preds = %if.end97
  br label %do.body115, !dbg !5101

do.body115:                                       ; preds = %if.then114
  br label %do.body116, !dbg !5102

do.body116:                                       ; preds = %do.body115
  br label %do.cond117, !dbg !5103

do.cond117:                                       ; preds = %do.body116
  br label %do.end118, !dbg !5103

do.end118:                                        ; preds = %do.cond117
  %72 = load ptr, ptr %bin_attr, align 8, !dbg !5102
  %73 = load ptr, ptr %72, align 8, !dbg !5102
  %attr119 = getelementptr inbounds %struct.bin_attribute, ptr %73, i32 0, i32 0, !dbg !5102
  %name120 = getelementptr inbounds %struct.attribute, ptr %attr119, i32 0, i32 0, !dbg !5102
  %74 = load ptr, ptr %name120, align 8, !dbg !5102
  %75 = load i16, ptr %mode81, align 2, !dbg !5102
  %conv121 = zext i16 %75 to i32, !dbg !5102
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.3, ptr noundef %74, i32 noundef %conv121) #10, !dbg !5102
  br label %do.body122, !dbg !5102

do.body122:                                       ; preds = %do.end118
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags123) #11, !dbg !5105
  call void @llvm.dbg.declare(metadata ptr %__flags123, metadata !4951, metadata !DIExpression()), !dbg !5105
  store i32 2313, ptr %__flags123, align 4, !dbg !5105
  br label %do.body124, !dbg !5105

do.body124:                                       ; preds = %do.body122
  br label %do.cond125, !dbg !5106

do.cond125:                                       ; preds = %do.body124
  br label %do.end126, !dbg !5106

do.end126:                                        ; preds = %do.cond125
  br label %do.body127, !dbg !5105

do.body127:                                       ; preds = %do.end126
  %76 = load i32, ptr %__flags123, align 4, !dbg !5108
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 90, i32 %76, i64 12) #11, !dbg !5108, !srcloc !5110
  br label %do.cond128, !dbg !5108

do.cond128:                                       ; preds = %do.body127
  br label %do.end129, !dbg !5108

do.end129:                                        ; preds = %do.cond128
  br label %do.body130, !dbg !5105

do.body130:                                       ; preds = %do.end129
  br label %do.cond131, !dbg !5111

do.cond131:                                       ; preds = %do.body130
  br label %do.end132, !dbg !5111

do.end132:                                        ; preds = %do.cond131
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags123) #11, !dbg !5102
  br label %do.cond133, !dbg !5105

do.cond133:                                       ; preds = %do.end132
  br label %do.end134, !dbg !5105

do.end134:                                        ; preds = %do.cond133
  br label %do.body135, !dbg !5102

do.body135:                                       ; preds = %do.end134
  br label %do.cond136, !dbg !5113

do.cond136:                                       ; preds = %do.body135
  br label %do.end137, !dbg !5113

do.end137:                                        ; preds = %do.cond136
  br label %do.cond138, !dbg !5102

do.cond138:                                       ; preds = %do.end137
  br label %do.end139, !dbg !5102

do.end139:                                        ; preds = %do.cond138
  br label %if.end140, !dbg !5102

if.end140:                                        ; preds = %do.end139, %if.end97
  %77 = load i32, ptr %__ret_warn_on98, align 4, !dbg !5100
  %tobool142 = icmp ne i32 %77, 0, !dbg !5100
  %lnot143 = xor i1 %tobool142, true, !dbg !5100
  %lnot145 = xor i1 %lnot143, true, !dbg !5100
  %lnot.ext146 = zext i1 %lnot145 to i32, !dbg !5100
  %conv147 = sext i32 %lnot.ext146 to i64, !dbg !5100
  %expval148 = call i64 @llvm.expect.i64(i64 %conv147, i64 0), !dbg !5100
  store i64 %expval148, ptr %tmp141, align 8, !dbg !5101
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on98) #11, !dbg !5115
  %78 = load i64, ptr %tmp141, align 8, !dbg !5100
  %79 = load i16, ptr %mode81, align 2, !dbg !5116
  %conv149 = zext i16 %79 to i32, !dbg !5116
  %and150 = and i32 %conv149, 4532, !dbg !5116
  %conv151 = trunc i32 %and150 to i16, !dbg !5116
  store i16 %conv151, ptr %mode81, align 2, !dbg !5116
  %80 = load ptr, ptr %parent.addr, align 8, !dbg !5117
  %81 = load ptr, ptr %bin_attr, align 8, !dbg !5118
  %82 = load ptr, ptr %81, align 8, !dbg !5119
  %83 = load i16, ptr %mode81, align 2, !dbg !5120
  %coerce.dive152 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5121
  %84 = load i32, ptr %coerce.dive152, align 4, !dbg !5121
  %coerce.dive153 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !5121
  %85 = load i32, ptr %coerce.dive153, align 4, !dbg !5121
  %call154 = call i32 @sysfs_add_bin_file_mode_ns(ptr noundef %80, ptr noundef %82, i16 noundef zeroext %83, i32 %84, i32 %85, ptr noundef null) #10, !dbg !5121
  store i32 %call154, ptr %error, align 4, !dbg !5122
  %86 = load i32, ptr %error, align 4, !dbg !5123
  %tobool155 = icmp ne i32 %86, 0, !dbg !5123
  br i1 %tobool155, label %if.then156, label %if.end157, !dbg !5125

if.then156:                                       ; preds = %if.end140
  store i32 20, ptr %cleanup.dest.slot, align 4
  br label %cleanup158, !dbg !5126

if.end157:                                        ; preds = %if.end140
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5127
  br label %cleanup158, !dbg !5127

cleanup158:                                       ; preds = %if.end157, %if.then156, %if.then95
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode81) #11, !dbg !5127
  %cleanup.dest159 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest159, label %unreachable [
    i32 0, label %cleanup.cont160
    i32 22, label %for.inc161
    i32 20, label %for.end164
  ]

cleanup.cont160:                                  ; preds = %cleanup158
  br label %for.inc161, !dbg !5128

for.inc161:                                       ; preds = %cleanup.cont160, %cleanup158
  %87 = load i32, ptr %i, align 4, !dbg !5129
  %inc162 = add i32 %87, 1, !dbg !5129
  store i32 %inc162, ptr %i, align 4, !dbg !5129
  %88 = load ptr, ptr %bin_attr, align 8, !dbg !5130
  %incdec.ptr163 = getelementptr ptr, ptr %88, i32 1, !dbg !5130
  store ptr %incdec.ptr163, ptr %bin_attr, align 8, !dbg !5130
  br label %for.cond78, !dbg !5131, !llvm.loop !5132

for.end164:                                       ; preds = %cleanup158, %for.cond78
  %89 = load i32, ptr %error, align 4, !dbg !5134
  %tobool165 = icmp ne i32 %89, 0, !dbg !5134
  br i1 %tobool165, label %if.then166, label %if.end167, !dbg !5136

if.then166:                                       ; preds = %for.end164
  %90 = load ptr, ptr %parent.addr, align 8, !dbg !5137
  %91 = load ptr, ptr %grp.addr, align 8, !dbg !5138
  call void @remove_files(ptr noundef %90, ptr noundef %91) #10, !dbg !5139
  br label %if.end167, !dbg !5139

if.end167:                                        ; preds = %if.then166, %for.end164
  br label %if.end168, !dbg !5140

if.end168:                                        ; preds = %if.end167, %if.end74
  br label %exit, !dbg !5058

exit:                                             ; preds = %if.end168, %if.then72
  call void @llvm.dbg.label(metadata !4955), !dbg !5141
  %92 = load i32, ptr %error, align 4, !dbg !5142
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !5143
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #11, !dbg !5143
  call void @llvm.lifetime.end.p0(i64 8, ptr %bin_attr) #11, !dbg !5143
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #11, !dbg !5143
  ret i32 %92, !dbg !5144

unreachable:                                      ; preds = %cleanup158, %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5145 dso_local i32 @sysfs_add_bin_file_mode_ns(ptr noundef, ptr noundef, i16 noundef zeroext, i32, i32, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5150 dso_local ptr @kernfs_find_and_get_ns(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5153 dso_local i32 @kernfs_remove_by_name_ns(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5156 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5161 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone }
attributes #11 = { nounwind }
attributes #12 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_create_group261", scope: !2, file: !3, line: 180, type: !64, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/sysfs/.group.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/sysfs/group\22 -D KBUILD_BASENAME=\22group\22 -D KBUILD_MODNAME=\22group\22 -D __KBUILD_MODNAME=kmod_group -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/sysfs/group.ll fs/sysfs/group.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !63, globals: !67, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/sysfs/group.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53556fb032adcfd128aa48f8b41fcfc6")
!4 = !{!5, !13, !18, !24, !29, !37, !43, !50, !57}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !51, line: 15, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!54 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!55 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!56 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !58, line: 26, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!63 = !{!64, !65, !66}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!67 = !{!0, !68, !70, !72, !74, !80, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !108}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_create_groups262", scope: !2, file: !3, line: 220, type: !64, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_update_groups263", scope: !2, file: !3, line: 238, type: !64, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_update_group264", scope: !2, file: !3, line: 263, type: !64, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !3, line: 282, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 376, elements: !78)
!77 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!78 = !{!79}
!79 = !DISubrange(count: 47)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !3, line: 282, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 136, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 17)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_remove_group265", scope: !2, file: !3, line: 298, type: !64, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_remove_groups266", scope: !2, file: !3, line: 318, type: !64, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_merge_group267", scope: !2, file: !3, line: 356, type: !64, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_unmerge_group268", scope: !2, file: !3, line: 376, type: !64, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_add_link_to_group269", scope: !2, file: !3, line: 400, type: !64, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_remove_link_from_group270", scope: !2, file: !3, line: 419, type: !64, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_compat_only_sysfs_link_entry_to_kobj271", scope: !2, file: !3, line: 469, type: !64, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_group_change_owner272", scope: !2, file: !3, line: 552, type: !64, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_groups_change_owner273", scope: !2, file: !3, line: 583, type: !64, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !3, line: 133, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 360, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 45)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 312, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 39)
!113 = !{i32 7, !"Dwarf Version", i32 5}
!114 = !{i32 2, !"Debug Info Version", i32 3}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 8, !"cf-protection-branch", i32 1}
!117 = !{i32 4, !"function_return_thunk_extern", i32 1}
!118 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!119 = !{i32 1, !"Code Model", i32 2}
!120 = !{i32 1, !"override-stack-alignment", i32 8}
!121 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!122 = distinct !DISubprogram(name: "sysfs_create_group", scope: !3, file: !3, line: 175, type: !123, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3887)
!123 = !DISubroutineType(types: !124)
!124 = !{!125, !126, !268}
!125 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !128, line: 64, size: 512, elements: !129)
!128 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!129 = !{!130, !133, !140, !141, !230, !3774, !3877, !3882, !3883, !3884, !3885, !3886}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !127, file: !128, line: 65, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !127, file: !128, line: 66, baseType: !134, size: 128, offset: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !135, line: 190, size: 128, elements: !136)
!135 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!136 = !{!137, !139}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !135, line: 191, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !134, file: !135, line: 191, baseType: !138, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !127, file: !128, line: 67, baseType: !126, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !127, file: !128, line: 68, baseType: !142, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !128, line: 168, size: 768, elements: !144)
!144 = !{!145, !146, !189, !190}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !143, file: !128, line: 169, baseType: !134, size: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !143, file: !128, line: 170, baseType: !147, size: 32, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !148, line: 29, baseType: !149)
!148 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !148, line: 17, size: 32, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !148, line: 18, baseType: !152, size: 32)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !148, line: 18, size: 32, elements: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !152, file: !148, line: 19, baseType: !155, size: 32)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !156, line: 14, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !155, file: !156, line: 15, baseType: !159, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !160, line: 44, baseType: !161)
!160 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !160, line: 14, size: 32, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !161, file: !160, line: 15, baseType: !164, size: 32)
!164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !161, file: !160, line: 15, size: 32, elements: !165)
!165 = !{!166, !171, !181}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !164, file: !160, line: 16, baseType: !167, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !135, line: 174, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 172, size: 32, elements: !169)
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !168, file: !135, line: 173, baseType: !125, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !160, line: 24, baseType: !172, size: 16)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !164, file: !160, line: 24, size: 16, elements: !173)
!173 = !{!174, !180}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !172, file: !160, line: 25, baseType: !175, size: 8)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !176, line: 17, baseType: !177)
!176 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !178, line: 21, baseType: !179)
!178 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!179 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !172, file: !160, line: 26, baseType: !175, size: 8, offset: 8)
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !160, line: 28, baseType: !182, size: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !164, file: !160, line: 28, size: 32, elements: !183)
!183 = !{!184, !188}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !182, file: !160, line: 29, baseType: !185, size: 16)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !176, line: 19, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !178, line: 24, baseType: !187)
!187 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !182, file: !160, line: 30, baseType: !185, size: 16, offset: 16)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !143, file: !128, line: 171, baseType: !127, size: 512, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !143, file: !128, line: 172, baseType: !191, size: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !128, line: 133, size: 192, elements: !194)
!194 = !{!195, !202, !207}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !193, file: !128, line: 134, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!125, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !128, line: 135, baseType: !203, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!131, !200}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !193, file: !128, line: 136, baseType: !208, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!125, !200, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !128, line: 125, size: 20736, elements: !214)
!214 = !{!215, !220, !224, !225, !229}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !213, file: !128, line: 126, baseType: !216, size: 192)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 192, elements: !218)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!218 = !{!219}
!219 = !DISubrange(count: 3)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !213, file: !128, line: 127, baseType: !221, size: 4096, offset: 192)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 4096, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !213, file: !128, line: 128, baseType: !125, size: 32, offset: 4288)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !213, file: !128, line: 129, baseType: !226, size: 16384, offset: 4320)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 16384, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 2048)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !213, file: !128, line: 130, baseType: !125, size: 32, offset: 20704)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !127, file: !128, line: 69, baseType: !231, size: 64, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !128, line: 116, size: 384, elements: !234)
!234 = !{!235, !239, !266, !3736, !3764, !3768}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !233, file: !128, line: 117, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !126}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !233, file: !128, line: 118, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !243, line: 254, size: 128, elements: !244)
!243 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!244 = !{!245, !259}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !242, file: !243, line: 255, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !126, !253, !217}
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !135, line: 66, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !251, line: 73, baseType: !252)
!251 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !251, line: 15, baseType: !66)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !243, line: 30, size: 128, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !254, file: !243, line: 31, baseType: !131, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !254, file: !243, line: 32, baseType: !258, size: 16, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !135, line: 24, baseType: !187)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !242, file: !243, line: 256, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!249, !126, !253, !131, !263}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !135, line: 61, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !251, line: 72, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !251, line: 16, baseType: !65)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !233, file: !128, line: 119, baseType: !267, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !243, line: 84, size: 320, elements: !271)
!271 = !{!272, !273, !277, !3732, !3734}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !270, file: !243, line: 85, baseType: !131, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !270, file: !243, line: 86, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!258, !126, !253, !125}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !270, file: !243, line: 88, baseType: !278, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!258, !126, !281, !125}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !243, line: 175, size: 512, elements: !283)
!283 = !{!284, !285, !286, !287, !3723, !3727, !3728}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !282, file: !243, line: 176, baseType: !254, size: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !282, file: !243, line: 177, baseType: !263, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !282, file: !243, line: 178, baseType: !64, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !282, file: !243, line: 179, baseType: !288, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !293)
!293 = !{!294, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3717, !3718, !3719, !3720, !3721, !3722}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !292, file: !14, line: 473, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !297)
!297 = !{!298, !299, !300, !308, !309, !316, !317, !320, !321, !3495, !3496, !3497, !3498, !3499, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3539, !3542, !3543, !3544, !3553, !3554, !3555, !3556}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !296, file: !14, line: 642, baseType: !258, size: 16)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !296, file: !14, line: 643, baseType: !187, size: 16, offset: 16)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !296, file: !14, line: 644, baseType: !301, size: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !302, line: 23, baseType: !303)
!302 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 21, size: 32, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !303, file: !302, line: 22, baseType: !306, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !135, line: 37, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !251, line: 49, baseType: !7)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !296, file: !14, line: 645, baseType: !134, size: 128, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !296, file: !14, line: 646, baseType: !310, size: 32, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !302, line: 28, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 26, size: 32, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !311, file: !302, line: 27, baseType: !314, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !135, line: 38, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !251, line: 50, baseType: !7)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !296, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !296, file: !14, line: 650, baseType: !318, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !296, file: !14, line: 651, baseType: !318, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !296, file: !14, line: 654, baseType: !322, size: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !325)
!325 = !{!326, !3323, !3333, !3337, !3341, !3345, !3349, !3353, !3357, !3361, !3365, !3366, !3370, !3374, !3411, !3440, !3444, !3450, !3454, !3458, !3462, !3466, !3470, !3476, !3480}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !324, file: !14, line: 1967, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!330, !295, !330, !7}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !332, line: 82, size: 1536, elements: !333)
!332 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!333 = !{!334, !335, !345, !353, !354, !374, !375, !379, !392, !3306, !3307, !3308, !3309, !3315, !3316, !3317}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !331, file: !332, line: 84, baseType: !7, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !331, file: !332, line: 85, baseType: !336, size: 32, offset: 32)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !337, line: 275, baseType: !338)
!337 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !337, line: 275, size: 32, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !338, file: !337, line: 275, baseType: !341, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !337, line: 69, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !337, line: 64, size: 32, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !342, file: !337, line: 65, baseType: !7, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !331, file: !332, line: 86, baseType: !346, size: 128, offset: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !347, line: 38, size: 128, elements: !348)
!347 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!348 = !{!349, !351}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !347, line: 39, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !346, file: !347, line: 39, baseType: !352, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !331, file: !332, line: 87, baseType: !330, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !331, file: !332, line: 88, baseType: !355, size: 128, offset: 256)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !332, line: 49, size: 128, elements: !356)
!356 = !{!357, !371}
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !332, line: 50, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !332, line: 50, size: 64, elements: !359)
!359 = !{!360, !367}
!360 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !332, line: 51, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !332, line: 51, size: 64, elements: !362)
!362 = !{!363, !366}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !361, file: !332, line: 52, baseType: !364, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !176, line: 21, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !178, line: 27, baseType: !7)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !361, file: !332, line: 52, baseType: !364, size: 32, offset: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !358, file: !332, line: 54, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !176, line: 23, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !178, line: 31, baseType: !370)
!370 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !355, file: !332, line: 56, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !331, file: !332, line: 89, baseType: !295, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !331, file: !332, line: 91, baseType: !376, size: 256, offset: 448)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !331, file: !332, line: 94, baseType: !380, size: 64, offset: 704)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !381, line: 25, size: 64, elements: !382)
!381 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !381, line: 26, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !381, line: 26, size: 64, elements: !385)
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !384, file: !381, line: 28, baseType: !369, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !381, line: 30, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !384, file: !381, line: 30, size: 64, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !388, file: !381, line: 31, baseType: !147, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !388, file: !381, line: 32, baseType: !125, size: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !331, file: !332, line: 95, baseType: !393, size: 64, offset: 768)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !332, line: 128, size: 1024, align: 512, elements: !396)
!396 = !{!397, !401, !402, !409, !415, !419, !423, !427, !428, !432, !436, !3296, !3300}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !395, file: !332, line: 129, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!125, !330, !7}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !395, file: !332, line: 130, baseType: !398, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !395, file: !332, line: 131, baseType: !403, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!125, !406, !408}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !395, file: !332, line: 132, baseType: !410, size: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!125, !406, !7, !131, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !395, file: !332, line: 134, baseType: !416, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!125, !406}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !395, file: !332, line: 135, baseType: !420, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!125, !330}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !395, file: !332, line: 136, baseType: !424, size: 64, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !330}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !395, file: !332, line: 137, baseType: !424, size: 64, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !395, file: !332, line: 138, baseType: !429, size: 64, offset: 512)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !330, !295}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !395, file: !332, line: 139, baseType: !433, size: 64, offset: 576)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!217, !330, !217, !125}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !395, file: !332, line: 140, baseType: !437, size: 64, offset: 640)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!440, !3295}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !442, line: 70, size: 256, elements: !443)
!442 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!443 = !{!444, !445, !3291, !3292}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !441, file: !442, line: 71, baseType: !330, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !441, file: !442, line: 72, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !448)
!448 = !{!449, !450, !453, !454, !455, !459, !939, !1080, !1120, !1210, !1214, !1215, !1216, !1217, !1218, !1227, !1228, !1229, !1230, !1235, !1239, !1240, !1243, !1246, !1249, !1252, !1253, !1254, !1295, !3224, !3225, !3226, !3227, !3228, !3229, !3232, !3234, !3241, !3242, !3243, !3244, !3245, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !447, file: !14, line: 1191, baseType: !134, size: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !447, file: !14, line: 1192, baseType: !451, size: 32, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !135, line: 21, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !135, line: 18, baseType: !364)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !447, file: !14, line: 1193, baseType: !179, size: 8, offset: 160)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !447, file: !14, line: 1194, baseType: !65, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !447, file: !14, line: 1195, baseType: !456, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !135, line: 52, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !251, line: 88, baseType: !458)
!458 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !447, file: !14, line: 1196, baseType: !460, size: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !462)
!462 = !{!463, !464, !465, !472, !476, !480, !484, !924, !925, !929, !931, !932, !933, !935, !936, !937, !938}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !461, file: !14, line: 2367, baseType: !131, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !461, file: !14, line: 2368, baseType: !125, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !461, file: !14, line: 2376, baseType: !466, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!125, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !471, line: 32, flags: DIFlagFwdDecl)
!471 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!472 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !461, file: !14, line: 2377, baseType: !473, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!475 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !461, file: !14, line: 2378, baseType: !477, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!330, !460, !125, !131, !64}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !461, file: !14, line: 2380, baseType: !481, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !446}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !461, file: !14, line: 2381, baseType: !485, size: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !487)
!487 = !{!488, !489, !490, !494, !516, !542, !543, !544, !545, !549, !554, !555, !575, !631, !632, !633, !634, !635, !638, !639, !640, !648, !652, !679, !700, !701, !702, !703, !712, !735, !736, !739, !742, !743, !744, !745, !746, !747, !748, !753, !754, !882, !890, !891, !892, !894, !898, !899, !903, !904, !905, !906, !908, !909, !910, !917, !918, !919, !923}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !486, file: !6, line: 403, baseType: !5, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !486, file: !6, line: 406, baseType: !134, size: 128, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !486, file: !6, line: 409, baseType: !491, size: 448, offset: 192)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 448, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 56)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !486, file: !6, line: 417, baseType: !495, size: 768, offset: 640)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !496)
!496 = !{!497, !498, !499, !500, !503}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !495, file: !6, line: 46, baseType: !127, size: 512)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !495, file: !6, line: 47, baseType: !485, size: 64, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !495, file: !6, line: 48, baseType: !126, size: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !495, file: !6, line: 49, baseType: !501, size: 64, offset: 640)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !495, file: !6, line: 50, baseType: !504, size: 64, offset: 704)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !506, line: 26, size: 256, elements: !507)
!506 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !505, file: !506, line: 27, baseType: !7, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !505, file: !506, line: 28, baseType: !510, size: 192, offset: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !511, line: 43, size: 192, elements: !512)
!511 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!512 = !{!513, !515}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !510, file: !511, line: 44, baseType: !514, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !156, line: 23, baseType: !155)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !510, file: !511, line: 45, baseType: !134, size: 128, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !486, file: !6, line: 418, baseType: !517, size: 64, offset: 1408)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !519)
!519 = !{!520, !521, !526, !530, !534, !538}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !518, file: !6, line: 54, baseType: !254, size: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !518, file: !6, line: 55, baseType: !522, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!249, !517, !525, !217}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !518, file: !6, line: 57, baseType: !527, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!249, !517, !525, !131, !263}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !518, file: !6, line: 59, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !485, !131}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !518, file: !6, line: 60, baseType: !535, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!125, !485}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !518, file: !6, line: 61, baseType: !539, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !485}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !486, file: !6, line: 419, baseType: !131, size: 64, offset: 1472)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !486, file: !6, line: 420, baseType: !131, size: 64, offset: 1536)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !486, file: !6, line: 421, baseType: !126, size: 64, offset: 1600)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !486, file: !6, line: 424, baseType: !546, size: 64, offset: 1664)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !486, file: !6, line: 425, baseType: !550, size: 64, offset: 1728)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !176, line: 20, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !178, line: 26, baseType: !125)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !486, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !486, file: !6, line: 435, baseType: !556, size: 256, offset: 1856)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !557, line: 66, size: 256, elements: !558)
!557 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!558 = !{!559, !568, !569, !574}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !556, file: !557, line: 67, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !561, line: 13, baseType: !562)
!561 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !135, line: 181, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 179, size: 64, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !563, file: !135, line: 180, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !176, line: 22, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !178, line: 30, baseType: !458)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !556, file: !557, line: 68, baseType: !514, size: 32, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !556, file: !557, line: 70, baseType: !570, size: 32, offset: 96)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !571, line: 15, size: 32, elements: !572)
!571 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!572 = !{!573}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !570, file: !571, line: 20, baseType: !167, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !556, file: !557, line: 72, baseType: !134, size: 128, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !486, file: !6, line: 437, baseType: !576, size: 64, offset: 2112)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !578, line: 69, size: 320, elements: !579)
!578 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!579 = !{!580, !581, !582, !602, !604, !608, !609}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !577, file: !578, line: 70, baseType: !131, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !577, file: !578, line: 71, baseType: !485, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !577, file: !578, line: 72, baseType: !583, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !578, line: 47, size: 256, elements: !586)
!586 = !{!587, !588, !594, !598}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !585, file: !578, line: 49, baseType: !7, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !585, file: !578, line: 51, baseType: !589, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!125, !131, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !585, file: !578, line: 53, baseType: !595, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!125, !217, !592}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !585, file: !578, line: 55, baseType: !599, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !64}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !577, file: !578, line: 73, baseType: !603, size: 16, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !577, file: !578, line: 74, baseType: !605, size: 8, offset: 208)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !176, line: 16, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !178, line: 20, baseType: !607)
!607 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !578, line: 75, baseType: !175, size: 8, offset: 216)
!609 = !DIDerivedType(tag: DW_TAG_member, scope: !577, file: !578, line: 76, baseType: !610, size: 64, offset: 256)
!610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !577, file: !578, line: 76, size: 64, elements: !611)
!611 = !{!612, !613, !620}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !610, file: !578, line: 77, baseType: !64, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !610, file: !578, line: 78, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !578, line: 86, size: 128, elements: !617)
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !616, file: !578, line: 87, baseType: !7, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !616, file: !578, line: 88, baseType: !217, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !610, file: !578, line: 79, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !578, line: 92, size: 256, elements: !624)
!624 = !{!625, !626, !627, !629, !630}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !623, file: !578, line: 94, baseType: !7, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !623, file: !578, line: 95, baseType: !7, size: 32, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !623, file: !578, line: 96, baseType: !628, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !623, file: !578, line: 97, baseType: !583, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !623, file: !578, line: 98, baseType: !64, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !486, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !486, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !486, file: !6, line: 442, baseType: !546, size: 64, offset: 2240)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !486, file: !6, line: 443, baseType: !550, size: 64, offset: 2304)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !486, file: !6, line: 444, baseType: !636, size: 8, offset: 2368)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !135, line: 35, baseType: !637)
!637 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !486, file: !6, line: 451, baseType: !636, size: 8, offset: 2376)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !486, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !486, file: !6, line: 455, baseType: !641, size: 64, offset: 2432)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !643, line: 23, size: 96, elements: !644)
!643 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!644 = !{!645, !646, !647}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !642, file: !643, line: 24, baseType: !125, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !642, file: !643, line: 24, baseType: !125, size: 32, offset: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !642, file: !643, line: 24, baseType: !125, size: 32, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !486, file: !6, line: 458, baseType: !649, size: 64, offset: 2496)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!125}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !486, file: !6, line: 460, baseType: !653, size: 4032, align: 512, offset: 2560)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 4032, elements: !677)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !655)
!655 = !{!656, !657, !658}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !654, file: !6, line: 363, baseType: !64, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !654, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !654, file: !6, line: 367, baseType: !659, size: 448, offset: 128)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !659, file: !6, line: 320, baseType: !485, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !659, file: !6, line: 321, baseType: !663, size: 384, offset: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !664, line: 40, size: 384, elements: !665)
!664 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !663, file: !664, line: 41, baseType: !667, size: 384, align: 64)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 384, align: 64, elements: !675)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !669, line: 5, size: 192, align: 64, elements: !670)
!669 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!670 = !{!671, !672, !674}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !668, file: !669, line: 6, baseType: !65, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !668, file: !669, line: 7, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !668, file: !669, line: 8, baseType: !673, size: 64, offset: 128)
!675 = !{!676}
!676 = !DISubrange(count: 2)
!677 = !{!678}
!678 = !DISubrange(count: 7)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !486, file: !6, line: 463, baseType: !680, size: 192, offset: 6592)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !681, line: 8, size: 192, elements: !682)
!681 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!682 = !{!683, !684, !686}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !680, file: !681, line: 10, baseType: !7, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !680, file: !681, line: 11, baseType: !685, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !680, file: !681, line: 12, baseType: !687, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !689, line: 59, size: 48, elements: !690)
!689 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!690 = !{!691, !695, !696, !697, !698, !699}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !688, file: !689, line: 60, baseType: !692, size: 16)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !176, line: 18, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !178, line: 23, baseType: !694)
!694 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !688, file: !689, line: 61, baseType: !692, size: 16, offset: 16)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !688, file: !689, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !688, file: !689, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !688, file: !689, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !688, file: !689, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !486, file: !6, line: 465, baseType: !65, size: 64, offset: 6784)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !486, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !486, file: !6, line: 470, baseType: !134, size: 128, offset: 6912)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !486, file: !6, line: 471, baseType: !704, size: 64, offset: 7040)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !706, line: 33, size: 96, elements: !707)
!706 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!707 = !{!708, !709, !710, !711}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !705, file: !706, line: 37, baseType: !125, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !705, file: !706, line: 43, baseType: !125, size: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !705, file: !706, line: 45, baseType: !187, size: 16, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !706, line: 47, baseType: !187, size: 16, offset: 80)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !486, file: !6, line: 476, baseType: !713, size: 64, offset: 7104)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !715)
!715 = !{!716, !732, !733, !734}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !714, file: !6, line: 379, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !719, line: 204, baseType: !720)
!719 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !719, line: 197, size: 192, elements: !721)
!721 = !{!722, !724, !725, !726, !728, !730}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !720, file: !719, line: 198, baseType: !723, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !719, line: 21, baseType: !365)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !720, file: !719, line: 199, baseType: !179, size: 8, offset: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !720, file: !719, line: 200, baseType: !179, size: 8, offset: 40)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !720, file: !719, line: 201, baseType: !727, size: 16, offset: 48)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !719, line: 17, baseType: !186)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !720, file: !719, line: 202, baseType: !729, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !719, line: 16, baseType: !369)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !720, file: !719, line: 203, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !719, line: 22, baseType: !369)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !714, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !714, file: !6, line: 381, baseType: !217, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !714, file: !6, line: 382, baseType: !217, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !486, file: !6, line: 477, baseType: !714, size: 256, offset: 7168)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !486, file: !6, line: 480, baseType: !737, size: 64, offset: 7424)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !486, file: !6, line: 483, baseType: !740, size: 64, offset: 7488)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !486, file: !6, line: 488, baseType: !217, size: 64, offset: 7552)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !486, file: !6, line: 492, baseType: !64, size: 64, offset: 7616)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !486, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !486, file: !6, line: 495, baseType: !64, size: 64, offset: 7744)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !486, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !486, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !486, file: !6, line: 500, baseType: !749, size: 64, offset: 7872)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !751, line: 45, baseType: !752)
!751 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !486, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !486, file: !6, line: 504, baseType: !755, size: 64, offset: 8000)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !758, line: 96, size: 192, elements: !759)
!758 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!759 = !{!760, !761, !842, !846}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !757, file: !758, line: 97, baseType: !7, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !757, file: !758, line: 98, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !758, line: 24, size: 3072, elements: !764)
!764 = !{!765, !767, !768, !769, !770, !794, !795, !796, !797, !815, !827, !828, !839, !840, !841}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !763, file: !758, line: 26, baseType: !766, size: 128)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 128, elements: !675)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !763, file: !758, line: 27, baseType: !766, size: 128, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !763, file: !758, line: 28, baseType: !125, size: 32, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !763, file: !758, line: 31, baseType: !147, size: 32, align: 512, offset: 512)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !763, file: !758, line: 32, baseType: !771, size: 960, offset: 576)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !772, line: 206, size: 960, elements: !773)
!772 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!773 = !{!774, !783, !788, !790, !791, !793}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !771, file: !772, line: 207, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !135, line: 232, size: 128, align: 64, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !776, file: !135, line: 233, baseType: !775, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !776, file: !135, line: 234, baseType: !780, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !775}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !771, file: !772, line: 208, baseType: !784, size: 256, offset: 64)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, size: 256, elements: !786)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!786 = !{!787}
!787 = !DISubrange(count: 4)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !771, file: !772, line: 209, baseType: !789, size: 256, offset: 320)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 256, elements: !786)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !771, file: !772, line: 213, baseType: !66, size: 64, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !771, file: !772, line: 215, baseType: !792, size: 256, offset: 640)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 256, elements: !786)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !772, line: 216, baseType: !175, size: 8, offset: 896)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !763, file: !758, line: 33, baseType: !65, size: 64, offset: 1536)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !763, file: !758, line: 34, baseType: !65, size: 64, offset: 1600)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !763, file: !758, line: 35, baseType: !636, size: 8, offset: 1664)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !763, file: !758, line: 36, baseType: !798, size: 320, offset: 1728)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !799, line: 11, size: 320, elements: !800)
!799 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!800 = !{!801, !808, !809, !814}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !798, file: !799, line: 16, baseType: !802, size: 128)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !135, line: 198, size: 128, elements: !803)
!803 = !{!804, !806}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !802, file: !135, line: 199, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !802, file: !135, line: 199, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !798, file: !799, line: 17, baseType: !65, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !798, file: !799, line: 18, baseType: !810, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !813}
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !798, file: !799, line: 19, baseType: !364, size: 32, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !763, file: !758, line: 37, baseType: !816, size: 256, offset: 2048)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !817, line: 98, size: 256, elements: !818)
!817 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!818 = !{!819, !820, !821}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !816, file: !817, line: 99, baseType: !560, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !816, file: !817, line: 100, baseType: !134, size: 128, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !816, file: !817, line: 101, baseType: !822, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !817, line: 21, baseType: !823)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !826}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !763, file: !758, line: 38, baseType: !776, size: 128, align: 64, offset: 2304)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !763, file: !758, line: 39, baseType: !829, size: 64, offset: 2432)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !758, line: 49, size: 768, elements: !831)
!831 = !{!832, !833, !834, !835, !836, !837, !838}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !830, file: !758, line: 50, baseType: !147, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !830, file: !758, line: 51, baseType: !789, size: 256, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !830, file: !758, line: 53, baseType: !789, size: 256, offset: 320)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !830, file: !758, line: 54, baseType: !65, size: 64, offset: 576)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !830, file: !758, line: 55, baseType: !829, size: 64, offset: 640)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !830, file: !758, line: 56, baseType: !125, size: 32, offset: 704)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !830, file: !758, line: 57, baseType: !125, size: 32, offset: 736)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !763, file: !758, line: 40, baseType: !65, size: 64, offset: 2496)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !763, file: !758, line: 42, baseType: !125, size: 32, offset: 2560)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !763, file: !758, line: 43, baseType: !756, size: 64, offset: 2624)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !757, file: !758, line: 99, baseType: !843, offset: 128)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !844, line: 211, elements: !845)
!844 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!845 = !{}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !757, file: !758, line: 100, baseType: !847, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !758, line: 63, size: 3008, elements: !849)
!849 = !{!850, !851, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !881}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !848, file: !758, line: 64, baseType: !829, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !848, file: !758, line: 65, baseType: !852, size: 192, offset: 64)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 192, elements: !218)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !848, file: !758, line: 67, baseType: !125, size: 32, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !848, file: !758, line: 68, baseType: !556, size: 256, offset: 320)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !848, file: !758, line: 69, baseType: !147, size: 32, offset: 576)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !848, file: !758, line: 70, baseType: !556, size: 256, offset: 640)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !848, file: !758, line: 71, baseType: !65, size: 64, offset: 896)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !848, file: !758, line: 72, baseType: !65, size: 64, offset: 960)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !848, file: !758, line: 73, baseType: !65, size: 64, offset: 1024)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !848, file: !758, line: 74, baseType: !65, size: 64, offset: 1088)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !848, file: !758, line: 75, baseType: !65, size: 64, offset: 1152)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !848, file: !758, line: 76, baseType: !65, size: 64, offset: 1216)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !848, file: !758, line: 77, baseType: !65, size: 64, offset: 1280)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !848, file: !758, line: 78, baseType: !65, size: 64, offset: 1344)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !848, file: !758, line: 79, baseType: !636, size: 8, offset: 1408)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !848, file: !758, line: 80, baseType: !65, size: 64, offset: 1472)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !848, file: !758, line: 81, baseType: !556, size: 256, offset: 1536)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !848, file: !758, line: 82, baseType: !505, size: 256, offset: 1792)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !848, file: !758, line: 84, baseType: !167, size: 32, offset: 2048)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !848, file: !758, line: 87, baseType: !65, size: 64, offset: 2112)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !848, file: !758, line: 88, baseType: !65, size: 64, offset: 2176)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !848, file: !758, line: 89, baseType: !873, size: 704, offset: 2240)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !817, line: 111, size: 704, elements: !874)
!874 = !{!875, !876, !877, !880}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !873, file: !817, line: 112, baseType: !816, size: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !873, file: !817, line: 113, baseType: !798, size: 320, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !873, file: !817, line: 116, baseType: !878, size: 64, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !817, line: 18, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !873, file: !817, line: 117, baseType: !125, size: 32, offset: 640)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !848, file: !758, line: 90, baseType: !756, size: 64, offset: 2944)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !486, file: !6, line: 515, baseType: !883, size: 64, offset: 8064)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !885, line: 117, size: 128, elements: !886)
!885 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!886 = !{!887, !888, !889}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !884, file: !885, line: 118, baseType: !552, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !884, file: !885, line: 119, baseType: !552, size: 32, offset: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !884, file: !885, line: 120, baseType: !66, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !486, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !486, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !486, file: !6, line: 520, baseType: !893, size: 64, offset: 8192)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !486, file: !6, line: 523, baseType: !895, size: 64, offset: 8256)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !486, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !486, file: !6, line: 525, baseType: !900, size: 64, offset: 8384)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !486, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !486, file: !6, line: 533, baseType: !64, size: 64, offset: 8512)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !486, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !486, file: !6, line: 535, baseType: !907, size: 64, offset: 8640)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !486, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !486, file: !6, line: 539, baseType: !125, size: 32, offset: 8736)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !486, file: !6, line: 540, baseType: !911, size: 64, offset: 8768)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !913, line: 32, size: 64, elements: !914)
!913 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !912, file: !913, line: 33, baseType: !552, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !912, file: !913, line: 34, baseType: !552, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !486, file: !6, line: 563, baseType: !134, size: 128, offset: 8832)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !486, file: !6, line: 565, baseType: !134, size: 128, offset: 8960)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !486, file: !6, line: 568, baseType: !920, size: 64, offset: 9088)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{null}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !486, file: !6, line: 570, baseType: !167, size: 32, offset: 9152)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !461, file: !14, line: 2382, baseType: !460, size: 64, offset: 448)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !461, file: !14, line: 2383, baseType: !926, size: 64, offset: 512)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !135, line: 194, size: 64, elements: !927)
!927 = !{!928}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !926, file: !135, line: 195, baseType: !805, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !461, file: !14, line: 2385, baseType: !930, offset: 576)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !844, line: 206, elements: !845)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !461, file: !14, line: 2386, baseType: !930, offset: 576)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !461, file: !14, line: 2387, baseType: !930, offset: 576)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !461, file: !14, line: 2388, baseType: !934, offset: 576)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !930, elements: !218)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !461, file: !14, line: 2390, baseType: !930, offset: 576)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !461, file: !14, line: 2391, baseType: !930, offset: 576)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !461, file: !14, line: 2392, baseType: !930, offset: 576)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !461, file: !14, line: 2393, baseType: !930, offset: 576)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !447, file: !14, line: 1197, baseType: !940, size: 64, offset: 384)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !942)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !943)
!943 = !{!944, !948, !952, !953, !957, !963, !967, !968, !969, !973, !977, !981, !982, !983, !989, !993, !994, !1001, !1002, !1003, !1004, !1008, !1012, !1061, !1078, !1079}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !942, file: !14, line: 2058, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!295, !446}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !942, file: !14, line: 2059, baseType: !949, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !295}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !942, file: !14, line: 2060, baseType: !949, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !942, file: !14, line: 2062, baseType: !954, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !295, !125}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !942, file: !14, line: 2063, baseType: !958, size: 64, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!125, !295, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !942, file: !14, line: 2064, baseType: !964, size: 64, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!125, !295}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !942, file: !14, line: 2065, baseType: !949, size: 64, offset: 384)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !942, file: !14, line: 2066, baseType: !481, size: 64, offset: 448)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !942, file: !14, line: 2067, baseType: !970, size: 64, offset: 512)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!125, !446, !125}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !942, file: !14, line: 2068, baseType: !974, size: 64, offset: 576)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!125, !446, !13}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !942, file: !14, line: 2069, baseType: !978, size: 64, offset: 640)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!125, !446}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !942, file: !14, line: 2070, baseType: !974, size: 64, offset: 704)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !942, file: !14, line: 2071, baseType: !978, size: 64, offset: 768)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !942, file: !14, line: 2072, baseType: !984, size: 64, offset: 832)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!125, !330, !987}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !942, file: !14, line: 2073, baseType: !990, size: 64, offset: 896)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!125, !446, !685, !217}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !942, file: !14, line: 2074, baseType: !481, size: 64, offset: 960)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !942, file: !14, line: 2076, baseType: !995, size: 64, offset: 1024)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!125, !998, !330}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1000, line: 66, flags: DIFlagFwdDecl)
!1000 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !942, file: !14, line: 2077, baseType: !995, size: 64, offset: 1088)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !942, file: !14, line: 2078, baseType: !995, size: 64, offset: 1152)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !942, file: !14, line: 2079, baseType: !995, size: 64, offset: 1216)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !942, file: !14, line: 2081, baseType: !1005, size: 64, offset: 1280)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!249, !446, !125, !217, !263, !456}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !942, file: !14, line: 2082, baseType: !1009, size: 64, offset: 1344)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!249, !446, !125, !131, !263, !456}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !942, file: !14, line: 2083, baseType: !1013, size: 64, offset: 1408)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!1016, !295}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1019)
!1019 = !{!1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1044, !1045, !1046}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1018, file: !19, line: 297, baseType: !802, size: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1018, file: !19, line: 298, baseType: !134, size: 128, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1018, file: !19, line: 299, baseType: !134, size: 128, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1018, file: !19, line: 300, baseType: !134, size: 128, offset: 384)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1018, file: !19, line: 301, baseType: !556, size: 256, offset: 512)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1018, file: !19, line: 302, baseType: !147, size: 32, offset: 768)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1018, file: !19, line: 303, baseType: !167, size: 32, offset: 800)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1018, file: !19, line: 304, baseType: !446, size: 64, offset: 832)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1018, file: !19, line: 305, baseType: !1029, size: 64, offset: 896)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1030)
!1030 = !{!1031, !1043}
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !19, line: 69, baseType: !1032, size: 32)
!1032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1029, file: !19, line: 69, size: 32, elements: !1033)
!1033 = !{!1034, !1035, !1036}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1032, file: !19, line: 70, baseType: !301, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1032, file: !19, line: 71, baseType: !310, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1032, file: !19, line: 72, baseType: !1037, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1038, line: 24, baseType: !1039)
!1038 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1038, line: 22, size: 32, elements: !1040)
!1040 = !{!1041}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1039, file: !1038, line: 23, baseType: !1042, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1038, line: 20, baseType: !307)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1029, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1018, file: !19, line: 306, baseType: !456, size: 64, offset: 960)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1018, file: !19, line: 307, baseType: !65, size: 64, offset: 1024)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1018, file: !19, line: 308, baseType: !1047, size: 576, offset: 1088)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1048)
!1048 = !{!1049, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1060}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1047, file: !19, line: 206, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !458)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1047, file: !19, line: 207, baseType: !1050, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1047, file: !19, line: 208, baseType: !1050, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1047, file: !19, line: 209, baseType: !1050, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1047, file: !19, line: 210, baseType: !1050, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1047, file: !19, line: 211, baseType: !1050, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1047, file: !19, line: 212, baseType: !1050, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1047, file: !19, line: 213, baseType: !1058, size: 64, offset: 448)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1059, line: 8, baseType: !567)
!1059 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1047, file: !19, line: 214, baseType: !1058, size: 64, offset: 512)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !942, file: !14, line: 2085, baseType: !1062, size: 64, offset: 1472)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!66, !446, !1065}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1067, line: 15, size: 256, elements: !1068)
!1067 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1068 = !{!1069, !1071, !1072, !1073, !1074}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1066, file: !1067, line: 16, baseType: !1070, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !135, line: 154, baseType: !7)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1066, file: !1067, line: 19, baseType: !125, size: 32, offset: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1066, file: !1067, line: 26, baseType: !65, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1066, file: !1067, line: 33, baseType: !65, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1066, file: !1067, line: 36, baseType: !1075, size: 64, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1077, line: 33, flags: DIFlagFwdDecl)
!1077 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !942, file: !14, line: 2087, baseType: !1062, size: 64, offset: 1536)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !942, file: !14, line: 2089, baseType: !481, size: 64, offset: 1600)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !447, file: !14, line: 1198, baseType: !1081, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1083)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1084)
!1084 = !{!1085, !1089, !1093, !1097, !1098, !1099, !1100, !1101, !1106, !1111, !1115}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1083, file: !19, line: 325, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!125, !1017}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1083, file: !19, line: 326, baseType: !1090, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!1017, !446, !125}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1083, file: !19, line: 327, baseType: !1094, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !1017}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1083, file: !19, line: 328, baseType: !1086, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1083, file: !19, line: 329, baseType: !1086, size: 64, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1083, file: !19, line: 330, baseType: !1086, size: 64, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1083, file: !19, line: 331, baseType: !970, size: 64, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1083, file: !19, line: 334, baseType: !1102, size: 64, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!1105, !295}
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1083, file: !19, line: 335, baseType: !1107, size: 64, offset: 512)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!125, !295, !1110}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1083, file: !19, line: 337, baseType: !1112, size: 64, offset: 576)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!125, !295, !1105}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1083, file: !19, line: 339, baseType: !1116, size: 64, offset: 640)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!125, !446, !1119}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !447, file: !14, line: 1199, baseType: !1121, size: 64, offset: 512)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1123)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1124)
!1124 = !{!1125, !1136, !1137, !1141, !1142, !1143, !1158, !1181, !1185, !1186, !1209}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1123, file: !19, line: 431, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!125, !446, !125, !125, !1129}
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1131)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1132, line: 8, size: 128, elements: !1133)
!1132 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1133 = !{!1134, !1135}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1131, file: !1132, line: 9, baseType: !440, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1131, file: !1132, line: 10, baseType: !330, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1123, file: !19, line: 432, baseType: !970, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1123, file: !19, line: 433, baseType: !1138, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!125, !446, !7}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1123, file: !19, line: 434, baseType: !1138, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1123, file: !19, line: 435, baseType: !970, size: 64, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1123, file: !19, line: 436, baseType: !1144, size: 64, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!125, !446, !125, !1147}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1149)
!1149 = !{!1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1148, file: !19, line: 418, baseType: !125, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1148, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1148, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1148, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1148, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1148, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1148, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1148, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1123, file: !19, line: 437, baseType: !1159, size: 64, offset: 384)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!125, !446, !1029, !1162}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1163, file: !19, line: 346, baseType: !125, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1163, file: !19, line: 347, baseType: !368, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1163, file: !19, line: 348, baseType: !368, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1163, file: !19, line: 349, baseType: !368, size: 64, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1163, file: !19, line: 350, baseType: !368, size: 64, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1163, file: !19, line: 351, baseType: !368, size: 64, offset: 320)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1163, file: !19, line: 352, baseType: !368, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1163, file: !19, line: 353, baseType: !566, size: 64, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1163, file: !19, line: 355, baseType: !566, size: 64, offset: 512)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1163, file: !19, line: 356, baseType: !125, size: 32, offset: 576)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1163, file: !19, line: 357, baseType: !125, size: 32, offset: 608)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1163, file: !19, line: 358, baseType: !368, size: 64, offset: 640)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1163, file: !19, line: 359, baseType: !368, size: 64, offset: 704)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1163, file: !19, line: 360, baseType: !368, size: 64, offset: 768)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1163, file: !19, line: 361, baseType: !566, size: 64, offset: 832)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1163, file: !19, line: 362, baseType: !125, size: 32, offset: 896)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1123, file: !19, line: 438, baseType: !1182, size: 64, offset: 448)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!125, !446, !1119, !1162}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1123, file: !19, line: 440, baseType: !1159, size: 64, offset: 512)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1123, file: !19, line: 441, baseType: !1187, size: 64, offset: 576)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!125, !446, !1190}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1192)
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1191, file: !19, line: 412, baseType: !7, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1191, file: !19, line: 413, baseType: !1195, size: 1344, offset: 64)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1196, size: 1344, elements: !218)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1208}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1196, file: !19, line: 398, baseType: !7, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1196, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1196, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1196, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1196, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1196, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1196, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1196, file: !19, line: 406, baseType: !370, size: 64, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1196, file: !19, line: 407, baseType: !1207, size: 64, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !135, line: 132, baseType: !368)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1196, file: !19, line: 408, baseType: !1207, size: 64, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1123, file: !19, line: 442, baseType: !1138, size: 64, offset: 640)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !447, file: !14, line: 1200, baseType: !1211, size: 64, offset: 576)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1213)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !447, file: !14, line: 1201, baseType: !65, size: 64, offset: 640)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !447, file: !14, line: 1202, baseType: !65, size: 64, offset: 704)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !447, file: !14, line: 1203, baseType: !65, size: 64, offset: 768)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !447, file: !14, line: 1204, baseType: !330, size: 64, offset: 832)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !447, file: !14, line: 1205, baseType: !1219, size: 320, offset: 896)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1220, line: 48, size: 320, elements: !1221)
!1220 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1221 = !{!1222, !1223, !1224, !1225, !1226}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1219, file: !1220, line: 49, baseType: !560, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1219, file: !1220, line: 55, baseType: !560, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1219, file: !1220, line: 57, baseType: !570, size: 32, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1219, file: !1220, line: 59, baseType: !514, size: 32, offset: 160)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1219, file: !1220, line: 60, baseType: !134, size: 128, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !447, file: !14, line: 1206, baseType: !125, size: 32, offset: 1216)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !447, file: !14, line: 1207, baseType: !167, size: 32, offset: 1248)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !447, file: !14, line: 1209, baseType: !64, size: 64, offset: 1280)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !447, file: !14, line: 1211, baseType: !1231, size: 64, offset: 1344)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1234)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !447, file: !14, line: 1223, baseType: !1236, size: 64, offset: 1408)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !347, line: 34, size: 64, elements: !1237)
!1237 = !{!1238}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1236, file: !347, line: 35, baseType: !350, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !447, file: !14, line: 1224, baseType: !134, size: 128, offset: 1472)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !447, file: !14, line: 1225, baseType: !1241, size: 64, offset: 1600)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !447, file: !14, line: 1226, baseType: !1244, size: 64, offset: 1664)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !447, file: !14, line: 1227, baseType: !1247, size: 64, offset: 1728)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !447, file: !14, line: 1228, baseType: !1250, size: 64, offset: 1792)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !447, file: !14, line: 1229, baseType: !802, size: 128, offset: 1856)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !447, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !447, file: !14, line: 1231, baseType: !1255, size: 2496, offset: 2048)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1256)
!1256 = !{!1257, !1258, !1259, !1261, !1293}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1255, file: !19, line: 522, baseType: !7, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1255, file: !19, line: 523, baseType: !1219, size: 320, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1255, file: !19, line: 524, baseType: !1260, size: 192, offset: 384)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 192, elements: !218)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1255, file: !19, line: 525, baseType: !1262, size: 1728, offset: 576)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1263, size: 1728, elements: !218)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1264)
!1264 = !{!1265, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1263, file: !19, line: 223, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1268)
!1268 = !{!1269, !1270, !1283, !1284}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1267, file: !19, line: 446, baseType: !125, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1267, file: !19, line: 447, baseType: !1271, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1273, file: !19, line: 313, baseType: !970, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1273, file: !19, line: 314, baseType: !970, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1273, file: !19, line: 315, baseType: !970, size: 64, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1273, file: !19, line: 316, baseType: !970, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1273, file: !19, line: 317, baseType: !1086, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1273, file: !19, line: 318, baseType: !1086, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1273, file: !19, line: 319, baseType: !1086, size: 64, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1273, file: !19, line: 320, baseType: !1116, size: 64, offset: 448)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1267, file: !19, line: 448, baseType: !485, size: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1267, file: !19, line: 449, baseType: !1266, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1263, file: !19, line: 224, baseType: !125, size: 32, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1263, file: !19, line: 226, baseType: !134, size: 128, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1263, file: !19, line: 227, baseType: !65, size: 64, offset: 256)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1263, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1263, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1263, file: !19, line: 230, baseType: !1050, size: 64, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1263, file: !19, line: 231, baseType: !1050, size: 64, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1263, file: !19, line: 232, baseType: !64, size: 64, offset: 512)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1255, file: !19, line: 526, baseType: !1294, size: 192, offset: 2304)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 192, elements: !218)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !447, file: !14, line: 1233, baseType: !1296, size: 2368, offset: 4544)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1297)
!1297 = !{!1298, !1299, !1300}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1296, file: !14, line: 1185, baseType: !187, size: 16)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1296, file: !14, line: 1186, baseType: !187, size: 16, offset: 16)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1296, file: !14, line: 1187, baseType: !1301, size: 2304, offset: 64)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1302, size: 2304, elements: !218)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1303, line: 12, size: 768, elements: !1304)
!1303 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1304 = !{!1305, !1319, !1320, !3222, !3223}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1302, file: !1303, line: 13, baseType: !1306, size: 384)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1307, line: 17, size: 384, elements: !1308)
!1307 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1308 = !{!1309, !1310, !1311, !1318}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1306, file: !1307, line: 18, baseType: !125, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1306, file: !1307, line: 19, baseType: !125, size: 32, offset: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1306, file: !1307, line: 20, baseType: !1312, size: 192, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1313, line: 41, baseType: !1314)
!1313 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1313, line: 37, size: 192, elements: !1315)
!1315 = !{!1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1314, file: !1313, line: 38, baseType: !147, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1314, file: !1313, line: 39, baseType: !134, size: 128, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1306, file: !1307, line: 22, baseType: !776, size: 128, align: 64, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1302, file: !1303, line: 14, baseType: !628, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1302, file: !1303, line: 15, baseType: !1321, size: 64, offset: 448)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1322, line: 16, size: 64, elements: !1323)
!1322 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1323 = !{!1324}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1321, file: !1322, line: 17, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1000, line: 746, size: 58368, elements: !1327)
!1327 = !{!1328, !1336, !1337, !1338, !1344, !1345, !1346, !1347, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1418, !1429, !1524, !1528, !1531, !1562, !1563, !1564, !1565, !1576, !1578, !1579, !1580, !1581, !1582, !1583, !1594, !1595, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1612, !1613, !1620, !1621, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2349, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2397, !2403, !2404, !2405, !2406, !2407, !2411, !2414, !2421, !2426, !2429, !2432, !2435, !2438, !2576, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2614, !2615, !2616, !2625, !2633, !2634, !2635, !2636, !2637, !2642, !2643, !2644, !2647, !2648, !2651, !2654, !2657, !2665, !2668, !2669, !2755, !2756, !2757, !2758, !2759, !2765, !2766, !2767, !2768, !2771, !2772, !2775, !2778, !2779, !2782, !2783, !2784, !2787, !2788, !2789, !2790, !2791, !2792, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2824, !2825, !2891, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2903, !2975, !2977, !2978, !2979, !2980, !2981, !2982, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2999, !3000, !3001}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1326, file: !1000, line: 752, baseType: !1329, size: 192)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1330, line: 56, size: 192, elements: !1331)
!1330 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1331 = !{!1332, !1333, !1334, !1335}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1329, file: !1330, line: 57, baseType: !65, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1329, file: !1330, line: 58, baseType: !65, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1329, file: !1330, line: 59, baseType: !364, size: 32, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1329, file: !1330, line: 61, baseType: !364, size: 32, offset: 160)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1326, file: !1000, line: 754, baseType: !7, size: 32, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1326, file: !1000, line: 767, baseType: !64, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1326, file: !1000, line: 768, baseType: !1339, size: 32, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1340, line: 113, baseType: !1341)
!1340 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1340, line: 111, size: 32, elements: !1342)
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1341, file: !1340, line: 112, baseType: !167, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1326, file: !1000, line: 770, baseType: !7, size: 32, offset: 352)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1326, file: !1000, line: 771, baseType: !7, size: 32, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1326, file: !1000, line: 774, baseType: !125, size: 32, offset: 416)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1326, file: !1000, line: 775, baseType: !1348, size: 128, offset: 448)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1349, line: 58, size: 128, elements: !1350)
!1349 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1350 = !{!1351, !1357, !1362, !1363}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1348, file: !1349, line: 59, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1353, line: 60, size: 64, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1354 = !{!1355}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1352, file: !1353, line: 61, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1348, file: !1349, line: 60, baseType: !1358, size: 32, offset: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1348, file: !1349, line: 60, size: 32, elements: !1359)
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1358, file: !1349, line: 61, baseType: !7, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1358, file: !1349, line: 62, baseType: !167, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1348, file: !1349, line: 65, baseType: !185, size: 16, offset: 96)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1348, file: !1349, line: 65, baseType: !185, size: 16, offset: 112)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1326, file: !1000, line: 776, baseType: !7, size: 32, offset: 576)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1326, file: !1000, line: 777, baseType: !65, size: 64, offset: 640)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1326, file: !1000, line: 778, baseType: !1325, size: 64, offset: 704)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1326, file: !1000, line: 787, baseType: !125, size: 32, offset: 768)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1326, file: !1000, line: 788, baseType: !125, size: 32, offset: 800)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1326, file: !1000, line: 790, baseType: !125, size: 32, offset: 832)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1326, file: !1000, line: 792, baseType: !125, size: 32, offset: 864)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1326, file: !1000, line: 793, baseType: !125, size: 32, offset: 896)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1326, file: !1000, line: 794, baseType: !125, size: 32, offset: 928)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1326, file: !1000, line: 795, baseType: !7, size: 32, offset: 960)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1326, file: !1000, line: 797, baseType: !1375, size: 2048, offset: 1024)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1000, line: 551, size: 2048, elements: !1376)
!1376 = !{!1377, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1397, !1400, !1401, !1402}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1375, file: !1000, line: 553, baseType: !1378, size: 128)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1000, line: 411, size: 128, elements: !1379)
!1379 = !{!1380, !1381}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1378, file: !1000, line: 412, baseType: !65, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1378, file: !1000, line: 413, baseType: !364, size: 32, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1375, file: !1000, line: 554, baseType: !668, size: 192, align: 64, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1375, file: !1000, line: 555, baseType: !368, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1375, file: !1000, line: 556, baseType: !368, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1375, file: !1000, line: 558, baseType: !134, size: 128, offset: 448)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1375, file: !1000, line: 559, baseType: !7, size: 32, offset: 576)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1375, file: !1000, line: 561, baseType: !368, size: 64, offset: 640)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1375, file: !1000, line: 562, baseType: !368, size: 64, offset: 704)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1375, file: !1000, line: 563, baseType: !368, size: 64, offset: 768)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1375, file: !1000, line: 564, baseType: !368, size: 64, offset: 832)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1375, file: !1000, line: 565, baseType: !566, size: 64, offset: 896)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1375, file: !1000, line: 566, baseType: !368, size: 64, offset: 960)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1375, file: !1000, line: 568, baseType: !368, size: 64, offset: 1024)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1375, file: !1000, line: 571, baseType: !125, size: 32, offset: 1088)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1375, file: !1000, line: 572, baseType: !1396, size: 64, offset: 1152)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1375, file: !1000, line: 574, baseType: !1398, size: 64, offset: 1216)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1000, line: 49, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1375, file: !1000, line: 576, baseType: !1398, size: 64, offset: 1280)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1375, file: !1000, line: 578, baseType: !65, size: 64, offset: 1344)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1375, file: !1000, line: 588, baseType: !1403, size: 512, align: 512, offset: 1536)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1000, line: 497, size: 512, align: 512, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1403, file: !1000, line: 498, baseType: !368, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1403, file: !1000, line: 499, baseType: !368, size: 64, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1403, file: !1000, line: 500, baseType: !368, size: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1403, file: !1000, line: 501, baseType: !364, size: 32, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1403, file: !1000, line: 502, baseType: !364, size: 32, offset: 224)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1403, file: !1000, line: 503, baseType: !65, size: 64, offset: 256)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1403, file: !1000, line: 504, baseType: !65, size: 64, offset: 320)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1403, file: !1000, line: 505, baseType: !65, size: 64, offset: 384)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1403, file: !1000, line: 506, baseType: !1414, size: 64, align: 64, offset: 448)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1000, line: 445, size: 64, align: 64, elements: !1415)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1414, file: !1000, line: 446, baseType: !7, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1414, file: !1000, line: 447, baseType: !7, size: 32, offset: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1326, file: !1000, line: 798, baseType: !1419, size: 384, offset: 3072)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1000, line: 592, size: 384, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1424, !1425, !1426, !1427}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1419, file: !1000, line: 593, baseType: !134, size: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1419, file: !1000, line: 594, baseType: !65, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1419, file: !1000, line: 595, baseType: !65, size: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1419, file: !1000, line: 596, baseType: !7, size: 32, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1419, file: !1000, line: 597, baseType: !187, size: 16, offset: 288)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1419, file: !1000, line: 598, baseType: !187, size: 16, offset: 304)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1419, file: !1000, line: 600, baseType: !1428, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1326, file: !1000, line: 799, baseType: !1430, size: 1792, offset: 3456)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1000, line: 610, size: 1792, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1521, !1522}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1430, file: !1000, line: 611, baseType: !668, size: 192, align: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1430, file: !1000, line: 618, baseType: !368, size: 64, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1430, file: !1000, line: 619, baseType: !368, size: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1430, file: !1000, line: 620, baseType: !368, size: 64, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1430, file: !1000, line: 621, baseType: !368, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1430, file: !1000, line: 622, baseType: !368, size: 64, offset: 448)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1430, file: !1000, line: 629, baseType: !566, size: 64, offset: 512)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1430, file: !1000, line: 630, baseType: !368, size: 64, offset: 576)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1430, file: !1000, line: 631, baseType: !7, size: 32, offset: 640)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1430, file: !1000, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1430, file: !1000, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1430, file: !1000, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1430, file: !1000, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1430, file: !1000, line: 662, baseType: !1446, size: 512, offset: 704)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1447)
!1447 = !{!1448, !1456, !1457, !1462, !1517, !1518, !1519, !1520}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1446, file: !25, line: 119, baseType: !1449, size: 256)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1450, line: 9, size: 256, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1449, file: !1450, line: 10, baseType: !668, size: 192, align: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1449, file: !1450, line: 11, baseType: !1454, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1455, line: 29, baseType: !566)
!1455 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1446, file: !25, line: 120, baseType: !1454, size: 64, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1446, file: !25, line: 121, baseType: !1458, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!24, !1461}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1446, file: !25, line: 122, baseType: !1463, size: 64, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1465)
!1465 = !{!1466, !1491, !1492, !1495, !1500, !1501, !1512, !1516}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1464, file: !25, line: 160, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1468, file: !25, line: 216, baseType: !514, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1468, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1468, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1468, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1468, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1468, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1468, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1468, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1468, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1468, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1468, file: !25, line: 227, baseType: !187, size: 16, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1468, file: !25, line: 228, baseType: !187, size: 16, offset: 208)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1468, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1468, file: !25, line: 235, baseType: !1454, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1468, file: !25, line: 236, baseType: !1461, size: 64, offset: 320)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1468, file: !25, line: 237, baseType: !1454, size: 64, offset: 384)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1468, file: !25, line: 238, baseType: !1461, size: 64, offset: 448)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1468, file: !25, line: 239, baseType: !1488, size: 4096, align: 512, offset: 512)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1464, size: 4096, align: 512, elements: !1489)
!1489 = !{!1490}
!1490 = !DISubrange(count: 8)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1464, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1464, file: !25, line: 162, baseType: !1493, size: 32, offset: 96)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !135, line: 32, baseType: !1494)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !251, line: 96, baseType: !125)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1464, file: !25, line: 163, baseType: !1496, size: 32, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !337, line: 274, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !337, line: 274, size: 32, elements: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1497, file: !337, line: 274, baseType: !341, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1464, file: !25, line: 164, baseType: !1461, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1464, file: !25, line: 165, baseType: !1502, size: 128, offset: 256)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1450, line: 14, size: 128, elements: !1503)
!1503 = !{!1504}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1502, file: !1450, line: 15, baseType: !1505, size: 128)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !669, line: 26, size: 128, elements: !1506)
!1506 = !{!1507, !1511}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1505, file: !669, line: 27, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !669, line: 12, size: 64, elements: !1509)
!1509 = !{!1510}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1508, file: !669, line: 13, baseType: !673, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1505, file: !669, line: 28, baseType: !673, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1464, file: !25, line: 166, baseType: !1513, size: 64, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!1454}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1464, file: !25, line: 167, baseType: !1454, size: 64, offset: 448)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1446, file: !25, line: 123, baseType: !175, size: 8, offset: 448)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1446, file: !25, line: 124, baseType: !175, size: 8, offset: 456)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1446, file: !25, line: 125, baseType: !175, size: 8, offset: 464)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1446, file: !25, line: 126, baseType: !175, size: 8, offset: 472)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1430, file: !1000, line: 671, baseType: !1446, size: 512, offset: 1216)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1430, file: !1000, line: 679, baseType: !1523, size: 64, offset: 1728)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1326, file: !1000, line: 800, baseType: !1525, size: 64, offset: 5248)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1527)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1000, line: 800, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1326, file: !1000, line: 809, baseType: !1529, size: 64, offset: 5312)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1000, line: 70, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1326, file: !1000, line: 825, baseType: !1532, size: 2048, align: 512, offset: 5632)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1000, line: 509, size: 2048, align: 512, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1532, file: !1000, line: 511, baseType: !368, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1532, file: !1000, line: 512, baseType: !368, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1532, file: !1000, line: 513, baseType: !368, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1532, file: !1000, line: 514, baseType: !368, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1532, file: !1000, line: 515, baseType: !368, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1532, file: !1000, line: 516, baseType: !368, size: 64, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1532, file: !1000, line: 518, baseType: !368, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1532, file: !1000, line: 519, baseType: !368, size: 64, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1532, file: !1000, line: 520, baseType: !566, size: 64, offset: 512)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1532, file: !1000, line: 522, baseType: !368, size: 64, offset: 576)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1532, file: !1000, line: 523, baseType: !368, size: 64, offset: 640)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1532, file: !1000, line: 524, baseType: !566, size: 64, offset: 704)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1532, file: !1000, line: 526, baseType: !566, size: 64, offset: 768)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1532, file: !1000, line: 527, baseType: !368, size: 64, offset: 832)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1532, file: !1000, line: 529, baseType: !368, size: 64, offset: 896)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1532, file: !1000, line: 530, baseType: !368, size: 64, offset: 960)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1532, file: !1000, line: 531, baseType: !368, size: 64, offset: 1024)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1532, file: !1000, line: 532, baseType: !368, size: 64, offset: 1088)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1532, file: !1000, line: 533, baseType: !368, size: 64, offset: 1152)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1532, file: !1000, line: 535, baseType: !368, size: 64, offset: 1216)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1532, file: !1000, line: 536, baseType: !368, size: 64, offset: 1280)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1532, file: !1000, line: 537, baseType: !368, size: 64, offset: 1344)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1532, file: !1000, line: 538, baseType: !368, size: 64, offset: 1408)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1532, file: !1000, line: 539, baseType: !368, size: 64, offset: 1472)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1532, file: !1000, line: 540, baseType: !368, size: 64, offset: 1536)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1532, file: !1000, line: 541, baseType: !368, size: 64, offset: 1600)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1532, file: !1000, line: 542, baseType: !368, size: 64, offset: 1664)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1532, file: !1000, line: 543, baseType: !368, size: 64, offset: 1728)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1326, file: !1000, line: 833, baseType: !7, size: 32, offset: 7680)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1326, file: !1000, line: 836, baseType: !7, size: 32, offset: 7712)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1326, file: !1000, line: 837, baseType: !125, size: 32, offset: 7744)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1326, file: !1000, line: 838, baseType: !1566, size: 64, offset: 7808)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1568)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1569, line: 19, baseType: !1570)
!1569 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1569, line: 19, size: 64, elements: !1571)
!1571 = !{!1572}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1570, file: !1569, line: 19, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 64, elements: !1574)
!1574 = !{!1575}
!1575 = !DISubrange(count: 1)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1326, file: !1000, line: 839, baseType: !1577, size: 64, offset: 7872)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1326, file: !1000, line: 840, baseType: !1568, size: 64, offset: 7936)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1326, file: !1000, line: 841, baseType: !64, size: 64, offset: 8000)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1326, file: !1000, line: 843, baseType: !187, size: 16, offset: 8064)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1326, file: !1000, line: 845, baseType: !187, size: 16, offset: 8080)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1326, file: !1000, line: 848, baseType: !125, size: 32, offset: 8096)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1326, file: !1000, line: 849, baseType: !1584, size: 32, offset: 8128)
!1584 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1000, line: 718, size: 32, elements: !1585)
!1585 = !{!1586, !1593}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1584, file: !1000, line: 724, baseType: !1587, size: 32)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !1000, line: 719, size: 32, elements: !1588)
!1588 = !{!1589, !1590, !1591, !1592}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1587, file: !1000, line: 720, baseType: !175, size: 8)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1587, file: !1000, line: 721, baseType: !175, size: 8, offset: 8)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1587, file: !1000, line: 722, baseType: !175, size: 8, offset: 16)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1587, file: !1000, line: 723, baseType: !175, size: 8, offset: 24)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1584, file: !1000, line: 725, baseType: !364, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1326, file: !1000, line: 850, baseType: !134, size: 128, offset: 8192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1326, file: !1000, line: 851, baseType: !1596, size: 64, offset: 8320)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1000, line: 60, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1326, file: !1000, line: 855, baseType: !65, size: 64, offset: 8384)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1326, file: !1000, line: 856, baseType: !175, size: 8, offset: 8448)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1326, file: !1000, line: 857, baseType: !175, size: 8, offset: 8456)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1326, file: !1000, line: 858, baseType: !125, size: 32, offset: 8480)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1326, file: !1000, line: 859, baseType: !134, size: 128, offset: 8512)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1326, file: !1000, line: 860, baseType: !125, size: 32, offset: 8640)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1326, file: !1000, line: 861, baseType: !134, size: 128, offset: 8704)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1326, file: !1000, line: 873, baseType: !1606, size: 256, offset: 8832)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1000, line: 376, size: 256, elements: !1607)
!1607 = !{!1608, !1609, !1610, !1611}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1606, file: !1000, line: 381, baseType: !65, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1606, file: !1000, line: 384, baseType: !370, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1606, file: !1000, line: 389, baseType: !370, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1606, file: !1000, line: 392, baseType: !370, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1326, file: !1000, line: 875, baseType: !134, size: 128, offset: 9088)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1326, file: !1000, line: 877, baseType: !1614, size: 320, offset: 9216)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1615, line: 86, size: 320, elements: !1616)
!1615 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1616 = !{!1617, !1618, !1619}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1614, file: !1615, line: 87, baseType: !125, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1614, file: !1615, line: 88, baseType: !134, size: 128, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1614, file: !1615, line: 89, baseType: !134, size: 128, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1326, file: !1000, line: 878, baseType: !668, size: 192, align: 64, offset: 9536)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1326, file: !1000, line: 881, baseType: !1622, size: 64, offset: 9728)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1077, line: 733, size: 10240, elements: !1624)
!1624 = !{!1625, !2268}
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1623, file: !1077, line: 734, baseType: !1626, size: 10240)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1623, file: !1077, line: 734, size: 10240, elements: !1627)
!1627 = !{!1628, !1632, !1645, !2145, !2146, !2147, !2148, !2149, !2150, !2157, !2158, !2159, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2198, !2200, !2203, !2248, !2249, !2250, !2253, !2254, !2255, !2258, !2259, !2260, !2266, !2267}
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !1077, line: 739, baseType: !1629, size: 512, align: 512)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1626, file: !1077, line: 739, size: 512, align: 512, elements: !1630)
!1630 = !{!1631}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1629, file: !1077, line: 747, baseType: !167, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1626, file: !1077, line: 750, baseType: !1633, size: 128, offset: 512)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1634, line: 218, size: 128, elements: !1635)
!1634 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1635 = !{!1636, !1643, !1644}
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1633, file: !1634, line: 219, baseType: !1637, size: 32)
!1637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1633, file: !1634, line: 219, size: 32, elements: !1638)
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1637, file: !1634, line: 220, baseType: !147, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1637, file: !1634, line: 221, baseType: !1641)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1634, line: 197, baseType: !1642)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1634, line: 197, elements: !845)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1633, file: !1634, line: 223, baseType: !7, size: 32, offset: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1633, file: !1634, line: 224, baseType: !64, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1626, file: !1077, line: 752, baseType: !1646, size: 64, offset: 640)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!65, !1649, !65, !65, !65, !65}
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1651)
!1651 = !{!1652, !1658, !1659, !1661, !1662, !1663, !1664, !1665, !1715, !1905, !1914, !1915, !1916, !2135, !2136, !2137, !2138, !2140, !2141, !2144}
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !14, line: 995, baseType: !1653, size: 128)
!1653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1650, file: !14, line: 995, size: 128, elements: !1654)
!1654 = !{!1655, !1656, !1657}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1653, file: !14, line: 996, baseType: !1352, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1653, file: !14, line: 997, baseType: !776, size: 128, align: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1653, file: !14, line: 998, baseType: !7, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1650, file: !14, line: 1005, baseType: !147, size: 32, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1650, file: !14, line: 1006, baseType: !1660, size: 32, offset: 160)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !135, line: 156, baseType: !7)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1650, file: !14, line: 1007, baseType: !560, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1650, file: !14, line: 1008, baseType: !556, size: 256, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1650, file: !14, line: 1009, baseType: !456, size: 64, offset: 512)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1650, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1650, file: !14, line: 1011, baseType: !1666, size: 256, offset: 640)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1667)
!1667 = !{!1668, !1689, !1711, !1712, !1713, !1714}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1666, file: !14, line: 949, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1670, line: 34, baseType: !1671)
!1670 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1670, line: 25, size: 64, elements: !1672)
!1672 = !{!1673}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1671, file: !1670, line: 26, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1675, line: 27, baseType: !1676)
!1675 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1675, line: 13, size: 64, elements: !1677)
!1677 = !{!1678, !1688}
!1678 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !1675, line: 14, baseType: !1679, size: 32)
!1679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1676, file: !1675, line: 14, size: 32, elements: !1680)
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1679, file: !1675, line: 15, baseType: !167, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1679, file: !1675, line: 16, baseType: !1683, size: 32)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1679, file: !1675, line: 16, size: 32, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1683, file: !1675, line: 18, baseType: !175, size: 8)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1683, file: !1675, line: 19, baseType: !1687, size: 24, offset: 8)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 24, elements: !218)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1676, file: !1675, line: 26, baseType: !159, size: 32, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1666, file: !14, line: 950, baseType: !1690, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1692)
!1692 = !{!1693, !1694, !1695, !1696, !1698, !1699, !1700, !1701}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1691, file: !30, line: 61, baseType: !1339, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1691, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1691, file: !30, line: 63, baseType: !147, size: 32, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1691, file: !30, line: 65, baseType: !1697, size: 256, offset: 128)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !926, size: 256, elements: !786)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1691, file: !30, line: 66, baseType: !926, size: 64, offset: 384)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1691, file: !30, line: 68, baseType: !1312, size: 192, offset: 448)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1691, file: !30, line: 69, baseType: !776, size: 128, align: 64, offset: 640)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1691, file: !30, line: 70, baseType: !1702, offset: 768)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1703, elements: !1709)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1704)
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1703, file: !30, line: 55, baseType: !125, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1703, file: !30, line: 56, baseType: !1707, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1709 = !{!1710}
!1710 = !DISubrange(count: -1)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1666, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1666, file: !14, line: 952, baseType: !301, size: 32, offset: 160)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1666, file: !14, line: 952, baseType: !301, size: 32, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1666, file: !14, line: 953, baseType: !125, size: 32, offset: 224)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1650, file: !14, line: 1012, baseType: !1716, size: 64, offset: 896)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1718)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1719, line: 110, size: 1472, elements: !1720)
!1719 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1720 = !{!1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1737, !1738, !1739, !1740, !1741, !1742, !1850, !1851, !1852, !1853, !1854, !1885, !1888, !1892, !1900}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1718, file: !1719, line: 111, baseType: !560, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1718, file: !1719, line: 112, baseType: !301, size: 32, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1718, file: !1719, line: 113, baseType: !310, size: 32, offset: 96)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1718, file: !1719, line: 114, baseType: !301, size: 32, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1718, file: !1719, line: 115, baseType: !310, size: 32, offset: 160)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1718, file: !1719, line: 116, baseType: !301, size: 32, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1718, file: !1719, line: 117, baseType: !310, size: 32, offset: 224)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1718, file: !1719, line: 118, baseType: !301, size: 32, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1718, file: !1719, line: 119, baseType: !310, size: 32, offset: 288)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1718, file: !1719, line: 120, baseType: !7, size: 32, offset: 320)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1718, file: !1719, line: 121, baseType: !1732, size: 64, offset: 384)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1733, line: 24, baseType: !1734)
!1733 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1733, line: 24, size: 64, elements: !1735)
!1735 = !{!1736}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1734, file: !1733, line: 24, baseType: !368, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1718, file: !1719, line: 122, baseType: !1732, size: 64, offset: 448)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1718, file: !1719, line: 123, baseType: !1732, size: 64, offset: 512)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1718, file: !1719, line: 124, baseType: !1732, size: 64, offset: 576)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1718, file: !1719, line: 125, baseType: !1732, size: 64, offset: 640)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1718, file: !1719, line: 127, baseType: !179, size: 8, offset: 704)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1718, file: !1719, line: 129, baseType: !1743, size: 64, offset: 768)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1745, line: 195, size: 1728, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1746 = !{!1747, !1748, !1751, !1756, !1757, !1760, !1761, !1766, !1767, !1768, !1769, !1772, !1773, !1774, !1775, !1776, !1814, !1835}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1744, file: !1745, line: 196, baseType: !1339, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1744, file: !1745, line: 197, baseType: !1749, size: 32, offset: 32)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1745, line: 28, baseType: !1750)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !135, line: 104, baseType: !552)
!1751 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !1745, line: 198, baseType: !1752, size: 192, offset: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !1745, line: 198, size: 192, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1752, file: !1745, line: 199, baseType: !134, size: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1752, file: !1745, line: 200, baseType: !668, size: 192, align: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1744, file: !1745, line: 205, baseType: !1219, size: 320, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1744, file: !1745, line: 206, baseType: !1758, size: 64, offset: 576)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1745, line: 206, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1744, file: !1745, line: 207, baseType: !64, size: 64, offset: 640)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !1745, line: 208, baseType: !1762, size: 64, offset: 704)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !1745, line: 208, size: 64, elements: !1763)
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1762, file: !1745, line: 209, baseType: !1058, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1762, file: !1745, line: 210, baseType: !1058, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1744, file: !1745, line: 212, baseType: !1058, size: 64, offset: 768)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1744, file: !1745, line: 213, baseType: !301, size: 32, offset: 832)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1744, file: !1745, line: 214, baseType: !310, size: 32, offset: 864)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1744, file: !1745, line: 215, baseType: !1770, size: 32, offset: 896)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1745, line: 31, baseType: !1771)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !135, line: 110, baseType: !364)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1744, file: !1745, line: 216, baseType: !187, size: 16, offset: 928)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1744, file: !1745, line: 217, baseType: !187, size: 16, offset: 944)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1744, file: !1745, line: 221, baseType: !694, size: 16, offset: 960)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1744, file: !1745, line: 228, baseType: !65, size: 64, offset: 1024)
!1776 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !1745, line: 245, baseType: !1777, size: 320, offset: 1088)
!1777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !1745, line: 245, size: 320, elements: !1778)
!1778 = !{!1779, !1806}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1777, file: !1745, line: 246, baseType: !1780, size: 320)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1745, line: 114, size: 320, elements: !1781)
!1781 = !{!1782, !1783, !1795, !1798, !1805}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1780, file: !1745, line: 116, baseType: !65, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1780, file: !1745, line: 117, baseType: !1784, size: 64, offset: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1780, file: !1745, line: 117, size: 64, elements: !1785)
!1785 = !{!1786, !1794}
!1786 = !DIDerivedType(tag: DW_TAG_member, scope: !1784, file: !1745, line: 118, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1784, file: !1745, line: 118, size: 64, elements: !1788)
!1788 = !{!1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1787, file: !1745, line: 120, baseType: !185, size: 16)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1787, file: !1745, line: 121, baseType: !1791, size: 48, offset: 16)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 48, elements: !1792)
!1792 = !{!1793}
!1793 = !DISubrange(count: 6)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1784, file: !1745, line: 127, baseType: !65, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1780, file: !1745, line: 129, baseType: !1796, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1745, line: 102, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1780, file: !1745, line: 130, baseType: !1799, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1745, line: 108, size: 192, elements: !1801)
!1801 = !{!1802, !1803, !1804}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1800, file: !1745, line: 109, baseType: !776, size: 128, align: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1800, file: !1745, line: 110, baseType: !1339, size: 32, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1800, file: !1745, line: 111, baseType: !636, size: 8, offset: 160)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1780, file: !1745, line: 131, baseType: !131, size: 64, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1777, file: !1745, line: 247, baseType: !1807, size: 320)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !1745, line: 247, size: 320, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1812, !1813}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1807, file: !1745, line: 248, baseType: !65, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1807, file: !1745, line: 249, baseType: !65, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1807, file: !1745, line: 250, baseType: !1796, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1807, file: !1745, line: 251, baseType: !1799, size: 64, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1807, file: !1745, line: 252, baseType: !217, size: 64, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !1745, line: 260, baseType: !1815, size: 256, offset: 1408)
!1815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !1745, line: 260, size: 256, elements: !1816)
!1816 = !{!1817, !1823}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1815, file: !1745, line: 261, baseType: !1818, size: 256)
!1818 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1745, line: 134, size: 256, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1818, file: !1745, line: 135, baseType: !64, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1818, file: !1745, line: 136, baseType: !1822, size: 256)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 256, elements: !786)
!1823 = !DIDerivedType(tag: DW_TAG_member, scope: !1815, file: !1745, line: 262, baseType: !1824, size: 256)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1815, file: !1745, line: 262, size: 256, elements: !1825)
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1824, file: !1745, line: 264, baseType: !134, size: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1824, file: !1745, line: 265, baseType: !1828, size: 128, offset: 128)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1829, line: 22, size: 128, elements: !1830)
!1829 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1830 = !{!1831, !1834}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1828, file: !1829, line: 23, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1829, line: 23, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1828, file: !1829, line: 24, baseType: !65, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1744, file: !1745, line: 280, baseType: !1836, size: 64, offset: 1664)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1745, line: 176, size: 192, elements: !1838)
!1838 = !{!1839, !1848, !1849}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1837, file: !1745, line: 177, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1745, line: 171, baseType: !1841)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!125, !1743, !1844, !1846, !1743}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1797)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1818)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1837, file: !1745, line: 178, baseType: !1743, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1837, file: !1745, line: 179, baseType: !1796, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1718, file: !1719, line: 130, baseType: !1743, size: 64, offset: 832)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1718, file: !1719, line: 131, baseType: !1743, size: 64, offset: 896)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1718, file: !1719, line: 132, baseType: !1743, size: 64, offset: 960)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1718, file: !1719, line: 135, baseType: !64, size: 64, offset: 1024)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1718, file: !1719, line: 137, baseType: !1855, size: 64, offset: 1088)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1857, line: 14, size: 1088, elements: !1858)
!1857 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1858 = !{!1859, !1860, !1869, !1870, !1871, !1872, !1873, !1874}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1856, file: !1857, line: 15, baseType: !1339, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1856, file: !1857, line: 17, baseType: !1861, size: 320, offset: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1862, line: 22, size: 320, elements: !1863)
!1862 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1863 = !{!1864, !1865, !1866, !1867}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1861, file: !1862, line: 23, baseType: !514, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1861, file: !1862, line: 24, baseType: !566, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1861, file: !1862, line: 26, baseType: !134, size: 128, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1861, file: !1862, line: 28, baseType: !1868, size: 64, offset: 256)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1856, file: !1857, line: 19, baseType: !65, size: 64, offset: 384)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1856, file: !1857, line: 20, baseType: !560, size: 64, offset: 448)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1856, file: !1857, line: 23, baseType: !802, size: 128, offset: 512)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1856, file: !1857, line: 24, baseType: !301, size: 32, offset: 640)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1856, file: !1857, line: 29, baseType: !560, size: 64, offset: 704)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1856, file: !1857, line: 36, baseType: !1875, size: 320, offset: 768)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1876, line: 15, size: 320, elements: !1877)
!1876 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1877 = !{!1878, !1879, !1880, !1881, !1882, !1883, !1884}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1875, file: !1876, line: 16, baseType: !514, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1875, file: !1876, line: 18, baseType: !125, size: 32, offset: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1875, file: !1876, line: 19, baseType: !125, size: 32, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1875, file: !1876, line: 20, baseType: !125, size: 32, offset: 96)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1875, file: !1876, line: 21, baseType: !125, size: 32, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1875, file: !1876, line: 22, baseType: !65, size: 64, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1875, file: !1876, line: 23, baseType: !65, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1718, file: !1719, line: 138, baseType: !1886, size: 64, offset: 1152)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1077, line: 901, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1718, file: !1719, line: 139, baseType: !1889, size: 64, offset: 1216)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1891, line: 16, flags: DIFlagFwdDecl)
!1891 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1718, file: !1719, line: 140, baseType: !1893, size: 64, offset: 1280)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1719, line: 25, size: 64, elements: !1895)
!1895 = !{!1896, !1897, !1898}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1894, file: !1719, line: 26, baseType: !167, size: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1894, file: !1719, line: 27, baseType: !125, size: 32, offset: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1894, file: !1719, line: 28, baseType: !1899, offset: 64)
!1899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, elements: !1709)
!1900 = !DIDerivedType(tag: DW_TAG_member, scope: !1718, file: !1719, line: 142, baseType: !1901, size: 128, offset: 1344)
!1901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1718, file: !1719, line: 142, size: 128, elements: !1902)
!1902 = !{!1903, !1904}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1901, file: !1719, line: 143, baseType: !125, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1901, file: !1719, line: 144, baseType: !776, size: 128, align: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1650, file: !14, line: 1013, baseType: !1906, size: 256, offset: 960)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1907)
!1907 = !{!1908, !1909, !1910, !1911, !1912, !1913}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1906, file: !14, line: 971, baseType: !65, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1906, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1906, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1906, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1906, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1906, file: !14, line: 976, baseType: !456, size: 64, offset: 192)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1650, file: !14, line: 1014, baseType: !1131, size: 128, offset: 1216)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1650, file: !14, line: 1015, baseType: !295, size: 64, offset: 1344)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1650, file: !14, line: 1016, baseType: !1917, size: 64, offset: 1408)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1919)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1920)
!1920 = !{!1921, !1922, !1926, !1931, !1935, !1963, !1964, !1970, !1983, !1991, !1995, !1996, !2057, !2058, !2062, !2067, !2068, !2072, !2076, !2082, !2083, !2087, !2088, !2094, !2098, !2102, !2108, !2112, !2116, !2120, !2124, !2125, !2131}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1919, file: !14, line: 1915, baseType: !485, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1919, file: !14, line: 1916, baseType: !1923, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!456, !1649, !456, !125}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1919, file: !14, line: 1917, baseType: !1927, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!249, !1649, !217, !263, !1930}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1919, file: !14, line: 1918, baseType: !1932, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!249, !1649, !131, !263, !1930}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1919, file: !14, line: 1919, baseType: !1936, size: 64, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!249, !1939, !1961}
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1941)
!1941 = !{!1942, !1943, !1944, !1948, !1949, !1950, !1951}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1940, file: !14, line: 374, baseType: !1649, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1940, file: !14, line: 375, baseType: !456, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1940, file: !14, line: 376, baseType: !1945, size: 64, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !1939, !66}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1940, file: !14, line: 377, baseType: !64, size: 64, offset: 192)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1940, file: !14, line: 378, baseType: !125, size: 32, offset: 256)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1940, file: !14, line: 379, baseType: !185, size: 16, offset: 288)
!1951 = !DIDerivedType(tag: DW_TAG_member, scope: !1940, file: !14, line: 380, baseType: !1952, size: 64, offset: 320)
!1952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1940, file: !14, line: 380, size: 64, elements: !1953)
!1953 = !{!1954, !1957}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1952, file: !14, line: 386, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1952, file: !14, line: 395, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!249, !64}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1919, file: !14, line: 1920, baseType: !1936, size: 64, offset: 320)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1919, file: !14, line: 1921, baseType: !1965, size: 64, offset: 384)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!125, !1939, !1968, !7}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1919, file: !14, line: 1923, baseType: !1971, size: 64, offset: 448)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!125, !1649, !1974}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1976)
!1976 = !{!1977, !1982}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1975, file: !14, line: 1859, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1979)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!636, !1974, !131, !125, !456, !368, !7}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1975, file: !14, line: 1860, baseType: !456, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1919, file: !14, line: 1924, baseType: !1984, size: 64, offset: 512)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!1987, !1649, !1989}
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1988, line: 59, baseType: !7)
!1988 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !471, line: 31, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1919, file: !14, line: 1925, baseType: !1992, size: 64, offset: 576)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!66, !1649, !7, !65}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1919, file: !14, line: 1926, baseType: !1992, size: 64, offset: 640)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1919, file: !14, line: 1927, baseType: !1997, size: 64, offset: 704)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!125, !1649, !2000}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1077, line: 625, size: 1344, elements: !2002)
!2002 = !{!2003, !2012, !2013, !2021, !2028, !2029, !2034, !2035, !2040, !2041, !2044, !2048, !2049, !2050, !2051, !2052, !2055}
!2003 = !DIDerivedType(tag: DW_TAG_member, scope: !2001, file: !1077, line: 628, baseType: !2004, size: 128)
!2004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2001, file: !1077, line: 628, size: 128, elements: !2005)
!2005 = !{!2006, !2011}
!2006 = !DIDerivedType(tag: DW_TAG_member, scope: !2004, file: !1077, line: 629, baseType: !2007, size: 128)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2004, file: !1077, line: 629, size: 128, elements: !2008)
!2008 = !{!2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2007, file: !1077, line: 631, baseType: !65, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2007, file: !1077, line: 632, baseType: !65, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2004, file: !1077, line: 635, baseType: !776, size: 128, align: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2001, file: !1077, line: 639, baseType: !1622, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2001, file: !1077, line: 640, baseType: !2014, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2015, line: 297, baseType: !2016)
!2015 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2015, line: 297, size: 64, elements: !2017)
!2017 = !{!2018}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2016, file: !2015, line: 297, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2020, line: 19, baseType: !65)
!2020 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2021 = !DIDerivedType(tag: DW_TAG_member, scope: !2001, file: !1077, line: 646, baseType: !2022, size: 64, offset: 256)
!2022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2001, file: !1077, line: 646, size: 64, elements: !2023)
!2023 = !{!2024, !2027}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2022, file: !1077, line: 647, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2026)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1077, line: 542, baseType: !65)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2022, file: !1077, line: 648, baseType: !2026, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2001, file: !1077, line: 666, baseType: !125, size: 32, offset: 320)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2001, file: !1077, line: 667, baseType: !2030, size: 64, offset: 384)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1077, line: 579, size: 320, elements: !2032)
!2032 = !{!2033}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2031, file: !1077, line: 580, baseType: !1219, size: 320)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2001, file: !1077, line: 670, baseType: !636, size: 8, offset: 448)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2001, file: !1077, line: 681, baseType: !2036, size: 256, offset: 512)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2001, file: !1077, line: 678, size: 256, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2036, file: !1077, line: 679, baseType: !668, size: 192, align: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2036, file: !1077, line: 680, baseType: !65, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2001, file: !1077, line: 689, baseType: !134, size: 128, offset: 768)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2001, file: !1077, line: 691, baseType: !2042, size: 64, offset: 896)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1077, line: 691, flags: DIFlagFwdDecl)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2001, file: !1077, line: 694, baseType: !2045, size: 64, offset: 960)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2047)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1077, line: 694, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2001, file: !1077, line: 697, baseType: !65, size: 64, offset: 1024)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2001, file: !1077, line: 699, baseType: !1649, size: 64, offset: 1088)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2001, file: !1077, line: 700, baseType: !64, size: 64, offset: 1152)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2001, file: !1077, line: 711, baseType: !560, size: 64, offset: 1216)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2001, file: !1077, line: 717, baseType: !2053, size: 64, offset: 1280)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1077, line: 717, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2001, file: !1077, line: 722, baseType: !2056, offset: 1344)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1077, line: 570, elements: !845)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1919, file: !14, line: 1928, baseType: !65, size: 64, offset: 768)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1919, file: !14, line: 1929, baseType: !2059, size: 64, offset: 832)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!125, !295, !1649}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1919, file: !14, line: 1930, baseType: !2063, size: 64, offset: 896)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!125, !1649, !2066}
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1919, file: !14, line: 1931, baseType: !2059, size: 64, offset: 960)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1919, file: !14, line: 1932, baseType: !2069, size: 64, offset: 1024)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!125, !1649, !456, !456, !125}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1919, file: !14, line: 1933, baseType: !2073, size: 64, offset: 1088)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!125, !125, !1649, !125}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1919, file: !14, line: 1934, baseType: !2077, size: 64, offset: 1152)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!125, !1649, !125, !2080}
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1919, file: !14, line: 1935, baseType: !1646, size: 64, offset: 1216)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1919, file: !14, line: 1936, baseType: !2084, size: 64, offset: 1280)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!125, !125}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1919, file: !14, line: 1937, baseType: !2077, size: 64, offset: 1344)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1919, file: !14, line: 1938, baseType: !2089, size: 64, offset: 1408)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!249, !2092, !1649, !1930, !263, !7}
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1000, line: 59, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1919, file: !14, line: 1939, baseType: !2095, size: 64, offset: 1472)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!249, !1649, !1930, !2092, !263, !7}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1919, file: !14, line: 1940, baseType: !2099, size: 64, offset: 1536)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{null, !1649}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1919, file: !14, line: 1941, baseType: !2103, size: 64, offset: 1600)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!125, !1649, !125, !2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1919, file: !14, line: 1942, baseType: !2109, size: 64, offset: 1664)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!66, !1649, !125, !456, !456}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1919, file: !14, line: 1944, baseType: !2113, size: 64, offset: 1728)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !998, !1649}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1919, file: !14, line: 1948, baseType: !2117, size: 64, offset: 1792)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!249, !1649, !456, !1649, !456, !263, !7}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1919, file: !14, line: 1950, baseType: !2121, size: 64, offset: 1856)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!456, !1649, !456, !1649, !456, !456, !7}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1919, file: !14, line: 1953, baseType: !2069, size: 64, offset: 1920)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1919, file: !14, line: 1954, baseType: !2126, size: 64, offset: 1984)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!125, !2129, !7}
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1919, file: !14, line: 1955, baseType: !2132, size: 64, offset: 2048)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!125, !2129, !1968, !7}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1650, file: !14, line: 1018, baseType: !368, size: 64, offset: 1472)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1650, file: !14, line: 1020, baseType: !64, size: 64, offset: 1536)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1650, file: !14, line: 1023, baseType: !64, size: 64, offset: 1600)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1650, file: !14, line: 1027, baseType: !2139, size: 64, offset: 1664)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1650, file: !14, line: 1029, baseType: !291, size: 64, offset: 1728)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1650, file: !14, line: 1030, baseType: !2142, size: 32, offset: 1792)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2143, line: 8, baseType: !364)
!2143 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1650, file: !14, line: 1031, baseType: !2142, size: 32, offset: 1824)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1626, file: !1077, line: 756, baseType: !65, size: 64, offset: 704)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1626, file: !1077, line: 757, baseType: !65, size: 64, offset: 768)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1626, file: !1077, line: 760, baseType: !65, size: 64, offset: 832)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1626, file: !1077, line: 761, baseType: !65, size: 64, offset: 896)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1626, file: !1077, line: 763, baseType: !65, size: 64, offset: 960)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1626, file: !1077, line: 764, baseType: !2151, size: 64, offset: 1024)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2015, line: 299, baseType: !2153)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2015, line: 299, size: 64, elements: !2154)
!2154 = !{!2155}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2153, file: !2015, line: 299, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2020, line: 18, baseType: !65)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1626, file: !1077, line: 773, baseType: !167, size: 32, offset: 1088)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1626, file: !1077, line: 785, baseType: !167, size: 32, offset: 1120)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1626, file: !1077, line: 795, baseType: !2160, size: 64, offset: 1152)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1077, line: 726, size: 128, elements: !2162)
!2162 = !{!2163, !2164}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2161, file: !1077, line: 727, baseType: !368, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2161, file: !1077, line: 728, baseType: !125, size: 32, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1626, file: !1077, line: 801, baseType: !65, size: 64, offset: 1216)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1626, file: !1077, line: 804, baseType: !560, size: 64, offset: 1280)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1626, file: !1077, line: 806, baseType: !125, size: 32, offset: 1344)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1626, file: !1077, line: 808, baseType: !147, size: 32, offset: 1376)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1626, file: !1077, line: 823, baseType: !1219, size: 320, offset: 1408)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1626, file: !1077, line: 825, baseType: !134, size: 128, offset: 1728)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1626, file: !1077, line: 845, baseType: !125, size: 32, offset: 1856)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1626, file: !1077, line: 849, baseType: !65, size: 64, offset: 1920)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1626, file: !1077, line: 850, baseType: !65, size: 64, offset: 1984)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1626, file: !1077, line: 852, baseType: !65, size: 64, offset: 2048)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1626, file: !1077, line: 853, baseType: !65, size: 64, offset: 2112)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1626, file: !1077, line: 854, baseType: !562, size: 64, offset: 2176)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1626, file: !1077, line: 855, baseType: !65, size: 64, offset: 2240)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1626, file: !1077, line: 856, baseType: !65, size: 64, offset: 2304)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1626, file: !1077, line: 857, baseType: !65, size: 64, offset: 2368)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1626, file: !1077, line: 858, baseType: !65, size: 64, offset: 2432)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1626, file: !1077, line: 865, baseType: !341, size: 32, offset: 2496)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1626, file: !1077, line: 867, baseType: !147, size: 32, offset: 2528)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1626, file: !1077, line: 869, baseType: !65, size: 64, offset: 2560)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1626, file: !1077, line: 869, baseType: !65, size: 64, offset: 2624)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1626, file: !1077, line: 869, baseType: !65, size: 64, offset: 2688)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1626, file: !1077, line: 869, baseType: !65, size: 64, offset: 2752)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1626, file: !1077, line: 870, baseType: !65, size: 64, offset: 2816)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1626, file: !1077, line: 870, baseType: !65, size: 64, offset: 2880)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1626, file: !1077, line: 870, baseType: !65, size: 64, offset: 2944)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1626, file: !1077, line: 871, baseType: !65, size: 64, offset: 3008)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1626, file: !1077, line: 871, baseType: !65, size: 64, offset: 3072)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1626, file: !1077, line: 871, baseType: !65, size: 64, offset: 3136)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1626, file: !1077, line: 871, baseType: !65, size: 64, offset: 3200)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1626, file: !1077, line: 873, baseType: !2195, size: 3328, offset: 3264)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 3328, elements: !2196)
!2196 = !{!2197}
!2197 = !DISubrange(count: 52)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1626, file: !1077, line: 875, baseType: !2199, size: 1280, offset: 6592)
!2199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1861, size: 1280, elements: !786)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1626, file: !1077, line: 877, baseType: !2201, size: 64, offset: 7872)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1077, line: 877, flags: DIFlagFwdDecl)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1626, file: !1077, line: 880, baseType: !2204, size: 1088, offset: 7936)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2205, line: 72, baseType: !2206)
!2205 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2205, line: 23, size: 1088, elements: !2207)
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2215, !2216, !2217, !2218, !2245, !2246, !2247}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2206, file: !2205, line: 28, baseType: !368, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2206, file: !2205, line: 38, baseType: !562, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2206, file: !2205, line: 40, baseType: !65, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2206, file: !2205, line: 43, baseType: !1219, size: 320, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2206, file: !2205, line: 44, baseType: !2213, size: 64, offset: 512)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2205, line: 44, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2206, file: !2205, line: 48, baseType: !65, size: 64, offset: 576)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2206, file: !2205, line: 59, baseType: !556, size: 256, offset: 640)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2206, file: !2205, line: 60, baseType: !64, size: 64, offset: 896)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2206, file: !2205, line: 61, baseType: !2219, size: 64, offset: 960)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2222, line: 13, size: 1216, elements: !2223)
!2222 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229, !2230, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2221, file: !2222, line: 14, baseType: !64, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2221, file: !2222, line: 15, baseType: !65, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2221, file: !2222, line: 17, baseType: !65, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2221, file: !2222, line: 17, baseType: !65, size: 64, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2221, file: !2222, line: 18, baseType: !65, size: 64, offset: 256)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2221, file: !2222, line: 18, baseType: !65, size: 64, offset: 320)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2221, file: !2222, line: 19, baseType: !2231, size: 64, offset: 384)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2221, file: !2222, line: 21, baseType: !66, size: 64, offset: 448)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2221, file: !2222, line: 23, baseType: !66, size: 64, offset: 512)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2221, file: !2222, line: 24, baseType: !66, size: 64, offset: 576)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2221, file: !2222, line: 25, baseType: !66, size: 64, offset: 640)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2221, file: !2222, line: 26, baseType: !66, size: 64, offset: 704)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2221, file: !2222, line: 27, baseType: !66, size: 64, offset: 768)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2221, file: !2222, line: 28, baseType: !66, size: 64, offset: 832)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2221, file: !2222, line: 29, baseType: !66, size: 64, offset: 896)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2221, file: !2222, line: 30, baseType: !66, size: 64, offset: 960)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2221, file: !2222, line: 31, baseType: !66, size: 64, offset: 1024)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2221, file: !2222, line: 32, baseType: !66, size: 64, offset: 1088)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2221, file: !2222, line: 33, baseType: !66, size: 64, offset: 1152)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2206, file: !2205, line: 63, baseType: !167, size: 32, offset: 1024)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2206, file: !2205, line: 69, baseType: !185, size: 16, offset: 1056)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2206, file: !2205, line: 70, baseType: !692, size: 16, offset: 1072)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1626, file: !1077, line: 882, baseType: !65, size: 64, offset: 9024)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1626, file: !1077, line: 885, baseType: !147, size: 32, offset: 9088)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1626, file: !1077, line: 886, baseType: !2251, size: 64, offset: 9152)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1077, line: 732, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1626, file: !1077, line: 901, baseType: !1886, size: 64, offset: 9216)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1626, file: !1077, line: 904, baseType: !1649, size: 64, offset: 9280)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1626, file: !1077, line: 906, baseType: !2256, size: 64, offset: 9344)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1077, line: 906, flags: DIFlagFwdDecl)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1626, file: !1077, line: 930, baseType: !167, size: 32, offset: 9408)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1626, file: !1077, line: 933, baseType: !167, size: 32, offset: 9440)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1626, file: !1077, line: 935, baseType: !2261, size: 64, offset: 9472)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !2262)
!2262 = !{!2263}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2261, file: !44, line: 104, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1626, file: !1077, line: 940, baseType: !560, size: 64, offset: 9536)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1626, file: !1077, line: 942, baseType: !816, size: 256, offset: 9600)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1623, file: !1077, line: 986, baseType: !2269, offset: 10240)
!2269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, elements: !1709)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1326, file: !1000, line: 882, baseType: !1622, size: 64, offset: 9792)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1326, file: !1000, line: 884, baseType: !125, size: 32, offset: 9856)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1326, file: !1000, line: 885, baseType: !125, size: 32, offset: 9888)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1326, file: !1000, line: 886, baseType: !125, size: 32, offset: 9920)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1326, file: !1000, line: 888, baseType: !125, size: 32, offset: 9952)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1326, file: !1000, line: 890, baseType: !65, size: 64, offset: 9984)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1326, file: !1000, line: 893, baseType: !7, size: 32, offset: 10048)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1326, file: !1000, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1326, file: !1000, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1326, file: !1000, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1326, file: !1000, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1326, file: !1000, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1326, file: !1000, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1326, file: !1000, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1326, file: !1000, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1326, file: !1000, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1326, file: !1000, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1326, file: !1000, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1326, file: !1000, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1326, file: !1000, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1326, file: !1000, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1326, file: !1000, line: 969, baseType: !65, size: 64, offset: 10176)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1326, file: !1000, line: 971, baseType: !2293, size: 448, offset: 10240)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !2294)
!2294 = !{!2295, !2296, !2301}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2293, file: !38, line: 26, baseType: !65, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2293, file: !38, line: 27, baseType: !2297, size: 64, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!66, !2300}
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !38, line: 28, baseType: !2302, size: 320, offset: 128)
!2302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2293, file: !38, line: 28, size: 320, elements: !2303)
!2303 = !{!2304, !2314, !2339}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2302, file: !38, line: 37, baseType: !2305, size: 320)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2302, file: !38, line: 30, size: 320, elements: !2306)
!2306 = !{!2307, !2309, !2310, !2311, !2312, !2313}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2305, file: !38, line: 31, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2305, file: !38, line: 32, baseType: !364, size: 32, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2305, file: !38, line: 33, baseType: !364, size: 32, offset: 96)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2305, file: !38, line: 34, baseType: !364, size: 32, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2305, file: !38, line: 35, baseType: !368, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2305, file: !38, line: 36, baseType: !2308, size: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2302, file: !38, line: 47, baseType: !2315, size: 192)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2302, file: !38, line: 39, size: 192, elements: !2316)
!2316 = !{!2317, !2318, !2319, !2338}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2315, file: !38, line: 40, baseType: !1493, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2315, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, scope: !2315, file: !38, line: 42, baseType: !2320, size: 64, offset: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2315, file: !38, line: 42, size: 64, elements: !2321)
!2321 = !{!2322, !2330}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2320, file: !38, line: 43, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2325, line: 7, size: 128, elements: !2326)
!2325 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2326 = !{!2327, !2329}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2324, file: !2325, line: 8, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !251, line: 93, baseType: !458)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2324, file: !2325, line: 9, baseType: !458, size: 64, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2320, file: !38, line: 44, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2333, line: 7, size: 64, elements: !2334)
!2333 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2334 = !{!2335, !2337}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2332, file: !2333, line: 8, baseType: !2336, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2333, line: 5, baseType: !552)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2332, file: !2333, line: 9, baseType: !552, size: 32, offset: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2315, file: !38, line: 46, baseType: !368, size: 64, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2302, file: !38, line: 55, baseType: !2340, size: 256)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2302, file: !38, line: 49, size: 256, elements: !2341)
!2341 = !{!2342, !2345, !2346, !2347, !2348}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2340, file: !38, line: 50, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !38, line: 14, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2340, file: !38, line: 51, baseType: !125, size: 32, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2340, file: !38, line: 52, baseType: !125, size: 32, offset: 96)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2340, file: !38, line: 53, baseType: !65, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2340, file: !38, line: 54, baseType: !65, size: 64, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1326, file: !1000, line: 973, baseType: !2350, size: 32, offset: 10688)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !135, line: 27, baseType: !2351)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !251, line: 28, baseType: !125)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1326, file: !1000, line: 974, baseType: !2350, size: 32, offset: 10720)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1326, file: !1000, line: 978, baseType: !65, size: 64, offset: 10752)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1326, file: !1000, line: 987, baseType: !1325, size: 64, offset: 10816)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1326, file: !1000, line: 990, baseType: !1325, size: 64, offset: 10880)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1326, file: !1000, line: 995, baseType: !134, size: 128, offset: 10944)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1326, file: !1000, line: 996, baseType: !134, size: 128, offset: 11072)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1326, file: !1000, line: 997, baseType: !1325, size: 64, offset: 11200)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1326, file: !1000, line: 1005, baseType: !134, size: 128, offset: 11264)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1326, file: !1000, line: 1006, baseType: !134, size: 128, offset: 11392)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1326, file: !1000, line: 1009, baseType: !1690, size: 64, offset: 11520)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1326, file: !1000, line: 1010, baseType: !2363, size: 512, offset: 11584)
!2363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 512, elements: !786)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1326, file: !1000, line: 1011, baseType: !134, size: 128, offset: 12096)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1326, file: !1000, line: 1012, baseType: !134, size: 128, offset: 12224)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1326, file: !1000, line: 1014, baseType: !504, size: 64, offset: 12352)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1326, file: !1000, line: 1017, baseType: !685, size: 64, offset: 12416)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1326, file: !1000, line: 1020, baseType: !685, size: 64, offset: 12480)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1326, file: !1000, line: 1023, baseType: !64, size: 64, offset: 12544)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1326, file: !1000, line: 1025, baseType: !368, size: 64, offset: 12608)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1326, file: !1000, line: 1026, baseType: !368, size: 64, offset: 12672)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1326, file: !1000, line: 1031, baseType: !368, size: 64, offset: 12736)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1326, file: !1000, line: 1032, baseType: !2374, size: 192, offset: 12800)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1000, line: 324, size: 192, elements: !2375)
!2375 = !{!2376, !2377, !2378}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2374, file: !1000, line: 326, baseType: !368, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2374, file: !1000, line: 327, baseType: !368, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2374, file: !1000, line: 328, baseType: !514, size: 32, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1326, file: !1000, line: 1041, baseType: !65, size: 64, offset: 12992)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1326, file: !1000, line: 1042, baseType: !65, size: 64, offset: 13056)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1326, file: !1000, line: 1045, baseType: !368, size: 64, offset: 13120)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1326, file: !1000, line: 1048, baseType: !368, size: 64, offset: 13184)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1326, file: !1000, line: 1051, baseType: !65, size: 64, offset: 13248)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1326, file: !1000, line: 1052, baseType: !65, size: 64, offset: 13312)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1326, file: !1000, line: 1055, baseType: !2386, size: 640, offset: 13376)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2387, line: 132, size: 640, elements: !2388)
!2387 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2388 = !{!2389, !2395, !2396}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2386, file: !2387, line: 133, baseType: !2390, size: 576)
!2390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2391, size: 576, elements: !218)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2387, line: 117, size: 192, elements: !2392)
!2392 = !{!2393, !2394}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2391, file: !2387, line: 118, baseType: !368, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2391, file: !2387, line: 119, baseType: !1502, size: 128, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2386, file: !2387, line: 134, baseType: !7, size: 32, offset: 576)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2386, file: !2387, line: 135, baseType: !7, size: 32, offset: 608)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1326, file: !1000, line: 1058, baseType: !2398, size: 448, offset: 14016)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2387, line: 144, size: 448, elements: !2399)
!2399 = !{!2400, !2401, !2402}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2398, file: !2387, line: 145, baseType: !776, size: 128, align: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2398, file: !2387, line: 146, baseType: !556, size: 256, offset: 128)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2398, file: !2387, line: 147, baseType: !7, size: 32, offset: 384)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1326, file: !1000, line: 1064, baseType: !1716, size: 64, offset: 14464)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1326, file: !1000, line: 1067, baseType: !1716, size: 64, offset: 14528)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1326, file: !1000, line: 1070, baseType: !1716, size: 64, offset: 14592)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1326, file: !1000, line: 1074, baseType: !1743, size: 64, offset: 14656)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1326, file: !1000, line: 1084, baseType: !2408, size: 128, offset: 14720)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 128, elements: !2409)
!2409 = !{!2410}
!2410 = !DISubrange(count: 16)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1326, file: !1000, line: 1086, baseType: !2412, size: 64, offset: 14848)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1000, line: 55, flags: DIFlagFwdDecl)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1326, file: !1000, line: 1089, baseType: !2415, size: 64, offset: 14912)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2416, line: 12, size: 64, elements: !2417)
!2416 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2417 = !{!2418}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2415, file: !2416, line: 13, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2416, line: 8, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1326, file: !1000, line: 1090, baseType: !2422, size: 128, offset: 14976)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2423, line: 13, size: 128, elements: !2424)
!2423 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2424 = !{!2425}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2422, file: !2423, line: 14, baseType: !134, size: 128)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1326, file: !1000, line: 1097, baseType: !2427, size: 64, offset: 15104)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1000, line: 50, flags: DIFlagFwdDecl)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1326, file: !1000, line: 1100, baseType: !2430, size: 64, offset: 15168)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1000, line: 1100, flags: DIFlagFwdDecl)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1326, file: !1000, line: 1103, baseType: !2433, size: 64, offset: 15232)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1000, line: 53, flags: DIFlagFwdDecl)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1326, file: !1000, line: 1107, baseType: !2436, size: 64, offset: 15296)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1000, line: 56, flags: DIFlagFwdDecl)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1326, file: !1000, line: 1110, baseType: !2439, size: 64, offset: 15360)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2441, line: 93, size: 8768, elements: !2442)
!2441 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2442 = !{!2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2490, !2499, !2500, !2502, !2503, !2504, !2507, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2545, !2546, !2553, !2563, !2566, !2567, !2570, !2571, !2572, !2573, !2574, !2575}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2440, file: !2441, line: 94, baseType: !1339, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2440, file: !2441, line: 95, baseType: !167, size: 32, offset: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2440, file: !2441, line: 96, baseType: !125, size: 32, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2440, file: !2441, line: 97, baseType: !125, size: 32, offset: 96)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2440, file: !2441, line: 98, baseType: !134, size: 128, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2440, file: !2441, line: 100, baseType: !1312, size: 192, offset: 256)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2440, file: !2441, line: 103, baseType: !1325, size: 64, offset: 448)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2440, file: !2441, line: 106, baseType: !2451, size: 192, offset: 512)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1891, line: 32, size: 192, elements: !2452)
!2452 = !{!2453, !2454}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2451, file: !1891, line: 33, baseType: !134, size: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2451, file: !1891, line: 34, baseType: !2455, size: 64, offset: 128)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2456, line: 25, baseType: !2457)
!2456 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2456, line: 23, size: 64, elements: !2458)
!2458 = !{!2459}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2457, file: !2456, line: 24, baseType: !1573, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2440, file: !2441, line: 109, baseType: !926, size: 64, offset: 704)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2440, file: !2441, line: 112, baseType: !125, size: 32, offset: 768)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2440, file: !2441, line: 114, baseType: !125, size: 32, offset: 800)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2440, file: !2441, line: 115, baseType: !1325, size: 64, offset: 832)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2440, file: !2441, line: 118, baseType: !125, size: 32, offset: 896)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2440, file: !2441, line: 119, baseType: !7, size: 32, offset: 928)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2440, file: !2441, line: 121, baseType: !2467, size: 64, offset: 960)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2441, line: 80, size: 448, elements: !2469)
!2469 = !{!2470, !2471, !2477}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2468, file: !2441, line: 81, baseType: !167, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2468, file: !2441, line: 82, baseType: !2472, size: 128, offset: 64)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2441, line: 75, size: 128, elements: !2473)
!2473 = !{!2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2472, file: !2441, line: 76, baseType: !1325, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2472, file: !2441, line: 77, baseType: !2476, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2468, file: !2441, line: 83, baseType: !505, size: 256, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2440, file: !2441, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2440, file: !2441, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2440, file: !2441, line: 138, baseType: !7, size: 32, offset: 1056)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2440, file: !2441, line: 139, baseType: !134, size: 128, offset: 1088)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2440, file: !2441, line: 142, baseType: !1446, size: 512, offset: 1216)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2440, file: !2441, line: 143, baseType: !1454, size: 64, offset: 1728)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2440, file: !2441, line: 150, baseType: !2485, size: 256, offset: 1792)
!2485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2486, size: 256, elements: !675)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2441, line: 38, size: 128, elements: !2487)
!2487 = !{!2488, !2489}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2486, file: !2441, line: 39, baseType: !368, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2486, file: !2441, line: 40, baseType: !368, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2440, file: !2441, line: 156, baseType: !2491, size: 192, offset: 2048)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2441, line: 66, size: 192, elements: !2492)
!2492 = !{!2493}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2491, file: !2441, line: 67, baseType: !2494, size: 192)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2441, line: 47, size: 192, elements: !2495)
!2495 = !{!2496, !2497, !2498}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2494, file: !2441, line: 48, baseType: !562, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2494, file: !2441, line: 49, baseType: !562, size: 64, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2494, file: !2441, line: 50, baseType: !562, size: 64, offset: 128)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2440, file: !2441, line: 160, baseType: !2386, size: 640, offset: 2240)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2440, file: !2441, line: 163, baseType: !2501, size: 256, offset: 2880)
!2501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1690, size: 256, elements: !786)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2440, file: !2441, line: 169, baseType: !1690, size: 64, offset: 3136)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2440, file: !2441, line: 172, baseType: !125, size: 32, offset: 3200)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2440, file: !2441, line: 174, baseType: !2505, size: 64, offset: 3264)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2441, line: 174, flags: DIFlagFwdDecl)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2440, file: !2441, line: 185, baseType: !2508, size: 64, offset: 3328)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !337, line: 860, baseType: !2509)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !337, line: 853, size: 64, elements: !2510)
!2510 = !{!2511, !2512}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2509, file: !337, line: 858, baseType: !336, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2509, file: !337, line: 859, baseType: !147, size: 32, offset: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2440, file: !2441, line: 186, baseType: !368, size: 64, offset: 3392)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2440, file: !2441, line: 186, baseType: !368, size: 64, offset: 3456)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2440, file: !2441, line: 186, baseType: !368, size: 64, offset: 3520)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2440, file: !2441, line: 186, baseType: !368, size: 64, offset: 3584)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2440, file: !2441, line: 187, baseType: !368, size: 64, offset: 3648)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2440, file: !2441, line: 188, baseType: !368, size: 64, offset: 3712)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2440, file: !2441, line: 189, baseType: !2374, size: 192, offset: 3776)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2440, file: !2441, line: 190, baseType: !65, size: 64, offset: 3968)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2440, file: !2441, line: 190, baseType: !65, size: 64, offset: 4032)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2440, file: !2441, line: 190, baseType: !65, size: 64, offset: 4096)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2440, file: !2441, line: 190, baseType: !65, size: 64, offset: 4160)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2440, file: !2441, line: 191, baseType: !65, size: 64, offset: 4224)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2440, file: !2441, line: 191, baseType: !65, size: 64, offset: 4288)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2440, file: !2441, line: 191, baseType: !65, size: 64, offset: 4352)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2440, file: !2441, line: 191, baseType: !65, size: 64, offset: 4416)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2440, file: !2441, line: 192, baseType: !65, size: 64, offset: 4480)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2440, file: !2441, line: 192, baseType: !65, size: 64, offset: 4544)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2440, file: !2441, line: 192, baseType: !65, size: 64, offset: 4608)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2440, file: !2441, line: 192, baseType: !65, size: 64, offset: 4672)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2440, file: !2441, line: 193, baseType: !65, size: 64, offset: 4736)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2440, file: !2441, line: 193, baseType: !65, size: 64, offset: 4800)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2440, file: !2441, line: 194, baseType: !2535, size: 448, offset: 4864)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2536, line: 12, size: 448, elements: !2537)
!2536 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2537 = !{!2538, !2539, !2540, !2541, !2542, !2543, !2544}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2535, file: !2536, line: 15, baseType: !368, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2535, file: !2536, line: 17, baseType: !368, size: 64, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2535, file: !2536, line: 19, baseType: !368, size: 64, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2535, file: !2536, line: 21, baseType: !368, size: 64, offset: 192)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2535, file: !2536, line: 29, baseType: !368, size: 64, offset: 256)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2535, file: !2536, line: 35, baseType: !368, size: 64, offset: 320)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2535, file: !2536, line: 44, baseType: !368, size: 64, offset: 384)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2440, file: !2441, line: 202, baseType: !370, size: 64, offset: 5312)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2440, file: !2441, line: 213, baseType: !2547, size: 2048, offset: 5376)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2548, size: 2048, elements: !2409)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2549, line: 43, size: 128, elements: !2550)
!2549 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2550 = !{!2551, !2552}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2548, file: !2549, line: 44, baseType: !265, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2548, file: !2549, line: 45, baseType: !265, size: 64, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2440, file: !2441, line: 216, baseType: !2554, size: 448, offset: 7424)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2441, line: 30, size: 448, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2559, !2560, !2561, !2562}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2554, file: !2441, line: 31, baseType: !125, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2554, file: !2441, line: 32, baseType: !66, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2554, file: !2441, line: 33, baseType: !65, size: 64, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2554, file: !2441, line: 34, baseType: !368, size: 64, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2554, file: !2441, line: 34, baseType: !368, size: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2554, file: !2441, line: 35, baseType: !65, size: 64, offset: 320)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2554, file: !2441, line: 35, baseType: !65, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2440, file: !2441, line: 219, baseType: !2564, size: 64, offset: 7872)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2441, line: 219, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2440, file: !2441, line: 222, baseType: !7, size: 32, offset: 7936)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2440, file: !2441, line: 223, baseType: !2568, size: 64, offset: 8000)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2441, line: 223, flags: DIFlagFwdDecl)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2440, file: !2441, line: 230, baseType: !636, size: 8, offset: 8064)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2440, file: !2441, line: 231, baseType: !694, size: 16, offset: 8080)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2440, file: !2441, line: 232, baseType: !694, size: 16, offset: 8096)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2440, file: !2441, line: 234, baseType: !1622, size: 64, offset: 8128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2440, file: !2441, line: 237, baseType: !556, size: 256, offset: 8192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2440, file: !2441, line: 243, baseType: !1219, size: 320, offset: 8448)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1326, file: !1000, line: 1111, baseType: !2577, size: 64, offset: 15424)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2441, line: 20, size: 16640, elements: !2579)
!2579 = !{!2580, !2581, !2582, !2583}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2578, file: !2441, line: 21, baseType: !147, size: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2578, file: !2441, line: 22, baseType: !1339, size: 32, offset: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2578, file: !2441, line: 23, baseType: !1312, size: 192, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2578, file: !2441, line: 24, baseType: !2584, size: 16384, offset: 256)
!2584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2585, size: 16384, elements: !222)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1891, line: 51, size: 256, elements: !2586)
!2586 = !{!2587}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2585, file: !1891, line: 52, baseType: !2588, size: 256)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1891, line: 37, size: 256, elements: !2589)
!2589 = !{!2590, !2597, !2598, !2602}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2588, file: !1891, line: 39, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2592, line: 83, baseType: !2593)
!2592 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2592, line: 82, baseType: !2595)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{null, !125}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2588, file: !1891, line: 40, baseType: !65, size: 64, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2588, file: !1891, line: 46, baseType: !2599, size: 64, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2592, line: 86, baseType: !2600)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2592, line: 85, baseType: !921)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2588, file: !1891, line: 48, baseType: !2455, size: 64, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1326, file: !1000, line: 1112, baseType: !2455, size: 64, offset: 15488)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1326, file: !1000, line: 1113, baseType: !2455, size: 64, offset: 15552)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1326, file: !1000, line: 1115, baseType: !2455, size: 64, offset: 15616)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1326, file: !1000, line: 1116, baseType: !2451, size: 192, offset: 15680)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1326, file: !1000, line: 1117, baseType: !65, size: 64, offset: 15872)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1326, file: !1000, line: 1118, baseType: !263, size: 64, offset: 15936)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1326, file: !1000, line: 1119, baseType: !7, size: 32, offset: 16000)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1326, file: !1000, line: 1121, baseType: !775, size: 64, offset: 16064)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1326, file: !1000, line: 1125, baseType: !2612, size: 64, offset: 16128)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1000, line: 43, flags: DIFlagFwdDecl)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1326, file: !1000, line: 1127, baseType: !301, size: 32, offset: 16192)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1326, file: !1000, line: 1128, baseType: !7, size: 32, offset: 16224)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1326, file: !1000, line: 1130, baseType: !2617, size: 128, offset: 16256)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2618, line: 37, size: 128, elements: !2619)
!2618 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2619 = !{!2620, !2621, !2622}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2617, file: !2618, line: 38, baseType: !125, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2617, file: !2618, line: 39, baseType: !167, size: 32, offset: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2617, file: !2618, line: 40, baseType: !2623, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2618, line: 24, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1326, file: !1000, line: 1131, baseType: !2626, size: 256, offset: 16384)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2627, line: 12, size: 256, elements: !2628)
!2627 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2628 = !{!2629, !2630, !2631, !2632}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2626, file: !2627, line: 13, baseType: !217, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2626, file: !2627, line: 14, baseType: !65, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2626, file: !2627, line: 15, baseType: !65, size: 64, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2626, file: !2627, line: 16, baseType: !636, size: 8, offset: 192)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1326, file: !1000, line: 1134, baseType: !368, size: 64, offset: 16640)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1326, file: !1000, line: 1135, baseType: !368, size: 64, offset: 16704)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1326, file: !1000, line: 1138, baseType: !147, size: 32, offset: 16768)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1326, file: !1000, line: 1141, baseType: !514, size: 32, offset: 16800)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1326, file: !1000, line: 1143, baseType: !2638, size: 64, offset: 16832)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1000, line: 735, size: 64, elements: !2639)
!2639 = !{!2640}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2638, file: !1000, line: 736, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1326, file: !1000, line: 1147, baseType: !1505, size: 128, offset: 16896)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1326, file: !1000, line: 1149, baseType: !1325, size: 64, offset: 17024)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1326, file: !1000, line: 1151, baseType: !2645, size: 64, offset: 17088)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1000, line: 1151, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1326, file: !1000, line: 1188, baseType: !64, size: 64, offset: 17152)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1326, file: !1000, line: 1191, baseType: !2649, size: 64, offset: 17216)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1000, line: 44, flags: DIFlagFwdDecl)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1326, file: !1000, line: 1194, baseType: !2652, size: 64, offset: 17280)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1000, line: 45, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1326, file: !1000, line: 1197, baseType: !2655, size: 64, offset: 17344)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1000, line: 61, flags: DIFlagFwdDecl)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1326, file: !1000, line: 1199, baseType: !2658, size: 64, offset: 17408)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2660, line: 99, size: 128, elements: !2661)
!2660 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2661 = !{!2662, !2663, !2664}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2659, file: !2660, line: 100, baseType: !560, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2659, file: !2660, line: 101, baseType: !167, size: 32, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2659, file: !2660, line: 103, baseType: !187, size: 16, offset: 96)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1326, file: !1000, line: 1202, baseType: !2666, size: 64, offset: 17472)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1000, line: 48, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1326, file: !1000, line: 1205, baseType: !65, size: 64, offset: 17536)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1326, file: !1000, line: 1206, baseType: !2670, size: 64, offset: 17600)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1891, line: 14, baseType: !2672)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1891, line: 12, size: 384, elements: !2673)
!2673 = !{!2674}
!2674 = !DIDerivedType(tag: DW_TAG_member, scope: !2672, file: !1891, line: 13, baseType: !2675, size: 384)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2672, file: !1891, line: 13, size: 384, elements: !2676)
!2676 = !{!2677, !2678, !2679, !2680}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2675, file: !1891, line: 13, baseType: !125, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2675, file: !1891, line: 13, baseType: !125, size: 32, offset: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2675, file: !1891, line: 13, baseType: !125, size: 32, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2675, file: !1891, line: 13, baseType: !2681, size: 256, offset: 128)
!2681 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2682, line: 37, size: 256, elements: !2683)
!2682 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2683 = !{!2684, !2689, !2702, !2708, !2717, !2744, !2749}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2681, file: !2682, line: 42, baseType: !2685, size: 64)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2681, file: !2682, line: 39, size: 64, elements: !2686)
!2686 = !{!2687, !2688}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2685, file: !2682, line: 40, baseType: !2351, size: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2685, file: !2682, line: 41, baseType: !307, size: 32, offset: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2681, file: !2682, line: 50, baseType: !2690, size: 192)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2681, file: !2682, line: 45, size: 192, elements: !2691)
!2691 = !{!2692, !2694, !2695, !2701}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2690, file: !2682, line: 46, baseType: !2693, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !251, line: 95, baseType: !125)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2690, file: !2682, line: 47, baseType: !125, size: 32, offset: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2690, file: !2682, line: 48, baseType: !2696, size: 64, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2682, line: 11, baseType: !2697)
!2697 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2682, line: 8, size: 64, elements: !2698)
!2698 = !{!2699, !2700}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2697, file: !2682, line: 9, baseType: !125, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2697, file: !2682, line: 10, baseType: !64, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2690, file: !2682, line: 49, baseType: !125, size: 32, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2681, file: !2682, line: 57, baseType: !2703, size: 128)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2681, file: !2682, line: 53, size: 128, elements: !2704)
!2704 = !{!2705, !2706, !2707}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2703, file: !2682, line: 54, baseType: !2351, size: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2703, file: !2682, line: 55, baseType: !307, size: 32, offset: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2703, file: !2682, line: 56, baseType: !2696, size: 64, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2681, file: !2682, line: 66, baseType: !2709, size: 256)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2681, file: !2682, line: 60, size: 256, elements: !2710)
!2710 = !{!2711, !2712, !2713, !2714, !2716}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2709, file: !2682, line: 61, baseType: !2351, size: 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2709, file: !2682, line: 62, baseType: !307, size: 32, offset: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2709, file: !2682, line: 63, baseType: !125, size: 32, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2709, file: !2682, line: 64, baseType: !2715, size: 64, offset: 128)
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !251, line: 94, baseType: !252)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2709, file: !2682, line: 65, baseType: !2715, size: 64, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2681, file: !2682, line: 105, baseType: !2718, size: 256)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2681, file: !2682, line: 69, size: 256, elements: !2719)
!2719 = !{!2720, !2721}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2718, file: !2682, line: 70, baseType: !64, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, scope: !2718, file: !2682, line: 79, baseType: !2722, size: 192, offset: 64)
!2722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2718, file: !2682, line: 79, size: 192, elements: !2723)
!2723 = !{!2724, !2725, !2726, !2733, !2738}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2722, file: !2682, line: 81, baseType: !125, size: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2722, file: !2682, line: 86, baseType: !694, size: 16)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2722, file: !2682, line: 92, baseType: !2727, size: 192)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2722, file: !2682, line: 88, size: 192, elements: !2728)
!2728 = !{!2729, !2731, !2732}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2727, file: !2682, line: 89, baseType: !2730, size: 64)
!2730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, elements: !1489)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2727, file: !2682, line: 90, baseType: !64, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2727, file: !2682, line: 91, baseType: !64, size: 64, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2722, file: !2682, line: 97, baseType: !2734, size: 96)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2722, file: !2682, line: 94, size: 96, elements: !2735)
!2735 = !{!2736, !2737}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2734, file: !2682, line: 95, baseType: !2730, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2734, file: !2682, line: 96, baseType: !365, size: 32, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2722, file: !2682, line: 103, baseType: !2739, size: 128)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2722, file: !2682, line: 99, size: 128, elements: !2740)
!2740 = !{!2741, !2742, !2743}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2739, file: !2682, line: 100, baseType: !65, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2739, file: !2682, line: 101, baseType: !365, size: 32, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2739, file: !2682, line: 102, baseType: !365, size: 32, offset: 96)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2681, file: !2682, line: 111, baseType: !2745, size: 128)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2681, file: !2682, line: 108, size: 128, elements: !2746)
!2746 = !{!2747, !2748}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2745, file: !2682, line: 109, baseType: !66, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2745, file: !2682, line: 110, baseType: !125, size: 32, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2681, file: !2682, line: 118, baseType: !2750, size: 128)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2681, file: !2682, line: 114, size: 128, elements: !2751)
!2751 = !{!2752, !2753, !2754}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2750, file: !2682, line: 115, baseType: !64, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2750, file: !2682, line: 116, baseType: !125, size: 32, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2750, file: !2682, line: 117, baseType: !7, size: 32, offset: 96)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1326, file: !1000, line: 1208, baseType: !2535, size: 448, offset: 17664)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1326, file: !1000, line: 1215, baseType: !368, size: 64, offset: 18112)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1326, file: !1000, line: 1217, baseType: !368, size: 64, offset: 18176)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1326, file: !1000, line: 1219, baseType: !368, size: 64, offset: 18240)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1326, file: !1000, line: 1223, baseType: !2760, size: 64, offset: 18304)
!2760 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2761, line: 99, baseType: !2762)
!2761 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2761, line: 99, size: 64, elements: !2763)
!2763 = !{!2764}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2762, file: !2761, line: 99, baseType: !1573, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1326, file: !1000, line: 1225, baseType: !336, size: 32, offset: 18368)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1326, file: !1000, line: 1226, baseType: !125, size: 32, offset: 18400)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1326, file: !1000, line: 1227, baseType: !125, size: 32, offset: 18432)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1326, file: !1000, line: 1231, baseType: !2769, size: 64, offset: 18496)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1000, line: 1231, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1326, file: !1000, line: 1233, baseType: !134, size: 128, offset: 18560)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1326, file: !1000, line: 1240, baseType: !2773, size: 64, offset: 18688)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1000, line: 62, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1326, file: !1000, line: 1242, baseType: !2776, size: 64, offset: 18752)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1000, line: 1242, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1326, file: !1000, line: 1244, baseType: !134, size: 128, offset: 18816)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1326, file: !1000, line: 1245, baseType: !2780, size: 64, offset: 18944)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1000, line: 51, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1326, file: !1000, line: 1246, baseType: !556, size: 256, offset: 19008)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1326, file: !1000, line: 1247, baseType: !7, size: 32, offset: 19264)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1326, file: !1000, line: 1250, baseType: !2785, size: 64, offset: 19328)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1000, line: 57, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1326, file: !1000, line: 1251, baseType: !556, size: 256, offset: 19392)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1326, file: !1000, line: 1252, baseType: !134, size: 128, offset: 19648)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1326, file: !1000, line: 1259, baseType: !2053, size: 64, offset: 19776)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1326, file: !1000, line: 1260, baseType: !694, size: 16, offset: 19840)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1326, file: !1000, line: 1261, baseType: !694, size: 16, offset: 19856)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1326, file: !1000, line: 1314, baseType: !2793, size: 64, offset: 19904)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2795, line: 62, size: 256, align: 256, elements: !2796)
!2795 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2796 = !{!2797, !2798, !2799, !2800, !2801, !2802, !2803}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2794, file: !2795, line: 75, baseType: !365, size: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2794, file: !2795, line: 90, baseType: !365, size: 32, offset: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2794, file: !2795, line: 112, baseType: !369, size: 64, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2794, file: !2795, line: 132, baseType: !365, size: 32, offset: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2794, file: !2795, line: 140, baseType: !365, size: 32, offset: 160)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2794, file: !2795, line: 149, baseType: !365, size: 32, offset: 192)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2794, file: !2795, line: 154, baseType: !2804, offset: 224)
!2804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, elements: !1709)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1326, file: !1000, line: 1315, baseType: !364, size: 32, offset: 19968)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1326, file: !1000, line: 1316, baseType: !364, size: 32, offset: 20000)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1326, file: !1000, line: 1321, baseType: !65, size: 64, offset: 20032)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1326, file: !1000, line: 1325, baseType: !125, size: 32, offset: 20096)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1326, file: !1000, line: 1326, baseType: !125, size: 32, offset: 20128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1326, file: !1000, line: 1327, baseType: !125, size: 32, offset: 20160)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1326, file: !1000, line: 1328, baseType: !125, size: 32, offset: 20192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1326, file: !1000, line: 1329, baseType: !776, size: 128, align: 64, offset: 20224)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1326, file: !1000, line: 1332, baseType: !2814, size: 128, offset: 20352)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2815, line: 51, size: 128, elements: !2816)
!2815 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2816 = !{!2817, !2822, !2823}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2814, file: !2815, line: 60, baseType: !2818, size: 64)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2819, line: 7, size: 64, elements: !2820)
!2819 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2820 = !{!2821}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2818, file: !2819, line: 12, baseType: !1570, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2814, file: !2815, line: 63, baseType: !636, size: 8, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2814, file: !2815, line: 70, baseType: !636, size: 8, offset: 72)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1326, file: !1000, line: 1335, baseType: !2092, size: 64, offset: 20480)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1326, file: !1000, line: 1337, baseType: !2826, size: 128, offset: 20544)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2815, line: 39, size: 128, elements: !2827)
!2827 = !{!2828, !2889, !2890}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2826, file: !2815, line: 40, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1077, line: 74, size: 512, align: 128, elements: !2831)
!2831 = !{!2832, !2833, !2883, !2888}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2830, file: !1077, line: 75, baseType: !65, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, scope: !2830, file: !1077, line: 83, baseType: !2834, size: 320, offset: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2830, file: !1077, line: 83, size: 320, elements: !2835)
!2835 = !{!2836, !2857, !2871, !2875, !2882}
!2836 = !DIDerivedType(tag: DW_TAG_member, scope: !2834, file: !1077, line: 84, baseType: !2837, size: 320)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2834, file: !1077, line: 84, size: 320, elements: !2838)
!2838 = !{!2839, !2850, !2851, !2856}
!2839 = !DIDerivedType(tag: DW_TAG_member, scope: !2837, file: !1077, line: 90, baseType: !2840, size: 128)
!2840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2837, file: !1077, line: 90, size: 128, elements: !2841)
!2841 = !{!2842, !2843, !2848, !2849}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2840, file: !1077, line: 91, baseType: !134, size: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, scope: !2840, file: !1077, line: 94, baseType: !2844, size: 128)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2840, file: !1077, line: 94, size: 128, elements: !2845)
!2845 = !{!2846, !2847}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2844, file: !1077, line: 96, baseType: !64, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2844, file: !1077, line: 98, baseType: !7, size: 32, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2840, file: !1077, line: 102, baseType: !134, size: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2840, file: !1077, line: 103, baseType: !134, size: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2837, file: !1077, line: 106, baseType: !291, size: 64, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, scope: !2837, file: !1077, line: 107, baseType: !2852, size: 64, offset: 192)
!2852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2837, file: !1077, line: 107, size: 64, elements: !2853)
!2853 = !{!2854, !2855}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2852, file: !1077, line: 108, baseType: !65, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2852, file: !1077, line: 109, baseType: !65, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2837, file: !1077, line: 117, baseType: !65, size: 64, offset: 256)
!2857 = !DIDerivedType(tag: DW_TAG_member, scope: !2834, file: !1077, line: 119, baseType: !2858, size: 320)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2834, file: !1077, line: 119, size: 320, elements: !2859)
!2859 = !{!2860, !2861, !2864, !2865, !2866}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2858, file: !1077, line: 124, baseType: !65, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2858, file: !1077, line: 125, baseType: !2862, size: 64, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1077, line: 125, flags: DIFlagFwdDecl)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2858, file: !1077, line: 126, baseType: !65, size: 64, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2858, file: !1077, line: 127, baseType: !65, size: 64, offset: 192)
!2866 = !DIDerivedType(tag: DW_TAG_member, scope: !2858, file: !1077, line: 128, baseType: !2867, size: 64, offset: 256)
!2867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2858, file: !1077, line: 128, size: 64, elements: !2868)
!2868 = !{!2869, !2870}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2867, file: !1077, line: 133, baseType: !65, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2867, file: !1077, line: 138, baseType: !560, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, scope: !2834, file: !1077, line: 141, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2834, file: !1077, line: 141, size: 64, elements: !2873)
!2873 = !{!2874}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2872, file: !1077, line: 142, baseType: !65, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, scope: !2834, file: !1077, line: 144, baseType: !2876, size: 128)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2834, file: !1077, line: 144, size: 128, elements: !2877)
!2877 = !{!2878, !2881}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2876, file: !1077, line: 146, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1077, line: 146, flags: DIFlagFwdDecl)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2876, file: !1077, line: 147, baseType: !64, size: 64, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2834, file: !1077, line: 161, baseType: !776, size: 128, align: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, scope: !2830, file: !1077, line: 164, baseType: !2884, size: 32, offset: 384)
!2884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2830, file: !1077, line: 164, size: 32, elements: !2885)
!2885 = !{!2886, !2887}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2884, file: !1077, line: 169, baseType: !167, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2884, file: !1077, line: 177, baseType: !7, size: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2830, file: !1077, line: 181, baseType: !167, size: 32, offset: 416)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2826, file: !2815, line: 42, baseType: !365, size: 32, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2826, file: !2815, line: 43, baseType: !365, size: 32, offset: 96)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1326, file: !1000, line: 1340, baseType: !2892, size: 64, offset: 20672)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1000, line: 69, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1326, file: !1000, line: 1351, baseType: !125, size: 32, offset: 20736)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1326, file: !1000, line: 1352, baseType: !125, size: 32, offset: 20768)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1326, file: !1000, line: 1354, baseType: !65, size: 64, offset: 20800)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1326, file: !1000, line: 1364, baseType: !368, size: 64, offset: 20864)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1326, file: !1000, line: 1365, baseType: !368, size: 64, offset: 20928)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1326, file: !1000, line: 1412, baseType: !65, size: 64, offset: 20992)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1326, file: !1000, line: 1453, baseType: !2901, size: 64, offset: 21056)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1000, line: 1453, flags: DIFlagFwdDecl)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1326, file: !1000, line: 1457, baseType: !2904, size: 64, offset: 21120)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2906)
!2906 = !{!2907, !2908, !2927, !2930, !2931, !2964, !2974}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2905, file: !44, line: 62, baseType: !43, size: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, scope: !2905, file: !44, line: 64, baseType: !2909, size: 192, offset: 64)
!2909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2905, file: !44, line: 64, size: 192, elements: !2910)
!2910 = !{!2911, !2922}
!2911 = !DIDerivedType(tag: DW_TAG_member, scope: !2909, file: !44, line: 65, baseType: !2912, size: 192)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2909, file: !44, line: 65, size: 192, elements: !2913)
!2913 = !{!2914, !2921}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2912, file: !44, line: 66, baseType: !2915, size: 128)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2916, line: 50, size: 128, elements: !2917)
!2916 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2917 = !{!2918, !2919, !2920}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2915, file: !2916, line: 52, baseType: !65, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2915, file: !2916, line: 54, baseType: !7, size: 32, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2915, file: !2916, line: 55, baseType: !7, size: 32, offset: 96)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2912, file: !44, line: 67, baseType: !65, size: 64, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, scope: !2909, file: !44, line: 70, baseType: !2923, size: 192)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2909, file: !44, line: 70, size: 192, elements: !2924)
!2924 = !{!2925, !2926}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2923, file: !44, line: 71, baseType: !776, size: 128, align: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2923, file: !44, line: 72, baseType: !65, size: 64, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2905, file: !44, line: 76, baseType: !2928, size: 64, offset: 256)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2905, file: !44, line: 77, baseType: !65, size: 64, offset: 320)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2905, file: !44, line: 79, baseType: !2932, size: 64, offset: 384)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2916, line: 25, size: 256, elements: !2934)
!2934 = !{!2935, !2941, !2945}
!2935 = !DIDerivedType(tag: DW_TAG_member, scope: !2933, file: !2916, line: 26, baseType: !2936, size: 128)
!2936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2933, file: !2916, line: 26, size: 128, elements: !2937)
!2937 = !{!2938, !2940}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2936, file: !2916, line: 27, baseType: !2939, size: 128)
!2939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 128, elements: !2409)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2936, file: !2916, line: 28, baseType: !2939, size: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2933, file: !2916, line: 31, baseType: !2942, size: 64, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2944)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2916, line: 23, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, scope: !2933, file: !2916, line: 33, baseType: !2946, size: 64, offset: 192)
!2946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2933, file: !2916, line: 33, size: 64, elements: !2947)
!2947 = !{!2948, !2954, !2959}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2946, file: !2916, line: 38, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !2916, line: 34, size: 64, elements: !2950)
!2950 = !{!2951, !2952, !2953}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2949, file: !2916, line: 35, baseType: !552, size: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2949, file: !2916, line: 36, baseType: !175, size: 8, offset: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2949, file: !2916, line: 37, baseType: !175, size: 8, offset: 40)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2946, file: !2916, line: 42, baseType: !2955, size: 16)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !2916, line: 39, size: 16, elements: !2956)
!2956 = !{!2957, !2958}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2955, file: !2916, line: 40, baseType: !175, size: 8)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2955, file: !2916, line: 41, baseType: !175, size: 8, offset: 8)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2946, file: !2916, line: 46, baseType: !2960, size: 16)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !2916, line: 43, size: 16, elements: !2961)
!2961 = !{!2962, !2963}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2960, file: !2916, line: 44, baseType: !175, size: 8)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2960, file: !2916, line: 45, baseType: !175, size: 8, offset: 8)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2905, file: !44, line: 81, baseType: !2965, size: 64, offset: 448)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2971, !2972, !2973}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2966, file: !44, line: 86, baseType: !2928, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2966, file: !44, line: 87, baseType: !65, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2966, file: !44, line: 88, baseType: !65, size: 64, offset: 128)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2966, file: !44, line: 89, baseType: !65, size: 64, offset: 192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2966, file: !44, line: 90, baseType: !636, size: 8, offset: 256)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2966, file: !44, line: 92, baseType: !2965, size: 64, offset: 320)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2905, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1326, file: !1000, line: 1463, baseType: !2976, offset: 21184)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1000, line: 739, elements: !845)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1326, file: !1000, line: 1470, baseType: !776, size: 128, align: 64, offset: 21184)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1326, file: !1000, line: 1471, baseType: !1339, size: 32, offset: 21312)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1326, file: !1000, line: 1472, baseType: !125, size: 32, offset: 21344)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1326, file: !1000, line: 1474, baseType: !1325, size: 64, offset: 21376)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1326, file: !1000, line: 1475, baseType: !798, size: 320, offset: 21440)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1326, file: !1000, line: 1478, baseType: !2983, size: 64, offset: 21760)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1000, line: 1478, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1326, file: !1000, line: 1482, baseType: !1339, size: 32, offset: 21824)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1326, file: !1000, line: 1489, baseType: !64, size: 64, offset: 21888)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1326, file: !1000, line: 1504, baseType: !64, size: 64, offset: 21952)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1326, file: !1000, line: 1505, baseType: !369, size: 64, offset: 22016)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1326, file: !1000, line: 1506, baseType: !368, size: 64, offset: 22080)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1326, file: !1000, line: 1507, baseType: !369, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1326, file: !1000, line: 1508, baseType: !369, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1326, file: !1000, line: 1509, baseType: !369, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1326, file: !1000, line: 1510, baseType: !776, size: 128, align: 64, offset: 22208)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1326, file: !1000, line: 1511, baseType: !125, size: 32, offset: 22336)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1326, file: !1000, line: 1515, baseType: !2996, size: 64, offset: 22400)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1353, line: 56, size: 64, elements: !2997)
!2997 = !{!2998}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2996, file: !1353, line: 57, baseType: !1356, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1326, file: !1000, line: 1518, baseType: !2996, size: 64, offset: 22464)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1326, file: !1000, line: 1528, baseType: !776, size: 128, align: 64, offset: 22528)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1326, file: !1000, line: 1552, baseType: !3002, size: 35328, offset: 23040)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3003, line: 430, size: 35328, elements: !3004)
!3003 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3004 = !{!3005, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3034, !3035, !3036, !3037, !3038, !3039, !3042, !3043, !3044, !3045}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3002, file: !3003, line: 432, baseType: !3006, size: 192)
!3006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3007, size: 192, elements: !218)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3008, line: 16, size: 64, elements: !3009)
!3008 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3009 = !{!3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3007, file: !3008, line: 17, baseType: !185, size: 16)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3007, file: !3008, line: 18, baseType: !185, size: 16, offset: 16)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3007, file: !3008, line: 19, baseType: !185, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3007, file: !3008, line: 19, baseType: !185, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3007, file: !3008, line: 19, baseType: !185, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3007, file: !3008, line: 19, baseType: !185, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3007, file: !3008, line: 19, baseType: !185, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3007, file: !3008, line: 20, baseType: !185, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3007, file: !3008, line: 20, baseType: !185, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3007, file: !3008, line: 20, baseType: !185, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3007, file: !3008, line: 20, baseType: !185, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3007, file: !3008, line: 20, baseType: !185, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3007, file: !3008, line: 20, baseType: !185, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3002, file: !3003, line: 436, baseType: !65, size: 64, offset: 192)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3002, file: !3003, line: 440, baseType: !187, size: 16, offset: 256)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3002, file: !3003, line: 441, baseType: !187, size: 16, offset: 272)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3002, file: !3003, line: 442, baseType: !187, size: 16, offset: 288)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3002, file: !3003, line: 443, baseType: !187, size: 16, offset: 304)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3002, file: !3003, line: 447, baseType: !65, size: 64, offset: 320)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3002, file: !3003, line: 448, baseType: !65, size: 64, offset: 384)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3002, file: !3003, line: 459, baseType: !3031, size: 256, offset: 448)
!3031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3032, size: 256, elements: !786)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3003, line: 428, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3002, file: !3003, line: 461, baseType: !65, size: 64, offset: 704)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3002, file: !3003, line: 463, baseType: !65, size: 64, offset: 768)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3002, file: !3003, line: 465, baseType: !65, size: 64, offset: 832)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3002, file: !3003, line: 466, baseType: !65, size: 64, offset: 896)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3002, file: !3003, line: 467, baseType: !65, size: 64, offset: 960)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3002, file: !3003, line: 473, baseType: !3040, size: 64, offset: 1024)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3003, line: 10, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3002, file: !3003, line: 480, baseType: !65, size: 64, offset: 1088)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3002, file: !3003, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3002, file: !3003, line: 491, baseType: !364, size: 32, offset: 1184)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3002, file: !3003, line: 501, baseType: !3046, size: 33792, offset: 1536)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3047, line: 448, size: 33792, elements: !3048)
!3047 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3048 = !{!3049, !3050, !3051, !3213, !3214, !3220, !3221}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3046, file: !3047, line: 461, baseType: !7, size: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3046, file: !3047, line: 468, baseType: !65, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3046, file: !3047, line: 476, baseType: !3052, size: 64, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3047, line: 356, size: 33280, align: 512, elements: !3054)
!3054 = !{!3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3053, file: !3047, line: 358, baseType: !7, size: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3053, file: !3047, line: 361, baseType: !7, size: 32, offset: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3053, file: !3047, line: 364, baseType: !368, size: 64, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3053, file: !3047, line: 367, baseType: !368, size: 64, offset: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3053, file: !3047, line: 370, baseType: !368, size: 64, offset: 192)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3053, file: !3047, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3053, file: !3047, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3053, file: !3047, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3053, file: !3047, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3053, file: !3047, line: 397, baseType: !3065, size: 32768, offset: 512)
!3065 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3047, line: 348, size: 32768, elements: !3066)
!3066 = !{!3067, !3082, !3119, !3196, !3209}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3065, file: !3047, line: 349, baseType: !3068, size: 896)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3047, line: 12, size: 896, elements: !3069)
!3069 = !{!3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3081}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3068, file: !3047, line: 13, baseType: !364, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3068, file: !3047, line: 14, baseType: !364, size: 32, offset: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3068, file: !3047, line: 15, baseType: !364, size: 32, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3068, file: !3047, line: 16, baseType: !364, size: 32, offset: 96)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3068, file: !3047, line: 17, baseType: !364, size: 32, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3068, file: !3047, line: 18, baseType: !364, size: 32, offset: 160)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3068, file: !3047, line: 19, baseType: !364, size: 32, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3068, file: !3047, line: 22, baseType: !3078, size: 640, offset: 224)
!3078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 640, elements: !3079)
!3079 = !{!3080}
!3080 = !DISubrange(count: 20)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3068, file: !3047, line: 25, baseType: !364, size: 32, offset: 864)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3065, file: !3047, line: 350, baseType: !3083, size: 4096, align: 128)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3047, line: 34, size: 4096, align: 128, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088, !3089, !3104, !3105, !3106, !3108, !3110, !3114}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3083, file: !3047, line: 35, baseType: !185, size: 16)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3083, file: !3047, line: 36, baseType: !185, size: 16, offset: 16)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3083, file: !3047, line: 37, baseType: !185, size: 16, offset: 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3083, file: !3047, line: 38, baseType: !185, size: 16, offset: 48)
!3089 = !DIDerivedType(tag: DW_TAG_member, scope: !3083, file: !3047, line: 39, baseType: !3090, size: 128, offset: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3083, file: !3047, line: 39, size: 128, elements: !3091)
!3091 = !{!3092, !3097}
!3092 = !DIDerivedType(tag: DW_TAG_member, scope: !3090, file: !3047, line: 40, baseType: !3093, size: 128)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3090, file: !3047, line: 40, size: 128, elements: !3094)
!3094 = !{!3095, !3096}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3093, file: !3047, line: 41, baseType: !368, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3093, file: !3047, line: 42, baseType: !368, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, scope: !3090, file: !3047, line: 44, baseType: !3098, size: 128)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3090, file: !3047, line: 44, size: 128, elements: !3099)
!3099 = !{!3100, !3101, !3102, !3103}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3098, file: !3047, line: 45, baseType: !364, size: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3098, file: !3047, line: 46, baseType: !364, size: 32, offset: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3098, file: !3047, line: 47, baseType: !364, size: 32, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3098, file: !3047, line: 48, baseType: !364, size: 32, offset: 96)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3083, file: !3047, line: 51, baseType: !364, size: 32, offset: 192)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3083, file: !3047, line: 52, baseType: !364, size: 32, offset: 224)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3083, file: !3047, line: 55, baseType: !3107, size: 1024, offset: 256)
!3107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 1024, elements: !377)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3083, file: !3047, line: 58, baseType: !3109, size: 2048, offset: 1280)
!3109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 2048, elements: !222)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3083, file: !3047, line: 60, baseType: !3111, size: 384, offset: 3328)
!3111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 384, elements: !3112)
!3112 = !{!3113}
!3113 = !DISubrange(count: 12)
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !3083, file: !3047, line: 62, baseType: !3115, size: 384, offset: 3712)
!3115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3083, file: !3047, line: 62, size: 384, elements: !3116)
!3116 = !{!3117, !3118}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3115, file: !3047, line: 63, baseType: !3111, size: 384)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3115, file: !3047, line: 64, baseType: !3111, size: 384)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3065, file: !3047, line: 351, baseType: !3120, size: 1088)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3047, line: 79, size: 1088, elements: !3121)
!3121 = !{!3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3195}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3120, file: !3047, line: 80, baseType: !364, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3120, file: !3047, line: 81, baseType: !364, size: 32, offset: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3120, file: !3047, line: 82, baseType: !364, size: 32, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3120, file: !3047, line: 83, baseType: !364, size: 32, offset: 96)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3120, file: !3047, line: 84, baseType: !364, size: 32, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3120, file: !3047, line: 85, baseType: !364, size: 32, offset: 160)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3120, file: !3047, line: 86, baseType: !364, size: 32, offset: 192)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3120, file: !3047, line: 88, baseType: !3078, size: 640, offset: 224)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3120, file: !3047, line: 89, baseType: !175, size: 8, offset: 864)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3120, file: !3047, line: 90, baseType: !175, size: 8, offset: 872)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3120, file: !3047, line: 91, baseType: !175, size: 8, offset: 880)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3120, file: !3047, line: 92, baseType: !175, size: 8, offset: 888)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3120, file: !3047, line: 93, baseType: !175, size: 8, offset: 896)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3120, file: !3047, line: 94, baseType: !175, size: 8, offset: 904)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3120, file: !3047, line: 95, baseType: !3137, size: 64, offset: 960)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3139, line: 11, size: 128, elements: !3140)
!3139 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3140 = !{!3141, !3142}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3138, file: !3139, line: 12, baseType: !66, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3138, file: !3139, line: 13, baseType: !3143, size: 64, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3145, line: 103, size: 1344, elements: !3146)
!3145 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3175, !3176, !3177}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3144, file: !3145, line: 109, baseType: !65, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3144, file: !3145, line: 110, baseType: !65, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3144, file: !3145, line: 111, baseType: !65, size: 64, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3144, file: !3145, line: 112, baseType: !65, size: 64, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3144, file: !3145, line: 113, baseType: !65, size: 64, offset: 256)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3144, file: !3145, line: 114, baseType: !65, size: 64, offset: 320)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3144, file: !3145, line: 117, baseType: !65, size: 64, offset: 384)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3144, file: !3145, line: 118, baseType: !65, size: 64, offset: 448)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3144, file: !3145, line: 119, baseType: !65, size: 64, offset: 512)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3144, file: !3145, line: 120, baseType: !65, size: 64, offset: 576)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3144, file: !3145, line: 121, baseType: !65, size: 64, offset: 640)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3144, file: !3145, line: 122, baseType: !65, size: 64, offset: 704)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3144, file: !3145, line: 123, baseType: !65, size: 64, offset: 768)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3144, file: !3145, line: 124, baseType: !65, size: 64, offset: 832)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3144, file: !3145, line: 125, baseType: !65, size: 64, offset: 896)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3144, file: !3145, line: 139, baseType: !65, size: 64, offset: 960)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3144, file: !3145, line: 142, baseType: !65, size: 64, offset: 1024)
!3164 = !DIDerivedType(tag: DW_TAG_member, scope: !3144, file: !3145, line: 144, baseType: !3165, size: 64, offset: 1088)
!3165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3144, file: !3145, line: 144, size: 64, elements: !3166)
!3166 = !{!3167, !3168, !3169}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3165, file: !3145, line: 146, baseType: !185, size: 16)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3165, file: !3145, line: 148, baseType: !368, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3165, file: !3145, line: 150, baseType: !3170, size: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3145, line: 59, size: 64, elements: !3171)
!3171 = !{!3172, !3173, !3174}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3170, file: !3145, line: 61, baseType: !368, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3170, file: !3145, line: 63, baseType: !368, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3170, file: !3145, line: 65, baseType: !368, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3144, file: !3145, line: 153, baseType: !65, size: 64, offset: 1152)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3144, file: !3145, line: 154, baseType: !65, size: 64, offset: 1216)
!3177 = !DIDerivedType(tag: DW_TAG_member, scope: !3144, file: !3145, line: 156, baseType: !3178, size: 64, offset: 1280)
!3178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3144, file: !3145, line: 156, size: 64, elements: !3179)
!3179 = !{!3180, !3181, !3182}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3178, file: !3145, line: 158, baseType: !185, size: 16)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3178, file: !3145, line: 160, baseType: !368, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3178, file: !3145, line: 162, baseType: !3183, size: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3145, line: 69, size: 64, elements: !3184)
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3183, file: !3145, line: 71, baseType: !368, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3183, file: !3145, line: 73, baseType: !368, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3183, file: !3145, line: 75, baseType: !368, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3183, file: !3145, line: 77, baseType: !368, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3183, file: !3145, line: 80, baseType: !368, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3183, file: !3145, line: 83, baseType: !368, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3183, file: !3145, line: 86, baseType: !368, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3183, file: !3145, line: 88, baseType: !368, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3183, file: !3145, line: 93, baseType: !368, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3183, file: !3145, line: 100, baseType: !368, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3120, file: !3047, line: 96, baseType: !364, size: 32, offset: 1024)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3065, file: !3047, line: 352, baseType: !3197, size: 4608, align: 512)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3047, line: 333, size: 4608, align: 512, elements: !3198)
!3198 = !{!3199, !3200, !3207}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3197, file: !3047, line: 334, baseType: !3083, size: 4096, align: 128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3197, file: !3047, line: 335, baseType: !3201, size: 512, offset: 4096)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3047, line: 312, size: 512, elements: !3202)
!3202 = !{!3203, !3204, !3205}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3201, file: !3047, line: 313, baseType: !368, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3201, file: !3047, line: 314, baseType: !368, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3201, file: !3047, line: 315, baseType: !3206, size: 384, offset: 128)
!3206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 384, elements: !1792)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3197, file: !3047, line: 336, baseType: !3208, offset: 4608)
!3208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, elements: !1709)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3065, file: !3047, line: 353, baseType: !3210, size: 32768)
!3210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 32768, elements: !3211)
!3211 = !{!3212}
!3212 = !DISubrange(count: 4096)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3046, file: !3047, line: 484, baseType: !3052, size: 64, offset: 192)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3046, file: !3047, line: 491, baseType: !3215, size: 128, offset: 256)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3047, line: 404, size: 128, elements: !3216)
!3216 = !{!3217, !3218, !3219}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3215, file: !3047, line: 424, baseType: !368, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3215, file: !3047, line: 432, baseType: !7, size: 32, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3215, file: !3047, line: 440, baseType: !7, size: 32, offset: 96)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3046, file: !3047, line: 498, baseType: !3215, size: 128, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3046, file: !3047, line: 508, baseType: !3053, size: 33280, align: 512, offset: 512)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1302, file: !1303, line: 16, baseType: !1312, size: 192, offset: 512)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1302, file: !1303, line: 17, baseType: !167, size: 32, offset: 704)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !447, file: !14, line: 1240, baseType: !64, size: 64, offset: 6912)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !447, file: !14, line: 1243, baseType: !364, size: 32, offset: 6976)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !447, file: !14, line: 1245, baseType: !1058, size: 64, offset: 7040)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !447, file: !14, line: 1246, baseType: !1058, size: 64, offset: 7104)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !447, file: !14, line: 1248, baseType: !365, size: 32, offset: 7168)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !447, file: !14, line: 1249, baseType: !3230, size: 64, offset: 7232)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !447, file: !14, line: 1252, baseType: !3233, size: 256, offset: 7296)
!3233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 256, elements: !377)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !447, file: !14, line: 1253, baseType: !3235, size: 128, offset: 7552)
!3235 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3236, line: 21, baseType: !3237)
!3236 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3236, line: 19, size: 128, elements: !3238)
!3238 = !{!3239}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3237, file: !3236, line: 20, baseType: !3240, size: 128)
!3240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 128, elements: !2409)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !447, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !447, file: !14, line: 1261, baseType: !556, size: 256, offset: 7744)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !447, file: !14, line: 1267, baseType: !131, size: 64, offset: 8000)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !447, file: !14, line: 1269, baseType: !393, size: 64, offset: 8064)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !447, file: !14, line: 1271, baseType: !3246, size: 448, offset: 8128)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1067, line: 63, size: 448, elements: !3247)
!3247 = !{!3248, !3253, !3254, !3255, !3256, !3257, !3258}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3246, file: !1067, line: 64, baseType: !3249, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!65, !3252, !1065}
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3246, file: !1067, line: 66, baseType: !3249, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3246, file: !1067, line: 69, baseType: !66, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3246, file: !1067, line: 70, baseType: !125, size: 32, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3246, file: !1067, line: 71, baseType: !7, size: 32, offset: 224)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3246, file: !1067, line: 74, baseType: !134, size: 128, offset: 256)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3246, file: !1067, line: 85, baseType: !3259, size: 64, offset: 384)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !447, file: !14, line: 1274, baseType: !560, size: 64, offset: 8576)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !447, file: !14, line: 1280, baseType: !560, size: 64, offset: 8640)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !447, file: !14, line: 1283, baseType: !125, size: 32, offset: 8704)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !447, file: !14, line: 1286, baseType: !2142, size: 32, offset: 8736)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !447, file: !14, line: 1289, baseType: !878, size: 64, offset: 8768)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !447, file: !14, line: 1290, baseType: !926, size: 64, offset: 8832)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !447, file: !14, line: 1297, baseType: !1886, size: 64, offset: 8896)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !447, file: !14, line: 1304, baseType: !3268, size: 64, offset: 8960)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3269, line: 49, size: 64, elements: !3270)
!3269 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3270 = !{!3271}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3268, file: !3269, line: 50, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3269, line: 41, size: 512, align: 512, elements: !3274)
!3274 = !{!3275, !3276, !3281}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3273, file: !3269, line: 43, baseType: !147, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3273, file: !3269, line: 45, baseType: !3277, size: 192, offset: 64)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3269, line: 29, size: 192, elements: !3278)
!3278 = !{!3279, !3280}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3277, file: !3269, line: 30, baseType: !134, size: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3277, file: !3269, line: 32, baseType: !66, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3273, file: !3269, line: 46, baseType: !66, size: 64, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !447, file: !14, line: 1305, baseType: !3268, size: 64, offset: 9024)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !447, file: !14, line: 1306, baseType: !776, size: 128, align: 64, offset: 9088)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !447, file: !14, line: 1307, baseType: !816, size: 256, offset: 9216)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !447, file: !14, line: 1309, baseType: !556, size: 256, offset: 9472)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !447, file: !14, line: 1314, baseType: !125, size: 32, offset: 9728)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !447, file: !14, line: 1317, baseType: !147, size: 32, align: 512, offset: 10240)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !447, file: !14, line: 1318, baseType: !134, size: 128, offset: 10304)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !447, file: !14, line: 1320, baseType: !147, size: 32, offset: 10432)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !447, file: !14, line: 1321, baseType: !134, size: 128, offset: 10496)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !441, file: !442, line: 73, baseType: !125, size: 32, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !441, file: !442, line: 74, baseType: !3293, size: 64, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1733, line: 42, flags: DIFlagFwdDecl)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !395, file: !332, line: 141, baseType: !3297, size: 64, offset: 704)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!125, !1129, !636}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !395, file: !332, line: 142, baseType: !3301, size: 64, offset: 768)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!330, !330, !3304}
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !331, file: !332, line: 96, baseType: !446, size: 64, offset: 832)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !331, file: !332, line: 97, baseType: !65, size: 64, offset: 896)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !331, file: !332, line: 98, baseType: !64, size: 64, offset: 960)
!3309 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !332, line: 100, baseType: !3310, size: 128, offset: 1024)
!3310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !332, line: 100, size: 128, elements: !3311)
!3311 = !{!3312, !3313}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3310, file: !332, line: 101, baseType: !134, size: 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3310, file: !332, line: 102, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !331, file: !332, line: 104, baseType: !134, size: 128, offset: 1152)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !331, file: !332, line: 105, baseType: !134, size: 128, offset: 1280)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !331, file: !332, line: 113, baseType: !3318, size: 128, offset: 1408)
!3318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !332, line: 109, size: 128, elements: !3319)
!3319 = !{!3320, !3321, !3322}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3318, file: !332, line: 110, baseType: !802, size: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3318, file: !332, line: 111, baseType: !346, size: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3318, file: !332, line: 112, baseType: !776, size: 128, align: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !324, file: !14, line: 1968, baseType: !3324, size: 64, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!131, !330, !295, !3327}
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3329, line: 10, size: 128, elements: !3330)
!3329 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3330 = !{!3331, !3332}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3328, file: !3329, line: 11, baseType: !599, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3328, file: !3329, line: 12, baseType: !64, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !324, file: !14, line: 1969, baseType: !3334, size: 64, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!125, !3293, !295, !125}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !324, file: !14, line: 1970, baseType: !3338, size: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!318, !295, !125, !636}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !324, file: !14, line: 1972, baseType: !3342, size: 64, offset: 256)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!125, !330, !217, !125}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !324, file: !14, line: 1974, baseType: !3346, size: 64, offset: 320)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!125, !3293, !295, !330, !258, !636}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !324, file: !14, line: 1976, baseType: !3350, size: 64, offset: 384)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!125, !330, !295, !330}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !324, file: !14, line: 1977, baseType: !3354, size: 64, offset: 448)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!125, !295, !330}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !324, file: !14, line: 1978, baseType: !3358, size: 64, offset: 512)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!125, !3293, !295, !330, !131}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !324, file: !14, line: 1980, baseType: !3362, size: 64, offset: 576)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!125, !3293, !295, !330, !258}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !324, file: !14, line: 1982, baseType: !3354, size: 64, offset: 640)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !324, file: !14, line: 1983, baseType: !3367, size: 64, offset: 704)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!125, !3293, !295, !330, !258, !451}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !324, file: !14, line: 1985, baseType: !3371, size: 64, offset: 768)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!125, !3293, !295, !330, !295, !330, !7}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !324, file: !14, line: 1987, baseType: !3375, size: 64, offset: 832)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!125, !3293, !330, !3378}
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3380)
!3380 = !{!3381, !3382, !3383, !3393, !3402, !3403, !3408, !3409, !3410}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3379, file: !14, line: 227, baseType: !7, size: 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3379, file: !14, line: 228, baseType: !258, size: 16, offset: 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, scope: !3379, file: !14, line: 241, baseType: !3384, size: 32, offset: 64)
!3384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3379, file: !14, line: 241, size: 32, elements: !3385)
!3385 = !{!3386, !3387}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3384, file: !14, line: 242, baseType: !301, size: 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3384, file: !14, line: 243, baseType: !3388, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3389, line: 16, baseType: !3390)
!3389 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3389, line: 14, size: 32, elements: !3391)
!3391 = !{!3392}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3390, file: !3389, line: 15, baseType: !306, size: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, scope: !3379, file: !14, line: 245, baseType: !3394, size: 32, offset: 96)
!3394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3379, file: !14, line: 245, size: 32, elements: !3395)
!3395 = !{!3396, !3397}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3394, file: !14, line: 246, baseType: !310, size: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3394, file: !14, line: 247, baseType: !3398, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3389, line: 20, baseType: !3399)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3389, line: 18, size: 32, elements: !3400)
!3400 = !{!3401}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3399, file: !3389, line: 19, baseType: !314, size: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3379, file: !14, line: 249, baseType: !456, size: 64, offset: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3379, file: !14, line: 250, baseType: !3404, size: 128, offset: 192)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1059, line: 13, size: 128, elements: !3405)
!3405 = !{!3406, !3407}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3404, file: !1059, line: 14, baseType: !1058, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3404, file: !1059, line: 15, baseType: !66, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3379, file: !14, line: 251, baseType: !3404, size: 128, offset: 320)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3379, file: !14, line: 252, baseType: !3404, size: 128, offset: 448)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3379, file: !14, line: 259, baseType: !1649, size: 64, offset: 576)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !324, file: !14, line: 1988, baseType: !3412, size: 64, offset: 896)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!125, !3293, !1129, !3415, !364, !7}
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3417, line: 22, size: 1280, elements: !3418)
!3417 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3418 = !{!3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3416, file: !3417, line: 23, baseType: !364, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3416, file: !3417, line: 24, baseType: !258, size: 16, offset: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3416, file: !3417, line: 25, baseType: !7, size: 32, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3416, file: !3417, line: 26, baseType: !1771, size: 32, offset: 96)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3416, file: !3417, line: 27, baseType: !368, size: 64, offset: 128)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3416, file: !3417, line: 28, baseType: !368, size: 64, offset: 192)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3416, file: !3417, line: 41, baseType: !368, size: 64, offset: 256)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3416, file: !3417, line: 42, baseType: !451, size: 32, offset: 320)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3416, file: !3417, line: 43, baseType: !451, size: 32, offset: 352)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3416, file: !3417, line: 44, baseType: !301, size: 32, offset: 384)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3416, file: !3417, line: 45, baseType: !310, size: 32, offset: 416)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3416, file: !3417, line: 46, baseType: !456, size: 64, offset: 448)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3416, file: !3417, line: 47, baseType: !3404, size: 128, offset: 512)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3416, file: !3417, line: 48, baseType: !3404, size: 128, offset: 640)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3416, file: !3417, line: 49, baseType: !3404, size: 128, offset: 768)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3416, file: !3417, line: 50, baseType: !3404, size: 128, offset: 896)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3416, file: !3417, line: 51, baseType: !368, size: 64, offset: 1024)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3416, file: !3417, line: 52, baseType: !368, size: 64, offset: 1088)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3416, file: !3417, line: 53, baseType: !364, size: 32, offset: 1152)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3416, file: !3417, line: 54, baseType: !364, size: 32, offset: 1184)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3416, file: !3417, line: 55, baseType: !368, size: 64, offset: 1216)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !324, file: !14, line: 1990, baseType: !3441, size: 64, offset: 960)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!249, !330, !217, !263}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !324, file: !14, line: 1991, baseType: !3445, size: 64, offset: 1024)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!125, !295, !3448, !368, !368}
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !324, file: !14, line: 1993, baseType: !3451, size: 64, offset: 1088)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!125, !295, !125}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !324, file: !14, line: 1994, baseType: !3455, size: 64, offset: 1152)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!125, !295, !330, !1649, !7, !258}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !324, file: !14, line: 1997, baseType: !3459, size: 64, offset: 1216)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!125, !3293, !295, !1649, !258}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !324, file: !14, line: 1999, baseType: !3463, size: 64, offset: 1280)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!318, !3293, !330, !125}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !324, file: !14, line: 2001, baseType: !3467, size: 64, offset: 1344)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!125, !3293, !330, !318, !125}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !324, file: !14, line: 2003, baseType: !3471, size: 64, offset: 1408)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!125, !3293, !330, !3474}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !324, file: !14, line: 2005, baseType: !3477, size: 64, offset: 1472)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!125, !330, !3474}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !324, file: !14, line: 2006, baseType: !3481, size: 64, offset: 1536)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!3484, !295}
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3486)
!3486 = !{!3487, !3494}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3485, file: !14, line: 3193, baseType: !3488, size: 128)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3489, line: 296, size: 128, elements: !3490)
!3489 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3490 = !{!3491, !3492, !3493}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3488, file: !3489, line: 297, baseType: !147, size: 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3488, file: !3489, line: 299, baseType: !1070, size: 32, offset: 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3488, file: !3489, line: 300, baseType: !64, size: 64, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3485, file: !14, line: 3194, baseType: !364, size: 32, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !296, file: !14, line: 655, baseType: !446, size: 64, offset: 448)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !296, file: !14, line: 656, baseType: !291, size: 64, offset: 512)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !296, file: !14, line: 659, baseType: !64, size: 64, offset: 576)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !296, file: !14, line: 663, baseType: !65, size: 64, offset: 640)
!3499 = !DIDerivedType(tag: DW_TAG_member, scope: !296, file: !14, line: 671, baseType: !3500, size: 32, offset: 704)
!3500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !296, file: !14, line: 671, size: 32, elements: !3501)
!3501 = !{!3502, !3504}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3500, file: !14, line: 672, baseType: !3503, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3500, file: !14, line: 673, baseType: !7, size: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !296, file: !14, line: 675, baseType: !451, size: 32, offset: 736)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !296, file: !14, line: 676, baseType: !456, size: 64, offset: 768)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !296, file: !14, line: 677, baseType: !3404, size: 128, offset: 832)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !296, file: !14, line: 678, baseType: !3404, size: 128, offset: 960)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !296, file: !14, line: 679, baseType: !3404, size: 128, offset: 1088)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !296, file: !14, line: 680, baseType: !147, size: 32, offset: 1216)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !296, file: !14, line: 681, baseType: !187, size: 16, offset: 1248)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !296, file: !14, line: 682, baseType: !175, size: 8, offset: 1264)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !296, file: !14, line: 683, baseType: !175, size: 8, offset: 1272)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !296, file: !14, line: 684, baseType: !1207, size: 64, offset: 1280)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !296, file: !14, line: 691, baseType: !65, size: 64, offset: 1344)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !296, file: !14, line: 692, baseType: !1219, size: 320, offset: 1408)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !296, file: !14, line: 694, baseType: !65, size: 64, offset: 1728)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !296, file: !14, line: 695, baseType: !65, size: 64, offset: 1792)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !296, file: !14, line: 697, baseType: !802, size: 128, offset: 1856)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !296, file: !14, line: 698, baseType: !134, size: 128, offset: 1984)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !296, file: !14, line: 707, baseType: !134, size: 128, offset: 2112)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !296, file: !14, line: 708, baseType: !134, size: 128, offset: 2240)
!3523 = !DIDerivedType(tag: DW_TAG_member, scope: !296, file: !14, line: 709, baseType: !3524, size: 128, offset: 2368)
!3524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !296, file: !14, line: 709, size: 128, elements: !3525)
!3525 = !{!3526, !3527}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3524, file: !14, line: 710, baseType: !926, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3524, file: !14, line: 711, baseType: !776, size: 128, align: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !296, file: !14, line: 713, baseType: !562, size: 64, offset: 2496)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !296, file: !14, line: 714, baseType: !562, size: 64, offset: 2560)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !296, file: !14, line: 715, baseType: !167, size: 32, offset: 2624)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !296, file: !14, line: 716, baseType: !167, size: 32, offset: 2656)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !296, file: !14, line: 717, baseType: !167, size: 32, offset: 2688)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !296, file: !14, line: 719, baseType: !167, size: 32, offset: 2720)
!3534 = !DIDerivedType(tag: DW_TAG_member, scope: !296, file: !14, line: 721, baseType: !3535, size: 64, offset: 2752)
!3535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !296, file: !14, line: 721, size: 64, elements: !3536)
!3536 = !{!3537, !3538}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3535, file: !14, line: 722, baseType: !1917, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3535, file: !14, line: 723, baseType: !949, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !296, file: !14, line: 725, baseType: !3540, size: 64, offset: 2816)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !296, file: !14, line: 726, baseType: !292, size: 1536, align: 64, offset: 2880)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !296, file: !14, line: 727, baseType: !134, size: 128, offset: 4416)
!3544 = !DIDerivedType(tag: DW_TAG_member, scope: !296, file: !14, line: 728, baseType: !3545, size: 64, offset: 4544)
!3545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !296, file: !14, line: 728, size: 64, elements: !3546)
!3546 = !{!3547, !3548, !3551, !3552}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3545, file: !14, line: 729, baseType: !2092, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3545, file: !14, line: 730, baseType: !3549, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3545, file: !14, line: 731, baseType: !217, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3545, file: !14, line: 732, baseType: !7, size: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !296, file: !14, line: 735, baseType: !365, size: 32, offset: 4608)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !296, file: !14, line: 738, baseType: !365, size: 32, offset: 4640)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !296, file: !14, line: 739, baseType: !3230, size: 64, offset: 4672)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !296, file: !14, line: 750, baseType: !64, size: 64, offset: 4736)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !292, file: !14, line: 474, baseType: !3488, size: 128, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !292, file: !14, line: 475, baseType: !1219, size: 320, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !292, file: !14, line: 476, baseType: !1070, size: 32, offset: 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !292, file: !14, line: 477, baseType: !167, size: 32, offset: 544)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !292, file: !14, line: 482, baseType: !1505, size: 128, offset: 576)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !292, file: !14, line: 483, baseType: !65, size: 64, offset: 704)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !292, file: !14, line: 484, baseType: !65, size: 64, offset: 768)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !292, file: !14, line: 485, baseType: !3565, size: 64, offset: 832)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3567)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3568)
!3568 = !{!3569, !3573, !3643, !3647, !3651, !3657, !3662, !3666, !3671, !3675, !3679, !3683, !3684, !3688, !3692, !3696, !3701, !3705, !3712, !3713}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3567, file: !14, line: 405, baseType: !3570, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!125, !2829, !961}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3567, file: !14, line: 406, baseType: !3574, size: 64, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!125, !1649, !3577}
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1077, line: 293, size: 1536, elements: !3579)
!3579 = !{!3580, !3610, !3624}
!3580 = !DIDerivedType(tag: DW_TAG_member, scope: !3578, file: !1077, line: 295, baseType: !3581, size: 512)
!3581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3578, file: !1077, line: 295, size: 512, elements: !3582)
!3582 = !{!3583, !3609}
!3583 = !DIDerivedType(tag: DW_TAG_member, scope: !3581, file: !1077, line: 296, baseType: !3584, size: 448)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3581, file: !1077, line: 296, size: 448, elements: !3585)
!3585 = !{!3586, !3587, !3596, !3597, !3598, !3607, !3608}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3584, file: !1077, line: 298, baseType: !65, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, scope: !3584, file: !1077, line: 299, baseType: !3588, size: 128, offset: 64)
!3588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3584, file: !1077, line: 299, size: 128, elements: !3589)
!3589 = !{!3590, !3591}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3588, file: !1077, line: 300, baseType: !134, size: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, scope: !3588, file: !1077, line: 302, baseType: !3592, size: 128)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3588, file: !1077, line: 302, size: 128, elements: !3593)
!3593 = !{!3594, !3595}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3592, file: !1077, line: 303, baseType: !64, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3592, file: !1077, line: 305, baseType: !7, size: 32, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3584, file: !1077, line: 310, baseType: !291, size: 64, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3584, file: !1077, line: 311, baseType: !65, size: 64, offset: 256)
!3598 = !DIDerivedType(tag: DW_TAG_member, scope: !3584, file: !1077, line: 312, baseType: !3599, size: 64, offset: 320)
!3599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3584, file: !1077, line: 312, size: 64, elements: !3600)
!3600 = !{!3601, !3602}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3599, file: !1077, line: 313, baseType: !64, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3599, file: !1077, line: 314, baseType: !3603, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1077, line: 257, baseType: !3604)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1077, line: 255, size: 64, elements: !3605)
!3605 = !{!3606}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3604, file: !1077, line: 256, baseType: !65, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3584, file: !1077, line: 316, baseType: !167, size: 32, offset: 384)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3584, file: !1077, line: 317, baseType: !167, size: 32, offset: 416)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3581, file: !1077, line: 323, baseType: !2830, size: 512, align: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, scope: !3578, file: !1077, line: 325, baseType: !3611, size: 512, offset: 512)
!3611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3578, file: !1077, line: 325, size: 512, elements: !3612)
!3612 = !{!3613, !3623}
!3613 = !DIDerivedType(tag: DW_TAG_member, scope: !3611, file: !1077, line: 326, baseType: !3614, size: 320)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3611, file: !1077, line: 326, size: 320, elements: !3615)
!3615 = !{!3616, !3617, !3618, !3619, !3620, !3621, !3622}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3614, file: !1077, line: 327, baseType: !65, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3614, file: !1077, line: 328, baseType: !65, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3614, file: !1077, line: 329, baseType: !65, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3614, file: !1077, line: 331, baseType: !167, size: 32, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3614, file: !1077, line: 332, baseType: !167, size: 32, offset: 224)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3614, file: !1077, line: 333, baseType: !167, size: 32, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3614, file: !1077, line: 335, baseType: !7, size: 32, offset: 288)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3611, file: !1077, line: 339, baseType: !2830, size: 512, align: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, scope: !3578, file: !1077, line: 341, baseType: !3625, size: 512, offset: 1024)
!3625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3578, file: !1077, line: 341, size: 512, elements: !3626)
!3626 = !{!3627, !3636, !3642}
!3627 = !DIDerivedType(tag: DW_TAG_member, scope: !3625, file: !1077, line: 342, baseType: !3628, size: 384)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3625, file: !1077, line: 342, size: 384, elements: !3629)
!3629 = !{!3630, !3631, !3632, !3633, !3634, !3635}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3628, file: !1077, line: 343, baseType: !65, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3628, file: !1077, line: 344, baseType: !65, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3628, file: !1077, line: 346, baseType: !64, size: 64, offset: 128)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3628, file: !1077, line: 347, baseType: !64, size: 64, offset: 192)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3628, file: !1077, line: 348, baseType: !64, size: 64, offset: 256)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3628, file: !1077, line: 349, baseType: !64, size: 64, offset: 320)
!3636 = !DIDerivedType(tag: DW_TAG_member, scope: !3625, file: !1077, line: 352, baseType: !3637, size: 256)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3625, file: !1077, line: 352, size: 256, elements: !3638)
!3638 = !{!3639, !3640, !3641}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3637, file: !1077, line: 353, baseType: !65, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3637, file: !1077, line: 354, baseType: !65, size: 64, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3637, file: !1077, line: 356, baseType: !134, size: 128, offset: 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3625, file: !1077, line: 359, baseType: !2830, size: 512, align: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3567, file: !14, line: 409, baseType: !3644, size: 64, offset: 128)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!125, !291, !961}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3567, file: !14, line: 412, baseType: !3648, size: 64, offset: 192)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!636, !291, !3577}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3567, file: !14, line: 414, baseType: !3652, size: 64, offset: 256)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{null, !3655}
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3567, file: !14, line: 416, baseType: !3658, size: 64, offset: 320)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!125, !1649, !291, !456, !7, !3661, !2107}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3567, file: !14, line: 419, baseType: !3663, size: 64, offset: 384)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!125, !1649, !291, !456, !7, !7, !2829, !64}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3567, file: !14, line: 424, baseType: !3667, size: 64, offset: 448)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!3670, !291, !3670}
!3670 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !135, line: 131, baseType: !368)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3567, file: !14, line: 425, baseType: !3672, size: 64, offset: 512)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{null, !3577, !263, !263}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3567, file: !14, line: 426, baseType: !3676, size: 64, offset: 576)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!636, !3577, !1070}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3567, file: !14, line: 427, baseType: !3680, size: 64, offset: 640)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{null, !3577}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3567, file: !14, line: 428, baseType: !1936, size: 64, offset: 704)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3567, file: !14, line: 433, baseType: !3685, size: 64, offset: 768)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!125, !291, !3577, !3577, !50}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3567, file: !14, line: 435, baseType: !3689, size: 64, offset: 832)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!125, !3577}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3567, file: !14, line: 436, baseType: !3693, size: 64, offset: 896)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!636, !3577, !263, !263}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3567, file: !14, line: 438, baseType: !3697, size: 64, offset: 960)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{null, !3577, !3700, !3700}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3567, file: !14, line: 439, baseType: !3702, size: 64, offset: 1024)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!125, !291, !2829}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3567, file: !14, line: 442, baseType: !3706, size: 64, offset: 1088)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!125, !3709, !1649, !3711}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3567, file: !14, line: 444, baseType: !2099, size: 64, offset: 1152)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3567, file: !14, line: 445, baseType: !3714, size: 64, offset: 1216)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!125, !1939, !1961}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !14, line: 486, baseType: !65, size: 64, offset: 896)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !292, file: !14, line: 487, baseType: !1219, size: 320, offset: 960)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !292, file: !14, line: 488, baseType: !2142, size: 32, offset: 1280)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !292, file: !14, line: 489, baseType: !147, size: 32, offset: 1312)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !292, file: !14, line: 490, baseType: !134, size: 128, offset: 1344)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !292, file: !14, line: 491, baseType: !64, size: 64, offset: 1472)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !282, file: !243, line: 180, baseType: !3724, size: 64, offset: 320)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!249, !1649, !126, !281, !217, !456, !263}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !282, file: !243, line: 182, baseType: !3724, size: 64, offset: 384)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !282, file: !243, line: 184, baseType: !3729, size: 64, offset: 448)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!125, !1649, !126, !281, !2000}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !270, file: !243, line: 90, baseType: !3733, size: 64, offset: 192)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !270, file: !243, line: 91, baseType: !3735, size: 64, offset: 256)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !233, file: !128, line: 120, baseType: !3737, size: 64, offset: 192)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!3740, !200}
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3742)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !3743)
!3743 = !{!3744, !3745, !3749, !3753, !3759, !3763}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3742, file: !58, line: 40, baseType: !57, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3742, file: !58, line: 41, baseType: !3746, size: 64, offset: 64)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!636}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3742, file: !58, line: 42, baseType: !3750, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!64}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3742, file: !58, line: 43, baseType: !3754, size: 64, offset: 192)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!2231, !3757}
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3742, file: !58, line: 44, baseType: !3760, size: 64, offset: 256)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!2231}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3742, file: !58, line: 45, baseType: !599, size: 64, offset: 320)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !233, file: !128, line: 121, baseType: !3765, size: 64, offset: 256)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!2231, !200}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !233, file: !128, line: 122, baseType: !3769, size: 64, offset: 320)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{null, !200, !3772, !3773}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !127, file: !128, line: 70, baseType: !3775, size: 64, offset: 384)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !471, line: 190, size: 1152, elements: !3777)
!3777 = !{!3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3869, !3870, !3871, !3872, !3873, !3876}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3776, file: !471, line: 191, baseType: !167, size: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3776, file: !471, line: 192, baseType: !167, size: 32, offset: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3776, file: !471, line: 202, baseType: !3775, size: 64, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3776, file: !471, line: 203, baseType: !131, size: 64, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3776, file: !471, line: 205, baseType: !668, size: 192, align: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3776, file: !471, line: 207, baseType: !2231, size: 64, offset: 384)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3776, file: !471, line: 208, baseType: !7, size: 32, offset: 448)
!3785 = !DIDerivedType(tag: DW_TAG_member, scope: !3776, file: !471, line: 209, baseType: !3786, size: 256, offset: 512)
!3786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3776, file: !471, line: 209, size: 256, elements: !3787)
!3787 = !{!3788, !3797, !3801}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3786, file: !471, line: 210, baseType: !3789, size: 256)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !471, line: 153, size: 256, elements: !3790)
!3790 = !{!3791, !3792, !3793, !3796}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3789, file: !471, line: 154, baseType: !65, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3789, file: !471, line: 156, baseType: !1508, size: 64, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3789, file: !471, line: 162, baseType: !3794, size: 64, offset: 128)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !471, line: 162, flags: DIFlagFwdDecl)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3789, file: !471, line: 167, baseType: !65, size: 64, offset: 192)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3786, file: !471, line: 211, baseType: !3798, size: 64)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !471, line: 170, size: 64, elements: !3799)
!3799 = !{!3800}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3798, file: !471, line: 171, baseType: !3775, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3786, file: !471, line: 212, baseType: !3802, size: 256)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !471, line: 174, size: 256, elements: !3803)
!3803 = !{!3804, !3864, !3867, !3868}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3802, file: !471, line: 175, baseType: !3805, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3807)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !471, line: 271, size: 768, elements: !3808)
!3808 = !{!3809, !3829, !3833, !3837, !3841, !3845, !3849, !3853, !3854, !3855, !3856, !3860}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3807, file: !471, line: 276, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!125, !3813}
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !471, line: 251, size: 1216, elements: !3815)
!3815 = !{!3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3814, file: !471, line: 253, baseType: !3775, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3814, file: !471, line: 254, baseType: !1649, size: 64, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3814, file: !471, line: 255, baseType: !998, size: 64, offset: 128)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3814, file: !471, line: 256, baseType: !64, size: 64, offset: 192)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3814, file: !471, line: 259, baseType: !556, size: 256, offset: 256)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3814, file: !471, line: 260, baseType: !556, size: 256, offset: 512)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3814, file: !471, line: 261, baseType: !125, size: 32, offset: 768)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3814, file: !471, line: 262, baseType: !134, size: 128, offset: 832)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3814, file: !471, line: 263, baseType: !217, size: 64, offset: 960)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3814, file: !471, line: 265, baseType: !263, size: 64, offset: 1024)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3814, file: !471, line: 266, baseType: !636, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3814, file: !471, line: 267, baseType: !636, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3814, file: !471, line: 268, baseType: !2045, size: 64, offset: 1152)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3807, file: !471, line: 277, baseType: !3830, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{null, !3813}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3807, file: !471, line: 290, baseType: !3834, size: 64, offset: 128)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!125, !998, !64}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3807, file: !471, line: 292, baseType: !3838, size: 64, offset: 192)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!64, !998, !1930}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3807, file: !471, line: 293, baseType: !3842, size: 64, offset: 256)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!64, !998, !64, !1930}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3807, file: !471, line: 294, baseType: !3846, size: 64, offset: 320)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{null, !998, !64}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3807, file: !471, line: 296, baseType: !3850, size: 64, offset: 384)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!249, !3813, !217, !263, !456}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3807, file: !471, line: 306, baseType: !263, size: 64, offset: 448)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3807, file: !471, line: 313, baseType: !636, size: 8, offset: 512)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3807, file: !471, line: 314, baseType: !3850, size: 64, offset: 576)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3807, file: !471, line: 317, baseType: !3857, size: 64, offset: 640)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!1987, !3813, !1989}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3807, file: !471, line: 320, baseType: !3861, size: 64, offset: 704)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!125, !3813, !2000}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3802, file: !471, line: 176, baseType: !3865, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !471, line: 35, flags: DIFlagFwdDecl)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3802, file: !471, line: 177, baseType: !456, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3802, file: !471, line: 178, baseType: !3775, size: 64, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3776, file: !471, line: 215, baseType: !64, size: 64, offset: 768)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3776, file: !471, line: 221, baseType: !368, size: 64, offset: 832)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3776, file: !471, line: 223, baseType: !187, size: 16, offset: 896)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3776, file: !471, line: 224, baseType: !258, size: 16, offset: 912)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3776, file: !471, line: 225, baseType: !3874, size: 64, offset: 960)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !471, line: 36, flags: DIFlagFwdDecl)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3776, file: !471, line: 227, baseType: !776, size: 128, align: 64, offset: 1024)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !127, file: !128, line: 71, baseType: !3878, size: 32, offset: 448)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3879, line: 19, size: 32, elements: !3880)
!3879 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3880 = !{!3881}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3878, file: !3879, line: 20, baseType: !1339, size: 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !127, file: !128, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !127, file: !128, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !127, file: !128, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !127, file: !128, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !127, file: !128, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3887 = !{!3888, !3889}
!3888 = !DILocalVariable(name: "kobj", arg: 1, scope: !122, file: !3, line: 175, type: !126)
!3889 = !DILocalVariable(name: "grp", arg: 2, scope: !122, file: !3, line: 176, type: !268)
!3890 = !DILocation(line: 175, column: 40, scope: !122)
!3891 = !DILocation(line: 176, column: 40, scope: !122)
!3892 = !DILocation(line: 178, column: 31, scope: !122)
!3893 = !DILocation(line: 178, column: 40, scope: !122)
!3894 = !DILocation(line: 178, column: 9, scope: !122)
!3895 = !DILocation(line: 178, column: 2, scope: !122)
!3896 = distinct !DISubprogram(name: "internal_create_group", scope: !3, file: !3, line: 107, type: !3897, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3899)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!125, !126, !125, !268}
!3899 = !{!3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3910}
!3900 = !DILocalVariable(name: "kobj", arg: 1, scope: !3896, file: !3, line: 107, type: !126)
!3901 = !DILocalVariable(name: "update", arg: 2, scope: !3896, file: !3, line: 107, type: !125)
!3902 = !DILocalVariable(name: "grp", arg: 3, scope: !3896, file: !3, line: 108, type: !268)
!3903 = !DILocalVariable(name: "kn", scope: !3896, file: !3, line: 110, type: !3775)
!3904 = !DILocalVariable(name: "uid", scope: !3896, file: !3, line: 111, type: !301)
!3905 = !DILocalVariable(name: "gid", scope: !3896, file: !3, line: 112, type: !310)
!3906 = !DILocalVariable(name: "error", scope: !3896, file: !3, line: 113, type: !125)
!3907 = !DILocalVariable(name: "__ret_warn_on", scope: !3908, file: !3, line: 115, type: !125)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !3, line: 115, column: 6)
!3909 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 115, column: 6)
!3910 = !DILocalVariable(name: "__flags", scope: !3911, file: !3, line: 115, type: !125)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 115, column: 6)
!3912 = distinct !DILexicalBlock(scope: !3908, file: !3, line: 115, column: 6)
!3913 = !DILocation(line: 107, column: 50, scope: !3896)
!3914 = !DILocation(line: 107, column: 60, scope: !3896)
!3915 = !DILocation(line: 108, column: 36, scope: !3896)
!3916 = !DILocation(line: 110, column: 2, scope: !3896)
!3917 = !DILocation(line: 110, column: 22, scope: !3896)
!3918 = !DILocation(line: 111, column: 2, scope: !3896)
!3919 = !DILocation(line: 111, column: 9, scope: !3896)
!3920 = !DILocation(line: 112, column: 2, scope: !3896)
!3921 = !DILocation(line: 112, column: 9, scope: !3896)
!3922 = !DILocation(line: 113, column: 2, scope: !3896)
!3923 = !DILocation(line: 113, column: 6, scope: !3896)
!3924 = !DILocation(line: 115, column: 6, scope: !3908)
!3925 = !DILocation(line: 0, scope: !3908)
!3926 = !DILocation(line: 115, column: 6, scope: !3912)
!3927 = !DILocation(line: 115, column: 6, scope: !3911)
!3928 = !DILocation(line: 115, column: 6, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 115, column: 6)
!3930 = !DILocation(line: 115, column: 6, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 115, column: 6)
!3932 = !{i64 2153629340, i64 2153629369, i64 2153629415, i64 2153629473, i64 2153629527, i64 2153629581, i64 2153629636, i64 2153629667, i64 2153629975, i64 2153629981, i64 2153630028, i64 2153630051, i64 2153630077}
!3933 = !DILocation(line: 115, column: 6, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 115, column: 6)
!3935 = !DILocation(line: 115, column: 6, scope: !3909)
!3936 = !DILocation(line: 115, column: 6, scope: !3896)
!3937 = !DILocation(line: 116, column: 3, scope: !3909)
!3938 = !DILocation(line: 119, column: 6, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 119, column: 6)
!3940 = !DILocation(line: 0, scope: !3939)
!3941 = !DILocation(line: 119, column: 6, scope: !3896)
!3942 = !DILocation(line: 120, column: 3, scope: !3939)
!3943 = !DILocation(line: 122, column: 7, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 122, column: 6)
!3945 = !DILocation(line: 122, column: 12, scope: !3944)
!3946 = !DILocation(line: 122, column: 18, scope: !3944)
!3947 = !DILocation(line: 122, column: 22, scope: !3944)
!3948 = !DILocation(line: 122, column: 27, scope: !3944)
!3949 = !DILocation(line: 122, column: 6, scope: !3896)
!3950 = !DILocation(line: 123, column: 3, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 123, column: 3)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !3, line: 123, column: 3)
!3953 = distinct !DILexicalBlock(scope: !3944, file: !3, line: 122, column: 38)
!3954 = !DILocation(line: 123, column: 3, scope: !3952)
!3955 = !DILocation(line: 125, column: 3, scope: !3953)
!3956 = !DILocation(line: 128, column: 24, scope: !3896)
!3957 = !DILocation(line: 128, column: 2, scope: !3896)
!3958 = !DILocation(line: 129, column: 6, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 129, column: 6)
!3960 = !DILocation(line: 129, column: 11, scope: !3959)
!3961 = !DILocation(line: 129, column: 6, scope: !3896)
!3962 = !DILocation(line: 130, column: 7, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 130, column: 7)
!3964 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 129, column: 17)
!3965 = !DILocation(line: 130, column: 7, scope: !3964)
!3966 = !DILocation(line: 131, column: 29, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3963, file: !3, line: 130, column: 15)
!3968 = !DILocation(line: 131, column: 35, scope: !3967)
!3969 = !DILocation(line: 131, column: 39, scope: !3967)
!3970 = !DILocation(line: 131, column: 44, scope: !3967)
!3971 = !DILocation(line: 131, column: 9, scope: !3967)
!3972 = !DILocation(line: 131, column: 7, scope: !3967)
!3973 = !DILocation(line: 132, column: 9, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3967, file: !3, line: 132, column: 8)
!3975 = !DILocation(line: 132, column: 8, scope: !3967)
!3976 = !DILocation(line: 133, column: 5, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3978, file: !3, line: 133, column: 5)
!3978 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 132, column: 13)
!3979 = !DILocation(line: 133, column: 5, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 133, column: 5)
!3981 = !DILocation(line: 135, column: 5, scope: !3978)
!3982 = !DILocation(line: 137, column: 3, scope: !3967)
!3983 = !DILocation(line: 138, column: 30, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3963, file: !3, line: 137, column: 10)
!3985 = !DILocation(line: 138, column: 36, scope: !3984)
!3986 = !DILocation(line: 138, column: 40, scope: !3984)
!3987 = !DILocation(line: 138, column: 45, scope: !3984)
!3988 = !DILocation(line: 140, column: 19, scope: !3984)
!3989 = !DILocation(line: 138, column: 9, scope: !3984)
!3990 = !DILocation(line: 138, column: 7, scope: !3984)
!3991 = !DILocation(line: 141, column: 15, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 141, column: 8)
!3993 = !DILocation(line: 141, column: 8, scope: !3992)
!3994 = !DILocation(line: 141, column: 8, scope: !3984)
!3995 = !DILocation(line: 142, column: 17, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !3, line: 142, column: 9)
!3997 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 141, column: 20)
!3998 = !DILocation(line: 142, column: 9, scope: !3996)
!3999 = !DILocation(line: 142, column: 21, scope: !3996)
!4000 = !DILocation(line: 142, column: 9, scope: !3997)
!4001 = !DILocation(line: 143, column: 21, scope: !3996)
!4002 = !DILocation(line: 143, column: 27, scope: !3996)
!4003 = !DILocation(line: 143, column: 31, scope: !3996)
!4004 = !DILocation(line: 143, column: 36, scope: !3996)
!4005 = !DILocation(line: 143, column: 6, scope: !3996)
!4006 = !DILocation(line: 144, column: 20, scope: !3997)
!4007 = !DILocation(line: 144, column: 12, scope: !3997)
!4008 = !DILocation(line: 144, column: 5, scope: !3997)
!4009 = !DILocation(line: 147, column: 2, scope: !3964)
!4010 = !DILocation(line: 148, column: 8, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 147, column: 9)
!4012 = !DILocation(line: 148, column: 14, scope: !4011)
!4013 = !DILocation(line: 148, column: 6, scope: !4011)
!4014 = !DILocation(line: 151, column: 13, scope: !3896)
!4015 = !DILocation(line: 151, column: 2, scope: !3896)
!4016 = !DILocation(line: 152, column: 23, scope: !3896)
!4017 = !DILocation(line: 152, column: 27, scope: !3896)
!4018 = !DILocation(line: 152, column: 43, scope: !3896)
!4019 = !DILocation(line: 152, column: 48, scope: !3896)
!4020 = !DILocation(line: 152, column: 10, scope: !3896)
!4021 = !DILocation(line: 152, column: 8, scope: !3896)
!4022 = !DILocation(line: 153, column: 6, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 153, column: 6)
!4024 = !DILocation(line: 153, column: 6, scope: !3896)
!4025 = !DILocation(line: 154, column: 7, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 154, column: 7)
!4027 = distinct !DILexicalBlock(scope: !4023, file: !3, line: 153, column: 13)
!4028 = !DILocation(line: 154, column: 12, scope: !4026)
!4029 = !DILocation(line: 154, column: 7, scope: !4027)
!4030 = !DILocation(line: 155, column: 18, scope: !4026)
!4031 = !DILocation(line: 155, column: 4, scope: !4026)
!4032 = !DILocation(line: 156, column: 2, scope: !4027)
!4033 = !DILocation(line: 157, column: 13, scope: !3896)
!4034 = !DILocation(line: 157, column: 2, scope: !3896)
!4035 = !DILocation(line: 159, column: 6, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 159, column: 6)
!4037 = !DILocation(line: 159, column: 11, scope: !4036)
!4038 = !DILocation(line: 159, column: 16, scope: !4036)
!4039 = !DILocation(line: 159, column: 19, scope: !4036)
!4040 = !DILocation(line: 159, column: 6, scope: !3896)
!4041 = !DILocation(line: 160, column: 14, scope: !4036)
!4042 = !DILocation(line: 160, column: 3, scope: !4036)
!4043 = !DILocation(line: 162, column: 9, scope: !3896)
!4044 = !DILocation(line: 162, column: 2, scope: !3896)
!4045 = !DILocation(line: 163, column: 1, scope: !3896)
!4046 = distinct !DISubprogram(name: "sysfs_create_groups", scope: !3, file: !3, line: 215, type: !4047, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4049)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!125, !126, !267}
!4049 = !{!4050, !4051}
!4050 = !DILocalVariable(name: "kobj", arg: 1, scope: !4046, file: !3, line: 215, type: !126)
!4051 = !DILocalVariable(name: "groups", arg: 2, scope: !4046, file: !3, line: 216, type: !267)
!4052 = !DILocation(line: 215, column: 41, scope: !4046)
!4053 = !DILocation(line: 216, column: 35, scope: !4046)
!4054 = !DILocation(line: 218, column: 32, scope: !4046)
!4055 = !DILocation(line: 218, column: 41, scope: !4046)
!4056 = !DILocation(line: 218, column: 9, scope: !4046)
!4057 = !DILocation(line: 218, column: 2, scope: !4046)
!4058 = distinct !DISubprogram(name: "internal_create_groups", scope: !3, file: !3, line: 182, type: !4059, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4061)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!125, !126, !125, !267}
!4061 = !{!4062, !4063, !4064, !4065, !4066}
!4062 = !DILocalVariable(name: "kobj", arg: 1, scope: !4058, file: !3, line: 182, type: !126)
!4063 = !DILocalVariable(name: "update", arg: 2, scope: !4058, file: !3, line: 182, type: !125)
!4064 = !DILocalVariable(name: "groups", arg: 3, scope: !4058, file: !3, line: 183, type: !267)
!4065 = !DILocalVariable(name: "error", scope: !4058, file: !3, line: 185, type: !125)
!4066 = !DILocalVariable(name: "i", scope: !4058, file: !3, line: 186, type: !125)
!4067 = !DILocation(line: 182, column: 51, scope: !4058)
!4068 = !DILocation(line: 182, column: 61, scope: !4058)
!4069 = !DILocation(line: 183, column: 38, scope: !4058)
!4070 = !DILocation(line: 185, column: 2, scope: !4058)
!4071 = !DILocation(line: 185, column: 6, scope: !4058)
!4072 = !DILocation(line: 186, column: 2, scope: !4058)
!4073 = !DILocation(line: 186, column: 6, scope: !4058)
!4074 = !DILocation(line: 188, column: 7, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 188, column: 6)
!4076 = !DILocation(line: 188, column: 6, scope: !4058)
!4077 = !DILocation(line: 189, column: 3, scope: !4075)
!4078 = !DILocation(line: 191, column: 9, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 191, column: 2)
!4080 = !DILocation(line: 191, column: 7, scope: !4079)
!4081 = !DILocation(line: 191, column: 14, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4079, file: !3, line: 191, column: 2)
!4083 = !DILocation(line: 191, column: 21, scope: !4082)
!4084 = !DILocation(line: 191, column: 2, scope: !4079)
!4085 = !DILocation(line: 192, column: 33, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4082, file: !3, line: 191, column: 30)
!4087 = !DILocation(line: 192, column: 39, scope: !4086)
!4088 = !DILocation(line: 192, column: 47, scope: !4086)
!4089 = !DILocation(line: 192, column: 54, scope: !4086)
!4090 = !DILocation(line: 192, column: 11, scope: !4086)
!4091 = !DILocation(line: 192, column: 9, scope: !4086)
!4092 = !DILocation(line: 193, column: 7, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 193, column: 7)
!4094 = !DILocation(line: 193, column: 7, scope: !4086)
!4095 = !DILocation(line: 194, column: 4, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4093, file: !3, line: 193, column: 14)
!4097 = !DILocation(line: 194, column: 11, scope: !4096)
!4098 = !DILocation(line: 194, column: 15, scope: !4096)
!4099 = !DILocation(line: 195, column: 24, scope: !4096)
!4100 = !DILocation(line: 195, column: 30, scope: !4096)
!4101 = !DILocation(line: 195, column: 37, scope: !4096)
!4102 = !DILocation(line: 195, column: 5, scope: !4096)
!4103 = distinct !{!4103, !4095, !4104, !4105, !4106}
!4104 = !DILocation(line: 195, column: 39, scope: !4096)
!4105 = !{!"llvm.loop.mustprogress"}
!4106 = !{!"llvm.loop.unroll.disable"}
!4107 = !DILocation(line: 196, column: 4, scope: !4096)
!4108 = !DILocation(line: 198, column: 2, scope: !4086)
!4109 = !DILocation(line: 191, column: 26, scope: !4082)
!4110 = !DILocation(line: 191, column: 2, scope: !4082)
!4111 = distinct !{!4111, !4084, !4112, !4105, !4106}
!4112 = !DILocation(line: 198, column: 2, scope: !4079)
!4113 = !DILocation(line: 199, column: 9, scope: !4058)
!4114 = !DILocation(line: 199, column: 2, scope: !4058)
!4115 = !DILocation(line: 200, column: 1, scope: !4058)
!4116 = distinct !DISubprogram(name: "sysfs_update_groups", scope: !3, file: !3, line: 233, type: !4047, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4117)
!4117 = !{!4118, !4119}
!4118 = !DILocalVariable(name: "kobj", arg: 1, scope: !4116, file: !3, line: 233, type: !126)
!4119 = !DILocalVariable(name: "groups", arg: 2, scope: !4116, file: !3, line: 234, type: !267)
!4120 = !DILocation(line: 233, column: 41, scope: !4116)
!4121 = !DILocation(line: 234, column: 35, scope: !4116)
!4122 = !DILocation(line: 236, column: 32, scope: !4116)
!4123 = !DILocation(line: 236, column: 41, scope: !4116)
!4124 = !DILocation(line: 236, column: 9, scope: !4116)
!4125 = !DILocation(line: 236, column: 2, scope: !4116)
!4126 = distinct !DISubprogram(name: "sysfs_update_group", scope: !3, file: !3, line: 258, type: !123, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4127)
!4127 = !{!4128, !4129}
!4128 = !DILocalVariable(name: "kobj", arg: 1, scope: !4126, file: !3, line: 258, type: !126)
!4129 = !DILocalVariable(name: "grp", arg: 2, scope: !4126, file: !3, line: 259, type: !268)
!4130 = !DILocation(line: 258, column: 40, scope: !4126)
!4131 = !DILocation(line: 259, column: 40, scope: !4126)
!4132 = !DILocation(line: 261, column: 31, scope: !4126)
!4133 = !DILocation(line: 261, column: 40, scope: !4126)
!4134 = !DILocation(line: 261, column: 9, scope: !4126)
!4135 = !DILocation(line: 261, column: 2, scope: !4126)
!4136 = distinct !DISubprogram(name: "sysfs_remove_group", scope: !3, file: !3, line: 273, type: !4137, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4139)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{null, !126, !268}
!4139 = !{!4140, !4141, !4142, !4143, !4144, !4150}
!4140 = !DILocalVariable(name: "kobj", arg: 1, scope: !4136, file: !3, line: 273, type: !126)
!4141 = !DILocalVariable(name: "grp", arg: 2, scope: !4136, file: !3, line: 274, type: !268)
!4142 = !DILocalVariable(name: "parent", scope: !4136, file: !3, line: 276, type: !3775)
!4143 = !DILocalVariable(name: "kn", scope: !4136, file: !3, line: 277, type: !3775)
!4144 = !DILocalVariable(name: "__ret_warn_on", scope: !4145, file: !3, line: 282, type: !125)
!4145 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 282, column: 4)
!4146 = distinct !DILexicalBlock(scope: !4147, file: !3, line: 281, column: 12)
!4147 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 281, column: 7)
!4148 = distinct !DILexicalBlock(scope: !4149, file: !3, line: 279, column: 17)
!4149 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 279, column: 6)
!4150 = !DILocalVariable(name: "__flags", scope: !4151, file: !3, line: 282, type: !125)
!4151 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 282, column: 4)
!4152 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 282, column: 4)
!4153 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 282, column: 4)
!4154 = !DILocation(line: 273, column: 41, scope: !4136)
!4155 = !DILocation(line: 274, column: 34, scope: !4136)
!4156 = !DILocation(line: 276, column: 2, scope: !4136)
!4157 = !DILocation(line: 276, column: 22, scope: !4136)
!4158 = !DILocation(line: 276, column: 31, scope: !4136)
!4159 = !DILocation(line: 276, column: 37, scope: !4136)
!4160 = !DILocation(line: 277, column: 2, scope: !4136)
!4161 = !DILocation(line: 277, column: 22, scope: !4136)
!4162 = !DILocation(line: 279, column: 6, scope: !4149)
!4163 = !DILocation(line: 279, column: 11, scope: !4149)
!4164 = !DILocation(line: 279, column: 6, scope: !4136)
!4165 = !DILocation(line: 280, column: 28, scope: !4148)
!4166 = !DILocation(line: 280, column: 36, scope: !4148)
!4167 = !DILocation(line: 280, column: 41, scope: !4148)
!4168 = !DILocation(line: 280, column: 8, scope: !4148)
!4169 = !DILocation(line: 280, column: 6, scope: !4148)
!4170 = !DILocation(line: 281, column: 8, scope: !4147)
!4171 = !DILocation(line: 281, column: 7, scope: !4148)
!4172 = !DILocation(line: 282, column: 4, scope: !4145)
!4173 = !DILocation(line: 282, column: 4, scope: !4153)
!4174 = !DILocation(line: 282, column: 4, scope: !4152)
!4175 = !DILocation(line: 282, column: 4, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 282, column: 4)
!4177 = !DILocation(line: 282, column: 4, scope: !4151)
!4178 = !DILocation(line: 282, column: 4, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 282, column: 4)
!4180 = !DILocation(line: 282, column: 4, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 282, column: 4)
!4182 = !{i64 2153643796, i64 2153643825, i64 2153643871, i64 2153643929, i64 2153643983, i64 2153644037, i64 2153644092, i64 2153644123, i64 2153644431, i64 2153644437, i64 2153644484, i64 2153644507, i64 2153644533}
!4183 = !DILocation(line: 282, column: 4, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 282, column: 4)
!4185 = !DILocation(line: 282, column: 4, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 282, column: 4)
!4187 = !DILocation(line: 282, column: 4, scope: !4146)
!4188 = !DILocation(line: 285, column: 4, scope: !4146)
!4189 = !DILocation(line: 287, column: 2, scope: !4148)
!4190 = !DILocation(line: 288, column: 8, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4149, file: !3, line: 287, column: 9)
!4192 = !DILocation(line: 288, column: 6, scope: !4191)
!4193 = !DILocation(line: 289, column: 14, scope: !4191)
!4194 = !DILocation(line: 289, column: 3, scope: !4191)
!4195 = !DILocation(line: 292, column: 15, scope: !4136)
!4196 = !DILocation(line: 292, column: 19, scope: !4136)
!4197 = !DILocation(line: 292, column: 2, scope: !4136)
!4198 = !DILocation(line: 293, column: 6, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 293, column: 6)
!4200 = !DILocation(line: 293, column: 11, scope: !4199)
!4201 = !DILocation(line: 293, column: 6, scope: !4136)
!4202 = !DILocation(line: 294, column: 17, scope: !4199)
!4203 = !DILocation(line: 294, column: 3, scope: !4199)
!4204 = !DILocation(line: 296, column: 13, scope: !4136)
!4205 = !DILocation(line: 296, column: 2, scope: !4136)
!4206 = !DILocation(line: 297, column: 1, scope: !4136)
!4207 = distinct !DISubprogram(name: "kernfs_find_and_get", scope: !471, file: !471, line: 601, type: !4208, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4210)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!3775, !3775, !131}
!4210 = !{!4211, !4212}
!4211 = !DILocalVariable(name: "kn", arg: 1, scope: !4207, file: !471, line: 601, type: !3775)
!4212 = !DILocalVariable(name: "name", arg: 2, scope: !4207, file: !471, line: 601, type: !131)
!4213 = !DILocation(line: 601, column: 41, scope: !4207)
!4214 = !DILocation(line: 601, column: 57, scope: !4207)
!4215 = !DILocation(line: 603, column: 32, scope: !4207)
!4216 = !DILocation(line: 603, column: 36, scope: !4207)
!4217 = !DILocation(line: 603, column: 9, scope: !4207)
!4218 = !DILocation(line: 603, column: 2, scope: !4207)
!4219 = !DISubprogram(name: "__warn_printk", scope: !706, file: !706, line: 93, type: !4220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{null, !131, null}
!4222 = distinct !DISubprogram(name: "kobject_name", scope: !128, file: !128, line: 87, type: !205, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4223)
!4223 = !{!4224}
!4224 = !DILocalVariable(name: "kobj", arg: 1, scope: !4222, file: !128, line: 87, type: !200)
!4225 = !DILocation(line: 87, column: 62, scope: !4222)
!4226 = !DILocation(line: 89, column: 9, scope: !4222)
!4227 = !DILocation(line: 89, column: 15, scope: !4222)
!4228 = !DILocation(line: 89, column: 2, scope: !4222)
!4229 = !DISubprogram(name: "kernfs_get", scope: !471, file: !471, line: 406, type: !4230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{null, !3775}
!4232 = distinct !DISubprogram(name: "remove_files", scope: !3, file: !3, line: 20, type: !4233, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4235)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{null, !3775, !268}
!4235 = !{!4236, !4237, !4238, !4241}
!4236 = !DILocalVariable(name: "parent", arg: 1, scope: !4232, file: !3, line: 20, type: !3775)
!4237 = !DILocalVariable(name: "grp", arg: 2, scope: !4232, file: !3, line: 21, type: !268)
!4238 = !DILocalVariable(name: "attr", scope: !4232, file: !3, line: 23, type: !4239)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!4241 = !DILocalVariable(name: "bin_attr", scope: !4232, file: !3, line: 24, type: !4242)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!4244 = !DILocation(line: 20, column: 46, scope: !4232)
!4245 = !DILocation(line: 21, column: 35, scope: !4232)
!4246 = !DILocation(line: 23, column: 2, scope: !4232)
!4247 = !DILocation(line: 23, column: 27, scope: !4232)
!4248 = !DILocation(line: 24, column: 2, scope: !4232)
!4249 = !DILocation(line: 24, column: 31, scope: !4232)
!4250 = !DILocation(line: 26, column: 6, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 26, column: 6)
!4252 = !DILocation(line: 26, column: 11, scope: !4251)
!4253 = !DILocation(line: 26, column: 6, scope: !4232)
!4254 = !DILocation(line: 27, column: 15, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 27, column: 3)
!4256 = !DILocation(line: 27, column: 20, scope: !4255)
!4257 = !DILocation(line: 27, column: 13, scope: !4255)
!4258 = !DILocation(line: 27, column: 8, scope: !4255)
!4259 = !DILocation(line: 27, column: 28, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 27, column: 3)
!4261 = !DILocation(line: 27, column: 27, scope: !4260)
!4262 = !DILocation(line: 27, column: 3, scope: !4255)
!4263 = !DILocation(line: 28, column: 26, scope: !4260)
!4264 = !DILocation(line: 28, column: 36, scope: !4260)
!4265 = !DILocation(line: 28, column: 35, scope: !4260)
!4266 = !DILocation(line: 28, column: 43, scope: !4260)
!4267 = !DILocation(line: 28, column: 4, scope: !4260)
!4268 = !DILocation(line: 27, column: 38, scope: !4260)
!4269 = !DILocation(line: 27, column: 3, scope: !4260)
!4270 = distinct !{!4270, !4262, !4271, !4105, !4106}
!4271 = !DILocation(line: 28, column: 47, scope: !4255)
!4272 = !DILocation(line: 29, column: 6, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 29, column: 6)
!4274 = !DILocation(line: 29, column: 11, scope: !4273)
!4275 = !DILocation(line: 29, column: 6, scope: !4232)
!4276 = !DILocation(line: 30, column: 19, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 30, column: 3)
!4278 = !DILocation(line: 30, column: 24, scope: !4277)
!4279 = !DILocation(line: 30, column: 17, scope: !4277)
!4280 = !DILocation(line: 30, column: 8, scope: !4277)
!4281 = !DILocation(line: 30, column: 36, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 30, column: 3)
!4283 = !DILocation(line: 30, column: 35, scope: !4282)
!4284 = !DILocation(line: 30, column: 3, scope: !4277)
!4285 = !DILocation(line: 31, column: 26, scope: !4282)
!4286 = !DILocation(line: 31, column: 36, scope: !4282)
!4287 = !DILocation(line: 31, column: 35, scope: !4282)
!4288 = !DILocation(line: 31, column: 47, scope: !4282)
!4289 = !DILocation(line: 31, column: 52, scope: !4282)
!4290 = !DILocation(line: 31, column: 4, scope: !4282)
!4291 = !DILocation(line: 30, column: 54, scope: !4282)
!4292 = !DILocation(line: 30, column: 3, scope: !4282)
!4293 = distinct !{!4293, !4284, !4294, !4105, !4106}
!4294 = !DILocation(line: 31, column: 56, scope: !4277)
!4295 = !DILocation(line: 32, column: 1, scope: !4232)
!4296 = !DISubprogram(name: "kernfs_remove", scope: !471, file: !471, line: 437, type: !4230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4297 = !DISubprogram(name: "kernfs_put", scope: !471, file: !471, line: 407, type: !4230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4298 = distinct !DISubprogram(name: "sysfs_remove_groups", scope: !3, file: !3, line: 308, type: !4299, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4301)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{null, !126, !267}
!4301 = !{!4302, !4303, !4304}
!4302 = !DILocalVariable(name: "kobj", arg: 1, scope: !4298, file: !3, line: 308, type: !126)
!4303 = !DILocalVariable(name: "groups", arg: 2, scope: !4298, file: !3, line: 309, type: !267)
!4304 = !DILocalVariable(name: "i", scope: !4298, file: !3, line: 311, type: !125)
!4305 = !DILocation(line: 308, column: 42, scope: !4298)
!4306 = !DILocation(line: 309, column: 36, scope: !4298)
!4307 = !DILocation(line: 311, column: 2, scope: !4298)
!4308 = !DILocation(line: 311, column: 6, scope: !4298)
!4309 = !DILocation(line: 313, column: 7, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4298, file: !3, line: 313, column: 6)
!4311 = !DILocation(line: 313, column: 6, scope: !4298)
!4312 = !DILocation(line: 314, column: 3, scope: !4310)
!4313 = !DILocation(line: 315, column: 9, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4298, file: !3, line: 315, column: 2)
!4315 = !DILocation(line: 315, column: 7, scope: !4314)
!4316 = !DILocation(line: 315, column: 14, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4314, file: !3, line: 315, column: 2)
!4318 = !DILocation(line: 315, column: 21, scope: !4317)
!4319 = !DILocation(line: 315, column: 2, scope: !4314)
!4320 = !DILocation(line: 316, column: 22, scope: !4317)
!4321 = !DILocation(line: 316, column: 28, scope: !4317)
!4322 = !DILocation(line: 316, column: 35, scope: !4317)
!4323 = !DILocation(line: 316, column: 3, scope: !4317)
!4324 = !DILocation(line: 315, column: 26, scope: !4317)
!4325 = !DILocation(line: 315, column: 2, scope: !4317)
!4326 = distinct !{!4326, !4319, !4327, !4105, !4106}
!4327 = !DILocation(line: 316, column: 37, scope: !4314)
!4328 = !DILocation(line: 317, column: 1, scope: !4298)
!4329 = distinct !DISubprogram(name: "sysfs_merge_group", scope: !3, file: !3, line: 329, type: !123, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4330)
!4330 = !{!4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338}
!4331 = !DILocalVariable(name: "kobj", arg: 1, scope: !4329, file: !3, line: 329, type: !126)
!4332 = !DILocalVariable(name: "grp", arg: 2, scope: !4329, file: !3, line: 330, type: !268)
!4333 = !DILocalVariable(name: "parent", scope: !4329, file: !3, line: 332, type: !3775)
!4334 = !DILocalVariable(name: "uid", scope: !4329, file: !3, line: 333, type: !301)
!4335 = !DILocalVariable(name: "gid", scope: !4329, file: !3, line: 334, type: !310)
!4336 = !DILocalVariable(name: "error", scope: !4329, file: !3, line: 335, type: !125)
!4337 = !DILocalVariable(name: "attr", scope: !4329, file: !3, line: 336, type: !4239)
!4338 = !DILocalVariable(name: "i", scope: !4329, file: !3, line: 337, type: !125)
!4339 = !DILocation(line: 329, column: 39, scope: !4329)
!4340 = !DILocation(line: 330, column: 40, scope: !4329)
!4341 = !DILocation(line: 332, column: 2, scope: !4329)
!4342 = !DILocation(line: 332, column: 22, scope: !4329)
!4343 = !DILocation(line: 333, column: 2, scope: !4329)
!4344 = !DILocation(line: 333, column: 9, scope: !4329)
!4345 = !DILocation(line: 334, column: 2, scope: !4329)
!4346 = !DILocation(line: 334, column: 9, scope: !4329)
!4347 = !DILocation(line: 335, column: 2, scope: !4329)
!4348 = !DILocation(line: 335, column: 6, scope: !4329)
!4349 = !DILocation(line: 336, column: 2, scope: !4329)
!4350 = !DILocation(line: 336, column: 27, scope: !4329)
!4351 = !DILocation(line: 337, column: 2, scope: !4329)
!4352 = !DILocation(line: 337, column: 6, scope: !4329)
!4353 = !DILocation(line: 339, column: 31, scope: !4329)
!4354 = !DILocation(line: 339, column: 37, scope: !4329)
!4355 = !DILocation(line: 339, column: 41, scope: !4329)
!4356 = !DILocation(line: 339, column: 46, scope: !4329)
!4357 = !DILocation(line: 339, column: 11, scope: !4329)
!4358 = !DILocation(line: 339, column: 9, scope: !4329)
!4359 = !DILocation(line: 340, column: 7, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4329, file: !3, line: 340, column: 6)
!4361 = !DILocation(line: 340, column: 6, scope: !4329)
!4362 = !DILocation(line: 341, column: 3, scope: !4360)
!4363 = !DILocation(line: 343, column: 24, scope: !4329)
!4364 = !DILocation(line: 343, column: 2, scope: !4329)
!4365 = !DILocation(line: 345, column: 10, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4329, file: !3, line: 345, column: 2)
!4367 = !DILocation(line: 345, column: 22, scope: !4366)
!4368 = !DILocation(line: 345, column: 27, scope: !4366)
!4369 = !DILocation(line: 345, column: 20, scope: !4366)
!4370 = !DILocation(line: 345, column: 7, scope: !4366)
!4371 = !DILocation(line: 345, column: 36, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 345, column: 2)
!4373 = !DILocation(line: 345, column: 35, scope: !4372)
!4374 = !DILocation(line: 345, column: 41, scope: !4372)
!4375 = !DILocation(line: 345, column: 45, scope: !4372)
!4376 = !DILocation(line: 345, column: 44, scope: !4372)
!4377 = !DILocation(line: 0, scope: !4372)
!4378 = !DILocation(line: 345, column: 2, scope: !4366)
!4379 = !DILocation(line: 346, column: 34, scope: !4372)
!4380 = !DILocation(line: 346, column: 43, scope: !4372)
!4381 = !DILocation(line: 346, column: 42, scope: !4372)
!4382 = !DILocation(line: 346, column: 51, scope: !4372)
!4383 = !DILocation(line: 346, column: 50, scope: !4372)
!4384 = !DILocation(line: 346, column: 58, scope: !4372)
!4385 = !DILocation(line: 346, column: 11, scope: !4372)
!4386 = !DILocation(line: 346, column: 9, scope: !4372)
!4387 = !DILocation(line: 346, column: 3, scope: !4372)
!4388 = !DILocation(line: 345, column: 53, scope: !4372)
!4389 = !DILocation(line: 345, column: 58, scope: !4372)
!4390 = !DILocation(line: 345, column: 2, scope: !4372)
!4391 = distinct !{!4391, !4378, !4392, !4105, !4106}
!4392 = !DILocation(line: 347, column: 27, scope: !4366)
!4393 = !DILocation(line: 348, column: 6, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4329, file: !3, line: 348, column: 6)
!4395 = !DILocation(line: 348, column: 6, scope: !4329)
!4396 = !DILocation(line: 349, column: 3, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 348, column: 13)
!4398 = !DILocation(line: 349, column: 10, scope: !4397)
!4399 = !DILocation(line: 349, column: 14, scope: !4397)
!4400 = !DILocation(line: 350, column: 26, scope: !4397)
!4401 = !DILocation(line: 350, column: 36, scope: !4397)
!4402 = !DILocation(line: 350, column: 35, scope: !4397)
!4403 = !DILocation(line: 350, column: 45, scope: !4397)
!4404 = !DILocation(line: 350, column: 4, scope: !4397)
!4405 = distinct !{!4405, !4396, !4406, !4105, !4106}
!4406 = !DILocation(line: 350, column: 49, scope: !4397)
!4407 = !DILocation(line: 351, column: 2, scope: !4397)
!4408 = !DILocation(line: 352, column: 13, scope: !4329)
!4409 = !DILocation(line: 352, column: 2, scope: !4329)
!4410 = !DILocation(line: 354, column: 9, scope: !4329)
!4411 = !DILocation(line: 354, column: 2, scope: !4329)
!4412 = !DILocation(line: 355, column: 1, scope: !4329)
!4413 = !DISubprogram(name: "kobject_get_ownership", scope: !128, file: !128, line: 113, type: !3770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4414 = !DISubprogram(name: "sysfs_add_file_mode_ns", scope: !4415, file: !4415, line: 30, type: !4416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4415 = !DIFile(filename: "fs/sysfs/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4631698ebb8109fce5156a8976a3a952")
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!125, !3775, !4418, !258, !301, !310, !2231}
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!4420 = distinct !DISubprogram(name: "kernfs_remove_by_name", scope: !471, file: !471, line: 621, type: !4421, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4423)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!125, !3775, !131}
!4423 = !{!4424, !4425}
!4424 = !DILocalVariable(name: "parent", arg: 1, scope: !4420, file: !471, line: 621, type: !3775)
!4425 = !DILocalVariable(name: "name", arg: 2, scope: !4420, file: !471, line: 622, type: !131)
!4426 = !DILocation(line: 621, column: 61, scope: !4420)
!4427 = !DILocation(line: 622, column: 18, scope: !4420)
!4428 = !DILocation(line: 624, column: 34, scope: !4420)
!4429 = !DILocation(line: 624, column: 42, scope: !4420)
!4430 = !DILocation(line: 624, column: 9, scope: !4420)
!4431 = !DILocation(line: 624, column: 2, scope: !4420)
!4432 = distinct !DISubprogram(name: "sysfs_unmerge_group", scope: !3, file: !3, line: 363, type: !4137, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4433)
!4433 = !{!4434, !4435, !4436, !4437}
!4434 = !DILocalVariable(name: "kobj", arg: 1, scope: !4432, file: !3, line: 363, type: !126)
!4435 = !DILocalVariable(name: "grp", arg: 2, scope: !4432, file: !3, line: 364, type: !268)
!4436 = !DILocalVariable(name: "parent", scope: !4432, file: !3, line: 366, type: !3775)
!4437 = !DILocalVariable(name: "attr", scope: !4432, file: !3, line: 367, type: !4239)
!4438 = !DILocation(line: 363, column: 42, scope: !4432)
!4439 = !DILocation(line: 364, column: 40, scope: !4432)
!4440 = !DILocation(line: 366, column: 2, scope: !4432)
!4441 = !DILocation(line: 366, column: 22, scope: !4432)
!4442 = !DILocation(line: 367, column: 2, scope: !4432)
!4443 = !DILocation(line: 367, column: 27, scope: !4432)
!4444 = !DILocation(line: 369, column: 31, scope: !4432)
!4445 = !DILocation(line: 369, column: 37, scope: !4432)
!4446 = !DILocation(line: 369, column: 41, scope: !4432)
!4447 = !DILocation(line: 369, column: 46, scope: !4432)
!4448 = !DILocation(line: 369, column: 11, scope: !4432)
!4449 = !DILocation(line: 369, column: 9, scope: !4432)
!4450 = !DILocation(line: 370, column: 6, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 370, column: 6)
!4452 = !DILocation(line: 370, column: 6, scope: !4432)
!4453 = !DILocation(line: 371, column: 15, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 371, column: 3)
!4455 = distinct !DILexicalBlock(scope: !4451, file: !3, line: 370, column: 14)
!4456 = !DILocation(line: 371, column: 20, scope: !4454)
!4457 = !DILocation(line: 371, column: 13, scope: !4454)
!4458 = !DILocation(line: 371, column: 8, scope: !4454)
!4459 = !DILocation(line: 371, column: 28, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 371, column: 3)
!4461 = !DILocation(line: 371, column: 27, scope: !4460)
!4462 = !DILocation(line: 371, column: 3, scope: !4454)
!4463 = !DILocation(line: 372, column: 26, scope: !4460)
!4464 = !DILocation(line: 372, column: 36, scope: !4460)
!4465 = !DILocation(line: 372, column: 35, scope: !4460)
!4466 = !DILocation(line: 372, column: 43, scope: !4460)
!4467 = !DILocation(line: 372, column: 4, scope: !4460)
!4468 = !DILocation(line: 371, column: 34, scope: !4460)
!4469 = !DILocation(line: 371, column: 3, scope: !4460)
!4470 = distinct !{!4470, !4462, !4471, !4105, !4106}
!4471 = !DILocation(line: 372, column: 47, scope: !4454)
!4472 = !DILocation(line: 373, column: 14, scope: !4455)
!4473 = !DILocation(line: 373, column: 3, scope: !4455)
!4474 = !DILocation(line: 374, column: 2, scope: !4455)
!4475 = !DILocation(line: 375, column: 1, scope: !4432)
!4476 = distinct !DISubprogram(name: "sysfs_add_link_to_group", scope: !3, file: !3, line: 385, type: !4477, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4479)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!125, !126, !131, !126, !131}
!4479 = !{!4480, !4481, !4482, !4483, !4484, !4485}
!4480 = !DILocalVariable(name: "kobj", arg: 1, scope: !4476, file: !3, line: 385, type: !126)
!4481 = !DILocalVariable(name: "group_name", arg: 2, scope: !4476, file: !3, line: 385, type: !131)
!4482 = !DILocalVariable(name: "target", arg: 3, scope: !4476, file: !3, line: 386, type: !126)
!4483 = !DILocalVariable(name: "link_name", arg: 4, scope: !4476, file: !3, line: 386, type: !131)
!4484 = !DILocalVariable(name: "parent", scope: !4476, file: !3, line: 388, type: !3775)
!4485 = !DILocalVariable(name: "error", scope: !4476, file: !3, line: 389, type: !125)
!4486 = !DILocation(line: 385, column: 45, scope: !4476)
!4487 = !DILocation(line: 385, column: 63, scope: !4476)
!4488 = !DILocation(line: 386, column: 24, scope: !4476)
!4489 = !DILocation(line: 386, column: 44, scope: !4476)
!4490 = !DILocation(line: 388, column: 2, scope: !4476)
!4491 = !DILocation(line: 388, column: 22, scope: !4476)
!4492 = !DILocation(line: 389, column: 2, scope: !4476)
!4493 = !DILocation(line: 389, column: 6, scope: !4476)
!4494 = !DILocation(line: 391, column: 31, scope: !4476)
!4495 = !DILocation(line: 391, column: 37, scope: !4476)
!4496 = !DILocation(line: 391, column: 41, scope: !4476)
!4497 = !DILocation(line: 391, column: 11, scope: !4476)
!4498 = !DILocation(line: 391, column: 9, scope: !4476)
!4499 = !DILocation(line: 392, column: 7, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 392, column: 6)
!4501 = !DILocation(line: 392, column: 6, scope: !4476)
!4502 = !DILocation(line: 393, column: 3, scope: !4500)
!4503 = !DILocation(line: 395, column: 31, scope: !4476)
!4504 = !DILocation(line: 395, column: 39, scope: !4476)
!4505 = !DILocation(line: 395, column: 47, scope: !4476)
!4506 = !DILocation(line: 395, column: 10, scope: !4476)
!4507 = !DILocation(line: 395, column: 8, scope: !4476)
!4508 = !DILocation(line: 396, column: 13, scope: !4476)
!4509 = !DILocation(line: 396, column: 2, scope: !4476)
!4510 = !DILocation(line: 398, column: 9, scope: !4476)
!4511 = !DILocation(line: 398, column: 2, scope: !4476)
!4512 = !DILocation(line: 399, column: 1, scope: !4476)
!4513 = !DISubprogram(name: "sysfs_create_link_sd", scope: !4415, file: !4415, line: 40, type: !4514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!125, !3775, !126, !131}
!4516 = distinct !DISubprogram(name: "sysfs_remove_link_from_group", scope: !3, file: !3, line: 408, type: !4517, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4519)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{null, !126, !131, !131}
!4519 = !{!4520, !4521, !4522, !4523}
!4520 = !DILocalVariable(name: "kobj", arg: 1, scope: !4516, file: !3, line: 408, type: !126)
!4521 = !DILocalVariable(name: "group_name", arg: 2, scope: !4516, file: !3, line: 408, type: !131)
!4522 = !DILocalVariable(name: "link_name", arg: 3, scope: !4516, file: !3, line: 409, type: !131)
!4523 = !DILocalVariable(name: "parent", scope: !4516, file: !3, line: 411, type: !3775)
!4524 = !DILocation(line: 408, column: 51, scope: !4516)
!4525 = !DILocation(line: 408, column: 69, scope: !4516)
!4526 = !DILocation(line: 409, column: 19, scope: !4516)
!4527 = !DILocation(line: 411, column: 2, scope: !4516)
!4528 = !DILocation(line: 411, column: 22, scope: !4516)
!4529 = !DILocation(line: 413, column: 31, scope: !4516)
!4530 = !DILocation(line: 413, column: 37, scope: !4516)
!4531 = !DILocation(line: 413, column: 41, scope: !4516)
!4532 = !DILocation(line: 413, column: 11, scope: !4516)
!4533 = !DILocation(line: 413, column: 9, scope: !4516)
!4534 = !DILocation(line: 414, column: 6, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 414, column: 6)
!4536 = !DILocation(line: 414, column: 6, scope: !4516)
!4537 = !DILocation(line: 415, column: 25, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 414, column: 14)
!4539 = !DILocation(line: 415, column: 33, scope: !4538)
!4540 = !DILocation(line: 415, column: 3, scope: !4538)
!4541 = !DILocation(line: 416, column: 14, scope: !4538)
!4542 = !DILocation(line: 416, column: 3, scope: !4538)
!4543 = !DILocation(line: 417, column: 2, scope: !4538)
!4544 = !DILocation(line: 418, column: 1, scope: !4516)
!4545 = distinct !DISubprogram(name: "compat_only_sysfs_link_entry_to_kobj", scope: !3, file: !3, line: 430, type: !4546, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4548)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!125, !126, !126, !131, !131}
!4548 = !{!4549, !4550, !4551, !4552, !4553, !4554, !4555}
!4549 = !DILocalVariable(name: "kobj", arg: 1, scope: !4545, file: !3, line: 430, type: !126)
!4550 = !DILocalVariable(name: "target_kobj", arg: 2, scope: !4545, file: !3, line: 431, type: !126)
!4551 = !DILocalVariable(name: "target_name", arg: 3, scope: !4545, file: !3, line: 432, type: !131)
!4552 = !DILocalVariable(name: "symlink_name", arg: 4, scope: !4545, file: !3, line: 433, type: !131)
!4553 = !DILocalVariable(name: "target", scope: !4545, file: !3, line: 435, type: !3775)
!4554 = !DILocalVariable(name: "entry", scope: !4545, file: !3, line: 436, type: !3775)
!4555 = !DILocalVariable(name: "link", scope: !4545, file: !3, line: 437, type: !3775)
!4556 = !DILocation(line: 430, column: 58, scope: !4545)
!4557 = !DILocation(line: 431, column: 23, scope: !4545)
!4558 = !DILocation(line: 432, column: 19, scope: !4545)
!4559 = !DILocation(line: 433, column: 19, scope: !4545)
!4560 = !DILocation(line: 435, column: 2, scope: !4545)
!4561 = !DILocation(line: 435, column: 22, scope: !4545)
!4562 = !DILocation(line: 436, column: 2, scope: !4545)
!4563 = !DILocation(line: 436, column: 22, scope: !4545)
!4564 = !DILocation(line: 437, column: 2, scope: !4545)
!4565 = !DILocation(line: 437, column: 22, scope: !4545)
!4566 = !DILocation(line: 444, column: 2, scope: !4545)
!4567 = !DILocation(line: 445, column: 11, scope: !4545)
!4568 = !DILocation(line: 445, column: 24, scope: !4545)
!4569 = !DILocation(line: 445, column: 9, scope: !4545)
!4570 = !DILocation(line: 446, column: 6, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4545, file: !3, line: 446, column: 6)
!4572 = !DILocation(line: 446, column: 6, scope: !4545)
!4573 = !DILocation(line: 447, column: 14, scope: !4571)
!4574 = !DILocation(line: 447, column: 3, scope: !4571)
!4575 = !DILocation(line: 448, column: 2, scope: !4545)
!4576 = !DILocation(line: 449, column: 7, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4545, file: !3, line: 449, column: 6)
!4578 = !DILocation(line: 449, column: 6, scope: !4545)
!4579 = !DILocation(line: 450, column: 3, scope: !4577)
!4580 = !DILocation(line: 452, column: 30, scope: !4545)
!4581 = !DILocation(line: 452, column: 38, scope: !4545)
!4582 = !DILocation(line: 452, column: 10, scope: !4545)
!4583 = !DILocation(line: 452, column: 8, scope: !4545)
!4584 = !DILocation(line: 453, column: 7, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4545, file: !3, line: 453, column: 6)
!4586 = !DILocation(line: 453, column: 6, scope: !4545)
!4587 = !DILocation(line: 454, column: 14, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 453, column: 14)
!4589 = !DILocation(line: 454, column: 3, scope: !4588)
!4590 = !DILocation(line: 455, column: 3, scope: !4588)
!4591 = !DILocation(line: 458, column: 7, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4545, file: !3, line: 458, column: 6)
!4593 = !DILocation(line: 458, column: 6, scope: !4545)
!4594 = !DILocation(line: 459, column: 18, scope: !4592)
!4595 = !DILocation(line: 459, column: 16, scope: !4592)
!4596 = !DILocation(line: 459, column: 3, scope: !4592)
!4597 = !DILocation(line: 461, column: 28, scope: !4545)
!4598 = !DILocation(line: 461, column: 34, scope: !4545)
!4599 = !DILocation(line: 461, column: 38, scope: !4545)
!4600 = !DILocation(line: 461, column: 52, scope: !4545)
!4601 = !DILocation(line: 461, column: 9, scope: !4545)
!4602 = !DILocation(line: 461, column: 7, scope: !4545)
!4603 = !DILocation(line: 462, column: 14, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4545, file: !3, line: 462, column: 6)
!4605 = !DILocation(line: 462, column: 6, scope: !4604)
!4606 = !DILocation(line: 462, column: 20, scope: !4604)
!4607 = !DILocation(line: 462, column: 6, scope: !4545)
!4608 = !DILocation(line: 463, column: 18, scope: !4604)
!4609 = !DILocation(line: 463, column: 24, scope: !4604)
!4610 = !DILocation(line: 463, column: 28, scope: !4604)
!4611 = !DILocation(line: 463, column: 3, scope: !4604)
!4612 = !DILocation(line: 465, column: 13, scope: !4545)
!4613 = !DILocation(line: 465, column: 2, scope: !4545)
!4614 = !DILocation(line: 466, column: 13, scope: !4545)
!4615 = !DILocation(line: 466, column: 2, scope: !4545)
!4616 = !DILocation(line: 467, column: 25, scope: !4545)
!4617 = !DILocation(line: 467, column: 9, scope: !4545)
!4618 = !DILocation(line: 467, column: 2, scope: !4545)
!4619 = !DILocation(line: 468, column: 1, scope: !4545)
!4620 = distinct !DISubprogram(name: "spin_lock", scope: !4621, file: !4621, line: 349, type: !4622, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4625)
!4621 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4622 = !DISubroutineType(types: !4623)
!4623 = !{null, !4624}
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!4625 = !{!4626}
!4626 = !DILocalVariable(name: "lock", arg: 1, scope: !4620, file: !4621, line: 349, type: !4624)
!4627 = !DILocation(line: 349, column: 51, scope: !4620)
!4628 = !DILocation(line: 351, column: 2, scope: !4620)
!4629 = !DILocation(line: 352, column: 1, scope: !4620)
!4630 = distinct !DISubprogram(name: "spin_unlock", scope: !4621, file: !4621, line: 389, type: !4622, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4631)
!4631 = !{!4632}
!4632 = !DILocalVariable(name: "lock", arg: 1, scope: !4630, file: !4621, line: 389, type: !4624)
!4633 = !DILocation(line: 389, column: 53, scope: !4630)
!4634 = !DILocation(line: 391, column: 2, scope: !4630)
!4635 = !DILocation(line: 392, column: 1, scope: !4630)
!4636 = !DISubprogram(name: "kernfs_create_link", scope: !471, file: !471, line: 432, type: !4637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!3775, !3775, !131, !3775}
!4639 = distinct !DISubprogram(name: "PTR_ERR", scope: !4640, file: !4640, line: 49, type: !4641, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4643)
!4640 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!66, !2231}
!4643 = !{!4644}
!4644 = !DILocalVariable(name: "ptr", arg: 1, scope: !4639, file: !4640, line: 49, type: !2231)
!4645 = !DILocation(line: 49, column: 61, scope: !4639)
!4646 = !DILocation(line: 51, column: 16, scope: !4639)
!4647 = !DILocation(line: 51, column: 9, scope: !4639)
!4648 = !DILocation(line: 51, column: 2, scope: !4639)
!4649 = !DISubprogram(name: "sysfs_warn_dup", scope: !4415, file: !4415, line: 25, type: !4650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{null, !3775, !131}
!4652 = distinct !DISubprogram(name: "PTR_ERR_OR_ZERO", scope: !4640, file: !4640, line: 105, type: !4653, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4655)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!125, !2231}
!4655 = !{!4656}
!4656 = !DILocalVariable(name: "ptr", arg: 1, scope: !4652, file: !4640, line: 105, type: !2231)
!4657 = !DILocation(line: 105, column: 68, scope: !4652)
!4658 = !DILocation(line: 107, column: 13, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4652, file: !4640, line: 107, column: 6)
!4660 = !DILocation(line: 107, column: 6, scope: !4659)
!4661 = !DILocation(line: 107, column: 6, scope: !4652)
!4662 = !DILocation(line: 108, column: 18, scope: !4659)
!4663 = !DILocation(line: 108, column: 10, scope: !4659)
!4664 = !DILocation(line: 108, column: 3, scope: !4659)
!4665 = !DILocation(line: 110, column: 3, scope: !4659)
!4666 = !DILocation(line: 111, column: 1, scope: !4652)
!4667 = distinct !DISubprogram(name: "sysfs_group_change_owner", scope: !3, file: !3, line: 520, type: !4668, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4670)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!125, !126, !268, !301, !310}
!4670 = !{!4671, !4672, !4673, !4674, !4675, !4676, !4677}
!4671 = !DILocalVariable(name: "kobj", arg: 1, scope: !4667, file: !3, line: 520, type: !126)
!4672 = !DILocalVariable(name: "grp", arg: 2, scope: !4667, file: !3, line: 521, type: !268)
!4673 = !DILocalVariable(name: "kuid", arg: 3, scope: !4667, file: !3, line: 521, type: !301)
!4674 = !DILocalVariable(name: "kgid", arg: 4, scope: !4667, file: !3, line: 522, type: !310)
!4675 = !DILocalVariable(name: "grp_kn", scope: !4667, file: !3, line: 524, type: !3775)
!4676 = !DILocalVariable(name: "error", scope: !4667, file: !3, line: 525, type: !125)
!4677 = !DILocalVariable(name: "newattrs", scope: !4667, file: !3, line: 526, type: !3379)
!4678 = !DILocation(line: 520, column: 46, scope: !4667)
!4679 = !DILocation(line: 521, column: 39, scope: !4667)
!4680 = !DILocation(line: 521, column: 51, scope: !4667)
!4681 = !DILocation(line: 522, column: 16, scope: !4667)
!4682 = !DILocation(line: 524, column: 2, scope: !4667)
!4683 = !DILocation(line: 524, column: 22, scope: !4667)
!4684 = !DILocation(line: 525, column: 2, scope: !4667)
!4685 = !DILocation(line: 525, column: 6, scope: !4667)
!4686 = !DILocation(line: 526, column: 2, scope: !4667)
!4687 = !DILocation(line: 526, column: 15, scope: !4667)
!4688 = !DILocation(line: 526, column: 26, scope: !4667)
!4689 = !DILocation(line: 528, column: 13, scope: !4667)
!4690 = !DILocation(line: 529, column: 13, scope: !4667)
!4691 = !DILocation(line: 532, column: 7, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 532, column: 6)
!4693 = !DILocation(line: 532, column: 13, scope: !4692)
!4694 = !DILocation(line: 532, column: 6, scope: !4667)
!4695 = !DILocation(line: 533, column: 3, scope: !4692)
!4696 = !DILocation(line: 535, column: 6, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 535, column: 6)
!4698 = !DILocation(line: 535, column: 11, scope: !4697)
!4699 = !DILocation(line: 535, column: 6, scope: !4667)
!4700 = !DILocation(line: 536, column: 32, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 535, column: 17)
!4702 = !DILocation(line: 536, column: 38, scope: !4701)
!4703 = !DILocation(line: 536, column: 42, scope: !4701)
!4704 = !DILocation(line: 536, column: 47, scope: !4701)
!4705 = !DILocation(line: 536, column: 12, scope: !4701)
!4706 = !DILocation(line: 536, column: 10, scope: !4701)
!4707 = !DILocation(line: 537, column: 2, scope: !4701)
!4708 = !DILocation(line: 538, column: 14, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 537, column: 9)
!4710 = !DILocation(line: 538, column: 20, scope: !4709)
!4711 = !DILocation(line: 538, column: 3, scope: !4709)
!4712 = !DILocation(line: 539, column: 12, scope: !4709)
!4713 = !DILocation(line: 539, column: 18, scope: !4709)
!4714 = !DILocation(line: 539, column: 10, scope: !4709)
!4715 = !DILocation(line: 541, column: 7, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 541, column: 6)
!4717 = !DILocation(line: 541, column: 6, scope: !4667)
!4718 = !DILocation(line: 542, column: 3, scope: !4716)
!4719 = !DILocation(line: 544, column: 25, scope: !4667)
!4720 = !DILocation(line: 544, column: 10, scope: !4667)
!4721 = !DILocation(line: 544, column: 8, scope: !4667)
!4722 = !DILocation(line: 545, column: 7, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 545, column: 6)
!4724 = !DILocation(line: 545, column: 6, scope: !4667)
!4725 = !DILocation(line: 546, column: 42, scope: !4723)
!4726 = !DILocation(line: 546, column: 50, scope: !4723)
!4727 = !DILocation(line: 546, column: 11, scope: !4723)
!4728 = !DILocation(line: 546, column: 9, scope: !4723)
!4729 = !DILocation(line: 546, column: 3, scope: !4723)
!4730 = !DILocation(line: 548, column: 13, scope: !4667)
!4731 = !DILocation(line: 548, column: 2, scope: !4667)
!4732 = !DILocation(line: 550, column: 9, scope: !4667)
!4733 = !DILocation(line: 550, column: 2, scope: !4667)
!4734 = !DILocation(line: 551, column: 1, scope: !4667)
!4735 = !DISubprogram(name: "kernfs_setattr", scope: !471, file: !471, line: 445, type: !4736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!125, !3775, !4738}
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3379)
!4740 = distinct !DISubprogram(name: "sysfs_group_attrs_change_owner", scope: !3, file: !3, line: 471, type: !4741, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4743)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!125, !3775, !268, !3378}
!4743 = !{!4744, !4745, !4746, !4747, !4748, !4749, !4752}
!4744 = !DILocalVariable(name: "grp_kn", arg: 1, scope: !4740, file: !3, line: 471, type: !3775)
!4745 = !DILocalVariable(name: "grp", arg: 2, scope: !4740, file: !3, line: 472, type: !268)
!4746 = !DILocalVariable(name: "newattrs", arg: 3, scope: !4740, file: !3, line: 473, type: !3378)
!4747 = !DILocalVariable(name: "kn", scope: !4740, file: !3, line: 475, type: !3775)
!4748 = !DILocalVariable(name: "error", scope: !4740, file: !3, line: 476, type: !125)
!4749 = !DILocalVariable(name: "attr", scope: !4750, file: !3, line: 479, type: !4239)
!4750 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 478, column: 18)
!4751 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 478, column: 6)
!4752 = !DILocalVariable(name: "bin_attr", scope: !4753, file: !3, line: 494, type: !4242)
!4753 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 493, column: 22)
!4754 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 493, column: 6)
!4755 = !DILocation(line: 471, column: 63, scope: !4740)
!4756 = !DILocation(line: 472, column: 38, scope: !4740)
!4757 = !DILocation(line: 473, column: 22, scope: !4740)
!4758 = !DILocation(line: 475, column: 2, scope: !4740)
!4759 = !DILocation(line: 475, column: 22, scope: !4740)
!4760 = !DILocation(line: 476, column: 2, scope: !4740)
!4761 = !DILocation(line: 476, column: 6, scope: !4740)
!4762 = !DILocation(line: 478, column: 6, scope: !4751)
!4763 = !DILocation(line: 478, column: 11, scope: !4751)
!4764 = !DILocation(line: 478, column: 6, scope: !4740)
!4765 = !DILocation(line: 479, column: 3, scope: !4750)
!4766 = !DILocation(line: 479, column: 28, scope: !4750)
!4767 = !DILocation(line: 481, column: 15, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 481, column: 3)
!4769 = !DILocation(line: 481, column: 20, scope: !4768)
!4770 = !DILocation(line: 481, column: 13, scope: !4768)
!4771 = !DILocation(line: 481, column: 8, scope: !4768)
!4772 = !DILocation(line: 481, column: 28, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 481, column: 3)
!4774 = !DILocation(line: 481, column: 27, scope: !4773)
!4775 = !DILocation(line: 481, column: 3, scope: !4768)
!4776 = !DILocation(line: 482, column: 29, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 481, column: 42)
!4778 = !DILocation(line: 482, column: 39, scope: !4777)
!4779 = !DILocation(line: 482, column: 38, scope: !4777)
!4780 = !DILocation(line: 482, column: 46, scope: !4777)
!4781 = !DILocation(line: 482, column: 9, scope: !4777)
!4782 = !DILocation(line: 482, column: 7, scope: !4777)
!4783 = !DILocation(line: 483, column: 9, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 483, column: 8)
!4785 = !DILocation(line: 483, column: 8, scope: !4777)
!4786 = !DILocation(line: 484, column: 5, scope: !4784)
!4787 = !DILocation(line: 486, column: 27, scope: !4777)
!4788 = !DILocation(line: 486, column: 31, scope: !4777)
!4789 = !DILocation(line: 486, column: 12, scope: !4777)
!4790 = !DILocation(line: 486, column: 10, scope: !4777)
!4791 = !DILocation(line: 487, column: 15, scope: !4777)
!4792 = !DILocation(line: 487, column: 4, scope: !4777)
!4793 = !DILocation(line: 488, column: 8, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 488, column: 8)
!4795 = !DILocation(line: 488, column: 8, scope: !4777)
!4796 = !DILocation(line: 489, column: 12, scope: !4794)
!4797 = !DILocation(line: 489, column: 5, scope: !4794)
!4798 = !DILocation(line: 490, column: 3, scope: !4777)
!4799 = !DILocation(line: 481, column: 38, scope: !4773)
!4800 = !DILocation(line: 481, column: 3, scope: !4773)
!4801 = distinct !{!4801, !4775, !4802, !4105, !4106}
!4802 = !DILocation(line: 490, column: 3, scope: !4768)
!4803 = !DILocation(line: 491, column: 2, scope: !4751)
!4804 = !DILocation(line: 491, column: 2, scope: !4750)
!4805 = !DILocation(line: 493, column: 6, scope: !4754)
!4806 = !DILocation(line: 493, column: 11, scope: !4754)
!4807 = !DILocation(line: 493, column: 6, scope: !4740)
!4808 = !DILocation(line: 494, column: 3, scope: !4753)
!4809 = !DILocation(line: 494, column: 32, scope: !4753)
!4810 = !DILocation(line: 496, column: 19, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 496, column: 3)
!4812 = !DILocation(line: 496, column: 24, scope: !4811)
!4813 = !DILocation(line: 496, column: 17, scope: !4811)
!4814 = !DILocation(line: 496, column: 8, scope: !4811)
!4815 = !DILocation(line: 496, column: 36, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4811, file: !3, line: 496, column: 3)
!4817 = !DILocation(line: 496, column: 35, scope: !4816)
!4818 = !DILocation(line: 496, column: 3, scope: !4811)
!4819 = !DILocation(line: 497, column: 29, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 496, column: 58)
!4821 = !DILocation(line: 497, column: 39, scope: !4820)
!4822 = !DILocation(line: 497, column: 38, scope: !4820)
!4823 = !DILocation(line: 497, column: 50, scope: !4820)
!4824 = !DILocation(line: 497, column: 55, scope: !4820)
!4825 = !DILocation(line: 497, column: 9, scope: !4820)
!4826 = !DILocation(line: 497, column: 7, scope: !4820)
!4827 = !DILocation(line: 498, column: 9, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 498, column: 8)
!4829 = !DILocation(line: 498, column: 8, scope: !4820)
!4830 = !DILocation(line: 499, column: 5, scope: !4828)
!4831 = !DILocation(line: 501, column: 27, scope: !4820)
!4832 = !DILocation(line: 501, column: 31, scope: !4820)
!4833 = !DILocation(line: 501, column: 12, scope: !4820)
!4834 = !DILocation(line: 501, column: 10, scope: !4820)
!4835 = !DILocation(line: 502, column: 15, scope: !4820)
!4836 = !DILocation(line: 502, column: 4, scope: !4820)
!4837 = !DILocation(line: 503, column: 8, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 503, column: 8)
!4839 = !DILocation(line: 503, column: 8, scope: !4820)
!4840 = !DILocation(line: 504, column: 12, scope: !4838)
!4841 = !DILocation(line: 504, column: 5, scope: !4838)
!4842 = !DILocation(line: 505, column: 3, scope: !4820)
!4843 = !DILocation(line: 496, column: 54, scope: !4816)
!4844 = !DILocation(line: 496, column: 3, scope: !4816)
!4845 = distinct !{!4845, !4818, !4846, !4105, !4106}
!4846 = !DILocation(line: 505, column: 3, scope: !4811)
!4847 = !DILocation(line: 506, column: 2, scope: !4754)
!4848 = !DILocation(line: 506, column: 2, scope: !4753)
!4849 = !DILocation(line: 508, column: 2, scope: !4740)
!4850 = !DILocation(line: 509, column: 1, scope: !4740)
!4851 = distinct !DISubprogram(name: "sysfs_groups_change_owner", scope: !3, file: !3, line: 563, type: !4852, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4854)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!125, !126, !267, !301, !310}
!4854 = !{!4855, !4856, !4857, !4858, !4859, !4860}
!4855 = !DILocalVariable(name: "kobj", arg: 1, scope: !4851, file: !3, line: 563, type: !126)
!4856 = !DILocalVariable(name: "groups", arg: 2, scope: !4851, file: !3, line: 564, type: !267)
!4857 = !DILocalVariable(name: "kuid", arg: 3, scope: !4851, file: !3, line: 565, type: !301)
!4858 = !DILocalVariable(name: "kgid", arg: 4, scope: !4851, file: !3, line: 565, type: !310)
!4859 = !DILocalVariable(name: "error", scope: !4851, file: !3, line: 567, type: !125)
!4860 = !DILocalVariable(name: "i", scope: !4851, file: !3, line: 567, type: !125)
!4861 = !DILocation(line: 563, column: 47, scope: !4851)
!4862 = !DILocation(line: 564, column: 41, scope: !4851)
!4863 = !DILocation(line: 565, column: 17, scope: !4851)
!4864 = !DILocation(line: 565, column: 30, scope: !4851)
!4865 = !DILocation(line: 567, column: 2, scope: !4851)
!4866 = !DILocation(line: 567, column: 6, scope: !4851)
!4867 = !DILocation(line: 567, column: 17, scope: !4851)
!4868 = !DILocation(line: 569, column: 7, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 569, column: 6)
!4870 = !DILocation(line: 569, column: 13, scope: !4869)
!4871 = !DILocation(line: 569, column: 6, scope: !4851)
!4872 = !DILocation(line: 570, column: 3, scope: !4869)
!4873 = !DILocation(line: 572, column: 7, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 572, column: 6)
!4875 = !DILocation(line: 572, column: 6, scope: !4851)
!4876 = !DILocation(line: 573, column: 3, scope: !4874)
!4877 = !DILocation(line: 575, column: 9, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 575, column: 2)
!4879 = !DILocation(line: 575, column: 7, scope: !4878)
!4880 = !DILocation(line: 575, column: 14, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 575, column: 2)
!4882 = !DILocation(line: 575, column: 21, scope: !4881)
!4883 = !DILocation(line: 575, column: 2, scope: !4878)
!4884 = !DILocation(line: 576, column: 36, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 575, column: 30)
!4886 = !DILocation(line: 576, column: 42, scope: !4885)
!4887 = !DILocation(line: 576, column: 49, scope: !4885)
!4888 = !DILocation(line: 576, column: 11, scope: !4885)
!4889 = !DILocation(line: 576, column: 9, scope: !4885)
!4890 = !DILocation(line: 577, column: 7, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 577, column: 7)
!4892 = !DILocation(line: 577, column: 7, scope: !4885)
!4893 = !DILocation(line: 578, column: 4, scope: !4891)
!4894 = !DILocation(line: 579, column: 2, scope: !4885)
!4895 = !DILocation(line: 575, column: 26, scope: !4881)
!4896 = !DILocation(line: 575, column: 2, scope: !4881)
!4897 = distinct !{!4897, !4883, !4898, !4105, !4106}
!4898 = !DILocation(line: 579, column: 2, scope: !4878)
!4899 = !DILocation(line: 581, column: 9, scope: !4851)
!4900 = !DILocation(line: 581, column: 2, scope: !4851)
!4901 = !DILocation(line: 582, column: 1, scope: !4851)
!4902 = !DISubprogram(name: "_printk", scope: !4903, file: !4903, line: 153, type: !4904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4903 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!125, !131, null}
!4906 = !DISubprogram(name: "kernfs_create_dir_ns", scope: !471, file: !471, line: 419, type: !4907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!3775, !3775, !131, !258, !301, !310, !64, !2231}
!4909 = distinct !DISubprogram(name: "IS_ERR", scope: !4640, file: !4640, line: 59, type: !4910, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4912)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!636, !2231}
!4912 = !{!4913}
!4913 = !DILocalVariable(name: "ptr", arg: 1, scope: !4909, file: !4640, line: 59, type: !2231)
!4914 = !DILocation(line: 59, column: 60, scope: !4909)
!4915 = !DILocation(line: 61, column: 9, scope: !4909)
!4916 = !DILocation(line: 61, column: 2, scope: !4909)
!4917 = distinct !DISubprogram(name: "create_files", scope: !3, file: !3, line: 34, type: !4918, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4920)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!125, !3775, !126, !301, !310, !268, !125}
!4920 = !{!4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4937, !4939, !4943, !4949, !4951, !4955}
!4921 = !DILocalVariable(name: "parent", arg: 1, scope: !4917, file: !3, line: 34, type: !3775)
!4922 = !DILocalVariable(name: "kobj", arg: 2, scope: !4917, file: !3, line: 34, type: !126)
!4923 = !DILocalVariable(name: "uid", arg: 3, scope: !4917, file: !3, line: 35, type: !301)
!4924 = !DILocalVariable(name: "gid", arg: 4, scope: !4917, file: !3, line: 35, type: !310)
!4925 = !DILocalVariable(name: "grp", arg: 5, scope: !4917, file: !3, line: 36, type: !268)
!4926 = !DILocalVariable(name: "update", arg: 6, scope: !4917, file: !3, line: 36, type: !125)
!4927 = !DILocalVariable(name: "attr", scope: !4917, file: !3, line: 38, type: !4239)
!4928 = !DILocalVariable(name: "bin_attr", scope: !4917, file: !3, line: 39, type: !4242)
!4929 = !DILocalVariable(name: "error", scope: !4917, file: !3, line: 40, type: !125)
!4930 = !DILocalVariable(name: "i", scope: !4917, file: !3, line: 40, type: !125)
!4931 = !DILocalVariable(name: "mode", scope: !4932, file: !3, line: 44, type: !258)
!4932 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 43, column: 64)
!4933 = distinct !DILexicalBlock(scope: !4934, file: !3, line: 43, column: 3)
!4934 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 43, column: 3)
!4935 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 42, column: 18)
!4936 = distinct !DILexicalBlock(scope: !4917, file: !3, line: 42, column: 6)
!4937 = !DILocalVariable(name: "__ret_warn_on", scope: !4938, file: !3, line: 59, type: !125)
!4938 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 59, column: 4)
!4939 = !DILocalVariable(name: "__flags", scope: !4940, file: !3, line: 59, type: !125)
!4940 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 59, column: 4)
!4941 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 59, column: 4)
!4942 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 59, column: 4)
!4943 = !DILocalVariable(name: "mode", scope: !4944, file: !3, line: 77, type: !258)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 76, column: 70)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 76, column: 3)
!4946 = distinct !DILexicalBlock(scope: !4947, file: !3, line: 76, column: 3)
!4947 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 75, column: 22)
!4948 = distinct !DILexicalBlock(scope: !4917, file: !3, line: 75, column: 6)
!4949 = !DILocalVariable(name: "__ret_warn_on", scope: !4950, file: !3, line: 88, type: !125)
!4950 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 88, column: 4)
!4951 = !DILocalVariable(name: "__flags", scope: !4952, file: !3, line: 88, type: !125)
!4952 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 88, column: 4)
!4953 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 88, column: 4)
!4954 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 88, column: 4)
!4955 = !DILabel(scope: !4917, name: "exit", file: !3, line: 102)
!4956 = !DILocation(line: 34, column: 45, scope: !4917)
!4957 = !DILocation(line: 34, column: 69, scope: !4917)
!4958 = !DILocation(line: 35, column: 11, scope: !4917)
!4959 = !DILocation(line: 35, column: 23, scope: !4917)
!4960 = !DILocation(line: 36, column: 34, scope: !4917)
!4961 = !DILocation(line: 36, column: 43, scope: !4917)
!4962 = !DILocation(line: 38, column: 2, scope: !4917)
!4963 = !DILocation(line: 38, column: 27, scope: !4917)
!4964 = !DILocation(line: 39, column: 2, scope: !4917)
!4965 = !DILocation(line: 39, column: 31, scope: !4917)
!4966 = !DILocation(line: 40, column: 2, scope: !4917)
!4967 = !DILocation(line: 40, column: 6, scope: !4917)
!4968 = !DILocation(line: 40, column: 17, scope: !4917)
!4969 = !DILocation(line: 42, column: 6, scope: !4936)
!4970 = !DILocation(line: 42, column: 11, scope: !4936)
!4971 = !DILocation(line: 42, column: 6, scope: !4917)
!4972 = !DILocation(line: 43, column: 10, scope: !4934)
!4973 = !DILocation(line: 43, column: 22, scope: !4934)
!4974 = !DILocation(line: 43, column: 27, scope: !4934)
!4975 = !DILocation(line: 43, column: 20, scope: !4934)
!4976 = !DILocation(line: 43, column: 8, scope: !4934)
!4977 = !DILocation(line: 43, column: 35, scope: !4933)
!4978 = !DILocation(line: 43, column: 34, scope: !4933)
!4979 = !DILocation(line: 43, column: 40, scope: !4933)
!4980 = !DILocation(line: 43, column: 44, scope: !4933)
!4981 = !DILocation(line: 43, column: 43, scope: !4933)
!4982 = !DILocation(line: 0, scope: !4933)
!4983 = !DILocation(line: 43, column: 3, scope: !4934)
!4984 = !DILocation(line: 44, column: 4, scope: !4932)
!4985 = !DILocation(line: 44, column: 12, scope: !4932)
!4986 = !DILocation(line: 44, column: 21, scope: !4932)
!4987 = !DILocation(line: 44, column: 20, scope: !4932)
!4988 = !DILocation(line: 44, column: 28, scope: !4932)
!4989 = !DILocation(line: 51, column: 8, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 51, column: 8)
!4991 = !DILocation(line: 51, column: 8, scope: !4932)
!4992 = !DILocation(line: 52, column: 27, scope: !4990)
!4993 = !DILocation(line: 52, column: 37, scope: !4990)
!4994 = !DILocation(line: 52, column: 36, scope: !4990)
!4995 = !DILocation(line: 52, column: 44, scope: !4990)
!4996 = !DILocation(line: 52, column: 5, scope: !4990)
!4997 = !DILocation(line: 53, column: 8, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 53, column: 8)
!4999 = !DILocation(line: 53, column: 13, scope: !4998)
!5000 = !DILocation(line: 53, column: 8, scope: !4932)
!5001 = !DILocation(line: 54, column: 12, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4998, file: !3, line: 53, column: 25)
!5003 = !DILocation(line: 54, column: 17, scope: !5002)
!5004 = !DILocation(line: 54, column: 28, scope: !5002)
!5005 = !DILocation(line: 54, column: 35, scope: !5002)
!5006 = !DILocation(line: 54, column: 34, scope: !5002)
!5007 = !DILocation(line: 54, column: 41, scope: !5002)
!5008 = !DILocation(line: 54, column: 10, scope: !5002)
!5009 = !DILocation(line: 55, column: 10, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 55, column: 9)
!5011 = !DILocation(line: 55, column: 9, scope: !5002)
!5012 = !DILocation(line: 56, column: 6, scope: !5010)
!5013 = !DILocation(line: 57, column: 4, scope: !5002)
!5014 = !DILocation(line: 59, column: 4, scope: !4938)
!5015 = !DILocation(line: 59, column: 4, scope: !4942)
!5016 = !DILocation(line: 59, column: 4, scope: !4941)
!5017 = !DILocation(line: 59, column: 4, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 59, column: 4)
!5019 = !DILocation(line: 59, column: 4, scope: !4940)
!5020 = !DILocation(line: 59, column: 4, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 59, column: 4)
!5022 = !DILocation(line: 59, column: 4, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 59, column: 4)
!5024 = !{i64 2153625863, i64 2153625892, i64 2153625938, i64 2153625996, i64 2153626050, i64 2153626104, i64 2153626159, i64 2153626190, i64 2153626498, i64 2153626504, i64 2153626551, i64 2153626574, i64 2153626600}
!5025 = !DILocation(line: 59, column: 4, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 59, column: 4)
!5027 = !DILocation(line: 59, column: 4, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 59, column: 4)
!5029 = !DILocation(line: 59, column: 4, scope: !4932)
!5030 = !DILocation(line: 63, column: 9, scope: !4932)
!5031 = !DILocation(line: 64, column: 35, scope: !4932)
!5032 = !DILocation(line: 64, column: 44, scope: !4932)
!5033 = !DILocation(line: 64, column: 43, scope: !4932)
!5034 = !DILocation(line: 64, column: 50, scope: !4932)
!5035 = !DILocation(line: 64, column: 12, scope: !4932)
!5036 = !DILocation(line: 64, column: 10, scope: !4932)
!5037 = !DILocation(line: 66, column: 8, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 66, column: 8)
!5039 = !DILocation(line: 66, column: 8, scope: !4932)
!5040 = !DILocation(line: 67, column: 5, scope: !5038)
!5041 = !DILocation(line: 68, column: 3, scope: !4933)
!5042 = !DILocation(line: 68, column: 3, scope: !4932)
!5043 = !DILocation(line: 43, column: 52, scope: !4933)
!5044 = !DILocation(line: 43, column: 60, scope: !4933)
!5045 = !DILocation(line: 43, column: 3, scope: !4933)
!5046 = distinct !{!5046, !4983, !5047, !4105, !4106}
!5047 = !DILocation(line: 68, column: 3, scope: !4934)
!5048 = !DILocation(line: 69, column: 7, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 69, column: 7)
!5050 = !DILocation(line: 69, column: 7, scope: !4935)
!5051 = !DILocation(line: 70, column: 17, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 69, column: 14)
!5053 = !DILocation(line: 70, column: 25, scope: !5052)
!5054 = !DILocation(line: 70, column: 4, scope: !5052)
!5055 = !DILocation(line: 71, column: 4, scope: !5052)
!5056 = !DILocation(line: 73, column: 2, scope: !4935)
!5057 = !DILocation(line: 75, column: 6, scope: !4948)
!5058 = !DILocation(line: 75, column: 11, scope: !4948)
!5059 = !DILocation(line: 75, column: 6, scope: !4917)
!5060 = !DILocation(line: 76, column: 10, scope: !4946)
!5061 = !DILocation(line: 76, column: 26, scope: !4946)
!5062 = !DILocation(line: 76, column: 31, scope: !4946)
!5063 = !DILocation(line: 76, column: 24, scope: !4946)
!5064 = !DILocation(line: 76, column: 8, scope: !4946)
!5065 = !DILocation(line: 76, column: 43, scope: !4945)
!5066 = !DILocation(line: 76, column: 42, scope: !4945)
!5067 = !DILocation(line: 76, column: 3, scope: !4946)
!5068 = !DILocation(line: 77, column: 4, scope: !4944)
!5069 = !DILocation(line: 77, column: 12, scope: !4944)
!5070 = !DILocation(line: 77, column: 21, scope: !4944)
!5071 = !DILocation(line: 77, column: 20, scope: !4944)
!5072 = !DILocation(line: 77, column: 32, scope: !4944)
!5073 = !DILocation(line: 77, column: 37, scope: !4944)
!5074 = !DILocation(line: 79, column: 8, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 79, column: 8)
!5076 = !DILocation(line: 79, column: 8, scope: !4944)
!5077 = !DILocation(line: 80, column: 27, scope: !5075)
!5078 = !DILocation(line: 81, column: 9, scope: !5075)
!5079 = !DILocation(line: 81, column: 8, scope: !5075)
!5080 = !DILocation(line: 81, column: 20, scope: !5075)
!5081 = !DILocation(line: 81, column: 25, scope: !5075)
!5082 = !DILocation(line: 80, column: 5, scope: !5075)
!5083 = !DILocation(line: 82, column: 8, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 82, column: 8)
!5085 = !DILocation(line: 82, column: 13, scope: !5084)
!5086 = !DILocation(line: 82, column: 8, scope: !4944)
!5087 = !DILocation(line: 83, column: 12, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 82, column: 29)
!5089 = !DILocation(line: 83, column: 17, scope: !5088)
!5090 = !DILocation(line: 83, column: 32, scope: !5088)
!5091 = !DILocation(line: 83, column: 39, scope: !5088)
!5092 = !DILocation(line: 83, column: 38, scope: !5088)
!5093 = !DILocation(line: 83, column: 49, scope: !5088)
!5094 = !DILocation(line: 83, column: 10, scope: !5088)
!5095 = !DILocation(line: 84, column: 10, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 84, column: 9)
!5097 = !DILocation(line: 84, column: 9, scope: !5088)
!5098 = !DILocation(line: 85, column: 6, scope: !5096)
!5099 = !DILocation(line: 86, column: 4, scope: !5088)
!5100 = !DILocation(line: 88, column: 4, scope: !4950)
!5101 = !DILocation(line: 88, column: 4, scope: !4954)
!5102 = !DILocation(line: 88, column: 4, scope: !4953)
!5103 = !DILocation(line: 88, column: 4, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 88, column: 4)
!5105 = !DILocation(line: 88, column: 4, scope: !4952)
!5106 = !DILocation(line: 88, column: 4, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 88, column: 4)
!5108 = !DILocation(line: 88, column: 4, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 88, column: 4)
!5110 = !{i64 2153627795, i64 2153627824, i64 2153627870, i64 2153627928, i64 2153627982, i64 2153628036, i64 2153628091, i64 2153628122, i64 2153628430, i64 2153628436, i64 2153628483, i64 2153628506, i64 2153628532}
!5111 = !DILocation(line: 88, column: 4, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 88, column: 4)
!5113 = !DILocation(line: 88, column: 4, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 88, column: 4)
!5115 = !DILocation(line: 88, column: 4, scope: !4944)
!5116 = !DILocation(line: 92, column: 9, scope: !4944)
!5117 = !DILocation(line: 93, column: 39, scope: !4944)
!5118 = !DILocation(line: 93, column: 48, scope: !4944)
!5119 = !DILocation(line: 93, column: 47, scope: !4944)
!5120 = !DILocation(line: 94, column: 11, scope: !4944)
!5121 = !DILocation(line: 93, column: 12, scope: !4944)
!5122 = !DILocation(line: 93, column: 10, scope: !4944)
!5123 = !DILocation(line: 96, column: 8, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 96, column: 8)
!5125 = !DILocation(line: 96, column: 8, scope: !4944)
!5126 = !DILocation(line: 97, column: 5, scope: !5124)
!5127 = !DILocation(line: 98, column: 3, scope: !4945)
!5128 = !DILocation(line: 98, column: 3, scope: !4944)
!5129 = !DILocation(line: 76, column: 54, scope: !4945)
!5130 = !DILocation(line: 76, column: 66, scope: !4945)
!5131 = !DILocation(line: 76, column: 3, scope: !4945)
!5132 = distinct !{!5132, !5067, !5133, !4105, !4106}
!5133 = !DILocation(line: 98, column: 3, scope: !4946)
!5134 = !DILocation(line: 99, column: 7, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !4947, file: !3, line: 99, column: 7)
!5136 = !DILocation(line: 99, column: 7, scope: !4947)
!5137 = !DILocation(line: 100, column: 17, scope: !5135)
!5138 = !DILocation(line: 100, column: 25, scope: !5135)
!5139 = !DILocation(line: 100, column: 4, scope: !5135)
!5140 = !DILocation(line: 101, column: 2, scope: !4947)
!5141 = !DILocation(line: 102, column: 1, scope: !4917)
!5142 = !DILocation(line: 103, column: 9, scope: !4917)
!5143 = !DILocation(line: 104, column: 1, scope: !4917)
!5144 = !DILocation(line: 103, column: 2, scope: !4917)
!5145 = !DISubprogram(name: "sysfs_add_bin_file_mode_ns", scope: !4415, file: !4415, line: 33, type: !5146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!125, !3775, !5148, !258, !301, !310, !2231}
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!5150 = !DISubprogram(name: "kernfs_find_and_get_ns", scope: !471, file: !471, line: 402, type: !5151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5151 = !DISubroutineType(types: !5152)
!5152 = !{!3775, !3775, !131, !2231}
!5153 = !DISubprogram(name: "kernfs_remove_by_name_ns", scope: !471, file: !471, line: 441, type: !5154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!125, !3775, !131, !2231}
!5156 = !DISubprogram(name: "_raw_spin_lock", scope: !5157, file: !5157, line: 22, type: !5158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5157 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5158 = !DISubroutineType(types: !5159)
!5159 = !{null, !5160}
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!5161 = !DISubprogram(name: "_raw_spin_unlock", scope: !5157, file: !5157, line: 39, type: !5158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
