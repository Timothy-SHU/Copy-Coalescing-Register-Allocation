; ModuleID = 'fs/kernfs/symlink.c'
source_filename = "fs/kernfs/symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.14, ptr, i64, i16, i16, ptr, %struct.callback_head }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, ptr, ptr }
%union.anon.14 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, ptr, i64 }
%struct.rb_root = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kernfs_iattrs = type { %struct.kuid_t, %struct.kgid_t, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.simple_xattrs, %struct.atomic_t, %struct.atomic_t }
%struct.timespec64 = type { i64, i64 }
%struct.simple_xattrs = type { %struct.rb_root, %struct.rwlock_t }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.15, %struct.qspinlock }
%union.anon.15 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.kernfs_elem_symlink = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.17, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.18, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.19, ptr, %struct.address_space, %struct.list_head, %union.anon.20, i32, i32, ptr, ptr }
%union.anon.17 = type { i32 }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.18 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.19 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.20 = type { ptr }
%struct.kernfs_root = type { ptr, i32, %struct.idr, i32, i32, ptr, %struct.list_head, %struct.wait_queue_head, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.callback_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_call = type { ptr, ptr }

@kernfs_symlink_iops = hidden constant %struct.inode_operations { ptr null, ptr @kernfs_iop_get_link, ptr @kernfs_iop_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kernfs_iop_setattr, ptr @kernfs_iop_getattr, ptr @kernfs_iop_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !230
@.str.1 = private unnamed_addr constant [4 x i8] c"../\00", align 1, !dbg !235

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kernfs_create_link(ptr noundef %parent, ptr noundef %name, ptr noundef %target) #0 align 16 !dbg !3731 {
entry:
  %retval = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %error = alloca i32, align 4
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !3893, metadata !DIExpression()), !dbg !3900
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3894, metadata !DIExpression()), !dbg !3901
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !3895, metadata !DIExpression()), !dbg !3902
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #15, !dbg !3903
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !3896, metadata !DIExpression()), !dbg !3904
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #15, !dbg !3905
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3897, metadata !DIExpression()), !dbg !3906
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #15, !dbg !3907
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !3898, metadata !DIExpression()), !dbg !3908
  call void @llvm.memset.p0.i64(ptr align 4 %uid, i8 0, i64 4, i1 false), !dbg !3908
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #15, !dbg !3909
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !3899, metadata !DIExpression()), !dbg !3910
  call void @llvm.memset.p0.i64(ptr align 4 %gid, i8 0, i64 4, i1 false), !dbg !3910
  %0 = load ptr, ptr %target.addr, align 8, !dbg !3911
  %iattr = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 12, !dbg !3913
  %1 = load ptr, ptr %iattr, align 8, !dbg !3913
  %tobool = icmp ne ptr %1, null, !dbg !3911
  br i1 %tobool, label %if.then, label %if.end, !dbg !3914

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %target.addr, align 8, !dbg !3915
  %iattr1 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 12, !dbg !3917
  %3 = load ptr, ptr %iattr1, align 8, !dbg !3917
  %ia_uid = getelementptr inbounds %struct.kernfs_iattrs, ptr %3, i32 0, i32 0, !dbg !3918
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 8 %ia_uid, i64 4, i1 false), !dbg !3918
  %4 = load ptr, ptr %target.addr, align 8, !dbg !3919
  %iattr2 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 12, !dbg !3920
  %5 = load ptr, ptr %iattr2, align 8, !dbg !3920
  %ia_gid = getelementptr inbounds %struct.kernfs_iattrs, ptr %5, i32 0, i32 1, !dbg !3921
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid, ptr align 4 %ia_gid, i64 4, i1 false), !dbg !3921
  br label %if.end, !dbg !3922

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !3923
  %7 = load ptr, ptr %name.addr, align 8, !dbg !3924
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !3925
  %8 = load i32, ptr %coerce.dive, align 4, !dbg !3925
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !3925
  %9 = load i32, ptr %coerce.dive3, align 4, !dbg !3925
  %call = call ptr @kernfs_new_node(ptr noundef %6, ptr noundef %7, i16 noundef zeroext -24065, i32 %8, i32 %9, i32 noundef 4) #16, !dbg !3925
  store ptr %call, ptr %kn, align 8, !dbg !3926
  %10 = load ptr, ptr %kn, align 8, !dbg !3927
  %tobool4 = icmp ne ptr %10, null, !dbg !3927
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !3929

if.then5:                                         ; preds = %if.end
  %call6 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !3930
  store ptr %call6, ptr %retval, align 8, !dbg !3931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3931

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %parent.addr, align 8, !dbg !3932
  %call8 = call zeroext i1 @kernfs_ns_enabled(ptr noundef %11) #16, !dbg !3934
  br i1 %call8, label %if.then9, label %if.end11, !dbg !3935

if.then9:                                         ; preds = %if.end7
  %12 = load ptr, ptr %target.addr, align 8, !dbg !3936
  %ns = getelementptr inbounds %struct.kernfs_node, ptr %12, i32 0, i32 5, !dbg !3937
  %13 = load ptr, ptr %ns, align 8, !dbg !3937
  %14 = load ptr, ptr %kn, align 8, !dbg !3938
  %ns10 = getelementptr inbounds %struct.kernfs_node, ptr %14, i32 0, i32 5, !dbg !3939
  store ptr %13, ptr %ns10, align 8, !dbg !3940
  br label %if.end11, !dbg !3938

if.end11:                                         ; preds = %if.then9, %if.end7
  %15 = load ptr, ptr %target.addr, align 8, !dbg !3941
  %16 = load ptr, ptr %kn, align 8, !dbg !3942
  %17 = getelementptr inbounds %struct.kernfs_node, ptr %16, i32 0, i32 7, !dbg !3943
  %target_kn = getelementptr inbounds %struct.kernfs_elem_symlink, ptr %17, i32 0, i32 0, !dbg !3944
  store ptr %15, ptr %target_kn, align 8, !dbg !3945
  %18 = load ptr, ptr %target.addr, align 8, !dbg !3946
  call void @kernfs_get(ptr noundef %18) #16, !dbg !3947
  %19 = load ptr, ptr %kn, align 8, !dbg !3948
  %call12 = call i32 @kernfs_add_one(ptr noundef %19) #16, !dbg !3949
  store i32 %call12, ptr %error, align 4, !dbg !3950
  %20 = load i32, ptr %error, align 4, !dbg !3951
  %tobool13 = icmp ne i32 %20, 0, !dbg !3951
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !3953

if.then14:                                        ; preds = %if.end11
  %21 = load ptr, ptr %kn, align 8, !dbg !3954
  store ptr %21, ptr %retval, align 8, !dbg !3955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3955

if.end15:                                         ; preds = %if.end11
  %22 = load ptr, ptr %kn, align 8, !dbg !3956
  call void @kernfs_put(ptr noundef %22) #16, !dbg !3957
  %23 = load i32, ptr %error, align 4, !dbg !3958
  %conv = sext i32 %23 to i64, !dbg !3958
  %call16 = call ptr @ERR_PTR(i64 noundef %conv) #16, !dbg !3959
  store ptr %call16, ptr %retval, align 8, !dbg !3960
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3960

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #15, !dbg !3961
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #15, !dbg !3961
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #15, !dbg !3961
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #15, !dbg !3961
  %24 = load ptr, ptr %retval, align 8, !dbg !3961
  ret ptr %24, !dbg !3961
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3962 dso_local ptr @kernfs_new_node(ptr noundef, ptr noundef, i16 noundef zeroext, i32, i32, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #6 align 16 !dbg !3965 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !3970, metadata !DIExpression()), !dbg !3971
  %0 = load i64, ptr %error.addr, align 8, !dbg !3972
  %1 = inttoptr i64 %0 to ptr, !dbg !3973
  ret ptr %1, !dbg !3974
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kernfs_ns_enabled(ptr noundef %kn) #6 align 16 !dbg !3975 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !3979, metadata !DIExpression()), !dbg !3980
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !3981
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10, !dbg !3982
  %1 = load i16, ptr %flags, align 8, !dbg !3982
  %conv = zext i16 %1 to i32, !dbg !3981
  %and = and i32 %conv, 32, !dbg !3983
  %tobool = icmp ne i32 %and, 0, !dbg !3981
  ret i1 %tobool, !dbg !3984
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3985 dso_local void @kernfs_get(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3988 dso_local i32 @kernfs_add_one(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3989 dso_local void @kernfs_put(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_iop_get_link(ptr noundef %dentry, ptr noundef %inode, ptr noundef %done) #0 align 16 !dbg !3990 {
entry:
  %retval = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %done.addr = alloca ptr, align 8
  %body = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !3992, metadata !DIExpression()), !dbg !3997
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !3993, metadata !DIExpression()), !dbg !3998
  store ptr %done, ptr %done.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %done.addr, metadata !3994, metadata !DIExpression()), !dbg !3999
  call void @llvm.lifetime.start.p0(i64 8, ptr %body) #15, !dbg !4000
  call void @llvm.dbg.declare(metadata ptr %body, metadata !3995, metadata !DIExpression()), !dbg !4001
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #15, !dbg !4002
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3996, metadata !DIExpression()), !dbg !4003
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4004
  %tobool = icmp ne ptr %0, null, !dbg !4004
  br i1 %tobool, label %if.end, label %if.then, !dbg !4006

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -10) #16, !dbg !4007
  store ptr %call, ptr %retval, align 8, !dbg !4008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4008

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kzalloc(i64 noundef 4096, i32 noundef 3264) #17, !dbg !4009
  store ptr %call1, ptr %body, align 8, !dbg !4010
  %1 = load ptr, ptr %body, align 8, !dbg !4011
  %tobool2 = icmp ne ptr %1, null, !dbg !4011
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !4013

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !4014
  store ptr %call4, ptr %retval, align 8, !dbg !4015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4015

if.end5:                                          ; preds = %if.end
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !4016
  %3 = load ptr, ptr %body, align 8, !dbg !4017
  %call6 = call i32 @kernfs_getlink(ptr noundef %2, ptr noundef %3) #16, !dbg !4018
  store i32 %call6, ptr %error, align 4, !dbg !4019
  %4 = load i32, ptr %error, align 4, !dbg !4020
  %cmp = icmp slt i32 %4, 0, !dbg !4020
  %lnot = xor i1 %cmp, true, !dbg !4020
  %lnot7 = xor i1 %lnot, true, !dbg !4020
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !4020
  %conv = sext i32 %lnot.ext to i64, !dbg !4020
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4020
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4020
  br i1 %tobool8, label %if.then9, label %if.end12, !dbg !4022

if.then9:                                         ; preds = %if.end5
  %5 = load ptr, ptr %body, align 8, !dbg !4023
  call void @kfree(ptr noundef %5) #16, !dbg !4025
  %6 = load i32, ptr %error, align 4, !dbg !4026
  %conv10 = sext i32 %6 to i64, !dbg !4026
  %call11 = call ptr @ERR_PTR(i64 noundef %conv10) #16, !dbg !4027
  store ptr %call11, ptr %retval, align 8, !dbg !4028
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4028

if.end12:                                         ; preds = %if.end5
  %7 = load ptr, ptr %done.addr, align 8, !dbg !4029
  %8 = load ptr, ptr %body, align 8, !dbg !4030
  call void @set_delayed_call(ptr noundef %7, ptr noundef @kfree_link, ptr noundef %8) #16, !dbg !4031
  %9 = load ptr, ptr %body, align 8, !dbg !4032
  store ptr %9, ptr %retval, align 8, !dbg !4033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4033

cleanup:                                          ; preds = %if.end12, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #15, !dbg !4034
  call void @llvm.lifetime.end.p0(i64 8, ptr %body) #15, !dbg !4034
  %10 = load ptr, ptr %retval, align 8, !dbg !4034
  ret ptr %10, !dbg !4034
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kernfs_iop_permission(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kernfs_iop_setattr(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kernfs_iop_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @kernfs_iop_listxattr(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !4035 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4039, metadata !DIExpression()), !dbg !4041
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4040, metadata !DIExpression()), !dbg !4042
  %0 = load i64, ptr %size.addr, align 8, !dbg !4043
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4044
  %or = or i32 %1, 256, !dbg !4045
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !4046
  ret ptr %call, !dbg !4047
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_getlink(ptr noundef %inode, ptr noundef %path) #0 align 16 !dbg !4048 {
entry:
  %inode.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %target = alloca ptr, align 8
  %root = alloca ptr, align 8
  %error = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4052, metadata !DIExpression()), !dbg !4059
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !4053, metadata !DIExpression()), !dbg !4060
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #15, !dbg !4061
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !4054, metadata !DIExpression()), !dbg !4062
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4063
  %i_private = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47, !dbg !4064
  %1 = load ptr, ptr %i_private, align 8, !dbg !4064
  store ptr %1, ptr %kn, align 8, !dbg !4062
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #15, !dbg !4065
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4055, metadata !DIExpression()), !dbg !4066
  %2 = load ptr, ptr %kn, align 8, !dbg !4067
  %parent1 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 2, !dbg !4068
  %3 = load ptr, ptr %parent1, align 8, !dbg !4068
  store ptr %3, ptr %parent, align 8, !dbg !4066
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #15, !dbg !4069
  call void @llvm.dbg.declare(metadata ptr %target, metadata !4056, metadata !DIExpression()), !dbg !4070
  %4 = load ptr, ptr %kn, align 8, !dbg !4071
  %5 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 7, !dbg !4072
  %target_kn = getelementptr inbounds %struct.kernfs_elem_symlink, ptr %5, i32 0, i32 0, !dbg !4073
  %6 = load ptr, ptr %target_kn, align 8, !dbg !4073
  store ptr %6, ptr %target, align 8, !dbg !4070
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #15, !dbg !4074
  call void @llvm.dbg.declare(metadata ptr %root, metadata !4057, metadata !DIExpression()), !dbg !4075
  %7 = load ptr, ptr %parent, align 8, !dbg !4076
  %call = call ptr @kernfs_root(ptr noundef %7) #16, !dbg !4077
  store ptr %call, ptr %root, align 8, !dbg !4075
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #15, !dbg !4078
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4058, metadata !DIExpression()), !dbg !4079
  %8 = load ptr, ptr %root, align 8, !dbg !4080
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %8, i32 0, i32 8, !dbg !4081
  call void @down_read(ptr noundef %kernfs_rwsem) #16, !dbg !4082
  %9 = load ptr, ptr %parent, align 8, !dbg !4083
  %10 = load ptr, ptr %target, align 8, !dbg !4084
  %11 = load ptr, ptr %path.addr, align 8, !dbg !4085
  %call2 = call i32 @kernfs_get_target_path(ptr noundef %9, ptr noundef %10, ptr noundef %11) #16, !dbg !4086
  store i32 %call2, ptr %error, align 4, !dbg !4087
  %12 = load ptr, ptr %root, align 8, !dbg !4088
  %kernfs_rwsem3 = getelementptr inbounds %struct.kernfs_root, ptr %12, i32 0, i32 8, !dbg !4089
  call void @up_read(ptr noundef %kernfs_rwsem3) #16, !dbg !4090
  %13 = load i32, ptr %error, align 4, !dbg !4091
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #15, !dbg !4092
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #15, !dbg !4092
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #15, !dbg !4092
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #15, !dbg !4092
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #15, !dbg !4092
  ret i32 %13, !dbg !4093
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4094 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_delayed_call(ptr noundef %call, ptr noundef %fn, ptr noundef %arg) #6 align 16 !dbg !4097 {
entry:
  %call.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  store ptr %call, ptr %call.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %call.addr, metadata !4101, metadata !DIExpression()), !dbg !4104
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !4102, metadata !DIExpression()), !dbg !4105
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4103, metadata !DIExpression()), !dbg !4106
  %0 = load ptr, ptr %fn.addr, align 8, !dbg !4107
  %1 = load ptr, ptr %call.addr, align 8, !dbg !4108
  %fn1 = getelementptr inbounds %struct.delayed_call, ptr %1, i32 0, i32 0, !dbg !4109
  store ptr %0, ptr %fn1, align 8, !dbg !4110
  %2 = load ptr, ptr %arg.addr, align 8, !dbg !4111
  %3 = load ptr, ptr %call.addr, align 8, !dbg !4112
  %arg2 = getelementptr inbounds %struct.delayed_call, ptr %3, i32 0, i32 1, !dbg !4113
  store ptr %2, ptr %arg2, align 8, !dbg !4114
  ret void, !dbg !4115
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree_link(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !4116 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4118, metadata !DIExpression()), !dbg !4123
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4119, metadata !DIExpression()), !dbg !4124
  %0 = load i64, ptr %size.addr, align 8, !dbg !4125
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4126
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4127

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4128
  %tobool = icmp ne i64 %2, 0, !dbg !4128
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4129

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !4130
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4120, metadata !DIExpression()), !dbg !4131
  %3 = load i64, ptr %size.addr, align 8, !dbg !4132
  %cmp = icmp ugt i64 %3, 8192, !dbg !4134
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4135

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4136
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4137
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !4138
  store ptr %call, ptr %retval, align 8, !dbg !4139
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4139

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4140
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !4140
  store i32 %call2, ptr %index, align 4, !dbg !4141
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4142
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4143
  %9 = ptrtoint ptr %8 to i64, !dbg !4143
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !4144
  %idxprom = zext i32 %call3 to i64, !dbg !4145
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4145
  %10 = load i32, ptr %index, align 4, !dbg !4146
  %idxprom4 = zext i32 %10 to i64, !dbg !4145
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4145
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4145
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4147
  %13 = load i64, ptr %size.addr, align 8, !dbg !4148
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !4149
  store ptr %call6, ptr %retval, align 8, !dbg !4150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4150

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !4151
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4152
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4153
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !4154
  store ptr %call8, ptr %retval, align 8, !dbg !4155
  br label %return, !dbg !4155

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4156
  ret ptr %16, !dbg !4156
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4157 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #12 align 16 !dbg !4158 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4162, metadata !DIExpression()), !dbg !4164
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4163, metadata !DIExpression()), !dbg !4165
  %0 = load i64, ptr %size.addr, align 8, !dbg !4166
  %tobool = icmp ne i64 %0, 0, !dbg !4166
  br i1 %tobool, label %if.end, label %if.then, !dbg !4168

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4169
  br label %return, !dbg !4169

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4170
  %cmp = icmp ule i64 %1, 8, !dbg !4172
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4173

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4174
  br label %return, !dbg !4174

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4175
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4177
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4178

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4179
  %cmp4 = icmp ule i64 %3, 96, !dbg !4180
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4181

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4182
  br label %return, !dbg !4182

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4183
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4185
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4186

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4187
  %cmp9 = icmp ule i64 %5, 192, !dbg !4188
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4189

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4190
  br label %return, !dbg !4190

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4191
  %cmp12 = icmp ule i64 %6, 8, !dbg !4193
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4194

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4195
  br label %return, !dbg !4195

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4196
  %cmp15 = icmp ule i64 %7, 16, !dbg !4198
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4199

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4200
  br label %return, !dbg !4200

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4201
  %cmp18 = icmp ule i64 %8, 32, !dbg !4203
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4204

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4205
  br label %return, !dbg !4205

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4206
  %cmp21 = icmp ule i64 %9, 64, !dbg !4208
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4209

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4210
  br label %return, !dbg !4210

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4211
  %cmp24 = icmp ule i64 %10, 128, !dbg !4213
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4214

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4215
  br label %return, !dbg !4215

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4216
  %cmp27 = icmp ule i64 %11, 256, !dbg !4218
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4219

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4220
  br label %return, !dbg !4220

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4221
  %cmp30 = icmp ule i64 %12, 512, !dbg !4223
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4224

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4225
  br label %return, !dbg !4225

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4226
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4228
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4229

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4230
  br label %return, !dbg !4230

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4231
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4233
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4234

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4235
  br label %return, !dbg !4235

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4236
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4238
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4239

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4240
  br label %return, !dbg !4240

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4241
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4243
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4244

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4245
  br label %return, !dbg !4245

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4246
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4248
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4249

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4250
  br label %return, !dbg !4250

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4251
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4253
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4254

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4255
  br label %return, !dbg !4255

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4256
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4258
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4259

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4260
  br label %return, !dbg !4260

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4261
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4263
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4264

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4265
  br label %return, !dbg !4265

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4266
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4268
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4269

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4270
  br label %return, !dbg !4270

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4271
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4273
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4274

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4275
  br label %return, !dbg !4275

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4276
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4278
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4279

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4280
  br label %return, !dbg !4280

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4281
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4283
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4284

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4285
  br label %return, !dbg !4285

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4286, !range !4288, !noundef !1009
  %tobool69 = trunc i8 %25 to i1, !dbg !4286
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4289

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4290

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #19, !dbg !4291, !srcloc !4294
  unreachable, !dbg !4291

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4295

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4296

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4297

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4299

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4297

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #15, !dbg !4301, !srcloc !4303
  br label %do.end75, !dbg !4301

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4297

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4304
  br label %return, !dbg !4304

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4305
  ret i32 %26, !dbg !4305
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4306 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #12 align 16 !dbg !4312 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4316, metadata !DIExpression()), !dbg !4318
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4317, metadata !DIExpression()), !dbg !4319
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4320
  %and = and i32 %0, 17, !dbg !4320
  %cmp = icmp eq i32 %and, 0, !dbg !4320
  %lnot = xor i1 %cmp, true, !dbg !4320
  %lnot1 = xor i1 %lnot, true, !dbg !4320
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4320
  %conv = sext i32 %lnot.ext to i64, !dbg !4320
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4320
  %tobool = icmp ne i64 %expval, 0, !dbg !4320
  br i1 %tobool, label %if.then, label %if.end, !dbg !4322

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4323
  br label %return, !dbg !4323

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4324
  %and2 = and i32 %1, 1, !dbg !4326
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4326
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4327

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4328
  br label %return, !dbg !4328

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4329
  br label %return, !dbg !4329

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4331
  ret i32 %2, !dbg !4331
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4332 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4333 dso_local void @__compiletime_assert_245() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_root(ptr noundef %kn) #6 align 16 !dbg !4334 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !4338, metadata !DIExpression()), !dbg !4339
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !4340
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2, !dbg !4342
  %1 = load ptr, ptr %parent, align 8, !dbg !4342
  %tobool = icmp ne ptr %1, null, !dbg !4340
  br i1 %tobool, label %if.then, label %if.end, !dbg !4343

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %kn.addr, align 8, !dbg !4344
  %parent1 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 2, !dbg !4345
  %3 = load ptr, ptr %parent1, align 8, !dbg !4345
  store ptr %3, ptr %kn.addr, align 8, !dbg !4346
  br label %if.end, !dbg !4347

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %kn.addr, align 8, !dbg !4348
  %5 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 7, !dbg !4349
  %root = getelementptr inbounds %struct.kernfs_elem_dir, ptr %5, i32 0, i32 2, !dbg !4350
  %6 = load ptr, ptr %root, align 8, !dbg !4350
  ret ptr %6, !dbg !4351
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4352 dso_local void @down_read(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_get_target_path(ptr noundef %parent, ptr noundef %target, ptr noundef %path) #0 align 16 !dbg !4356 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %base = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %s = alloca ptr, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %slen = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4360, metadata !DIExpression()), !dbg !4369
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !4361, metadata !DIExpression()), !dbg !4370
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !4362, metadata !DIExpression()), !dbg !4371
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #15, !dbg !4372
  call void @llvm.dbg.declare(metadata ptr %base, metadata !4363, metadata !DIExpression()), !dbg !4373
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #15, !dbg !4372
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !4364, metadata !DIExpression()), !dbg !4374
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #15, !dbg !4375
  call void @llvm.dbg.declare(metadata ptr %s, metadata !4365, metadata !DIExpression()), !dbg !4376
  %0 = load ptr, ptr %path.addr, align 8, !dbg !4377
  store ptr %0, ptr %s, align 8, !dbg !4376
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !4378
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4366, metadata !DIExpression()), !dbg !4379
  store i32 0, ptr %len, align 4, !dbg !4379
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !4380
  store ptr %1, ptr %base, align 8, !dbg !4381
  br label %while.cond, !dbg !4382

while.cond:                                       ; preds = %if.end11, %entry
  %2 = load ptr, ptr %base, align 8, !dbg !4383
  %parent1 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 2, !dbg !4384
  %3 = load ptr, ptr %parent1, align 8, !dbg !4384
  %tobool = icmp ne ptr %3, null, !dbg !4382
  br i1 %tobool, label %while.body, label %while.end13, !dbg !4382

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %target.addr, align 8, !dbg !4385
  %parent2 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 2, !dbg !4387
  %5 = load ptr, ptr %parent2, align 8, !dbg !4387
  store ptr %5, ptr %kn, align 8, !dbg !4388
  br label %while.cond3, !dbg !4389

while.cond3:                                      ; preds = %while.body6, %while.body
  %6 = load ptr, ptr %kn, align 8, !dbg !4390
  %parent4 = getelementptr inbounds %struct.kernfs_node, ptr %6, i32 0, i32 2, !dbg !4391
  %7 = load ptr, ptr %parent4, align 8, !dbg !4391
  %tobool5 = icmp ne ptr %7, null, !dbg !4390
  br i1 %tobool5, label %land.rhs, label %land.end, !dbg !4392

land.rhs:                                         ; preds = %while.cond3
  %8 = load ptr, ptr %base, align 8, !dbg !4393
  %9 = load ptr, ptr %kn, align 8, !dbg !4394
  %cmp = icmp ne ptr %8, %9, !dbg !4395
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond3
  %10 = phi i1 [ false, %while.cond3 ], [ %cmp, %land.rhs ], !dbg !4396
  br i1 %10, label %while.body6, label %while.end, !dbg !4389

while.body6:                                      ; preds = %land.end
  %11 = load ptr, ptr %kn, align 8, !dbg !4397
  %parent7 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 2, !dbg !4398
  %12 = load ptr, ptr %parent7, align 8, !dbg !4398
  store ptr %12, ptr %kn, align 8, !dbg !4399
  br label %while.cond3, !dbg !4389, !llvm.loop !4400

while.end:                                        ; preds = %land.end
  %13 = load ptr, ptr %base, align 8, !dbg !4403
  %14 = load ptr, ptr %kn, align 8, !dbg !4405
  %cmp8 = icmp eq ptr %13, %14, !dbg !4406
  br i1 %cmp8, label %if.then, label %if.end, !dbg !4407

if.then:                                          ; preds = %while.end
  br label %while.end13, !dbg !4408

if.end:                                           ; preds = %while.end
  %15 = load ptr, ptr %s, align 8, !dbg !4409
  %16 = load ptr, ptr %path.addr, align 8, !dbg !4411
  %sub.ptr.lhs.cast = ptrtoint ptr %15 to i64, !dbg !4412
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i64, !dbg !4412
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4412
  %add = add i64 %sub.ptr.sub, 3, !dbg !4413
  %cmp9 = icmp sge i64 %add, 4096, !dbg !4414
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4415

if.then10:                                        ; preds = %if.end
  store i32 -36, ptr %retval, align 4, !dbg !4416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4416

if.end11:                                         ; preds = %if.end
  %17 = load ptr, ptr %s, align 8, !dbg !4417
  %call = call ptr @strcpy(ptr noundef %17, ptr noundef @.str.1) #16, !dbg !4418
  %18 = load ptr, ptr %s, align 8, !dbg !4419
  %add.ptr = getelementptr i8, ptr %18, i64 3, !dbg !4419
  store ptr %add.ptr, ptr %s, align 8, !dbg !4419
  %19 = load ptr, ptr %base, align 8, !dbg !4420
  %parent12 = getelementptr inbounds %struct.kernfs_node, ptr %19, i32 0, i32 2, !dbg !4421
  %20 = load ptr, ptr %parent12, align 8, !dbg !4421
  store ptr %20, ptr %base, align 8, !dbg !4422
  br label %while.cond, !dbg !4382, !llvm.loop !4423

while.end13:                                      ; preds = %if.then, %while.cond
  %21 = load ptr, ptr %target.addr, align 8, !dbg !4425
  store ptr %21, ptr %kn, align 8, !dbg !4426
  br label %while.cond14, !dbg !4427

while.cond14:                                     ; preds = %while.body20, %while.end13
  %22 = load ptr, ptr %kn, align 8, !dbg !4428
  %parent15 = getelementptr inbounds %struct.kernfs_node, ptr %22, i32 0, i32 2, !dbg !4429
  %23 = load ptr, ptr %parent15, align 8, !dbg !4429
  %tobool16 = icmp ne ptr %23, null, !dbg !4428
  br i1 %tobool16, label %land.rhs17, label %land.end19, !dbg !4430

land.rhs17:                                       ; preds = %while.cond14
  %24 = load ptr, ptr %kn, align 8, !dbg !4431
  %25 = load ptr, ptr %base, align 8, !dbg !4432
  %cmp18 = icmp ne ptr %24, %25, !dbg !4433
  br label %land.end19

land.end19:                                       ; preds = %land.rhs17, %while.cond14
  %26 = phi i1 [ false, %while.cond14 ], [ %cmp18, %land.rhs17 ], !dbg !4434
  br i1 %26, label %while.body20, label %while.end26, !dbg !4427

while.body20:                                     ; preds = %land.end19
  %27 = load ptr, ptr %kn, align 8, !dbg !4435
  %name = getelementptr inbounds %struct.kernfs_node, ptr %27, i32 0, i32 3, !dbg !4437
  %28 = load ptr, ptr %name, align 8, !dbg !4437
  %call21 = call i64 @strlen(ptr noundef %28) #16, !dbg !4438
  %add22 = add i64 %call21, 1, !dbg !4439
  %29 = load i32, ptr %len, align 4, !dbg !4440
  %conv = sext i32 %29 to i64, !dbg !4440
  %add23 = add i64 %conv, %add22, !dbg !4440
  %conv24 = trunc i64 %add23 to i32, !dbg !4440
  store i32 %conv24, ptr %len, align 4, !dbg !4440
  %30 = load ptr, ptr %kn, align 8, !dbg !4441
  %parent25 = getelementptr inbounds %struct.kernfs_node, ptr %30, i32 0, i32 2, !dbg !4442
  %31 = load ptr, ptr %parent25, align 8, !dbg !4442
  store ptr %31, ptr %kn, align 8, !dbg !4443
  br label %while.cond14, !dbg !4427, !llvm.loop !4444

while.end26:                                      ; preds = %land.end19
  %32 = load i32, ptr %len, align 4, !dbg !4446
  %cmp27 = icmp slt i32 %32, 2, !dbg !4448
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !4449

if.then29:                                        ; preds = %while.end26
  store i32 -22, ptr %retval, align 4, !dbg !4450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4450

if.end30:                                         ; preds = %while.end26
  %33 = load i32, ptr %len, align 4, !dbg !4451
  %dec = add i32 %33, -1, !dbg !4451
  store i32 %dec, ptr %len, align 4, !dbg !4451
  %34 = load ptr, ptr %s, align 8, !dbg !4452
  %35 = load ptr, ptr %path.addr, align 8, !dbg !4454
  %sub.ptr.lhs.cast31 = ptrtoint ptr %34 to i64, !dbg !4455
  %sub.ptr.rhs.cast32 = ptrtoint ptr %35 to i64, !dbg !4455
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32, !dbg !4455
  %36 = load i32, ptr %len, align 4, !dbg !4456
  %conv34 = sext i32 %36 to i64, !dbg !4456
  %add35 = add i64 %sub.ptr.sub33, %conv34, !dbg !4457
  %cmp36 = icmp sge i64 %add35, 4096, !dbg !4458
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !4459

if.then38:                                        ; preds = %if.end30
  store i32 -36, ptr %retval, align 4, !dbg !4460
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4460

if.end39:                                         ; preds = %if.end30
  %37 = load ptr, ptr %target.addr, align 8, !dbg !4461
  store ptr %37, ptr %kn, align 8, !dbg !4462
  br label %while.cond40, !dbg !4463

while.cond40:                                     ; preds = %if.end57, %if.end39
  %38 = load ptr, ptr %kn, align 8, !dbg !4464
  %parent41 = getelementptr inbounds %struct.kernfs_node, ptr %38, i32 0, i32 2, !dbg !4465
  %39 = load ptr, ptr %parent41, align 8, !dbg !4465
  %tobool42 = icmp ne ptr %39, null, !dbg !4464
  br i1 %tobool42, label %land.rhs43, label %land.end46, !dbg !4466

land.rhs43:                                       ; preds = %while.cond40
  %40 = load ptr, ptr %kn, align 8, !dbg !4467
  %41 = load ptr, ptr %base, align 8, !dbg !4468
  %cmp44 = icmp ne ptr %40, %41, !dbg !4469
  br label %land.end46

land.end46:                                       ; preds = %land.rhs43, %while.cond40
  %42 = phi i1 [ false, %while.cond40 ], [ %cmp44, %land.rhs43 ], !dbg !4434
  br i1 %42, label %while.body47, label %while.end59, !dbg !4463

while.body47:                                     ; preds = %land.end46
  call void @llvm.lifetime.start.p0(i64 4, ptr %slen) #15, !dbg !4470
  call void @llvm.dbg.declare(metadata ptr %slen, metadata !4367, metadata !DIExpression()), !dbg !4471
  %43 = load ptr, ptr %kn, align 8, !dbg !4472
  %name48 = getelementptr inbounds %struct.kernfs_node, ptr %43, i32 0, i32 3, !dbg !4473
  %44 = load ptr, ptr %name48, align 8, !dbg !4473
  %call49 = call i64 @strlen(ptr noundef %44) #16, !dbg !4474
  %conv50 = trunc i64 %call49 to i32, !dbg !4474
  store i32 %conv50, ptr %slen, align 4, !dbg !4471
  %45 = load i32, ptr %slen, align 4, !dbg !4475
  %46 = load i32, ptr %len, align 4, !dbg !4476
  %sub = sub i32 %46, %45, !dbg !4476
  store i32 %sub, ptr %len, align 4, !dbg !4476
  %47 = load ptr, ptr %s, align 8, !dbg !4477
  %48 = load i32, ptr %len, align 4, !dbg !4478
  %idx.ext = sext i32 %48 to i64, !dbg !4479
  %add.ptr51 = getelementptr i8, ptr %47, i64 %idx.ext, !dbg !4479
  %49 = load ptr, ptr %kn, align 8, !dbg !4480
  %name52 = getelementptr inbounds %struct.kernfs_node, ptr %49, i32 0, i32 3, !dbg !4481
  %50 = load ptr, ptr %name52, align 8, !dbg !4481
  %51 = load i32, ptr %slen, align 4, !dbg !4482
  %conv53 = sext i32 %51 to i64, !dbg !4482
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr51, ptr align 1 %50, i64 %conv53, i1 false), !dbg !4483
  %52 = load i32, ptr %len, align 4, !dbg !4484
  %tobool54 = icmp ne i32 %52, 0, !dbg !4484
  br i1 %tobool54, label %if.then55, label %if.end57, !dbg !4486

if.then55:                                        ; preds = %while.body47
  %53 = load ptr, ptr %s, align 8, !dbg !4487
  %54 = load i32, ptr %len, align 4, !dbg !4488
  %dec56 = add i32 %54, -1, !dbg !4488
  store i32 %dec56, ptr %len, align 4, !dbg !4488
  %idxprom = sext i32 %dec56 to i64, !dbg !4487
  %arrayidx = getelementptr i8, ptr %53, i64 %idxprom, !dbg !4487
  store i8 47, ptr %arrayidx, align 1, !dbg !4489
  br label %if.end57, !dbg !4487

if.end57:                                         ; preds = %if.then55, %while.body47
  %55 = load ptr, ptr %kn, align 8, !dbg !4490
  %parent58 = getelementptr inbounds %struct.kernfs_node, ptr %55, i32 0, i32 2, !dbg !4491
  %56 = load ptr, ptr %parent58, align 8, !dbg !4491
  store ptr %56, ptr %kn, align 8, !dbg !4492
  call void @llvm.lifetime.end.p0(i64 4, ptr %slen) #15, !dbg !4493
  br label %while.cond40, !dbg !4463, !llvm.loop !4494

while.end59:                                      ; preds = %land.end46
  store i32 0, ptr %retval, align 4, !dbg !4495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4495

cleanup:                                          ; preds = %while.end59, %if.then38, %if.then29, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !4496
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #15, !dbg !4496
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #15, !dbg !4496
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #15, !dbg !4496
  %57 = load i32, ptr %retval, align 4, !dbg !4496
  ret i32 %57, !dbg !4496
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4497 dso_local void @up_read(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4498 dso_local ptr @strcpy(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4502 dso_local i64 @strlen(ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729}
!llvm.ident = !{!3730}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "kernfs_symlink_iops", scope: !2, file: !3, line: 147, type: !240, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/kernfs/.symlink.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/kernfs/symlink\22 -D KBUILD_BASENAME=\22symlink\22 -D KBUILD_MODNAME=\22symlink\22 -D __KBUILD_MODNAME=kmod_symlink -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/kernfs/symlink.ll fs/kernfs/symlink.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !227, globals: !229, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/kernfs/symlink.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af55fffb6dd87eb2b992b641a0384668")
!4 = !{!5, !14, !110, !119, !124, !133, !138, !144, !149, !155, !162, !170, !186, !193, !199, !212, !217}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !16, file: !15, line: 147, baseType: !7, size: 32, elements: !107)
!15 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !15, line: 135, size: 512, elements: !17)
!17 = !{!18, !22, !24, !26, !30, !31, !47, !105, !106}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !16, file: !15, line: 136, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !16, file: !15, line: 137, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !16, file: !15, line: 138, baseType: !25, size: 32, offset: 128)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !16, file: !15, line: 139, baseType: !27, size: 16, offset: 160)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !28, line: 24, baseType: !29)
!28 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !16, file: !15, line: 150, baseType: !14, size: 32, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !16, file: !15, line: 151, baseType: !32, size: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !15, line: 64, baseType: !34)
!34 = !DISubroutineType(types: !35)
!35 = !{!25, !36, !25, !23, !37, !43}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 61, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !40, line: 72, baseType: !41)
!40 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !40, line: 16, baseType: !42)
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !28, line: 52, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !40, line: 88, baseType: !46)
!46 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !16, file: !15, line: 152, baseType: !48, size: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !15, line: 117, size: 256, elements: !50)
!50 = !{!51, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !49, file: !15, line: 118, baseType: !52, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !28, line: 174, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 172, size: 32, elements: !54)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !53, file: !28, line: 173, baseType: !25, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !49, file: !15, line: 119, baseType: !57, size: 192, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !58, line: 41, baseType: !59)
!58 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !58, line: 37, size: 192, elements: !60)
!60 = !{!61, !99}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !59, file: !58, line: 38, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !63, line: 29, baseType: !64)
!63 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !63, line: 17, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, scope: !64, file: !63, line: 18, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !63, line: 18, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !67, file: !63, line: 19, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !71, line: 14, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !70, file: !71, line: 15, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !75, line: 44, baseType: !76)
!75 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !75, line: 14, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !75, line: 15, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !76, file: !75, line: 15, size: 32, elements: !80)
!80 = !{!81, !82, !92}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !79, file: !75, line: 16, baseType: !52, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !75, line: 24, baseType: !83, size: 16)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !75, line: 24, size: 16, elements: !84)
!84 = !{!85, !91}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !83, file: !75, line: 25, baseType: !86, size: 8)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !87, line: 17, baseType: !88)
!87 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !89, line: 21, baseType: !90)
!89 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!90 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !83, file: !75, line: 26, baseType: !86, size: 8, offset: 8)
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !75, line: 28, baseType: !93, size: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !75, line: 28, size: 32, elements: !94)
!94 = !{!95, !98}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !93, file: !75, line: 29, baseType: !96, size: 16)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !87, line: 19, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !89, line: 24, baseType: !29)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !93, file: !75, line: 30, baseType: !96, size: 16, offset: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !59, file: !58, line: 39, baseType: !100, size: 128, offset: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !28, line: 190, size: 128, elements: !101)
!101 = !{!102, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !28, line: 191, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !100, file: !28, line: 191, baseType: !103, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !16, file: !15, line: 153, baseType: !23, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !16, file: !15, line: 154, baseType: !23, size: 64, offset: 448)
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!109 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_value_type", file: !111, line: 51, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/fs_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58f4e15024eca636c2bdb50c4534d2c5")
!112 = !{!113, !114, !115, !116, !117, !118}
!113 = !DIEnumerator(name: "fs_value_is_undefined", value: 0)
!114 = !DIEnumerator(name: "fs_value_is_flag", value: 1)
!115 = !DIEnumerator(name: "fs_value_is_string", value: 2)
!116 = !DIEnumerator(name: "fs_value_is_blob", value: 3)
!117 = !DIEnumerator(name: "fs_value_is_filename", value: 4)
!118 = !DIEnumerator(name: "fs_value_is_file", value: 5)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_purpose", file: !111, line: 29, baseType: !7, size: 32, elements: !120)
!120 = !{!121, !122, !123}
!121 = !DIEnumerator(name: "FS_CONTEXT_FOR_MOUNT", value: 0)
!122 = !DIEnumerator(name: "FS_CONTEXT_FOR_SUBMOUNT", value: 1)
!123 = !DIEnumerator(name: "FS_CONTEXT_FOR_RECONFIGURE", value: 2)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_context_phase", file: !111, line: 38, baseType: !7, size: 32, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132}
!126 = !DIEnumerator(name: "FS_CONTEXT_CREATE_PARAMS", value: 0)
!127 = !DIEnumerator(name: "FS_CONTEXT_CREATING", value: 1)
!128 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_MOUNT", value: 2)
!129 = !DIEnumerator(name: "FS_CONTEXT_AWAITING_RECONF", value: 3)
!130 = !DIEnumerator(name: "FS_CONTEXT_RECONF_PARAMS", value: 4)
!131 = !DIEnumerator(name: "FS_CONTEXT_RECONFIGURING", value: 5)
!132 = !DIEnumerator(name: "FS_CONTEXT_FAILED", value: 6)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !134, line: 2052, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!135 = !{!136, !137}
!136 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!137 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !139, line: 54, baseType: !7, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!140 = !{!141, !142, !143}
!141 = !DIEnumerator(name: "USRQUOTA", value: 0)
!142 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!143 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !145, line: 65, baseType: !7, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!146 = !{!147, !148}
!147 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!148 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !150, line: 16, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!151 = !{!152, !153, !154}
!152 = !DIEnumerator(name: "TT_NONE", value: 0)
!153 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!154 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !156, line: 15, baseType: !7, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!157 = !{!158, !159, !160, !161}
!158 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!159 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!160 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!161 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !163, line: 68, baseType: !7, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!164 = !{!165, !166, !167, !168, !169}
!165 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!166 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!167 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!168 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!169 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !171, line: 1325, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185}
!173 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!174 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!175 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!176 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!177 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!178 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!179 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!180 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!181 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!182 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!183 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!184 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!185 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !187, line: 51, baseType: !7, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!188 = !{!189, !190, !191, !192}
!189 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!190 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!191 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!192 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernfs_node_type", file: !194, line: 94, baseType: !7, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!195 = !{!196, !197, !198}
!196 = !DIEnumerator(name: "KERNFS_DIR", value: 1)
!197 = !DIEnumerator(name: "KERNFS_FILE", value: 2)
!198 = !DIEnumerator(name: "KERNFS_LINK", value: 4)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernfs_node_flag", file: !194, line: 105, baseType: !7, size: 32, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211}
!201 = !DIEnumerator(name: "KERNFS_ACTIVATED", value: 16)
!202 = !DIEnumerator(name: "KERNFS_NS", value: 32)
!203 = !DIEnumerator(name: "KERNFS_HAS_SEQ_SHOW", value: 64)
!204 = !DIEnumerator(name: "KERNFS_HAS_MMAP", value: 128)
!205 = !DIEnumerator(name: "KERNFS_LOCKDEP", value: 256)
!206 = !DIEnumerator(name: "KERNFS_HIDDEN", value: 512)
!207 = !DIEnumerator(name: "KERNFS_SUICIDAL", value: 1024)
!208 = !DIEnumerator(name: "KERNFS_SUICIDED", value: 2048)
!209 = !DIEnumerator(name: "KERNFS_EMPTY_DIR", value: 4096)
!210 = !DIEnumerator(name: "KERNFS_HAS_RELEASE", value: 8192)
!211 = !DIEnumerator(name: "KERNFS_REMOVING", value: 16384)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !213, line: 10, baseType: !7, size: 32, elements: !214)
!213 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!214 = !{!215, !216}
!215 = !DIEnumerator(name: "false", value: 0)
!216 = !DIEnumerator(name: "true", value: 1)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !218, line: 364, baseType: !7, size: 32, elements: !219)
!218 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!219 = !{!220, !221, !222, !223, !224, !225, !226}
!220 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!221 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!222 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!223 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!224 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!225 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!226 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!227 = !{!23, !228, !42}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !28, line: 154, baseType: !7)
!229 = !{!0, !230, !235}
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !218, line: 480, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 168, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 21)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 4)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !134, line: 1966, size: 2048, align: 512, elements: !242)
!242 = !{!243, !3557, !3570, !3574, !3578, !3582, !3586, !3590, !3594, !3598, !3602, !3603, !3607, !3611, !3644, !3673, !3677, !3683, !3687, !3691, !3695, !3699, !3703, !3709, !3713}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !241, file: !134, line: 1967, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !292, !247, !7}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !249, line: 82, size: 1536, elements: !250)
!249 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!250 = !{!251, !252, !262, !270, !271, !291, !3524, !3526, !3539, !3540, !3541, !3542, !3543, !3549, !3550, !3551}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !248, file: !249, line: 84, baseType: !7, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !248, file: !249, line: 85, baseType: !253, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !254, line: 275, baseType: !255)
!254 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !254, line: 275, size: 32, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !255, file: !254, line: 275, baseType: !258, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !254, line: 69, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !254, line: 64, size: 32, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !259, file: !254, line: 65, baseType: !7, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !248, file: !249, line: 86, baseType: !263, size: 128, offset: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !264, line: 38, size: 128, elements: !265)
!264 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!265 = !{!266, !268}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !264, line: 39, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !263, file: !264, line: 39, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !248, file: !249, line: 87, baseType: !247, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !248, file: !249, line: 88, baseType: !272, size: 128, offset: 256)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !249, line: 49, size: 128, elements: !273)
!273 = !{!274, !288}
!274 = !DIDerivedType(tag: DW_TAG_member, scope: !272, file: !249, line: 50, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !272, file: !249, line: 50, size: 64, elements: !276)
!276 = !{!277, !284}
!277 = !DIDerivedType(tag: DW_TAG_member, scope: !275, file: !249, line: 51, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !275, file: !249, line: 51, size: 64, elements: !279)
!279 = !{!280, !283}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !278, file: !249, line: 52, baseType: !281, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !87, line: 21, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !89, line: 27, baseType: !7)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !278, file: !249, line: 52, baseType: !281, size: 32, offset: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !275, file: !249, line: 54, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !87, line: 23, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !89, line: 31, baseType: !287)
!287 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !249, line: 56, baseType: !289, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !248, file: !249, line: 89, baseType: !292, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !134, line: 641, size: 4800, elements: !294)
!294 = !{!295, !296, !297, !305, !306, !313, !314, !317, !318, !320, !3459, !3460, !3461, !3462, !3468, !3469, !3470, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3506, !3509, !3510, !3511, !3520, !3521, !3522, !3523}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !293, file: !134, line: 642, baseType: !27, size: 16)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !293, file: !134, line: 643, baseType: !29, size: 16, offset: 16)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !293, file: !134, line: 644, baseType: !298, size: 32, offset: 32)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !299, line: 23, baseType: !300)
!299 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !299, line: 21, size: 32, elements: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !300, file: !299, line: 22, baseType: !303, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !28, line: 37, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !40, line: 49, baseType: !7)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !293, file: !134, line: 645, baseType: !100, size: 128, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !293, file: !134, line: 646, baseType: !307, size: 32, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !299, line: 28, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !299, line: 26, size: 32, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !308, file: !299, line: 27, baseType: !311, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !28, line: 38, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !40, line: 50, baseType: !7)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !293, file: !134, line: 647, baseType: !7, size: 32, offset: 224)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !293, file: !134, line: 650, baseType: !315, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !134, line: 607, flags: DIFlagFwdDecl)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !293, file: !134, line: 651, baseType: !315, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !293, file: !134, line: 654, baseType: !319, size: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !293, file: !134, line: 655, baseType: !321, size: 64, offset: 448)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !134, line: 1190, size: 10752, elements: !323)
!323 = !{!324, !325, !328, !329, !330, !331, !1740, !1873, !1913, !1998, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2034, !2038, !2039, !2042, !2045, !2048, !2051, !2052, !2053, !2094, !3332, !3333, !3334, !3335, !3336, !3337, !3340, !3342, !3349, !3350, !3351, !3352, !3411, !3426, !3427, !3428, !3429, !3430, !3433, !3434, !3435, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !322, file: !134, line: 1191, baseType: !100, size: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !322, file: !134, line: 1192, baseType: !326, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !28, line: 21, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !28, line: 18, baseType: !281)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !322, file: !134, line: 1193, baseType: !90, size: 8, offset: 160)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !322, file: !134, line: 1194, baseType: !42, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !322, file: !134, line: 1195, baseType: !44, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !322, file: !134, line: 1196, baseType: !332, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !134, line: 2366, size: 576, elements: !334)
!334 = !{!335, !336, !337, !1714, !1718, !1722, !1726, !1727, !1728, !1729, !1732, !1733, !1734, !1736, !1737, !1738, !1739}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !333, file: !134, line: 2367, baseType: !19, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !333, file: !134, line: 2368, baseType: !25, size: 32, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !333, file: !134, line: 2376, baseType: !338, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!25, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !111, line: 90, size: 1216, elements: !343)
!343 = !{!344, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1684, !1685, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !342, file: !111, line: 91, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context_operations", file: !111, line: 115, size: 384, elements: !348)
!348 = !{!349, !353, !357, !1669, !1673, !1674}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !347, file: !111, line: 116, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !341}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !347, file: !111, line: 117, baseType: !354, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!25, !341, !341}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "parse_param", scope: !347, file: !111, line: 118, baseType: !358, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!25, !341, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter", file: !111, line: 63, size: 320, elements: !363)
!363 = !{!364, !365, !366, !1667, !1668}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !362, file: !111, line: 64, baseType: !19, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !362, file: !111, line: 65, baseType: !110, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !111, line: 66, baseType: !367, size: 64, offset: 128)
!367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !362, file: !111, line: 66, size: 64, elements: !368)
!368 = !{!369, !371, !372, !386}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !367, file: !111, line: 67, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !367, file: !111, line: 68, baseType: !23, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !367, file: !111, line: 69, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filename", file: !134, line: 2470, size: 256, elements: !375)
!375 = !{!376, !377, !378, !379, !382}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !374, file: !134, line: 2471, baseType: !19, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "uptr", scope: !374, file: !134, line: 2472, baseType: !19, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !374, file: !134, line: 2473, baseType: !52, size: 32, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "aname", scope: !374, file: !134, line: 2474, baseType: !380, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_names", file: !134, line: 2469, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !374, file: !134, line: 2475, baseType: !383, offset: 256)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: -1)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !367, file: !111, line: 70, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !134, line: 994, size: 1856, align: 64, elements: !389)
!389 = !{!390, !409, !410, !412, !421, !434, !435, !436, !500, !860, !869, !885, !886, !1659, !1660, !1661, !1662, !1664, !1665, !1666}
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !134, line: 995, baseType: !391, size: 128)
!391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !134, line: 995, size: 128, elements: !392)
!392 = !{!393, !399, !408}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !391, file: !134, line: 996, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !395, line: 60, size: 64, elements: !396)
!395 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !395, line: 61, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !391, file: !134, line: 997, baseType: !400, size: 128, align: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !28, line: 232, size: 128, align: 64, elements: !401)
!401 = !{!402, !404}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !28, line: 233, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !400, file: !28, line: 234, baseType: !405, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !403}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !391, file: !134, line: 998, baseType: !7, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !388, file: !134, line: 1005, baseType: !62, size: 32, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !388, file: !134, line: 1006, baseType: !411, size: 32, offset: 160)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !28, line: 156, baseType: !7)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !388, file: !134, line: 1007, baseType: !413, size: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !414, line: 13, baseType: !415)
!414 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !28, line: 181, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 179, size: 64, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !416, file: !28, line: 180, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !87, line: 22, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !89, line: 30, baseType: !46)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !388, file: !134, line: 1008, baseType: !422, size: 256, offset: 256)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !423, line: 66, size: 256, elements: !424)
!423 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!424 = !{!425, !426, !428, !433}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !422, file: !423, line: 67, baseType: !413, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !422, file: !423, line: 68, baseType: !427, size: 32, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !71, line: 23, baseType: !70)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !422, file: !423, line: 70, baseType: !429, size: 32, offset: 96)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !430, line: 15, size: 32, elements: !431)
!430 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !429, file: !430, line: 20, baseType: !52, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !422, file: !423, line: 72, baseType: !100, size: 128, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !388, file: !134, line: 1009, baseType: !44, size: 64, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !388, file: !134, line: 1010, baseType: !7, size: 32, offset: 576)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !388, file: !134, line: 1011, baseType: !437, size: 256, offset: 640)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !134, line: 948, size: 256, elements: !438)
!438 = !{!439, !462, !496, !497, !498, !499}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !437, file: !134, line: 949, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !441, line: 34, baseType: !442)
!441 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 25, size: 64, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !442, file: !441, line: 26, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !446, line: 27, baseType: !447)
!446 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !446, line: 13, size: 64, elements: !448)
!448 = !{!449, !461}
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !446, line: 14, baseType: !450, size: 32)
!450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !446, line: 14, size: 32, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !450, file: !446, line: 15, baseType: !52, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, scope: !450, file: !446, line: 16, baseType: !454, size: 32)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !446, line: 16, size: 32, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !454, file: !446, line: 18, baseType: !86, size: 8)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !454, file: !446, line: 19, baseType: !458, size: 24, offset: 8)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 24, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 3)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !447, file: !446, line: 26, baseType: !74, size: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !437, file: !134, line: 950, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !465)
!465 = !{!466, !472, !473, !474, !485, !486, !487, !488}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !464, file: !6, line: 61, baseType: !467, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !468, line: 113, baseType: !469)
!468 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !468, line: 111, size: 32, elements: !470)
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !469, file: !468, line: 112, baseType: !52, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !464, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !464, file: !6, line: 63, baseType: !62, size: 32, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !464, file: !6, line: 65, baseType: !475, size: 256, offset: 128)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 256, elements: !238)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !28, line: 194, size: 64, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !476, file: !28, line: 195, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !28, line: 198, size: 128, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !480, file: !28, line: 199, baseType: !479, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !480, file: !28, line: 199, baseType: !484, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !464, file: !6, line: 66, baseType: !476, size: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !464, file: !6, line: 68, baseType: !57, size: 192, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !464, file: !6, line: 69, baseType: !400, size: 128, align: 64, offset: 640)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !464, file: !6, line: 70, baseType: !489, offset: 768)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, elements: !384)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !490, file: !6, line: 55, baseType: !25, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !490, file: !6, line: 56, baseType: !494, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !437, file: !134, line: 951, baseType: !5, size: 32, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !437, file: !134, line: 952, baseType: !298, size: 32, offset: 160)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !437, file: !134, line: 952, baseType: !298, size: 32, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !437, file: !134, line: 953, baseType: !25, size: 32, offset: 224)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !388, file: !134, line: 1012, baseType: !501, size: 64, offset: 896)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !504, line: 110, size: 1472, elements: !505)
!504 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !522, !523, !524, !525, !526, !527, !657, !658, !659, !660, !661, !692, !846, !847, !855}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !503, file: !504, line: 111, baseType: !413, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !503, file: !504, line: 112, baseType: !298, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !503, file: !504, line: 113, baseType: !307, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !503, file: !504, line: 114, baseType: !298, size: 32, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !503, file: !504, line: 115, baseType: !307, size: 32, offset: 160)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !503, file: !504, line: 116, baseType: !298, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !503, file: !504, line: 117, baseType: !307, size: 32, offset: 224)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !503, file: !504, line: 118, baseType: !298, size: 32, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !503, file: !504, line: 119, baseType: !307, size: 32, offset: 288)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !503, file: !504, line: 120, baseType: !7, size: 32, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !503, file: !504, line: 121, baseType: !517, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !518, line: 24, baseType: !519)
!518 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !518, line: 24, size: 64, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !519, file: !518, line: 24, baseType: !285, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !503, file: !504, line: 122, baseType: !517, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !503, file: !504, line: 123, baseType: !517, size: 64, offset: 512)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !503, file: !504, line: 124, baseType: !517, size: 64, offset: 576)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !503, file: !504, line: 125, baseType: !517, size: 64, offset: 640)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !503, file: !504, line: 127, baseType: !90, size: 8, offset: 704)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !503, file: !504, line: 129, baseType: !528, size: 64, offset: 768)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !530, line: 195, size: 1728, elements: !531)
!530 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!531 = !{!532, !533, !538, !550, !559, !562, !563, !570, !571, !572, !573, !576, !577, !578, !580, !581, !621, !642}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !529, file: !530, line: 196, baseType: !467, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !529, file: !530, line: 197, baseType: !534, size: 32, offset: 32)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !530, line: 28, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !28, line: 104, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !87, line: 20, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !89, line: 26, baseType: !25)
!538 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !530, line: 198, baseType: !539, size: 192, offset: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !529, file: !530, line: 198, size: 192, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !539, file: !530, line: 199, baseType: !100, size: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !539, file: !530, line: 200, baseType: !543, size: 192, align: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !544, line: 5, size: 192, align: 64, elements: !545)
!544 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!545 = !{!546, !547, !549}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !543, file: !544, line: 6, baseType: !42, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !543, file: !544, line: 7, baseType: !548, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !543, file: !544, line: 8, baseType: !548, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !529, file: !530, line: 205, baseType: !551, size: 320, offset: 256)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !552, line: 48, size: 320, elements: !553)
!552 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!553 = !{!554, !555, !556, !557, !558}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !551, file: !552, line: 49, baseType: !413, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !551, file: !552, line: 55, baseType: !413, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !551, file: !552, line: 57, baseType: !429, size: 32, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !551, file: !552, line: 59, baseType: !427, size: 32, offset: 160)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !551, file: !552, line: 60, baseType: !100, size: 128, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !529, file: !530, line: 206, baseType: !560, size: 64, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !530, line: 206, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !529, file: !530, line: 207, baseType: !23, size: 64, offset: 640)
!563 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !530, line: 208, baseType: !564, size: 64, offset: 704)
!564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !529, file: !530, line: 208, size: 64, elements: !565)
!565 = !{!566, !569}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !564, file: !530, line: 209, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !568, line: 8, baseType: !420)
!568 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!569 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !564, file: !530, line: 210, baseType: !567, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !529, file: !530, line: 212, baseType: !567, size: 64, offset: 768)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !529, file: !530, line: 213, baseType: !298, size: 32, offset: 832)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !529, file: !530, line: 214, baseType: !307, size: 32, offset: 864)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !529, file: !530, line: 215, baseType: !574, size: 32, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !530, line: 31, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !28, line: 110, baseType: !281)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !529, file: !530, line: 216, baseType: !29, size: 16, offset: 928)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !529, file: !530, line: 217, baseType: !29, size: 16, offset: 944)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !529, file: !530, line: 221, baseType: !579, size: 16, offset: 960)
!579 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !530, line: 228, baseType: !42, size: 64, offset: 1024)
!581 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !530, line: 245, baseType: !582, size: 320, offset: 1088)
!582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !529, file: !530, line: 245, size: 320, elements: !583)
!583 = !{!584, !613}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !582, file: !530, line: 246, baseType: !585, size: 320)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !530, line: 114, size: 320, elements: !586)
!586 = !{!587, !588, !600, !603, !612}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !585, file: !530, line: 116, baseType: !42, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, scope: !585, file: !530, line: 117, baseType: !589, size: 64, offset: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !585, file: !530, line: 117, size: 64, elements: !590)
!590 = !{!591, !599}
!591 = !DIDerivedType(tag: DW_TAG_member, scope: !589, file: !530, line: 118, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !589, file: !530, line: 118, size: 64, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !592, file: !530, line: 120, baseType: !96, size: 16)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !592, file: !530, line: 121, baseType: !596, size: 48, offset: 16)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 48, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 6)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !589, file: !530, line: 127, baseType: !42, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !585, file: !530, line: 129, baseType: !601, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !530, line: 102, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !585, file: !530, line: 130, baseType: !604, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !530, line: 108, size: 192, elements: !606)
!606 = !{!607, !608, !609}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !605, file: !530, line: 109, baseType: !400, size: 128, align: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !605, file: !530, line: 110, baseType: !467, size: 32, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !605, file: !530, line: 111, baseType: !610, size: 8, offset: 160)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !28, line: 35, baseType: !611)
!611 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !585, file: !530, line: 131, baseType: !19, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, scope: !582, file: !530, line: 247, baseType: !614, size: 320)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !582, file: !530, line: 247, size: 320, elements: !615)
!615 = !{!616, !617, !618, !619, !620}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !614, file: !530, line: 248, baseType: !42, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !614, file: !530, line: 249, baseType: !42, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !614, file: !530, line: 250, baseType: !601, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !614, file: !530, line: 251, baseType: !604, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !614, file: !530, line: 252, baseType: !370, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !530, line: 260, baseType: !622, size: 256, offset: 1408)
!622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !529, file: !530, line: 260, size: 256, elements: !623)
!623 = !{!624, !630}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !622, file: !530, line: 261, baseType: !625, size: 256)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !530, line: 134, size: 256, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !625, file: !530, line: 135, baseType: !23, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !625, file: !530, line: 136, baseType: !629, size: 256)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !238)
!630 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !530, line: 262, baseType: !631, size: 256)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !622, file: !530, line: 262, size: 256, elements: !632)
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !631, file: !530, line: 264, baseType: !100, size: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !631, file: !530, line: 265, baseType: !635, size: 128, offset: 128)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !636, line: 22, size: 128, elements: !637)
!636 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!637 = !{!638, !641}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !635, file: !636, line: 23, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !636, line: 23, flags: DIFlagFwdDecl)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !635, file: !636, line: 24, baseType: !42, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !529, file: !530, line: 280, baseType: !643, size: 64, offset: 1664)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !530, line: 176, size: 192, elements: !645)
!645 = !{!646, !655, !656}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !644, file: !530, line: 177, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !530, line: 171, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!25, !528, !651, !653, !528}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !644, file: !530, line: 178, baseType: !528, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !644, file: !530, line: 179, baseType: !601, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !503, file: !504, line: 130, baseType: !528, size: 64, offset: 832)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !503, file: !504, line: 131, baseType: !528, size: 64, offset: 896)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !503, file: !504, line: 132, baseType: !528, size: 64, offset: 960)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !503, file: !504, line: 135, baseType: !23, size: 64, offset: 1024)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !503, file: !504, line: 137, baseType: !662, size: 64, offset: 1088)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !664, line: 14, size: 1088, elements: !665)
!664 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!665 = !{!666, !667, !676, !677, !678, !679, !680, !681}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !663, file: !664, line: 15, baseType: !467, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !663, file: !664, line: 17, baseType: !668, size: 320, offset: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !669, line: 22, size: 320, elements: !670)
!669 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!670 = !{!671, !672, !673, !674}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !668, file: !669, line: 23, baseType: !427, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !668, file: !669, line: 24, baseType: !419, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !668, file: !669, line: 26, baseType: !100, size: 128, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !668, file: !669, line: 28, baseType: !675, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !663, file: !664, line: 19, baseType: !42, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !663, file: !664, line: 20, baseType: !413, size: 64, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !663, file: !664, line: 23, baseType: !480, size: 128, offset: 512)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !663, file: !664, line: 24, baseType: !298, size: 32, offset: 640)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !663, file: !664, line: 29, baseType: !413, size: 64, offset: 704)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !663, file: !664, line: 36, baseType: !682, size: 320, offset: 768)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !683, line: 15, size: 320, elements: !684)
!683 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!684 = !{!685, !686, !687, !688, !689, !690, !691}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !682, file: !683, line: 16, baseType: !427, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !682, file: !683, line: 18, baseType: !25, size: 32, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !682, file: !683, line: 19, baseType: !25, size: 32, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !682, file: !683, line: 20, baseType: !25, size: 32, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !682, file: !683, line: 21, baseType: !25, size: 32, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !682, file: !683, line: 22, baseType: !42, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !683, line: 23, baseType: !42, size: 64, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !503, file: !504, line: 138, baseType: !693, size: 64, offset: 1152)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !695, line: 68, size: 4800, elements: !696)
!695 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!696 = !{!697, !719, !720, !721, !722, !723, !724, !725, !736, !737, !738, !739, !740, !741, !753, !826, !827, !841, !844}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !694, file: !695, line: 69, baseType: !698, size: 576)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !695, line: 23, size: 576, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !698, file: !695, line: 24, baseType: !281, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, scope: !698, file: !695, line: 25, baseType: !702, size: 512, offset: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !698, file: !695, line: 25, size: 512, elements: !703)
!703 = !{!704, !713}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !702, file: !695, line: 26, baseType: !705, size: 480)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 480, elements: !711)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !695, line: 17, size: 96, elements: !707)
!707 = !{!708, !709, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !706, file: !695, line: 18, baseType: !281, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !706, file: !695, line: 19, baseType: !281, size: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !706, file: !695, line: 20, baseType: !281, size: 32, offset: 64)
!711 = !{!712}
!712 = !DISubrange(count: 5)
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !695, line: 27, baseType: !714, size: 128)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !695, line: 27, size: 128, elements: !715)
!715 = !{!716, !718}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !714, file: !695, line: 28, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !714, file: !695, line: 29, baseType: !717, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !694, file: !695, line: 70, baseType: !698, size: 576, offset: 576)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !694, file: !695, line: 71, baseType: !698, size: 576, offset: 1152)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !694, file: !695, line: 72, baseType: !693, size: 64, offset: 1728)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !694, file: !695, line: 73, baseType: !25, size: 32, offset: 1792)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !694, file: !695, line: 74, baseType: !298, size: 32, offset: 1824)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !694, file: !695, line: 75, baseType: !307, size: 32, offset: 1856)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !694, file: !695, line: 76, baseType: !726, size: 192, offset: 1920)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !727, line: 9, size: 192, elements: !728)
!727 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!728 = !{!729, !730, !734, !735}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !726, file: !727, line: 10, baseType: !413, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !726, file: !727, line: 11, baseType: !731, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !733)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !727, line: 7, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !726, file: !727, line: 12, baseType: !7, size: 32, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !726, file: !727, line: 13, baseType: !467, size: 32, offset: 160)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !695, line: 77, baseType: !42, size: 64, offset: 2112)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !694, file: !695, line: 80, baseType: !610, size: 8, offset: 2176)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !694, file: !695, line: 88, baseType: !100, size: 128, offset: 2240)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !694, file: !695, line: 89, baseType: !528, size: 64, offset: 2368)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !694, file: !695, line: 90, baseType: !551, size: 320, offset: 2432)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !694, file: !695, line: 97, baseType: !742, size: 256, offset: 2752)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !743, line: 98, size: 256, elements: !744)
!743 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!744 = !{!745, !746, !747}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !742, file: !743, line: 99, baseType: !413, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !742, file: !743, line: 100, baseType: !100, size: 128, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !742, file: !743, line: 101, baseType: !748, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !743, line: 21, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !694, file: !695, line: 99, baseType: !754, size: 768, offset: 3008)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !15, line: 199, size: 768, elements: !755)
!755 = !{!756, !761}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !754, file: !15, line: 200, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!25, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !754, file: !15, line: 201, baseType: !762, size: 704, offset: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !15, line: 193, size: 704, elements: !763)
!763 = !{!764, !822}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !762, file: !15, line: 195, baseType: !765, size: 640)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !15, line: 173, size: 640, elements: !766)
!766 = !{!767, !779, !791, !792, !812, !813, !815, !821}
!767 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !15, line: 174, baseType: !768, size: 192)
!768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !765, file: !15, line: 174, size: 192, elements: !769)
!769 = !{!770, !778}
!770 = !DIDerivedType(tag: DW_TAG_member, scope: !768, file: !15, line: 175, baseType: !771, size: 192)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !768, file: !15, line: 175, size: 192, elements: !772)
!772 = !{!773, !774, !775, !776, !777}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !771, file: !15, line: 176, baseType: !36, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !771, file: !15, line: 177, baseType: !25, size: 32, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !771, file: !15, line: 178, baseType: !25, size: 32, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !771, file: !15, line: 179, baseType: !25, size: 32, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !771, file: !15, line: 180, baseType: !25, size: 32, offset: 160)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !768, file: !15, line: 182, baseType: !400, size: 128, align: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !765, file: !15, line: 184, baseType: !780, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !782, line: 26, size: 256, elements: !783)
!782 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !781, file: !782, line: 27, baseType: !7, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !781, file: !782, line: 28, baseType: !786, size: 192, offset: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !787, line: 43, size: 192, elements: !788)
!787 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !786, file: !787, line: 44, baseType: !427, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !786, file: !787, line: 45, baseType: !100, size: 128, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !765, file: !15, line: 185, baseType: !36, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !765, file: !15, line: 186, baseType: !793, size: 64, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !15, line: 204, size: 960, elements: !795)
!795 = !{!796, !797, !801, !808}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !794, file: !15, line: 205, baseType: !754, size: 768)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !794, file: !15, line: 206, baseType: !798, size: 64, offset: 768)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!760, !793}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !794, file: !15, line: 207, baseType: !802, size: 64, offset: 832)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !805, !806, !807}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !794, file: !15, line: 209, baseType: !809, size: 64, offset: 896)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!25, !805, !36}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !765, file: !15, line: 187, baseType: !760, size: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !765, file: !15, line: 188, baseType: !814, size: 64, offset: 448)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !765, file: !15, line: 189, baseType: !816, size: 64, offset: 512)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !15, line: 157, size: 256, elements: !818)
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !817, file: !15, line: 158, baseType: !543, size: 192, align: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !817, file: !15, line: 159, baseType: !805, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !765, file: !15, line: 190, baseType: !476, size: 64, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !762, file: !15, line: 196, baseType: !823, size: 64, offset: 640)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !544, line: 12, size: 64, elements: !824)
!824 = !{!825}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !823, file: !544, line: 13, baseType: !548, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !694, file: !695, line: 100, baseType: !805, size: 64, offset: 3776)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !694, file: !695, line: 102, baseType: !828, size: 64, offset: 3840)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !695, line: 107, size: 1152, elements: !830)
!830 = !{!831, !832, !833, !834, !835, !839}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !829, file: !695, line: 108, baseType: !480, size: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !829, file: !695, line: 109, baseType: !693, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !829, file: !695, line: 110, baseType: !298, size: 32, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !829, file: !695, line: 111, baseType: !52, size: 32, offset: 224)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !829, file: !695, line: 112, baseType: !836, size: 640, offset: 256)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 640, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 10)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !829, file: !695, line: 113, baseType: !840, size: 256, offset: 896)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 256, elements: !238)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !694, file: !695, line: 103, baseType: !842, size: 640, offset: 3904)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !843, size: 640, elements: !837)
!843 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !694, file: !695, line: 104, baseType: !845, size: 256, offset: 4544)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !843, size: 256, elements: !238)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !503, file: !504, line: 139, baseType: !828, size: 64, offset: 1216)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !503, file: !504, line: 140, baseType: !848, size: 64, offset: 1280)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !504, line: 25, size: 64, elements: !850)
!850 = !{!851, !852, !853}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !849, file: !504, line: 26, baseType: !52, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !849, file: !504, line: 27, baseType: !25, size: 32, offset: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !849, file: !504, line: 28, baseType: !854, offset: 64)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, elements: !384)
!855 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !504, line: 142, baseType: !856, size: 128, offset: 1344)
!856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !503, file: !504, line: 142, size: 128, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !856, file: !504, line: 143, baseType: !25, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !856, file: !504, line: 144, baseType: !400, size: 128, align: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !388, file: !134, line: 1013, baseType: !861, size: 256, offset: 960)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !134, line: 970, size: 256, elements: !862)
!862 = !{!863, !864, !865, !866, !867, !868}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !861, file: !134, line: 971, baseType: !42, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !861, file: !134, line: 972, baseType: !7, size: 32, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !861, file: !134, line: 973, baseType: !7, size: 32, offset: 96)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !861, file: !134, line: 974, baseType: !7, size: 32, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !861, file: !134, line: 975, baseType: !7, size: 32, offset: 160)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !861, file: !134, line: 976, baseType: !44, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !388, file: !134, line: 1014, baseType: !870, size: 128, offset: 1216)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !871, line: 8, size: 128, elements: !872)
!871 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!872 = !{!873, !884}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !870, file: !871, line: 9, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !876, line: 70, size: 256, elements: !877)
!876 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!877 = !{!878, !879, !880, !881}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !875, file: !876, line: 71, baseType: !247, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !875, file: !876, line: 72, baseType: !321, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !875, file: !876, line: 73, baseType: !25, size: 32, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !875, file: !876, line: 74, baseType: !882, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !518, line: 42, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !870, file: !871, line: 10, baseType: !247, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !388, file: !134, line: 1015, baseType: !292, size: 64, offset: 1344)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !388, file: !134, line: 1016, baseType: !887, size: 64, offset: 1408)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !134, line: 1914, size: 2112, elements: !890)
!890 = !{!891, !895, !899, !906, !910, !938, !939, !945, !958, !966, !970, !971, !1582, !1583, !1587, !1592, !1593, !1597, !1601, !1607, !1608, !1612, !1613, !1620, !1624, !1625, !1630, !1634, !1640, !1644, !1648, !1649, !1655}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !889, file: !134, line: 1915, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !894, line: 103, flags: DIFlagFwdDecl)
!894 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!895 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !889, file: !134, line: 1916, baseType: !896, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!44, !387, !44, !25}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !889, file: !134, line: 1917, baseType: !900, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!903, !387, !370, !38, !43}
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !28, line: 66, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !40, line: 73, baseType: !905)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !40, line: 15, baseType: !843)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !889, file: !134, line: 1918, baseType: !907, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!903, !387, !19, !38, !43}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !889, file: !134, line: 1919, baseType: !911, size: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!903, !914, !936}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !134, line: 373, size: 384, elements: !916)
!916 = !{!917, !918, !919, !923, !924, !925, !926}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !915, file: !134, line: 374, baseType: !387, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !915, file: !134, line: 375, baseType: !44, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !915, file: !134, line: 376, baseType: !920, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !914, !843}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !915, file: !134, line: 377, baseType: !23, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !915, file: !134, line: 378, baseType: !25, size: 32, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !915, file: !134, line: 379, baseType: !96, size: 16, offset: 288)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !134, line: 380, baseType: !927, size: 64, offset: 320)
!927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !915, file: !134, line: 380, size: 64, elements: !928)
!928 = !{!929, !932}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !927, file: !134, line: 386, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !134, line: 386, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !927, file: !134, line: 395, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!903, !23}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !134, line: 69, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !889, file: !134, line: 1920, baseType: !911, size: 64, offset: 320)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !889, file: !134, line: 1921, baseType: !940, size: 64, offset: 384)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!25, !914, !943, !7}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !134, line: 53, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !889, file: !134, line: 1923, baseType: !946, size: 64, offset: 448)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!25, !387, !949}
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !134, line: 1858, size: 128, elements: !951)
!951 = !{!952, !957}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !950, file: !134, line: 1859, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !134, line: 1855, baseType: !954)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!610, !949, !19, !25, !44, !285, !7}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !950, file: !134, line: 1860, baseType: !44, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !889, file: !134, line: 1924, baseType: !959, size: 64, offset: 512)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!962, !387, !964}
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !963, line: 59, baseType: !7)
!963 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !134, line: 61, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !889, file: !134, line: 1925, baseType: !967, size: 64, offset: 576)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!843, !387, !7, !42}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !889, file: !134, line: 1926, baseType: !967, size: 64, offset: 640)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !889, file: !134, line: 1927, baseType: !972, size: 64, offset: 704)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!25, !387, !975}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !171, line: 625, size: 1344, elements: !977)
!977 = !{!978, !987, !1122, !1128, !1135, !1136, !1141, !1142, !1147, !1148, !1151, !1575, !1576, !1577, !1578, !1579, !1580}
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !171, line: 628, baseType: !979, size: 128)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !976, file: !171, line: 628, size: 128, elements: !980)
!980 = !{!981, !986}
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !171, line: 629, baseType: !982, size: 128)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !979, file: !171, line: 629, size: 128, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !982, file: !171, line: 631, baseType: !42, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !982, file: !171, line: 632, baseType: !42, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !979, file: !171, line: 635, baseType: !400, size: 128, align: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !976, file: !171, line: 639, baseType: !988, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !171, line: 733, size: 10240, elements: !990)
!990 = !{!991, !1120}
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !171, line: 734, baseType: !992, size: 10240)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !989, file: !171, line: 734, size: 10240, elements: !993)
!993 = !{!994, !998, !1012, !1016, !1017, !1018, !1019, !1020, !1021, !1030, !1031, !1032, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1071, !1073, !1076, !1100, !1101, !1102, !1105, !1106, !1107, !1110, !1111, !1112, !1118, !1119}
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !171, line: 739, baseType: !995, size: 512, align: 512)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !171, line: 739, size: 512, align: 512, elements: !996)
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !995, file: !171, line: 747, baseType: !52, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !992, file: !171, line: 750, baseType: !999, size: 128, offset: 512)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1000, line: 218, size: 128, elements: !1001)
!1000 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1001 = !{!1002, !1010, !1011}
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !999, file: !1000, line: 219, baseType: !1003, size: 32)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !999, file: !1000, line: 219, size: 32, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1003, file: !1000, line: 220, baseType: !62, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1003, file: !1000, line: 221, baseType: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1000, line: 197, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1000, line: 197, elements: !1009)
!1009 = !{}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !999, file: !1000, line: 223, baseType: !7, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !999, file: !1000, line: 224, baseType: !23, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !992, file: !171, line: 752, baseType: !1013, size: 64, offset: 640)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!42, !387, !42, !42, !42, !42}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !992, file: !171, line: 756, baseType: !42, size: 64, offset: 704)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !992, file: !171, line: 757, baseType: !42, size: 64, offset: 768)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !992, file: !171, line: 760, baseType: !42, size: 64, offset: 832)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !992, file: !171, line: 761, baseType: !42, size: 64, offset: 896)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !992, file: !171, line: 763, baseType: !42, size: 64, offset: 960)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !992, file: !171, line: 764, baseType: !1022, size: 64, offset: 1024)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1024, line: 299, baseType: !1025)
!1024 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1024, line: 299, size: 64, elements: !1026)
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1025, file: !1024, line: 299, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1029, line: 18, baseType: !42)
!1029 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !992, file: !171, line: 773, baseType: !52, size: 32, offset: 1088)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !992, file: !171, line: 785, baseType: !52, size: 32, offset: 1120)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !992, file: !171, line: 795, baseType: !1033, size: 64, offset: 1152)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !171, line: 726, size: 128, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1034, file: !171, line: 727, baseType: !285, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1034, file: !171, line: 728, baseType: !25, size: 32, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !992, file: !171, line: 801, baseType: !42, size: 64, offset: 1216)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !992, file: !171, line: 804, baseType: !413, size: 64, offset: 1280)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !992, file: !171, line: 806, baseType: !25, size: 32, offset: 1344)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !992, file: !171, line: 808, baseType: !62, size: 32, offset: 1376)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !992, file: !171, line: 823, baseType: !551, size: 320, offset: 1408)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !992, file: !171, line: 825, baseType: !100, size: 128, offset: 1728)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !992, file: !171, line: 845, baseType: !25, size: 32, offset: 1856)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !992, file: !171, line: 849, baseType: !42, size: 64, offset: 1920)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !992, file: !171, line: 850, baseType: !42, size: 64, offset: 1984)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !992, file: !171, line: 852, baseType: !42, size: 64, offset: 2048)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !992, file: !171, line: 853, baseType: !42, size: 64, offset: 2112)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !992, file: !171, line: 854, baseType: !415, size: 64, offset: 2176)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !992, file: !171, line: 855, baseType: !42, size: 64, offset: 2240)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !992, file: !171, line: 856, baseType: !42, size: 64, offset: 2304)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !992, file: !171, line: 857, baseType: !42, size: 64, offset: 2368)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !992, file: !171, line: 858, baseType: !42, size: 64, offset: 2432)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !992, file: !171, line: 865, baseType: !258, size: 32, offset: 2496)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !992, file: !171, line: 867, baseType: !62, size: 32, offset: 2528)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !992, file: !171, line: 869, baseType: !42, size: 64, offset: 2560)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !992, file: !171, line: 869, baseType: !42, size: 64, offset: 2624)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !992, file: !171, line: 869, baseType: !42, size: 64, offset: 2688)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !992, file: !171, line: 869, baseType: !42, size: 64, offset: 2752)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !992, file: !171, line: 870, baseType: !42, size: 64, offset: 2816)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !992, file: !171, line: 870, baseType: !42, size: 64, offset: 2880)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !992, file: !171, line: 870, baseType: !42, size: 64, offset: 2944)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !992, file: !171, line: 871, baseType: !42, size: 64, offset: 3008)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !992, file: !171, line: 871, baseType: !42, size: 64, offset: 3072)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !992, file: !171, line: 871, baseType: !42, size: 64, offset: 3136)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !992, file: !171, line: 871, baseType: !42, size: 64, offset: 3200)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !992, file: !171, line: 873, baseType: !1068, size: 3328, offset: 3264)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 3328, elements: !1069)
!1069 = !{!1070}
!1070 = !DISubrange(count: 52)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !992, file: !171, line: 875, baseType: !1072, size: 1280, offset: 6592)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 1280, elements: !238)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !992, file: !171, line: 877, baseType: !1074, size: 64, offset: 7872)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !171, line: 877, flags: DIFlagFwdDecl)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !992, file: !171, line: 880, baseType: !1077, size: 1088, offset: 7936)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1078, line: 72, baseType: !1079)
!1078 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1078, line: 23, size: 1088, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1088, !1089, !1090, !1091, !1095, !1096, !1097}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1079, file: !1078, line: 28, baseType: !285, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1079, file: !1078, line: 38, baseType: !415, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1079, file: !1078, line: 40, baseType: !42, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1079, file: !1078, line: 43, baseType: !551, size: 320, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1079, file: !1078, line: 44, baseType: !1086, size: 64, offset: 512)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1078, line: 44, flags: DIFlagFwdDecl)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1079, file: !1078, line: 48, baseType: !42, size: 64, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1079, file: !1078, line: 59, baseType: !422, size: 256, offset: 640)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1079, file: !1078, line: 60, baseType: !23, size: 64, offset: 896)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1079, file: !1078, line: 61, baseType: !1092, size: 64, offset: 960)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1094)
!1094 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1078, line: 61, flags: DIFlagFwdDecl)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1079, file: !1078, line: 63, baseType: !52, size: 32, offset: 1024)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1079, file: !1078, line: 69, baseType: !96, size: 16, offset: 1056)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1079, file: !1078, line: 70, baseType: !1098, size: 16, offset: 1072)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !87, line: 18, baseType: !1099)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !89, line: 23, baseType: !579)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !992, file: !171, line: 882, baseType: !42, size: 64, offset: 9024)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !992, file: !171, line: 885, baseType: !62, size: 32, offset: 9088)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !992, file: !171, line: 886, baseType: !1103, size: 64, offset: 9152)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !171, line: 732, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !992, file: !171, line: 901, baseType: !693, size: 64, offset: 9216)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !992, file: !171, line: 904, baseType: !387, size: 64, offset: 9280)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !992, file: !171, line: 906, baseType: !1108, size: 64, offset: 9344)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !171, line: 906, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !992, file: !171, line: 930, baseType: !52, size: 32, offset: 9408)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !992, file: !171, line: 933, baseType: !52, size: 32, offset: 9440)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !992, file: !171, line: 935, baseType: !1113, size: 64, offset: 9472)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !187, line: 103, size: 64, elements: !1114)
!1114 = !{!1115}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1113, file: !187, line: 104, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !187, line: 101, flags: DIFlagFwdDecl)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !992, file: !171, line: 940, baseType: !413, size: 64, offset: 9536)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !992, file: !171, line: 942, baseType: !742, size: 256, offset: 9600)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !989, file: !171, line: 986, baseType: !1121, offset: 10240)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, elements: !384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !976, file: !171, line: 640, baseType: !1123, size: 64, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1024, line: 297, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1024, line: 297, size: 64, elements: !1125)
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1124, file: !1024, line: 297, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1029, line: 19, baseType: !42)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !171, line: 646, baseType: !1129, size: 64, offset: 256)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !976, file: !171, line: 646, size: 64, elements: !1130)
!1130 = !{!1131, !1134}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1129, file: !171, line: 647, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1133)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !171, line: 542, baseType: !42)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1129, file: !171, line: 648, baseType: !1133, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !976, file: !171, line: 666, baseType: !25, size: 32, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !976, file: !171, line: 667, baseType: !1137, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !171, line: 579, size: 320, elements: !1139)
!1139 = !{!1140}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1138, file: !171, line: 580, baseType: !551, size: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !976, file: !171, line: 670, baseType: !610, size: 8, offset: 448)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !976, file: !171, line: 681, baseType: !1143, size: 256, offset: 512)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !171, line: 678, size: 256, elements: !1144)
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1143, file: !171, line: 679, baseType: !543, size: 192, align: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1143, file: !171, line: 680, baseType: !42, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !976, file: !171, line: 689, baseType: !100, size: 128, offset: 768)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !976, file: !171, line: 691, baseType: !1149, size: 64, offset: 896)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !171, line: 691, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !976, file: !171, line: 694, baseType: !1152, size: 64, offset: 960)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1154)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1155, line: 563, size: 1024, elements: !1156)
!1155 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1156 = !{!1157, !1161, !1162, !1166, !1170, !1174, !1539, !1543, !1547, !1551, !1552, !1553, !1557, !1561, !1567, !1571}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1154, file: !1155, line: 564, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !975}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1154, file: !1155, line: 569, baseType: !1158, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1154, file: !1155, line: 571, baseType: !1163, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!25, !975, !42}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1154, file: !1155, line: 572, baseType: !1167, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!25, !975}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1154, file: !1155, line: 578, baseType: !1171, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!25, !975, !42, !42, !42}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1154, file: !1155, line: 580, baseType: !1175, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!1178, !1179}
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !171, line: 1184, baseType: !7)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1155, line: 512, size: 896, elements: !1181)
!1181 = !{!1182, !1190, !1191, !1198, !1205, !1215, !1532, !1533, !1535, !1537}
!1182 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1155, line: 513, baseType: !1183, size: 320)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1180, file: !1155, line: 513, size: 320, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1183, file: !1155, line: 514, baseType: !975, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1183, file: !1155, line: 515, baseType: !228, size: 32, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1183, file: !1155, line: 516, baseType: !42, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1183, file: !1155, line: 517, baseType: !42, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1183, file: !1155, line: 518, baseType: !42, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1180, file: !1155, line: 520, baseType: !170, size: 32, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1180, file: !1155, line: 522, baseType: !1192, size: 64, offset: 384)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1029, line: 22, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1029, line: 22, size: 64, elements: !1195)
!1195 = !{!1196}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1194, file: !1029, line: 22, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1029, line: 15, baseType: !42)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1180, file: !1155, line: 524, baseType: !1199, size: 64, offset: 448)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1024, line: 372, baseType: !1201)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1024, line: 372, size: 64, elements: !1202)
!1202 = !{!1203}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1201, file: !1024, line: 372, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1029, line: 16, baseType: !42)
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1155, line: 527, baseType: !1206, size: 64, offset: 512)
!1206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1180, file: !1155, line: 527, size: 64, elements: !1207)
!1207 = !{!1208, !1214}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1206, file: !1155, line: 528, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1029, line: 21, baseType: !1210)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1029, line: 21, size: 64, elements: !1211)
!1211 = !{!1212}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1210, file: !1029, line: 21, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1029, line: 14, baseType: !42)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1206, file: !1155, line: 529, baseType: !1193, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1180, file: !1155, line: 534, baseType: !1216, size: 64, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !171, line: 74, size: 512, align: 128, elements: !1218)
!1218 = !{!1219, !1220, !1526, !1531}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1217, file: !171, line: 75, baseType: !42, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !171, line: 83, baseType: !1221, size: 320, offset: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1217, file: !171, line: 83, size: 320, elements: !1222)
!1222 = !{!1223, !1432, !1446, !1450, !1525}
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !171, line: 84, baseType: !1224, size: 320)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !171, line: 84, size: 320, elements: !1225)
!1225 = !{!1226, !1237, !1426, !1431}
!1226 = !DIDerivedType(tag: DW_TAG_member, scope: !1224, file: !171, line: 90, baseType: !1227, size: 128)
!1227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1224, file: !171, line: 90, size: 128, elements: !1228)
!1228 = !{!1229, !1230, !1235, !1236}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1227, file: !171, line: 91, baseType: !100, size: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, scope: !1227, file: !171, line: 94, baseType: !1231, size: 128)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1227, file: !171, line: 94, size: 128, elements: !1232)
!1232 = !{!1233, !1234}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1231, file: !171, line: 96, baseType: !23, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1231, file: !171, line: 98, baseType: !7, size: 32, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1227, file: !171, line: 102, baseType: !100, size: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1227, file: !171, line: 103, baseType: !100, size: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1224, file: !171, line: 106, baseType: !1238, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !134, line: 472, size: 1536, align: 64, elements: !1240)
!1240 = !{!1241, !1242, !1249, !1250, !1251, !1252, !1257, !1258, !1259, !1418, !1419, !1420, !1423, !1424, !1425}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1239, file: !134, line: 473, baseType: !292, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1239, file: !134, line: 474, baseType: !1243, size: 128, offset: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1244, line: 296, size: 128, elements: !1245)
!1244 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1245 = !{!1246, !1247, !1248}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1243, file: !1244, line: 297, baseType: !62, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1243, file: !1244, line: 299, baseType: !228, size: 32, offset: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1243, file: !1244, line: 300, baseType: !23, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1239, file: !134, line: 475, baseType: !551, size: 320, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1239, file: !134, line: 476, baseType: !228, size: 32, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1239, file: !134, line: 477, baseType: !52, size: 32, offset: 544)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1239, file: !134, line: 482, baseType: !1253, size: 128, offset: 576)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !544, line: 26, size: 128, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1253, file: !544, line: 27, baseType: !823, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1253, file: !544, line: 28, baseType: !548, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1239, file: !134, line: 483, baseType: !42, size: 64, offset: 704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1239, file: !134, line: 484, baseType: !42, size: 64, offset: 768)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1239, file: !134, line: 485, baseType: !1260, size: 64, offset: 832)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1262)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !134, line: 404, size: 1280, elements: !1263)
!1263 = !{!1264, !1270, !1340, !1344, !1348, !1354, !1360, !1364, !1369, !1373, !1377, !1381, !1382, !1386, !1390, !1394, !1399, !1403, !1410, !1414}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1262, file: !134, line: 405, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!25, !1216, !1268}
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !134, line: 309, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1262, file: !134, line: 406, baseType: !1271, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!25, !387, !1274}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !171, line: 293, size: 1536, elements: !1276)
!1276 = !{!1277, !1307, !1321}
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1275, file: !171, line: 295, baseType: !1278, size: 512)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1275, file: !171, line: 295, size: 512, elements: !1279)
!1279 = !{!1280, !1306}
!1280 = !DIDerivedType(tag: DW_TAG_member, scope: !1278, file: !171, line: 296, baseType: !1281, size: 448)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1278, file: !171, line: 296, size: 448, elements: !1282)
!1282 = !{!1283, !1284, !1293, !1294, !1295, !1304, !1305}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1281, file: !171, line: 298, baseType: !42, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !171, line: 299, baseType: !1285, size: 128, offset: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1281, file: !171, line: 299, size: 128, elements: !1286)
!1286 = !{!1287, !1288}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1285, file: !171, line: 300, baseType: !100, size: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !171, line: 302, baseType: !1289, size: 128)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1285, file: !171, line: 302, size: 128, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1289, file: !171, line: 303, baseType: !23, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1289, file: !171, line: 305, baseType: !7, size: 32, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1281, file: !171, line: 310, baseType: !1238, size: 64, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1281, file: !171, line: 311, baseType: !42, size: 64, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !171, line: 312, baseType: !1296, size: 64, offset: 320)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1281, file: !171, line: 312, size: 64, elements: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1296, file: !171, line: 313, baseType: !23, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1296, file: !171, line: 314, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !171, line: 257, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 255, size: 64, elements: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1301, file: !171, line: 256, baseType: !42, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1281, file: !171, line: 316, baseType: !52, size: 32, offset: 384)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1281, file: !171, line: 317, baseType: !52, size: 32, offset: 416)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1278, file: !171, line: 323, baseType: !1217, size: 512, align: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1275, file: !171, line: 325, baseType: !1308, size: 512, offset: 512)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1275, file: !171, line: 325, size: 512, elements: !1309)
!1309 = !{!1310, !1320}
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !171, line: 326, baseType: !1311, size: 320)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !171, line: 326, size: 320, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318, !1319}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1311, file: !171, line: 327, baseType: !42, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1311, file: !171, line: 328, baseType: !42, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1311, file: !171, line: 329, baseType: !42, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1311, file: !171, line: 331, baseType: !52, size: 32, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1311, file: !171, line: 332, baseType: !52, size: 32, offset: 224)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1311, file: !171, line: 333, baseType: !52, size: 32, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1311, file: !171, line: 335, baseType: !7, size: 32, offset: 288)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1308, file: !171, line: 339, baseType: !1217, size: 512, align: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, scope: !1275, file: !171, line: 341, baseType: !1322, size: 512, offset: 1024)
!1322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1275, file: !171, line: 341, size: 512, elements: !1323)
!1323 = !{!1324, !1333, !1339}
!1324 = !DIDerivedType(tag: DW_TAG_member, scope: !1322, file: !171, line: 342, baseType: !1325, size: 384)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1322, file: !171, line: 342, size: 384, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1325, file: !171, line: 343, baseType: !42, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1325, file: !171, line: 344, baseType: !42, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1325, file: !171, line: 346, baseType: !23, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1325, file: !171, line: 347, baseType: !23, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1325, file: !171, line: 348, baseType: !23, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1325, file: !171, line: 349, baseType: !23, size: 64, offset: 320)
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1322, file: !171, line: 352, baseType: !1334, size: 256)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1322, file: !171, line: 352, size: 256, elements: !1335)
!1335 = !{!1336, !1337, !1338}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1334, file: !171, line: 353, baseType: !42, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1334, file: !171, line: 354, baseType: !42, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1334, file: !171, line: 356, baseType: !100, size: 128, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1322, file: !171, line: 359, baseType: !1217, size: 512, align: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1262, file: !134, line: 409, baseType: !1341, size: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!25, !1238, !1268}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1262, file: !134, line: 412, baseType: !1345, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!610, !1238, !1274}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1262, file: !134, line: 414, baseType: !1349, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !1352}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !134, line: 310, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1262, file: !134, line: 416, baseType: !1355, size: 64, offset: 320)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!25, !387, !1238, !44, !7, !1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1262, file: !134, line: 419, baseType: !1361, size: 64, offset: 384)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!25, !387, !1238, !44, !7, !7, !1216, !23}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1262, file: !134, line: 424, baseType: !1365, size: 64, offset: 448)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!1368, !1238, !1368}
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !28, line: 131, baseType: !285)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1262, file: !134, line: 425, baseType: !1370, size: 64, offset: 512)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{null, !1274, !38, !38}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1262, file: !134, line: 426, baseType: !1374, size: 64, offset: 576)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!610, !1274, !228}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1262, file: !134, line: 427, baseType: !1378, size: 64, offset: 640)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !1274}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1262, file: !134, line: 428, baseType: !911, size: 64, offset: 704)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1262, file: !134, line: 433, baseType: !1383, size: 64, offset: 768)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!25, !1238, !1274, !1274, !155}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1262, file: !134, line: 435, baseType: !1387, size: 64, offset: 832)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!25, !1274}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1262, file: !134, line: 436, baseType: !1391, size: 64, offset: 896)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!610, !1274, !38, !38}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1262, file: !134, line: 438, baseType: !1395, size: 64, offset: 960)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !1274, !1398, !1398}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1262, file: !134, line: 439, baseType: !1400, size: 64, offset: 1024)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!25, !1238, !1216}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1262, file: !134, line: 442, baseType: !1404, size: 64, offset: 1088)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!25, !1407, !387, !1409}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !134, line: 66, flags: DIFlagFwdDecl)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1262, file: !134, line: 444, baseType: !1411, size: 64, offset: 1152)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{null, !387}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1262, file: !134, line: 445, baseType: !1415, size: 64, offset: 1216)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!25, !914, !936}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1239, file: !134, line: 486, baseType: !42, size: 64, offset: 896)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1239, file: !134, line: 487, baseType: !551, size: 320, offset: 960)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1239, file: !134, line: 488, baseType: !1421, size: 32, offset: 1280)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1422, line: 8, baseType: !281)
!1422 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1239, file: !134, line: 489, baseType: !62, size: 32, offset: 1312)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1239, file: !134, line: 490, baseType: !100, size: 128, offset: 1344)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1239, file: !134, line: 491, baseType: !23, size: 64, offset: 1472)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1224, file: !171, line: 107, baseType: !1427, size: 64, offset: 192)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1224, file: !171, line: 107, size: 64, elements: !1428)
!1428 = !{!1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1427, file: !171, line: 108, baseType: !42, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1427, file: !171, line: 109, baseType: !42, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1224, file: !171, line: 117, baseType: !42, size: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !171, line: 119, baseType: !1433, size: 320)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !171, line: 119, size: 320, elements: !1434)
!1434 = !{!1435, !1436, !1439, !1440, !1441}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1433, file: !171, line: 124, baseType: !42, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1433, file: !171, line: 125, baseType: !1437, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !171, line: 125, flags: DIFlagFwdDecl)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1433, file: !171, line: 126, baseType: !42, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1433, file: !171, line: 127, baseType: !42, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !171, line: 128, baseType: !1442, size: 64, offset: 256)
!1442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !171, line: 128, size: 64, elements: !1443)
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1442, file: !171, line: 133, baseType: !42, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1442, file: !171, line: 138, baseType: !413, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !171, line: 141, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !171, line: 141, size: 64, elements: !1448)
!1448 = !{!1449}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1447, file: !171, line: 142, baseType: !42, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !171, line: 144, baseType: !1451, size: 128)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !171, line: 144, size: 128, elements: !1452)
!1452 = !{!1453, !1524}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1451, file: !171, line: 146, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !163, line: 126, size: 1216, elements: !1456)
!1456 = !{!1457, !1467, !1488, !1489, !1490, !1491, !1492, !1506, !1507, !1508}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1455, file: !163, line: 127, baseType: !1458, size: 384)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !163, line: 21, size: 384, elements: !1459)
!1459 = !{!1460, !1461, !1463, !1464, !1465, !1466}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1458, file: !163, line: 22, baseType: !42, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1458, file: !163, line: 23, baseType: !1462, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1458, file: !163, line: 24, baseType: !1462, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1458, file: !163, line: 25, baseType: !42, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1458, file: !163, line: 26, baseType: !42, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1458, file: !163, line: 27, baseType: !42, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1455, file: !163, line: 128, baseType: !1468, size: 128, offset: 384)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1469, line: 105, size: 128, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1468, file: !1469, line: 110, baseType: !42, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1468, file: !1469, line: 118, baseType: !1473, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1469, line: 95, size: 448, elements: !1475)
!1475 = !{!1476, !1477, !1483, !1484, !1485, !1486, !1487}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1474, file: !1469, line: 96, baseType: !413, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1474, file: !1469, line: 97, baseType: !1478, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1469, line: 60, baseType: !1480)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !1482}
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1474, file: !1469, line: 98, baseType: !1478, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1474, file: !1469, line: 99, baseType: !610, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1474, file: !1469, line: 100, baseType: !610, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1474, file: !1469, line: 101, baseType: !400, size: 128, align: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1474, file: !1469, line: 102, baseType: !1482, size: 64, offset: 384)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1455, file: !163, line: 129, baseType: !781, size: 256, offset: 512)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1455, file: !163, line: 130, baseType: !162, size: 32, offset: 768)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1455, file: !163, line: 131, baseType: !7, size: 32, offset: 800)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1455, file: !163, line: 132, baseType: !42, size: 64, offset: 832)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1455, file: !163, line: 133, baseType: !1493, size: 64, offset: 896)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1495)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !163, line: 77, size: 192, elements: !1496)
!1496 = !{!1497, !1501, !1502}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1495, file: !163, line: 83, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{null, !1216}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1495, file: !163, line: 89, baseType: !1175, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1495, file: !163, line: 100, baseType: !1503, size: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!25, !1454, !42, !42, !25}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1455, file: !163, line: 134, baseType: !23, size: 64, offset: 960)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1455, file: !163, line: 135, baseType: !25, size: 32, offset: 1024)
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !163, line: 136, baseType: !1509, size: 128, offset: 1088)
!1509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1455, file: !163, line: 136, size: 128, elements: !1510)
!1510 = !{!1511, !1517}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1509, file: !163, line: 137, baseType: !1512, size: 128)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1513, line: 6, size: 128, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1512, file: !1513, line: 7, baseType: !285, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1512, file: !1513, line: 8, baseType: !285, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, scope: !1509, file: !163, line: 138, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !163, line: 138, elements: !1519)
!1519 = !{!1520, !1522}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1518, file: !163, line: 138, baseType: !1521)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1518, file: !163, line: 138, elements: !1009)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1518, file: !163, line: 138, baseType: !1523)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1512, elements: !384)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1451, file: !171, line: 147, baseType: !23, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1221, file: !171, line: 161, baseType: !400, size: 128, align: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !171, line: 164, baseType: !1527, size: 32, offset: 384)
!1527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1217, file: !171, line: 164, size: 32, elements: !1528)
!1528 = !{!1529, !1530}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1527, file: !171, line: 169, baseType: !52, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1527, file: !171, line: 177, baseType: !7, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1217, file: !171, line: 181, baseType: !52, size: 32, offset: 416)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1180, file: !1155, line: 535, baseType: !1216, size: 64, offset: 640)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1180, file: !1155, line: 541, baseType: !1534, size: 64, offset: 704)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1180, file: !1155, line: 545, baseType: !1536, size: 64, offset: 768)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1180, file: !1155, line: 549, baseType: !1538, size: 64, offset: 832)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1024, line: 520, baseType: !1216)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1154, file: !1155, line: 581, baseType: !1540, size: 64, offset: 384)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!1178, !1179, !7}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1154, file: !1155, line: 582, baseType: !1544, size: 64, offset: 448)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!1178, !1179, !42, !42}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1154, file: !1155, line: 584, baseType: !1548, size: 64, offset: 512)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!42, !975}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1154, file: !1155, line: 588, baseType: !1175, size: 64, offset: 576)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1154, file: !1155, line: 591, baseType: !1175, size: 64, offset: 640)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1154, file: !1155, line: 597, baseType: !1554, size: 64, offset: 704)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!25, !975, !42, !23, !25, !25}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1154, file: !1155, line: 603, baseType: !1558, size: 64, offset: 768)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!19, !975}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1154, file: !1155, line: 613, baseType: !1562, size: 64, offset: 832)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!25, !975, !1565}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !171, line: 717, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1154, file: !1155, line: 625, baseType: !1568, size: 64, offset: 896)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!1565, !975, !42}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1154, file: !1155, line: 633, baseType: !1572, size: 64, offset: 960)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!1216, !975, !42}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !976, file: !171, line: 697, baseType: !42, size: 64, offset: 1024)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !976, file: !171, line: 699, baseType: !387, size: 64, offset: 1088)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !976, file: !171, line: 700, baseType: !23, size: 64, offset: 1152)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !976, file: !171, line: 711, baseType: !413, size: 64, offset: 1216)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !976, file: !171, line: 717, baseType: !1565, size: 64, offset: 1280)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !976, file: !171, line: 722, baseType: !1581, offset: 1344)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !171, line: 570, elements: !1009)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !889, file: !134, line: 1928, baseType: !42, size: 64, offset: 768)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !889, file: !134, line: 1929, baseType: !1584, size: 64, offset: 832)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!25, !292, !387}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !889, file: !134, line: 1930, baseType: !1588, size: 64, offset: 896)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!25, !387, !1591}
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !134, line: 1061, baseType: !23)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !889, file: !134, line: 1931, baseType: !1584, size: 64, offset: 960)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !889, file: !134, line: 1932, baseType: !1594, size: 64, offset: 1024)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!25, !387, !44, !44, !25}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !889, file: !134, line: 1933, baseType: !1598, size: 64, offset: 1088)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!25, !25, !387, !25}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !889, file: !134, line: 1934, baseType: !1602, size: 64, offset: 1152)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!25, !387, !25, !1605}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !134, line: 1063, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !889, file: !134, line: 1935, baseType: !1013, size: 64, offset: 1216)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !889, file: !134, line: 1936, baseType: !1609, size: 64, offset: 1280)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!25, !25}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !889, file: !134, line: 1937, baseType: !1602, size: 64, offset: 1344)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !889, file: !134, line: 1938, baseType: !1614, size: 64, offset: 1408)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!903, !1617, !387, !43, !38, !7}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1619, line: 59, flags: DIFlagFwdDecl)
!1619 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !889, file: !134, line: 1939, baseType: !1621, size: 64, offset: 1472)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!903, !387, !43, !1617, !38, !7}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !889, file: !134, line: 1940, baseType: !1411, size: 64, offset: 1536)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !889, file: !134, line: 1941, baseType: !1626, size: 64, offset: 1600)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!25, !387, !25, !1629, !1359}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !889, file: !134, line: 1942, baseType: !1631, size: 64, offset: 1664)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!843, !387, !25, !44, !44}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !889, file: !134, line: 1944, baseType: !1635, size: 64, offset: 1728)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1638, !387}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1619, line: 66, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !889, file: !134, line: 1948, baseType: !1641, size: 64, offset: 1792)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!903, !387, !44, !387, !44, !38, !7}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !889, file: !134, line: 1950, baseType: !1645, size: 64, offset: 1856)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!44, !387, !44, !387, !44, !44, !7}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !889, file: !134, line: 1953, baseType: !1594, size: 64, offset: 1920)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !889, file: !134, line: 1954, baseType: !1650, size: 64, offset: 1984)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!25, !1653, !7}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !134, line: 1911, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !889, file: !134, line: 1955, baseType: !1656, size: 64, offset: 2048)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!25, !1653, !943, !7}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !388, file: !134, line: 1018, baseType: !285, size: 64, offset: 1472)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !388, file: !134, line: 1020, baseType: !23, size: 64, offset: 1536)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !388, file: !134, line: 1023, baseType: !23, size: 64, offset: 1600)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !388, file: !134, line: 1027, baseType: !1663, size: 64, offset: 1664)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !388, file: !134, line: 1029, baseType: !1238, size: 64, offset: 1728)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !388, file: !134, line: 1030, baseType: !1421, size: 32, offset: 1792)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !388, file: !134, line: 1031, baseType: !1421, size: 32, offset: 1824)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !362, file: !111, line: 72, baseType: !38, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "dirfd", scope: !362, file: !111, line: 73, baseType: !25, size: 32, offset: 256)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "parse_monolithic", scope: !347, file: !111, line: 119, baseType: !1670, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!25, !341, !23}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "get_tree", scope: !347, file: !111, line: 120, baseType: !338, size: 64, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "reconfigure", scope: !347, file: !111, line: 121, baseType: !338, size: 64, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "uapi_mutex", scope: !342, file: !111, line: 92, baseType: !422, size: 256, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "fs_type", scope: !342, file: !111, line: 93, baseType: !332, size: 64, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "fs_private", scope: !342, file: !111, line: 94, baseType: !23, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "sget_key", scope: !342, file: !111, line: 95, baseType: !23, size: 64, offset: 448)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !342, file: !111, line: 96, baseType: !247, size: 64, offset: 512)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !342, file: !111, line: 97, baseType: !693, size: 64, offset: 576)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !342, file: !111, line: 98, baseType: !1682, size: 64, offset: 640)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !530, line: 34, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !342, file: !111, line: 99, baseType: !501, size: 64, offset: 704)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !342, file: !111, line: 100, baseType: !1686, size: 128, offset: 768)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p_log", file: !111, line: 76, size: 128, elements: !1687)
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1686, file: !111, line: 77, baseType: !19, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1686, file: !111, line: 78, baseType: !1690, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fc_log", file: !111, line: 173, size: 640, elements: !1692)
!1692 = !{!1693, !1694, !1695, !1696, !1697, !1698}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1691, file: !111, line: 174, baseType: !467, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1691, file: !111, line: 175, baseType: !86, size: 8, offset: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1691, file: !111, line: 176, baseType: !86, size: 8, offset: 40)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !1691, file: !111, line: 177, baseType: !86, size: 8, offset: 48)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1691, file: !111, line: 178, baseType: !892, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1691, file: !111, line: 179, baseType: !1699, size: 512, offset: 128)
!1699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 512, elements: !1700)
!1700 = !{!1701}
!1701 = !DISubrange(count: 8)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !342, file: !111, line: 101, baseType: !19, size: 64, offset: 896)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !342, file: !111, line: 102, baseType: !23, size: 64, offset: 960)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !342, file: !111, line: 103, baseType: !23, size: 64, offset: 1024)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags", scope: !342, file: !111, line: 104, baseType: !7, size: 32, offset: 1088)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sb_flags_mask", scope: !342, file: !111, line: 105, baseType: !7, size: 32, offset: 1120)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !342, file: !111, line: 106, baseType: !7, size: 32, offset: 1152)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !342, file: !111, line: 107, baseType: !119, size: 8, offset: 1184, flags: DIFlagBitField, extraData: i64 1184)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !342, file: !111, line: 108, baseType: !124, size: 8, offset: 1192, flags: DIFlagBitField, extraData: i64 1184)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "need_free", scope: !342, file: !111, line: 109, baseType: !610, size: 1, offset: 1200, flags: DIFlagBitField, extraData: i64 1184)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !342, file: !111, line: 110, baseType: !610, size: 1, offset: 1201, flags: DIFlagBitField, extraData: i64 1184)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "oldapi", scope: !342, file: !111, line: 111, baseType: !610, size: 1, offset: 1202, flags: DIFlagBitField, extraData: i64 1184)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !342, file: !111, line: 112, baseType: !610, size: 1, offset: 1203, flags: DIFlagBitField, extraData: i64 1184)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !333, file: !134, line: 2377, baseType: !1715, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !134, line: 75, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !333, file: !134, line: 2378, baseType: !1719, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!247, !332, !25, !19, !23}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !333, file: !134, line: 2380, baseType: !1723, size: 64, offset: 320)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !321}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !333, file: !134, line: 2381, baseType: !892, size: 64, offset: 384)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !134, line: 2382, baseType: !332, size: 64, offset: 448)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !333, file: !134, line: 2383, baseType: !476, size: 64, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !333, file: !134, line: 2385, baseType: !1730, offset: 576)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1731, line: 206, elements: !1009)
!1731 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !333, file: !134, line: 2386, baseType: !1730, offset: 576)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !333, file: !134, line: 2387, baseType: !1730, offset: 576)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !333, file: !134, line: 2388, baseType: !1735, offset: 576)
!1735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1730, elements: !459)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !333, file: !134, line: 2390, baseType: !1730, offset: 576)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !333, file: !134, line: 2391, baseType: !1730, offset: 576)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !333, file: !134, line: 2392, baseType: !1730, offset: 576)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !333, file: !134, line: 2393, baseType: !1730, offset: 576)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !322, file: !134, line: 1197, baseType: !1741, size: 64, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1743)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !134, line: 2057, size: 1664, elements: !1744)
!1744 = !{!1745, !1749, !1753, !1754, !1758, !1762, !1766, !1767, !1768, !1772, !1776, !1780, !1781, !1782, !1788, !1793, !1794, !1798, !1799, !1800, !1801, !1805, !1809, !1856, !1871, !1872}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1743, file: !134, line: 2058, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!292, !321}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1743, file: !134, line: 2059, baseType: !1750, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !292}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1743, file: !134, line: 2060, baseType: !1750, size: 64, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1743, file: !134, line: 2062, baseType: !1755, size: 64, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{null, !292, !25}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1743, file: !134, line: 2063, baseType: !1759, size: 64, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!25, !292, !1268}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1743, file: !134, line: 2064, baseType: !1763, size: 64, offset: 320)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!25, !292}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1743, file: !134, line: 2065, baseType: !1750, size: 64, offset: 384)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1743, file: !134, line: 2066, baseType: !1723, size: 64, offset: 448)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1743, file: !134, line: 2067, baseType: !1769, size: 64, offset: 512)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!25, !321, !25}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1743, file: !134, line: 2068, baseType: !1773, size: 64, offset: 576)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!25, !321, !133}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1743, file: !134, line: 2069, baseType: !1777, size: 64, offset: 640)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!25, !321}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1743, file: !134, line: 2070, baseType: !1773, size: 64, offset: 704)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1743, file: !134, line: 2071, baseType: !1777, size: 64, offset: 768)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1743, file: !134, line: 2072, baseType: !1783, size: 64, offset: 832)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!25, !247, !1786}
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !134, line: 62, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1743, file: !134, line: 2073, baseType: !1789, size: 64, offset: 896)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!25, !321, !1792, !370}
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1743, file: !134, line: 2074, baseType: !1723, size: 64, offset: 960)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1743, file: !134, line: 2076, baseType: !1795, size: 64, offset: 1024)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!25, !1638, !247}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1743, file: !134, line: 2077, baseType: !1795, size: 64, offset: 1088)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1743, file: !134, line: 2078, baseType: !1795, size: 64, offset: 1152)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1743, file: !134, line: 2079, baseType: !1795, size: 64, offset: 1216)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1743, file: !134, line: 2081, baseType: !1802, size: 64, offset: 1280)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!903, !321, !25, !370, !38, !44}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1743, file: !134, line: 2082, baseType: !1806, size: 64, offset: 1344)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!903, !321, !25, !19, !38, !44}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1743, file: !134, line: 2083, baseType: !1810, size: 64, offset: 1408)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!1813, !292}
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !139, line: 296, size: 1664, elements: !1816)
!1816 = !{!1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1841, !1842, !1843}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1815, file: !139, line: 297, baseType: !480, size: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1815, file: !139, line: 298, baseType: !100, size: 128, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1815, file: !139, line: 299, baseType: !100, size: 128, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1815, file: !139, line: 300, baseType: !100, size: 128, offset: 384)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1815, file: !139, line: 301, baseType: !422, size: 256, offset: 512)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1815, file: !139, line: 302, baseType: !62, size: 32, offset: 768)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1815, file: !139, line: 303, baseType: !52, size: 32, offset: 800)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1815, file: !139, line: 304, baseType: !321, size: 64, offset: 832)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1815, file: !139, line: 305, baseType: !1826, size: 64, offset: 896)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !139, line: 68, size: 64, elements: !1827)
!1827 = !{!1828, !1840}
!1828 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !139, line: 69, baseType: !1829, size: 32)
!1829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1826, file: !139, line: 69, size: 32, elements: !1830)
!1830 = !{!1831, !1832, !1833}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1829, file: !139, line: 70, baseType: !298, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1829, file: !139, line: 71, baseType: !307, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1829, file: !139, line: 72, baseType: !1834, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1835, line: 24, baseType: !1836)
!1835 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1835, line: 22, size: 32, elements: !1837)
!1837 = !{!1838}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1836, file: !1835, line: 23, baseType: !1839, size: 32)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1835, line: 20, baseType: !304)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1826, file: !139, line: 74, baseType: !138, size: 32, offset: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1815, file: !139, line: 306, baseType: !44, size: 64, offset: 960)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1815, file: !139, line: 307, baseType: !42, size: 64, offset: 1024)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1815, file: !139, line: 308, baseType: !1844, size: 576, offset: 1088)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !139, line: 205, size: 576, elements: !1845)
!1845 = !{!1846, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1844, file: !139, line: 206, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !139, line: 66, baseType: !46)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1844, file: !139, line: 207, baseType: !1847, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1844, file: !139, line: 208, baseType: !1847, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1844, file: !139, line: 209, baseType: !1847, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1844, file: !139, line: 210, baseType: !1847, size: 64, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1844, file: !139, line: 211, baseType: !1847, size: 64, offset: 320)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1844, file: !139, line: 212, baseType: !1847, size: 64, offset: 384)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1844, file: !139, line: 213, baseType: !567, size: 64, offset: 448)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1844, file: !139, line: 214, baseType: !567, size: 64, offset: 512)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1743, file: !134, line: 2085, baseType: !1857, size: 64, offset: 1472)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!843, !321, !1860}
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1862, line: 15, size: 256, elements: !1863)
!1862 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1863 = !{!1864, !1865, !1866, !1867, !1868}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1861, file: !1862, line: 16, baseType: !228, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1861, file: !1862, line: 19, baseType: !25, size: 32, offset: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1861, file: !1862, line: 26, baseType: !42, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1861, file: !1862, line: 33, baseType: !42, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1861, file: !1862, line: 36, baseType: !1869, size: 64, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1862, line: 36, flags: DIFlagFwdDecl)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1743, file: !134, line: 2087, baseType: !1857, size: 64, offset: 1536)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1743, file: !134, line: 2089, baseType: !1723, size: 64, offset: 1600)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !322, file: !134, line: 1198, baseType: !1874, size: 64, offset: 448)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1876)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !139, line: 324, size: 704, elements: !1877)
!1877 = !{!1878, !1882, !1886, !1890, !1891, !1892, !1893, !1894, !1899, !1904, !1908}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1876, file: !139, line: 325, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!25, !1814}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1876, file: !139, line: 326, baseType: !1883, size: 64, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!1814, !321, !25}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1876, file: !139, line: 327, baseType: !1887, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{null, !1814}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1876, file: !139, line: 328, baseType: !1879, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1876, file: !139, line: 329, baseType: !1879, size: 64, offset: 256)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1876, file: !139, line: 330, baseType: !1879, size: 64, offset: 320)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1876, file: !139, line: 331, baseType: !1769, size: 64, offset: 384)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1876, file: !139, line: 334, baseType: !1895, size: 64, offset: 448)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!1898, !292}
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1876, file: !139, line: 335, baseType: !1900, size: 64, offset: 512)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!25, !292, !1903}
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1876, file: !139, line: 337, baseType: !1905, size: 64, offset: 576)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!25, !292, !1898}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1876, file: !139, line: 339, baseType: !1909, size: 64, offset: 640)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!25, !321, !1912}
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !322, file: !134, line: 1199, baseType: !1914, size: 64, offset: 512)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1916)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !139, line: 430, size: 704, elements: !1917)
!1917 = !{!1918, !1924, !1925, !1929, !1930, !1931, !1946, !1969, !1973, !1974, !1997}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1916, file: !139, line: 431, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!25, !321, !25, !25, !1922}
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1916, file: !139, line: 432, baseType: !1769, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1916, file: !139, line: 433, baseType: !1926, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!25, !321, !7}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1916, file: !139, line: 434, baseType: !1926, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1916, file: !139, line: 435, baseType: !1769, size: 64, offset: 256)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1916, file: !139, line: 436, baseType: !1932, size: 64, offset: 320)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!25, !321, !25, !1935}
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !139, line: 417, size: 256, elements: !1937)
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1936, file: !139, line: 418, baseType: !25, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1936, file: !139, line: 419, baseType: !7, size: 32, offset: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1936, file: !139, line: 420, baseType: !7, size: 32, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1936, file: !139, line: 422, baseType: !7, size: 32, offset: 96)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1936, file: !139, line: 423, baseType: !7, size: 32, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1936, file: !139, line: 424, baseType: !7, size: 32, offset: 160)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1936, file: !139, line: 425, baseType: !7, size: 32, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1936, file: !139, line: 426, baseType: !7, size: 32, offset: 224)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1916, file: !139, line: 437, baseType: !1947, size: 64, offset: 384)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!25, !321, !1826, !1950}
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !139, line: 345, size: 960, elements: !1952)
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1951, file: !139, line: 346, baseType: !25, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1951, file: !139, line: 347, baseType: !285, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1951, file: !139, line: 348, baseType: !285, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1951, file: !139, line: 349, baseType: !285, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1951, file: !139, line: 350, baseType: !285, size: 64, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1951, file: !139, line: 351, baseType: !285, size: 64, offset: 320)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1951, file: !139, line: 352, baseType: !285, size: 64, offset: 384)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1951, file: !139, line: 353, baseType: !419, size: 64, offset: 448)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1951, file: !139, line: 355, baseType: !419, size: 64, offset: 512)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1951, file: !139, line: 356, baseType: !25, size: 32, offset: 576)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1951, file: !139, line: 357, baseType: !25, size: 32, offset: 608)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1951, file: !139, line: 358, baseType: !285, size: 64, offset: 640)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1951, file: !139, line: 359, baseType: !285, size: 64, offset: 704)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1951, file: !139, line: 360, baseType: !285, size: 64, offset: 768)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1951, file: !139, line: 361, baseType: !419, size: 64, offset: 832)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1951, file: !139, line: 362, baseType: !25, size: 32, offset: 896)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1916, file: !139, line: 438, baseType: !1970, size: 64, offset: 448)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!25, !321, !1912, !1950}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1916, file: !139, line: 440, baseType: !1947, size: 64, offset: 512)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1916, file: !139, line: 441, baseType: !1975, size: 64, offset: 576)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!25, !321, !1978}
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !139, line: 411, size: 1408, elements: !1980)
!1980 = !{!1981, !1982}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1979, file: !139, line: 412, baseType: !7, size: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1979, file: !139, line: 413, baseType: !1983, size: 1344, offset: 64)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1984, size: 1344, elements: !459)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !139, line: 397, size: 448, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1996}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1984, file: !139, line: 398, baseType: !7, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1984, file: !139, line: 399, baseType: !7, size: 32, offset: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1984, file: !139, line: 401, baseType: !7, size: 32, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1984, file: !139, line: 402, baseType: !7, size: 32, offset: 96)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1984, file: !139, line: 403, baseType: !7, size: 32, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1984, file: !139, line: 404, baseType: !7, size: 32, offset: 160)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1984, file: !139, line: 405, baseType: !7, size: 32, offset: 192)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1984, file: !139, line: 406, baseType: !287, size: 64, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1984, file: !139, line: 407, baseType: !1995, size: 64, offset: 320)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !28, line: 132, baseType: !285)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1984, file: !139, line: 408, baseType: !1995, size: 64, offset: 384)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1916, file: !139, line: 442, baseType: !1926, size: 64, offset: 640)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !322, file: !134, line: 1200, baseType: !1999, size: 64, offset: 576)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2001)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !134, line: 54, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !322, file: !134, line: 1201, baseType: !42, size: 64, offset: 640)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !322, file: !134, line: 1202, baseType: !42, size: 64, offset: 704)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !322, file: !134, line: 1203, baseType: !42, size: 64, offset: 768)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !322, file: !134, line: 1204, baseType: !247, size: 64, offset: 832)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !322, file: !134, line: 1205, baseType: !551, size: 320, offset: 896)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !322, file: !134, line: 1206, baseType: !25, size: 32, offset: 1216)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !322, file: !134, line: 1207, baseType: !52, size: 32, offset: 1248)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !322, file: !134, line: 1209, baseType: !23, size: 64, offset: 1280)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !322, file: !134, line: 1211, baseType: !2011, size: 64, offset: 1344)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2014)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !2015, line: 36, size: 384, elements: !2016)
!2015 = !DIFile(filename: "./include/linux/xattr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b18c2f606ad05d87dee3d79567b8d0c")
!2016 = !{!2017, !2018, !2019, !2020, !2024, !2028}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2014, file: !2015, line: 37, baseType: !19, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !2014, file: !2015, line: 38, baseType: !19, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2014, file: !2015, line: 39, baseType: !25, size: 32, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2014, file: !2015, line: 40, baseType: !2021, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!610, !247}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2014, file: !2015, line: 41, baseType: !2025, size: 64, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!25, !2012, !247, !292, !19, !23, !38}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2014, file: !2015, line: 44, baseType: !2029, size: 64, offset: 320)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!25, !2012, !882, !247, !292, !19, !2032, !38, !25}
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !322, file: !134, line: 1223, baseType: !2035, size: 64, offset: 1408)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !264, line: 34, size: 64, elements: !2036)
!2036 = !{!2037}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2035, file: !264, line: 35, baseType: !267, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !322, file: !134, line: 1224, baseType: !100, size: 128, offset: 1472)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !322, file: !134, line: 1225, baseType: !2040, size: 64, offset: 1600)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !134, line: 1225, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !322, file: !134, line: 1226, baseType: !2043, size: 64, offset: 1664)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !134, line: 1226, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !322, file: !134, line: 1227, baseType: !2046, size: 64, offset: 1728)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !134, line: 50, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !322, file: !134, line: 1228, baseType: !2049, size: 64, offset: 1792)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !134, line: 1228, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !322, file: !134, line: 1229, baseType: !480, size: 128, offset: 1856)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !322, file: !134, line: 1230, baseType: !7, size: 32, offset: 1984)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !322, file: !134, line: 1231, baseType: !2054, size: 2496, offset: 2048)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !139, line: 521, size: 2496, elements: !2055)
!2055 = !{!2056, !2057, !2058, !2060, !2092}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2054, file: !139, line: 522, baseType: !7, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2054, file: !139, line: 523, baseType: !551, size: 320, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2054, file: !139, line: 524, baseType: !2059, size: 192, offset: 384)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 192, elements: !459)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2054, file: !139, line: 525, baseType: !2061, size: 1728, offset: 576)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2062, size: 1728, elements: !459)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !139, line: 222, size: 576, elements: !2063)
!2063 = !{!2064, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2062, file: !139, line: 223, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !139, line: 445, size: 256, elements: !2067)
!2067 = !{!2068, !2069, !2082, !2083}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2066, file: !139, line: 446, baseType: !25, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2066, file: !139, line: 447, baseType: !2070, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2072)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !139, line: 312, size: 512, elements: !2073)
!2073 = !{!2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2072, file: !139, line: 313, baseType: !1769, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2072, file: !139, line: 314, baseType: !1769, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2072, file: !139, line: 315, baseType: !1769, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2072, file: !139, line: 316, baseType: !1769, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2072, file: !139, line: 317, baseType: !1879, size: 64, offset: 256)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2072, file: !139, line: 318, baseType: !1879, size: 64, offset: 320)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2072, file: !139, line: 319, baseType: !1879, size: 64, offset: 384)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2072, file: !139, line: 320, baseType: !1909, size: 64, offset: 448)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2066, file: !139, line: 448, baseType: !892, size: 64, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2066, file: !139, line: 449, baseType: !2065, size: 64, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2062, file: !139, line: 224, baseType: !25, size: 32, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2062, file: !139, line: 226, baseType: !100, size: 128, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2062, file: !139, line: 227, baseType: !42, size: 64, offset: 256)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2062, file: !139, line: 228, baseType: !7, size: 32, offset: 320)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2062, file: !139, line: 229, baseType: !7, size: 32, offset: 352)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2062, file: !139, line: 230, baseType: !1847, size: 64, offset: 384)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2062, file: !139, line: 231, baseType: !1847, size: 64, offset: 448)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2062, file: !139, line: 232, baseType: !23, size: 64, offset: 512)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2054, file: !139, line: 526, baseType: !2093, size: 192, offset: 2304)
!2093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2070, size: 192, elements: !459)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !322, file: !134, line: 1233, baseType: !2095, size: 2368, offset: 4544)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !134, line: 1184, size: 2368, elements: !2096)
!2096 = !{!2097, !2098, !2099}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2095, file: !134, line: 1185, baseType: !29, size: 16)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2095, file: !134, line: 1186, baseType: !29, size: 16, offset: 16)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2095, file: !134, line: 1187, baseType: !2100, size: 2304, offset: 64)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2101, size: 2304, elements: !459)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2102, line: 12, size: 768, elements: !2103)
!2102 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2103 = !{!2104, !2112, !2114, !3330, !3331}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2101, file: !2102, line: 13, baseType: !2105, size: 384)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2106, line: 17, size: 384, elements: !2107)
!2106 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2107 = !{!2108, !2109, !2110, !2111}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2105, file: !2106, line: 18, baseType: !25, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2105, file: !2106, line: 19, baseType: !25, size: 32, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2105, file: !2106, line: 20, baseType: !57, size: 192, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2105, file: !2106, line: 22, baseType: !400, size: 128, align: 64, offset: 256)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2101, file: !2102, line: 14, baseType: !2113, size: 64, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2101, file: !2102, line: 15, baseType: !2115, size: 64, offset: 448)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2116, line: 16, size: 64, elements: !2117)
!2116 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2117 = !{!2118}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2115, file: !2116, line: 17, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1619, line: 746, size: 58368, elements: !2121)
!2121 = !{!2122, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2202, !2213, !2299, !2303, !2306, !2337, !2338, !2339, !2340, !2351, !2353, !2354, !2355, !2356, !2357, !2358, !2369, !2370, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2387, !2388, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2476, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2524, !2530, !2531, !2532, !2533, !2534, !2538, !2541, !2548, !2553, !2556, !2559, !2562, !2586, !2727, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2769, !2770, !2771, !2780, !2788, !2789, !2790, !2791, !2792, !2797, !2798, !2799, !2802, !2803, !2806, !2809, !2812, !2820, !2823, !2824, !2910, !2911, !2912, !2913, !2914, !2920, !2921, !2922, !2923, !2926, !2927, !2930, !2933, !2934, !2937, !2938, !2939, !2942, !2943, !2944, !2945, !2946, !2947, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2979, !2980, !2986, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2998, !3070, !3072, !3073, !3074, !3075, !3076, !3088, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3105, !3106, !3107}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2120, file: !1619, line: 752, baseType: !2123, size: 192)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2124, line: 56, size: 192, elements: !2125)
!2124 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2125 = !{!2126, !2127, !2128, !2129}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2123, file: !2124, line: 57, baseType: !42, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2123, file: !2124, line: 58, baseType: !42, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2123, file: !2124, line: 59, baseType: !281, size: 32, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2123, file: !2124, line: 61, baseType: !281, size: 32, offset: 160)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2120, file: !1619, line: 754, baseType: !7, size: 32, offset: 192)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2120, file: !1619, line: 767, baseType: !23, size: 64, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2120, file: !1619, line: 768, baseType: !467, size: 32, offset: 320)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2120, file: !1619, line: 770, baseType: !7, size: 32, offset: 352)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2120, file: !1619, line: 771, baseType: !7, size: 32, offset: 384)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2120, file: !1619, line: 774, baseType: !25, size: 32, offset: 416)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2120, file: !1619, line: 775, baseType: !2137, size: 128, offset: 448)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2138, line: 58, size: 128, elements: !2139)
!2138 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2139 = !{!2140, !2141, !2146, !2147}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2137, file: !2138, line: 59, baseType: !394, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, scope: !2137, file: !2138, line: 60, baseType: !2142, size: 32, offset: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2137, file: !2138, line: 60, size: 32, elements: !2143)
!2143 = !{!2144, !2145}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2142, file: !2138, line: 61, baseType: !7, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2142, file: !2138, line: 62, baseType: !52, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2137, file: !2138, line: 65, baseType: !96, size: 16, offset: 96)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2137, file: !2138, line: 65, baseType: !96, size: 16, offset: 112)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2120, file: !1619, line: 776, baseType: !7, size: 32, offset: 576)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2120, file: !1619, line: 777, baseType: !42, size: 64, offset: 640)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2120, file: !1619, line: 778, baseType: !2119, size: 64, offset: 704)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2120, file: !1619, line: 787, baseType: !25, size: 32, offset: 768)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2120, file: !1619, line: 788, baseType: !25, size: 32, offset: 800)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2120, file: !1619, line: 790, baseType: !25, size: 32, offset: 832)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2120, file: !1619, line: 792, baseType: !25, size: 32, offset: 864)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2120, file: !1619, line: 793, baseType: !25, size: 32, offset: 896)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2120, file: !1619, line: 794, baseType: !25, size: 32, offset: 928)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2120, file: !1619, line: 795, baseType: !7, size: 32, offset: 960)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2120, file: !1619, line: 797, baseType: !2159, size: 2048, offset: 1024)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1619, line: 551, size: 2048, elements: !2160)
!2160 = !{!2161, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2181, !2184, !2185, !2186}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2159, file: !1619, line: 553, baseType: !2162, size: 128)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1619, line: 411, size: 128, elements: !2163)
!2163 = !{!2164, !2165}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2162, file: !1619, line: 412, baseType: !42, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2162, file: !1619, line: 413, baseType: !281, size: 32, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2159, file: !1619, line: 554, baseType: !543, size: 192, align: 64, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2159, file: !1619, line: 555, baseType: !285, size: 64, offset: 320)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2159, file: !1619, line: 556, baseType: !285, size: 64, offset: 384)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2159, file: !1619, line: 558, baseType: !100, size: 128, offset: 448)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2159, file: !1619, line: 559, baseType: !7, size: 32, offset: 576)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2159, file: !1619, line: 561, baseType: !285, size: 64, offset: 640)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2159, file: !1619, line: 562, baseType: !285, size: 64, offset: 704)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2159, file: !1619, line: 563, baseType: !285, size: 64, offset: 768)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2159, file: !1619, line: 564, baseType: !285, size: 64, offset: 832)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2159, file: !1619, line: 565, baseType: !419, size: 64, offset: 896)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2159, file: !1619, line: 566, baseType: !285, size: 64, offset: 960)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2159, file: !1619, line: 568, baseType: !285, size: 64, offset: 1024)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2159, file: !1619, line: 571, baseType: !25, size: 32, offset: 1088)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2159, file: !1619, line: 572, baseType: !2180, size: 64, offset: 1152)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2159, file: !1619, line: 574, baseType: !2182, size: 64, offset: 1216)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1619, line: 49, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2159, file: !1619, line: 576, baseType: !2182, size: 64, offset: 1280)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2159, file: !1619, line: 578, baseType: !42, size: 64, offset: 1344)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2159, file: !1619, line: 588, baseType: !2187, size: 512, align: 512, offset: 1536)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1619, line: 497, size: 512, align: 512, elements: !2188)
!2188 = !{!2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2187, file: !1619, line: 498, baseType: !285, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2187, file: !1619, line: 499, baseType: !285, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2187, file: !1619, line: 500, baseType: !285, size: 64, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2187, file: !1619, line: 501, baseType: !281, size: 32, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2187, file: !1619, line: 502, baseType: !281, size: 32, offset: 224)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2187, file: !1619, line: 503, baseType: !42, size: 64, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2187, file: !1619, line: 504, baseType: !42, size: 64, offset: 320)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2187, file: !1619, line: 505, baseType: !42, size: 64, offset: 384)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2187, file: !1619, line: 506, baseType: !2198, size: 64, align: 64, offset: 448)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1619, line: 445, size: 64, align: 64, elements: !2199)
!2199 = !{!2200, !2201}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2198, file: !1619, line: 446, baseType: !7, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2198, file: !1619, line: 447, baseType: !7, size: 32, offset: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2120, file: !1619, line: 798, baseType: !2203, size: 384, offset: 3072)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1619, line: 592, size: 384, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2208, !2209, !2210, !2211}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2203, file: !1619, line: 593, baseType: !100, size: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2203, file: !1619, line: 594, baseType: !42, size: 64, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2203, file: !1619, line: 595, baseType: !42, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2203, file: !1619, line: 596, baseType: !7, size: 32, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2203, file: !1619, line: 597, baseType: !29, size: 16, offset: 288)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2203, file: !1619, line: 598, baseType: !29, size: 16, offset: 304)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2203, file: !1619, line: 600, baseType: !2212, size: 64, offset: 320)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2120, file: !1619, line: 799, baseType: !2214, size: 1792, offset: 3456)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1619, line: 610, size: 1792, elements: !2215)
!2215 = !{!2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2296, !2297}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2214, file: !1619, line: 611, baseType: !543, size: 192, align: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2214, file: !1619, line: 618, baseType: !285, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2214, file: !1619, line: 619, baseType: !285, size: 64, offset: 256)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2214, file: !1619, line: 620, baseType: !285, size: 64, offset: 320)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2214, file: !1619, line: 621, baseType: !285, size: 64, offset: 384)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2214, file: !1619, line: 622, baseType: !285, size: 64, offset: 448)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2214, file: !1619, line: 629, baseType: !419, size: 64, offset: 512)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2214, file: !1619, line: 630, baseType: !285, size: 64, offset: 576)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2214, file: !1619, line: 631, baseType: !7, size: 32, offset: 640)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2214, file: !1619, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2214, file: !1619, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2214, file: !1619, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2214, file: !1619, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2214, file: !1619, line: 662, baseType: !2230, size: 512, offset: 704)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !145, line: 118, size: 512, elements: !2231)
!2231 = !{!2232, !2240, !2241, !2246, !2292, !2293, !2294, !2295}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2230, file: !145, line: 119, baseType: !2233, size: 256)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2234, line: 9, size: 256, elements: !2235)
!2234 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2235 = !{!2236, !2237}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2233, file: !2234, line: 10, baseType: !543, size: 192, align: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2233, file: !2234, line: 11, baseType: !2238, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2239, line: 29, baseType: !419)
!2239 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2230, file: !145, line: 120, baseType: !2238, size: 64, offset: 256)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2230, file: !145, line: 121, baseType: !2242, size: 64, offset: 320)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!144, !2245}
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2230, file: !145, line: 122, baseType: !2247, size: 64, offset: 384)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !145, line: 159, size: 512, align: 512, elements: !2249)
!2249 = !{!2250, !2273, !2274, !2277, !2282, !2283, !2287, !2291}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2248, file: !145, line: 160, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !145, line: 215, size: 4608, align: 512, elements: !2253)
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2252, file: !145, line: 216, baseType: !427, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2252, file: !145, line: 217, baseType: !7, size: 32, offset: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2252, file: !145, line: 218, baseType: !7, size: 32, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2252, file: !145, line: 219, baseType: !7, size: 32, offset: 96)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2252, file: !145, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2252, file: !145, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2252, file: !145, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2252, file: !145, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2252, file: !145, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2252, file: !145, line: 226, baseType: !7, size: 32, offset: 160)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2252, file: !145, line: 227, baseType: !29, size: 16, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2252, file: !145, line: 228, baseType: !29, size: 16, offset: 208)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2252, file: !145, line: 229, baseType: !7, size: 32, offset: 224)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2252, file: !145, line: 235, baseType: !2238, size: 64, offset: 256)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2252, file: !145, line: 236, baseType: !2245, size: 64, offset: 320)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2252, file: !145, line: 237, baseType: !2238, size: 64, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2252, file: !145, line: 238, baseType: !2245, size: 64, offset: 448)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2252, file: !145, line: 239, baseType: !2272, size: 4096, align: 512, offset: 512)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2248, size: 4096, align: 512, elements: !1700)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2248, file: !145, line: 161, baseType: !7, size: 32, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2248, file: !145, line: 162, baseType: !2275, size: 32, offset: 96)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !28, line: 32, baseType: !2276)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !40, line: 96, baseType: !25)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2248, file: !145, line: 163, baseType: !2278, size: 32, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !254, line: 274, baseType: !2279)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !254, line: 274, size: 32, elements: !2280)
!2280 = !{!2281}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2279, file: !254, line: 274, baseType: !258, size: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2248, file: !145, line: 164, baseType: !2245, size: 64, offset: 192)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2248, file: !145, line: 165, baseType: !2284, size: 128, offset: 256)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2234, line: 14, size: 128, elements: !2285)
!2285 = !{!2286}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2284, file: !2234, line: 15, baseType: !1253, size: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2248, file: !145, line: 166, baseType: !2288, size: 64, offset: 384)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!2238}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2248, file: !145, line: 167, baseType: !2238, size: 64, offset: 448)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2230, file: !145, line: 123, baseType: !86, size: 8, offset: 448)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2230, file: !145, line: 124, baseType: !86, size: 8, offset: 456)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2230, file: !145, line: 125, baseType: !86, size: 8, offset: 464)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2230, file: !145, line: 126, baseType: !86, size: 8, offset: 472)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2214, file: !1619, line: 671, baseType: !2230, size: 512, offset: 1216)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2214, file: !1619, line: 679, baseType: !2298, size: 64, offset: 1728)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2120, file: !1619, line: 800, baseType: !2300, size: 64, offset: 5248)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2302)
!2302 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1619, line: 800, flags: DIFlagFwdDecl)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2120, file: !1619, line: 809, baseType: !2304, size: 64, offset: 5312)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1619, line: 70, flags: DIFlagFwdDecl)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2120, file: !1619, line: 825, baseType: !2307, size: 2048, align: 512, offset: 5632)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1619, line: 509, size: 2048, align: 512, elements: !2308)
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2307, file: !1619, line: 511, baseType: !285, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2307, file: !1619, line: 512, baseType: !285, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2307, file: !1619, line: 513, baseType: !285, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2307, file: !1619, line: 514, baseType: !285, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2307, file: !1619, line: 515, baseType: !285, size: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2307, file: !1619, line: 516, baseType: !285, size: 64, offset: 320)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2307, file: !1619, line: 518, baseType: !285, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2307, file: !1619, line: 519, baseType: !285, size: 64, offset: 448)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2307, file: !1619, line: 520, baseType: !419, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2307, file: !1619, line: 522, baseType: !285, size: 64, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2307, file: !1619, line: 523, baseType: !285, size: 64, offset: 640)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2307, file: !1619, line: 524, baseType: !419, size: 64, offset: 704)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2307, file: !1619, line: 526, baseType: !419, size: 64, offset: 768)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2307, file: !1619, line: 527, baseType: !285, size: 64, offset: 832)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2307, file: !1619, line: 529, baseType: !285, size: 64, offset: 896)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2307, file: !1619, line: 530, baseType: !285, size: 64, offset: 960)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2307, file: !1619, line: 531, baseType: !285, size: 64, offset: 1024)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2307, file: !1619, line: 532, baseType: !285, size: 64, offset: 1088)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2307, file: !1619, line: 533, baseType: !285, size: 64, offset: 1152)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2307, file: !1619, line: 535, baseType: !285, size: 64, offset: 1216)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2307, file: !1619, line: 536, baseType: !285, size: 64, offset: 1280)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2307, file: !1619, line: 537, baseType: !285, size: 64, offset: 1344)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2307, file: !1619, line: 538, baseType: !285, size: 64, offset: 1408)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2307, file: !1619, line: 539, baseType: !285, size: 64, offset: 1472)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2307, file: !1619, line: 540, baseType: !285, size: 64, offset: 1536)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2307, file: !1619, line: 541, baseType: !285, size: 64, offset: 1600)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2307, file: !1619, line: 542, baseType: !285, size: 64, offset: 1664)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2307, file: !1619, line: 543, baseType: !285, size: 64, offset: 1728)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2120, file: !1619, line: 833, baseType: !7, size: 32, offset: 7680)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2120, file: !1619, line: 836, baseType: !7, size: 32, offset: 7712)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2120, file: !1619, line: 837, baseType: !25, size: 32, offset: 7744)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2120, file: !1619, line: 838, baseType: !2341, size: 64, offset: 7808)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2343)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2344, line: 19, baseType: !2345)
!2344 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2344, line: 19, size: 64, elements: !2346)
!2346 = !{!2347}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2345, file: !2344, line: 19, baseType: !2348, size: 64)
!2348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !2349)
!2349 = !{!2350}
!2350 = !DISubrange(count: 1)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2120, file: !1619, line: 839, baseType: !2352, size: 64, offset: 7872)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2120, file: !1619, line: 840, baseType: !2343, size: 64, offset: 7936)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2120, file: !1619, line: 841, baseType: !23, size: 64, offset: 8000)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2120, file: !1619, line: 843, baseType: !29, size: 16, offset: 8064)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2120, file: !1619, line: 845, baseType: !29, size: 16, offset: 8080)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2120, file: !1619, line: 848, baseType: !25, size: 32, offset: 8096)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2120, file: !1619, line: 849, baseType: !2359, size: 32, offset: 8128)
!2359 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1619, line: 718, size: 32, elements: !2360)
!2360 = !{!2361, !2368}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2359, file: !1619, line: 724, baseType: !2362, size: 32)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2359, file: !1619, line: 719, size: 32, elements: !2363)
!2363 = !{!2364, !2365, !2366, !2367}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2362, file: !1619, line: 720, baseType: !86, size: 8)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2362, file: !1619, line: 721, baseType: !86, size: 8, offset: 8)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2362, file: !1619, line: 722, baseType: !86, size: 8, offset: 16)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2362, file: !1619, line: 723, baseType: !86, size: 8, offset: 24)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2359, file: !1619, line: 725, baseType: !281, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2120, file: !1619, line: 850, baseType: !100, size: 128, offset: 8192)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2120, file: !1619, line: 851, baseType: !2371, size: 64, offset: 8320)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1619, line: 60, flags: DIFlagFwdDecl)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2120, file: !1619, line: 855, baseType: !42, size: 64, offset: 8384)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2120, file: !1619, line: 856, baseType: !86, size: 8, offset: 8448)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2120, file: !1619, line: 857, baseType: !86, size: 8, offset: 8456)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2120, file: !1619, line: 858, baseType: !25, size: 32, offset: 8480)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2120, file: !1619, line: 859, baseType: !100, size: 128, offset: 8512)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2120, file: !1619, line: 860, baseType: !25, size: 32, offset: 8640)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2120, file: !1619, line: 861, baseType: !100, size: 128, offset: 8704)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2120, file: !1619, line: 873, baseType: !2381, size: 256, offset: 8832)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1619, line: 376, size: 256, elements: !2382)
!2382 = !{!2383, !2384, !2385, !2386}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2381, file: !1619, line: 381, baseType: !42, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2381, file: !1619, line: 384, baseType: !287, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2381, file: !1619, line: 389, baseType: !287, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2381, file: !1619, line: 392, baseType: !287, size: 64, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2120, file: !1619, line: 875, baseType: !100, size: 128, offset: 9088)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2120, file: !1619, line: 877, baseType: !2389, size: 320, offset: 9216)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2390, line: 86, size: 320, elements: !2391)
!2390 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2391 = !{!2392, !2393, !2394}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2389, file: !2390, line: 87, baseType: !25, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2389, file: !2390, line: 88, baseType: !100, size: 128, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2389, file: !2390, line: 89, baseType: !100, size: 128, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2120, file: !1619, line: 878, baseType: !543, size: 192, align: 64, offset: 9536)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2120, file: !1619, line: 881, baseType: !988, size: 64, offset: 9728)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2120, file: !1619, line: 882, baseType: !988, size: 64, offset: 9792)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2120, file: !1619, line: 884, baseType: !25, size: 32, offset: 9856)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2120, file: !1619, line: 885, baseType: !25, size: 32, offset: 9888)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2120, file: !1619, line: 886, baseType: !25, size: 32, offset: 9920)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2120, file: !1619, line: 888, baseType: !25, size: 32, offset: 9952)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2120, file: !1619, line: 890, baseType: !42, size: 64, offset: 9984)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2120, file: !1619, line: 893, baseType: !7, size: 32, offset: 10048)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2120, file: !1619, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2120, file: !1619, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2120, file: !1619, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2120, file: !1619, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2120, file: !1619, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2120, file: !1619, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2120, file: !1619, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2120, file: !1619, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2120, file: !1619, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2120, file: !1619, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2120, file: !1619, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2120, file: !1619, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2120, file: !1619, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2120, file: !1619, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2120, file: !1619, line: 969, baseType: !42, size: 64, offset: 10176)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2120, file: !1619, line: 971, baseType: !2420, size: 448, offset: 10240)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !150, line: 25, size: 448, elements: !2421)
!2421 = !{!2422, !2423, !2428}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2420, file: !150, line: 26, baseType: !42, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2420, file: !150, line: 27, baseType: !2424, size: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!843, !2427}
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, scope: !2420, file: !150, line: 28, baseType: !2429, size: 320, offset: 128)
!2429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2420, file: !150, line: 28, size: 320, elements: !2430)
!2430 = !{!2431, !2441, !2466}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2429, file: !150, line: 37, baseType: !2432, size: 320)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2429, file: !150, line: 30, size: 320, elements: !2433)
!2433 = !{!2434, !2436, !2437, !2438, !2439, !2440}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2432, file: !150, line: 31, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2432, file: !150, line: 32, baseType: !281, size: 32, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2432, file: !150, line: 33, baseType: !281, size: 32, offset: 96)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2432, file: !150, line: 34, baseType: !281, size: 32, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2432, file: !150, line: 35, baseType: !285, size: 64, offset: 192)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2432, file: !150, line: 36, baseType: !2435, size: 64, offset: 256)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2429, file: !150, line: 47, baseType: !2442, size: 192)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2429, file: !150, line: 39, size: 192, elements: !2443)
!2443 = !{!2444, !2445, !2446, !2465}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2442, file: !150, line: 40, baseType: !2275, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2442, file: !150, line: 41, baseType: !149, size: 32, offset: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, scope: !2442, file: !150, line: 42, baseType: !2447, size: 64, offset: 64)
!2447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2442, file: !150, line: 42, size: 64, elements: !2448)
!2448 = !{!2449, !2457}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2447, file: !150, line: 43, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2452, line: 7, size: 128, elements: !2453)
!2452 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2453 = !{!2454, !2456}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2451, file: !2452, line: 8, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !40, line: 93, baseType: !46)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2451, file: !2452, line: 9, baseType: !46, size: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2447, file: !150, line: 44, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2460, line: 7, size: 64, elements: !2461)
!2460 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2461 = !{!2462, !2464}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2459, file: !2460, line: 8, baseType: !2463, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2460, line: 5, baseType: !536)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2459, file: !2460, line: 9, baseType: !536, size: 32, offset: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2442, file: !150, line: 46, baseType: !285, size: 64, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2429, file: !150, line: 55, baseType: !2467, size: 256)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2429, file: !150, line: 49, size: 256, elements: !2468)
!2468 = !{!2469, !2472, !2473, !2474, !2475}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2467, file: !150, line: 50, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !150, line: 14, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2467, file: !150, line: 51, baseType: !25, size: 32, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2467, file: !150, line: 52, baseType: !25, size: 32, offset: 96)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2467, file: !150, line: 53, baseType: !42, size: 64, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2467, file: !150, line: 54, baseType: !42, size: 64, offset: 192)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2120, file: !1619, line: 973, baseType: !2477, size: 32, offset: 10688)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !28, line: 27, baseType: !2478)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !40, line: 28, baseType: !25)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2120, file: !1619, line: 974, baseType: !2477, size: 32, offset: 10720)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2120, file: !1619, line: 978, baseType: !42, size: 64, offset: 10752)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2120, file: !1619, line: 987, baseType: !2119, size: 64, offset: 10816)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2120, file: !1619, line: 990, baseType: !2119, size: 64, offset: 10880)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2120, file: !1619, line: 995, baseType: !100, size: 128, offset: 10944)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2120, file: !1619, line: 996, baseType: !100, size: 128, offset: 11072)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2120, file: !1619, line: 997, baseType: !2119, size: 64, offset: 11200)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2120, file: !1619, line: 1005, baseType: !100, size: 128, offset: 11264)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2120, file: !1619, line: 1006, baseType: !100, size: 128, offset: 11392)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2120, file: !1619, line: 1009, baseType: !463, size: 64, offset: 11520)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2120, file: !1619, line: 1010, baseType: !2490, size: 512, offset: 11584)
!2490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 512, elements: !238)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2120, file: !1619, line: 1011, baseType: !100, size: 128, offset: 12096)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2120, file: !1619, line: 1012, baseType: !100, size: 128, offset: 12224)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2120, file: !1619, line: 1014, baseType: !780, size: 64, offset: 12352)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2120, file: !1619, line: 1017, baseType: !1792, size: 64, offset: 12416)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2120, file: !1619, line: 1020, baseType: !1792, size: 64, offset: 12480)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2120, file: !1619, line: 1023, baseType: !23, size: 64, offset: 12544)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2120, file: !1619, line: 1025, baseType: !285, size: 64, offset: 12608)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2120, file: !1619, line: 1026, baseType: !285, size: 64, offset: 12672)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2120, file: !1619, line: 1031, baseType: !285, size: 64, offset: 12736)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2120, file: !1619, line: 1032, baseType: !2501, size: 192, offset: 12800)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1619, line: 324, size: 192, elements: !2502)
!2502 = !{!2503, !2504, !2505}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2501, file: !1619, line: 326, baseType: !285, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2501, file: !1619, line: 327, baseType: !285, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2501, file: !1619, line: 328, baseType: !427, size: 32, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2120, file: !1619, line: 1041, baseType: !42, size: 64, offset: 12992)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2120, file: !1619, line: 1042, baseType: !42, size: 64, offset: 13056)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2120, file: !1619, line: 1045, baseType: !285, size: 64, offset: 13120)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2120, file: !1619, line: 1048, baseType: !285, size: 64, offset: 13184)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2120, file: !1619, line: 1051, baseType: !42, size: 64, offset: 13248)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2120, file: !1619, line: 1052, baseType: !42, size: 64, offset: 13312)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2120, file: !1619, line: 1055, baseType: !2513, size: 640, offset: 13376)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2514, line: 132, size: 640, elements: !2515)
!2514 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2515 = !{!2516, !2522, !2523}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2513, file: !2514, line: 133, baseType: !2517, size: 576)
!2517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2518, size: 576, elements: !459)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2514, line: 117, size: 192, elements: !2519)
!2519 = !{!2520, !2521}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2518, file: !2514, line: 118, baseType: !285, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2518, file: !2514, line: 119, baseType: !2284, size: 128, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2513, file: !2514, line: 134, baseType: !7, size: 32, offset: 576)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2513, file: !2514, line: 135, baseType: !7, size: 32, offset: 608)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2120, file: !1619, line: 1058, baseType: !2525, size: 448, offset: 14016)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2514, line: 144, size: 448, elements: !2526)
!2526 = !{!2527, !2528, !2529}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2525, file: !2514, line: 145, baseType: !400, size: 128, align: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2525, file: !2514, line: 146, baseType: !422, size: 256, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2525, file: !2514, line: 147, baseType: !7, size: 32, offset: 384)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2120, file: !1619, line: 1064, baseType: !501, size: 64, offset: 14464)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2120, file: !1619, line: 1067, baseType: !501, size: 64, offset: 14528)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2120, file: !1619, line: 1070, baseType: !501, size: 64, offset: 14592)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2120, file: !1619, line: 1074, baseType: !528, size: 64, offset: 14656)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2120, file: !1619, line: 1084, baseType: !2535, size: 128, offset: 14720)
!2535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !2536)
!2536 = !{!2537}
!2537 = !DISubrange(count: 16)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2120, file: !1619, line: 1086, baseType: !2539, size: 64, offset: 14848)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1619, line: 55, flags: DIFlagFwdDecl)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2120, file: !1619, line: 1089, baseType: !2542, size: 64, offset: 14912)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2543, line: 12, size: 64, elements: !2544)
!2543 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2544 = !{!2545}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2542, file: !2543, line: 13, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2543, line: 8, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2120, file: !1619, line: 1090, baseType: !2549, size: 128, offset: 14976)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2550, line: 13, size: 128, elements: !2551)
!2550 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2551 = !{!2552}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2549, file: !2550, line: 14, baseType: !100, size: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2120, file: !1619, line: 1097, baseType: !2554, size: 64, offset: 15104)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1619, line: 50, flags: DIFlagFwdDecl)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2120, file: !1619, line: 1100, baseType: !2557, size: 64, offset: 15168)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1619, line: 1100, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2120, file: !1619, line: 1103, baseType: !2560, size: 64, offset: 15232)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1619, line: 53, flags: DIFlagFwdDecl)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2120, file: !1619, line: 1107, baseType: !2563, size: 64, offset: 15296)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2565, line: 31, size: 576, elements: !2566)
!2565 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2566 = !{!2567, !2568, !2571, !2574, !2577, !2578, !2579, !2582, !2583}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2564, file: !2565, line: 32, baseType: !467, size: 32)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2564, file: !2565, line: 33, baseType: !2569, size: 64, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2565, line: 9, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2564, file: !2565, line: 34, baseType: !2572, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2565, line: 10, flags: DIFlagFwdDecl)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2564, file: !2565, line: 35, baseType: !2575, size: 64, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2565, line: 8, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2564, file: !2565, line: 36, baseType: !494, size: 64, offset: 256)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2564, file: !2565, line: 37, baseType: !1682, size: 64, offset: 320)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2564, file: !2565, line: 38, baseType: !2580, size: 64, offset: 384)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2565, line: 38, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2564, file: !2565, line: 39, baseType: !2580, size: 64, offset: 448)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2564, file: !2565, line: 40, baseType: !2584, size: 64, offset: 512)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2565, line: 12, flags: DIFlagFwdDecl)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2120, file: !1619, line: 1110, baseType: !2587, size: 64, offset: 15360)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2589, line: 93, size: 8768, elements: !2590)
!2589 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2590 = !{!2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2641, !2650, !2651, !2653, !2654, !2655, !2658, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2696, !2697, !2704, !2714, !2717, !2718, !2721, !2722, !2723, !2724, !2725, !2726}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2588, file: !2589, line: 94, baseType: !467, size: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2588, file: !2589, line: 95, baseType: !52, size: 32, offset: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2588, file: !2589, line: 96, baseType: !25, size: 32, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2588, file: !2589, line: 97, baseType: !25, size: 32, offset: 96)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2588, file: !2589, line: 98, baseType: !100, size: 128, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2588, file: !2589, line: 100, baseType: !57, size: 192, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2588, file: !2589, line: 103, baseType: !2119, size: 64, offset: 448)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2588, file: !2589, line: 106, baseType: !2599, size: 192, offset: 512)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2600, line: 32, size: 192, elements: !2601)
!2600 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2601 = !{!2602, !2603}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2599, file: !2600, line: 33, baseType: !100, size: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2599, file: !2600, line: 34, baseType: !2604, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2605, line: 25, baseType: !2606)
!2605 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2605, line: 23, size: 64, elements: !2607)
!2607 = !{!2608}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2606, file: !2605, line: 24, baseType: !2348, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2588, file: !2589, line: 109, baseType: !476, size: 64, offset: 704)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2588, file: !2589, line: 112, baseType: !25, size: 32, offset: 768)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2588, file: !2589, line: 114, baseType: !25, size: 32, offset: 800)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2588, file: !2589, line: 115, baseType: !2119, size: 64, offset: 832)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2588, file: !2589, line: 118, baseType: !25, size: 32, offset: 896)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2588, file: !2589, line: 119, baseType: !7, size: 32, offset: 928)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2588, file: !2589, line: 121, baseType: !2616, size: 64, offset: 960)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2589, line: 80, size: 448, elements: !2618)
!2618 = !{!2619, !2620, !2626}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2617, file: !2589, line: 81, baseType: !52, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2617, file: !2589, line: 82, baseType: !2621, size: 128, offset: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2589, line: 75, size: 128, elements: !2622)
!2622 = !{!2623, !2624}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2621, file: !2589, line: 76, baseType: !2119, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2621, file: !2589, line: 77, baseType: !2625, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2617, file: !2589, line: 83, baseType: !781, size: 256, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2588, file: !2589, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2588, file: !2589, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2588, file: !2589, line: 138, baseType: !7, size: 32, offset: 1056)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2588, file: !2589, line: 139, baseType: !100, size: 128, offset: 1088)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2588, file: !2589, line: 142, baseType: !2230, size: 512, offset: 1216)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2588, file: !2589, line: 143, baseType: !2238, size: 64, offset: 1728)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2588, file: !2589, line: 150, baseType: !2634, size: 256, offset: 1792)
!2634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2635, size: 256, elements: !2639)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2589, line: 38, size: 128, elements: !2636)
!2636 = !{!2637, !2638}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2635, file: !2589, line: 39, baseType: !285, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2635, file: !2589, line: 40, baseType: !285, size: 64, offset: 64)
!2639 = !{!2640}
!2640 = !DISubrange(count: 2)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2588, file: !2589, line: 156, baseType: !2642, size: 192, offset: 2048)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2589, line: 66, size: 192, elements: !2643)
!2643 = !{!2644}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2642, file: !2589, line: 67, baseType: !2645, size: 192)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2589, line: 47, size: 192, elements: !2646)
!2646 = !{!2647, !2648, !2649}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2645, file: !2589, line: 48, baseType: !415, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2645, file: !2589, line: 49, baseType: !415, size: 64, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2645, file: !2589, line: 50, baseType: !415, size: 64, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2588, file: !2589, line: 160, baseType: !2513, size: 640, offset: 2240)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2588, file: !2589, line: 163, baseType: !2652, size: 256, offset: 2880)
!2652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 256, elements: !238)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2588, file: !2589, line: 169, baseType: !463, size: 64, offset: 3136)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2588, file: !2589, line: 172, baseType: !25, size: 32, offset: 3200)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2588, file: !2589, line: 174, baseType: !2656, size: 64, offset: 3264)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2589, line: 174, flags: DIFlagFwdDecl)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2588, file: !2589, line: 185, baseType: !2659, size: 64, offset: 3328)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !254, line: 860, baseType: !2660)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 853, size: 64, elements: !2661)
!2661 = !{!2662, !2663}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2660, file: !254, line: 858, baseType: !253, size: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2660, file: !254, line: 859, baseType: !62, size: 32, offset: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2588, file: !2589, line: 186, baseType: !285, size: 64, offset: 3392)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2588, file: !2589, line: 186, baseType: !285, size: 64, offset: 3456)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2588, file: !2589, line: 186, baseType: !285, size: 64, offset: 3520)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2588, file: !2589, line: 186, baseType: !285, size: 64, offset: 3584)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2588, file: !2589, line: 187, baseType: !285, size: 64, offset: 3648)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2588, file: !2589, line: 188, baseType: !285, size: 64, offset: 3712)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2588, file: !2589, line: 189, baseType: !2501, size: 192, offset: 3776)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2588, file: !2589, line: 190, baseType: !42, size: 64, offset: 3968)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2588, file: !2589, line: 190, baseType: !42, size: 64, offset: 4032)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2588, file: !2589, line: 190, baseType: !42, size: 64, offset: 4096)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2588, file: !2589, line: 190, baseType: !42, size: 64, offset: 4160)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2588, file: !2589, line: 191, baseType: !42, size: 64, offset: 4224)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2588, file: !2589, line: 191, baseType: !42, size: 64, offset: 4288)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2588, file: !2589, line: 191, baseType: !42, size: 64, offset: 4352)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2588, file: !2589, line: 191, baseType: !42, size: 64, offset: 4416)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2588, file: !2589, line: 192, baseType: !42, size: 64, offset: 4480)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2588, file: !2589, line: 192, baseType: !42, size: 64, offset: 4544)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2588, file: !2589, line: 192, baseType: !42, size: 64, offset: 4608)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2588, file: !2589, line: 192, baseType: !42, size: 64, offset: 4672)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2588, file: !2589, line: 193, baseType: !42, size: 64, offset: 4736)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2588, file: !2589, line: 193, baseType: !42, size: 64, offset: 4800)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2588, file: !2589, line: 194, baseType: !2686, size: 448, offset: 4864)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2687, line: 12, size: 448, elements: !2688)
!2687 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2688 = !{!2689, !2690, !2691, !2692, !2693, !2694, !2695}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2686, file: !2687, line: 15, baseType: !285, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2686, file: !2687, line: 17, baseType: !285, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2686, file: !2687, line: 19, baseType: !285, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2686, file: !2687, line: 21, baseType: !285, size: 64, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2686, file: !2687, line: 29, baseType: !285, size: 64, offset: 256)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2686, file: !2687, line: 35, baseType: !285, size: 64, offset: 320)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2686, file: !2687, line: 44, baseType: !285, size: 64, offset: 384)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2588, file: !2589, line: 202, baseType: !287, size: 64, offset: 5312)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2588, file: !2589, line: 213, baseType: !2698, size: 2048, offset: 5376)
!2698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2699, size: 2048, elements: !2536)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2700, line: 43, size: 128, elements: !2701)
!2700 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2701 = !{!2702, !2703}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2699, file: !2700, line: 44, baseType: !41, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2699, file: !2700, line: 45, baseType: !41, size: 64, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2588, file: !2589, line: 216, baseType: !2705, size: 448, offset: 7424)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2589, line: 30, size: 448, elements: !2706)
!2706 = !{!2707, !2708, !2709, !2710, !2711, !2712, !2713}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2705, file: !2589, line: 31, baseType: !25, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2705, file: !2589, line: 32, baseType: !843, size: 64, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2705, file: !2589, line: 33, baseType: !42, size: 64, offset: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2705, file: !2589, line: 34, baseType: !285, size: 64, offset: 192)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2705, file: !2589, line: 34, baseType: !285, size: 64, offset: 256)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2705, file: !2589, line: 35, baseType: !42, size: 64, offset: 320)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2705, file: !2589, line: 35, baseType: !42, size: 64, offset: 384)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2588, file: !2589, line: 219, baseType: !2715, size: 64, offset: 7872)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2589, line: 219, flags: DIFlagFwdDecl)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2588, file: !2589, line: 222, baseType: !7, size: 32, offset: 7936)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2588, file: !2589, line: 223, baseType: !2719, size: 64, offset: 8000)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2589, line: 223, flags: DIFlagFwdDecl)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2588, file: !2589, line: 230, baseType: !610, size: 8, offset: 8064)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2588, file: !2589, line: 231, baseType: !579, size: 16, offset: 8080)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2588, file: !2589, line: 232, baseType: !579, size: 16, offset: 8096)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2588, file: !2589, line: 234, baseType: !988, size: 64, offset: 8128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2588, file: !2589, line: 237, baseType: !422, size: 256, offset: 8192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2588, file: !2589, line: 243, baseType: !551, size: 320, offset: 8448)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2120, file: !1619, line: 1111, baseType: !2728, size: 64, offset: 15424)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2589, line: 20, size: 16640, elements: !2730)
!2730 = !{!2731, !2732, !2733, !2734}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2729, file: !2589, line: 21, baseType: !62, size: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2729, file: !2589, line: 22, baseType: !467, size: 32, offset: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2729, file: !2589, line: 23, baseType: !57, size: 192, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2729, file: !2589, line: 24, baseType: !2735, size: 16384, offset: 256)
!2735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2736, size: 16384, elements: !2756)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2600, line: 51, size: 256, elements: !2737)
!2737 = !{!2738}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2736, file: !2600, line: 52, baseType: !2739, size: 256)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2600, line: 37, size: 256, elements: !2740)
!2740 = !{!2741, !2748, !2749, !2755}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2739, file: !2600, line: 39, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2743, line: 83, baseType: !2744)
!2743 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2743, line: 82, baseType: !2746)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{null, !25}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2739, file: !2600, line: 40, baseType: !42, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2739, file: !2600, line: 46, baseType: !2750, size: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2743, line: 86, baseType: !2751)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2743, line: 85, baseType: !2753)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{null}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2739, file: !2600, line: 48, baseType: !2604, size: 64, offset: 192)
!2756 = !{!2757}
!2757 = !DISubrange(count: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2120, file: !1619, line: 1112, baseType: !2604, size: 64, offset: 15488)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2120, file: !1619, line: 1113, baseType: !2604, size: 64, offset: 15552)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2120, file: !1619, line: 1115, baseType: !2604, size: 64, offset: 15616)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2120, file: !1619, line: 1116, baseType: !2599, size: 192, offset: 15680)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2120, file: !1619, line: 1117, baseType: !42, size: 64, offset: 15872)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2120, file: !1619, line: 1118, baseType: !38, size: 64, offset: 15936)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2120, file: !1619, line: 1119, baseType: !7, size: 32, offset: 16000)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2120, file: !1619, line: 1121, baseType: !403, size: 64, offset: 16064)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2120, file: !1619, line: 1125, baseType: !2767, size: 64, offset: 16128)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1619, line: 43, flags: DIFlagFwdDecl)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2120, file: !1619, line: 1127, baseType: !298, size: 32, offset: 16192)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2120, file: !1619, line: 1128, baseType: !7, size: 32, offset: 16224)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2120, file: !1619, line: 1130, baseType: !2772, size: 128, offset: 16256)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2773, line: 37, size: 128, elements: !2774)
!2773 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2774 = !{!2775, !2776, !2777}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2772, file: !2773, line: 38, baseType: !25, size: 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2772, file: !2773, line: 39, baseType: !52, size: 32, offset: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2772, file: !2773, line: 40, baseType: !2778, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2773, line: 24, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2120, file: !1619, line: 1131, baseType: !2781, size: 256, offset: 16384)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2782, line: 12, size: 256, elements: !2783)
!2782 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2783 = !{!2784, !2785, !2786, !2787}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2781, file: !2782, line: 13, baseType: !370, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2781, file: !2782, line: 14, baseType: !42, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2781, file: !2782, line: 15, baseType: !42, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2781, file: !2782, line: 16, baseType: !610, size: 8, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2120, file: !1619, line: 1134, baseType: !285, size: 64, offset: 16640)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2120, file: !1619, line: 1135, baseType: !285, size: 64, offset: 16704)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2120, file: !1619, line: 1138, baseType: !62, size: 32, offset: 16768)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2120, file: !1619, line: 1141, baseType: !427, size: 32, offset: 16800)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2120, file: !1619, line: 1143, baseType: !2793, size: 64, offset: 16832)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1619, line: 735, size: 64, elements: !2794)
!2794 = !{!2795}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2793, file: !1619, line: 736, baseType: !2796, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2120, file: !1619, line: 1147, baseType: !1253, size: 128, offset: 16896)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2120, file: !1619, line: 1149, baseType: !2119, size: 64, offset: 17024)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2120, file: !1619, line: 1151, baseType: !2800, size: 64, offset: 17088)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1619, line: 1151, flags: DIFlagFwdDecl)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2120, file: !1619, line: 1188, baseType: !23, size: 64, offset: 17152)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2120, file: !1619, line: 1191, baseType: !2804, size: 64, offset: 17216)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1619, line: 44, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2120, file: !1619, line: 1194, baseType: !2807, size: 64, offset: 17280)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1619, line: 45, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2120, file: !1619, line: 1197, baseType: !2810, size: 64, offset: 17344)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1619, line: 61, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2120, file: !1619, line: 1199, baseType: !2813, size: 64, offset: 17408)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2815, line: 99, size: 128, elements: !2816)
!2815 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2816 = !{!2817, !2818, !2819}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2814, file: !2815, line: 100, baseType: !413, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2814, file: !2815, line: 101, baseType: !52, size: 32, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2814, file: !2815, line: 103, baseType: !29, size: 16, offset: 96)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2120, file: !1619, line: 1202, baseType: !2821, size: 64, offset: 17472)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1619, line: 48, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2120, file: !1619, line: 1205, baseType: !42, size: 64, offset: 17536)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2120, file: !1619, line: 1206, baseType: !2825, size: 64, offset: 17600)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2600, line: 14, baseType: !2827)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2600, line: 12, size: 384, elements: !2828)
!2828 = !{!2829}
!2829 = !DIDerivedType(tag: DW_TAG_member, scope: !2827, file: !2600, line: 13, baseType: !2830, size: 384)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2827, file: !2600, line: 13, size: 384, elements: !2831)
!2831 = !{!2832, !2833, !2834, !2835}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2830, file: !2600, line: 13, baseType: !25, size: 32)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2830, file: !2600, line: 13, baseType: !25, size: 32, offset: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2830, file: !2600, line: 13, baseType: !25, size: 32, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2830, file: !2600, line: 13, baseType: !2836, size: 256, offset: 128)
!2836 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2837, line: 37, size: 256, elements: !2838)
!2837 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2838 = !{!2839, !2844, !2857, !2863, !2872, !2899, !2904}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2836, file: !2837, line: 42, baseType: !2840, size: 64)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2836, file: !2837, line: 39, size: 64, elements: !2841)
!2841 = !{!2842, !2843}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2840, file: !2837, line: 40, baseType: !2478, size: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2840, file: !2837, line: 41, baseType: !304, size: 32, offset: 32)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2836, file: !2837, line: 50, baseType: !2845, size: 192)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2836, file: !2837, line: 45, size: 192, elements: !2846)
!2846 = !{!2847, !2849, !2850, !2856}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2845, file: !2837, line: 46, baseType: !2848, size: 32)
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !40, line: 95, baseType: !25)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2845, file: !2837, line: 47, baseType: !25, size: 32, offset: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2845, file: !2837, line: 48, baseType: !2851, size: 64, offset: 64)
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2837, line: 11, baseType: !2852)
!2852 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2837, line: 8, size: 64, elements: !2853)
!2853 = !{!2854, !2855}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2852, file: !2837, line: 9, baseType: !25, size: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2852, file: !2837, line: 10, baseType: !23, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2845, file: !2837, line: 49, baseType: !25, size: 32, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2836, file: !2837, line: 57, baseType: !2858, size: 128)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2836, file: !2837, line: 53, size: 128, elements: !2859)
!2859 = !{!2860, !2861, !2862}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2858, file: !2837, line: 54, baseType: !2478, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2858, file: !2837, line: 55, baseType: !304, size: 32, offset: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2858, file: !2837, line: 56, baseType: !2851, size: 64, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2836, file: !2837, line: 66, baseType: !2864, size: 256)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2836, file: !2837, line: 60, size: 256, elements: !2865)
!2865 = !{!2866, !2867, !2868, !2869, !2871}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2864, file: !2837, line: 61, baseType: !2478, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2864, file: !2837, line: 62, baseType: !304, size: 32, offset: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2864, file: !2837, line: 63, baseType: !25, size: 32, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2864, file: !2837, line: 64, baseType: !2870, size: 64, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !40, line: 94, baseType: !905)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2864, file: !2837, line: 65, baseType: !2870, size: 64, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2836, file: !2837, line: 105, baseType: !2873, size: 256)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2836, file: !2837, line: 69, size: 256, elements: !2874)
!2874 = !{!2875, !2876}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2873, file: !2837, line: 70, baseType: !23, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, scope: !2873, file: !2837, line: 79, baseType: !2877, size: 192, offset: 64)
!2877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2873, file: !2837, line: 79, size: 192, elements: !2878)
!2878 = !{!2879, !2880, !2881, !2888, !2893}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2877, file: !2837, line: 81, baseType: !25, size: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2877, file: !2837, line: 86, baseType: !579, size: 16)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2877, file: !2837, line: 92, baseType: !2882, size: 192)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2877, file: !2837, line: 88, size: 192, elements: !2883)
!2883 = !{!2884, !2886, !2887}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2882, file: !2837, line: 89, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !1700)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2882, file: !2837, line: 90, baseType: !23, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2882, file: !2837, line: 91, baseType: !23, size: 64, offset: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2877, file: !2837, line: 97, baseType: !2889, size: 96)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2877, file: !2837, line: 94, size: 96, elements: !2890)
!2890 = !{!2891, !2892}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2889, file: !2837, line: 95, baseType: !2885, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2889, file: !2837, line: 96, baseType: !282, size: 32, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2877, file: !2837, line: 103, baseType: !2894, size: 128)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2877, file: !2837, line: 99, size: 128, elements: !2895)
!2895 = !{!2896, !2897, !2898}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2894, file: !2837, line: 100, baseType: !42, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2894, file: !2837, line: 101, baseType: !282, size: 32, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2894, file: !2837, line: 102, baseType: !282, size: 32, offset: 96)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2836, file: !2837, line: 111, baseType: !2900, size: 128)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2836, file: !2837, line: 108, size: 128, elements: !2901)
!2901 = !{!2902, !2903}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2900, file: !2837, line: 109, baseType: !843, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2900, file: !2837, line: 110, baseType: !25, size: 32, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2836, file: !2837, line: 118, baseType: !2905, size: 128)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2836, file: !2837, line: 114, size: 128, elements: !2906)
!2906 = !{!2907, !2908, !2909}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2905, file: !2837, line: 115, baseType: !23, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2905, file: !2837, line: 116, baseType: !25, size: 32, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2905, file: !2837, line: 117, baseType: !7, size: 32, offset: 96)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2120, file: !1619, line: 1208, baseType: !2686, size: 448, offset: 17664)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2120, file: !1619, line: 1215, baseType: !285, size: 64, offset: 18112)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2120, file: !1619, line: 1217, baseType: !285, size: 64, offset: 18176)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2120, file: !1619, line: 1219, baseType: !285, size: 64, offset: 18240)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2120, file: !1619, line: 1223, baseType: !2915, size: 64, offset: 18304)
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2916, line: 99, baseType: !2917)
!2916 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2916, line: 99, size: 64, elements: !2918)
!2918 = !{!2919}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2917, file: !2916, line: 99, baseType: !2348, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2120, file: !1619, line: 1225, baseType: !253, size: 32, offset: 18368)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2120, file: !1619, line: 1226, baseType: !25, size: 32, offset: 18400)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2120, file: !1619, line: 1227, baseType: !25, size: 32, offset: 18432)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2120, file: !1619, line: 1231, baseType: !2924, size: 64, offset: 18496)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1619, line: 1231, flags: DIFlagFwdDecl)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2120, file: !1619, line: 1233, baseType: !100, size: 128, offset: 18560)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2120, file: !1619, line: 1240, baseType: !2928, size: 64, offset: 18688)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1619, line: 62, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2120, file: !1619, line: 1242, baseType: !2931, size: 64, offset: 18752)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1619, line: 1242, flags: DIFlagFwdDecl)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2120, file: !1619, line: 1244, baseType: !100, size: 128, offset: 18816)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2120, file: !1619, line: 1245, baseType: !2935, size: 64, offset: 18944)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1619, line: 51, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2120, file: !1619, line: 1246, baseType: !422, size: 256, offset: 19008)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2120, file: !1619, line: 1247, baseType: !7, size: 32, offset: 19264)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2120, file: !1619, line: 1250, baseType: !2940, size: 64, offset: 19328)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1619, line: 57, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2120, file: !1619, line: 1251, baseType: !422, size: 256, offset: 19392)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2120, file: !1619, line: 1252, baseType: !100, size: 128, offset: 19648)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2120, file: !1619, line: 1259, baseType: !1565, size: 64, offset: 19776)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2120, file: !1619, line: 1260, baseType: !579, size: 16, offset: 19840)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2120, file: !1619, line: 1261, baseType: !579, size: 16, offset: 19856)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2120, file: !1619, line: 1314, baseType: !2948, size: 64, offset: 19904)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2950, line: 62, size: 256, align: 256, elements: !2951)
!2950 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2951 = !{!2952, !2953, !2954, !2955, !2956, !2957, !2958}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2949, file: !2950, line: 75, baseType: !282, size: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2949, file: !2950, line: 90, baseType: !282, size: 32, offset: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2949, file: !2950, line: 112, baseType: !286, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2949, file: !2950, line: 132, baseType: !282, size: 32, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2949, file: !2950, line: 140, baseType: !282, size: 32, offset: 160)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2949, file: !2950, line: 149, baseType: !282, size: 32, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2949, file: !2950, line: 154, baseType: !2959, offset: 224)
!2959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, elements: !384)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2120, file: !1619, line: 1315, baseType: !281, size: 32, offset: 19968)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2120, file: !1619, line: 1316, baseType: !281, size: 32, offset: 20000)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2120, file: !1619, line: 1321, baseType: !42, size: 64, offset: 20032)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2120, file: !1619, line: 1325, baseType: !25, size: 32, offset: 20096)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2120, file: !1619, line: 1326, baseType: !25, size: 32, offset: 20128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2120, file: !1619, line: 1327, baseType: !25, size: 32, offset: 20160)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2120, file: !1619, line: 1328, baseType: !25, size: 32, offset: 20192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2120, file: !1619, line: 1329, baseType: !400, size: 128, align: 64, offset: 20224)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2120, file: !1619, line: 1332, baseType: !2969, size: 128, offset: 20352)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2970, line: 51, size: 128, elements: !2971)
!2970 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2971 = !{!2972, !2977, !2978}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2969, file: !2970, line: 60, baseType: !2973, size: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2974, line: 7, size: 64, elements: !2975)
!2974 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2975 = !{!2976}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2973, file: !2974, line: 12, baseType: !2345, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2969, file: !2970, line: 63, baseType: !610, size: 8, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2969, file: !2970, line: 70, baseType: !610, size: 8, offset: 72)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2120, file: !1619, line: 1335, baseType: !1617, size: 64, offset: 20480)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2120, file: !1619, line: 1337, baseType: !2981, size: 128, offset: 20544)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2970, line: 39, size: 128, elements: !2982)
!2982 = !{!2983, !2984, !2985}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2981, file: !2970, line: 40, baseType: !1216, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2981, file: !2970, line: 42, baseType: !282, size: 32, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2981, file: !2970, line: 43, baseType: !282, size: 32, offset: 96)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2120, file: !1619, line: 1340, baseType: !2987, size: 64, offset: 20672)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1619, line: 69, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2120, file: !1619, line: 1351, baseType: !25, size: 32, offset: 20736)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2120, file: !1619, line: 1352, baseType: !25, size: 32, offset: 20768)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2120, file: !1619, line: 1354, baseType: !42, size: 64, offset: 20800)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2120, file: !1619, line: 1364, baseType: !285, size: 64, offset: 20864)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2120, file: !1619, line: 1365, baseType: !285, size: 64, offset: 20928)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2120, file: !1619, line: 1412, baseType: !42, size: 64, offset: 20992)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2120, file: !1619, line: 1453, baseType: !2996, size: 64, offset: 21056)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1619, line: 1453, flags: DIFlagFwdDecl)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2120, file: !1619, line: 1457, baseType: !2999, size: 64, offset: 21120)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !187, line: 61, size: 576, elements: !3001)
!3001 = !{!3002, !3003, !3022, !3025, !3026, !3059, !3069}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3000, file: !187, line: 62, baseType: !186, size: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, scope: !3000, file: !187, line: 64, baseType: !3004, size: 192, offset: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3000, file: !187, line: 64, size: 192, elements: !3005)
!3005 = !{!3006, !3017}
!3006 = !DIDerivedType(tag: DW_TAG_member, scope: !3004, file: !187, line: 65, baseType: !3007, size: 192)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3004, file: !187, line: 65, size: 192, elements: !3008)
!3008 = !{!3009, !3016}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3007, file: !187, line: 66, baseType: !3010, size: 128)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3011, line: 50, size: 128, elements: !3012)
!3011 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3012 = !{!3013, !3014, !3015}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3010, file: !3011, line: 52, baseType: !42, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3010, file: !3011, line: 54, baseType: !7, size: 32, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3010, file: !3011, line: 55, baseType: !7, size: 32, offset: 96)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3007, file: !187, line: 67, baseType: !42, size: 64, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, scope: !3004, file: !187, line: 70, baseType: !3018, size: 192)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3004, file: !187, line: 70, size: 192, elements: !3019)
!3019 = !{!3020, !3021}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3018, file: !187, line: 71, baseType: !400, size: 128, align: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3018, file: !187, line: 72, baseType: !42, size: 64, offset: 128)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3000, file: !187, line: 76, baseType: !3023, size: 64, offset: 256)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !187, line: 76, flags: DIFlagFwdDecl)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3000, file: !187, line: 77, baseType: !42, size: 64, offset: 320)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3000, file: !187, line: 79, baseType: !3027, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3011, line: 25, size: 256, elements: !3029)
!3029 = !{!3030, !3036, !3040}
!3030 = !DIDerivedType(tag: DW_TAG_member, scope: !3028, file: !3011, line: 26, baseType: !3031, size: 128)
!3031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3028, file: !3011, line: 26, size: 128, elements: !3032)
!3032 = !{!3033, !3035}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3031, file: !3011, line: 27, baseType: !3034, size: 128)
!3034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, elements: !2536)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3031, file: !3011, line: 28, baseType: !3034, size: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3028, file: !3011, line: 31, baseType: !3037, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3039)
!3039 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3011, line: 23, flags: DIFlagFwdDecl)
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !3028, file: !3011, line: 33, baseType: !3041, size: 64, offset: 192)
!3041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3028, file: !3011, line: 33, size: 64, elements: !3042)
!3042 = !{!3043, !3049, !3054}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3041, file: !3011, line: 38, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3041, file: !3011, line: 34, size: 64, elements: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3044, file: !3011, line: 35, baseType: !536, size: 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3044, file: !3011, line: 36, baseType: !86, size: 8, offset: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3044, file: !3011, line: 37, baseType: !86, size: 8, offset: 40)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3041, file: !3011, line: 42, baseType: !3050, size: 16)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3041, file: !3011, line: 39, size: 16, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3050, file: !3011, line: 40, baseType: !86, size: 8)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3050, file: !3011, line: 41, baseType: !86, size: 8, offset: 8)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3041, file: !3011, line: 46, baseType: !3055, size: 16)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3041, file: !3011, line: 43, size: 16, elements: !3056)
!3056 = !{!3057, !3058}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3055, file: !3011, line: 44, baseType: !86, size: 8)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3055, file: !3011, line: 45, baseType: !86, size: 8, offset: 8)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3000, file: !187, line: 81, baseType: !3060, size: 64, offset: 448)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !187, line: 85, size: 384, elements: !3062)
!3062 = !{!3063, !3064, !3065, !3066, !3067, !3068}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3061, file: !187, line: 86, baseType: !3023, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3061, file: !187, line: 87, baseType: !42, size: 64, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3061, file: !187, line: 88, baseType: !42, size: 64, offset: 128)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3061, file: !187, line: 89, baseType: !42, size: 64, offset: 192)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3061, file: !187, line: 90, baseType: !610, size: 8, offset: 256)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3061, file: !187, line: 92, baseType: !3060, size: 64, offset: 320)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3000, file: !187, line: 82, baseType: !7, size: 32, offset: 512)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2120, file: !1619, line: 1463, baseType: !3071, offset: 21184)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1619, line: 739, elements: !1009)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2120, file: !1619, line: 1470, baseType: !400, size: 128, align: 64, offset: 21184)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2120, file: !1619, line: 1471, baseType: !467, size: 32, offset: 21312)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2120, file: !1619, line: 1472, baseType: !25, size: 32, offset: 21344)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2120, file: !1619, line: 1474, baseType: !2119, size: 64, offset: 21376)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2120, file: !1619, line: 1475, baseType: !3077, size: 320, offset: 21440)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3078, line: 11, size: 320, elements: !3079)
!3078 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3079 = !{!3080, !3081, !3082, !3087}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3077, file: !3078, line: 16, baseType: !480, size: 128)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3077, file: !3078, line: 17, baseType: !42, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3077, file: !3078, line: 18, baseType: !3083, size: 64, offset: 192)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{null, !3086}
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3077, file: !3078, line: 19, baseType: !281, size: 32, offset: 256)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2120, file: !1619, line: 1478, baseType: !3089, size: 64, offset: 21760)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1619, line: 1478, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2120, file: !1619, line: 1482, baseType: !467, size: 32, offset: 21824)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2120, file: !1619, line: 1489, baseType: !23, size: 64, offset: 21888)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2120, file: !1619, line: 1504, baseType: !23, size: 64, offset: 21952)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2120, file: !1619, line: 1505, baseType: !286, size: 64, offset: 22016)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2120, file: !1619, line: 1506, baseType: !285, size: 64, offset: 22080)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2120, file: !1619, line: 1507, baseType: !286, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2120, file: !1619, line: 1508, baseType: !286, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2120, file: !1619, line: 1509, baseType: !286, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2120, file: !1619, line: 1510, baseType: !400, size: 128, align: 64, offset: 22208)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2120, file: !1619, line: 1511, baseType: !25, size: 32, offset: 22336)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2120, file: !1619, line: 1515, baseType: !3102, size: 64, offset: 22400)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !395, line: 56, size: 64, elements: !3103)
!3103 = !{!3104}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3102, file: !395, line: 57, baseType: !398, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2120, file: !1619, line: 1518, baseType: !3102, size: 64, offset: 22464)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2120, file: !1619, line: 1528, baseType: !400, size: 128, align: 64, offset: 22528)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2120, file: !1619, line: 1552, baseType: !3108, size: 35328, offset: 23040)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3109, line: 430, size: 35328, elements: !3110)
!3109 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3110 = !{!3111, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3140, !3141, !3142, !3143, !3144, !3145, !3148, !3149, !3150, !3151}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3108, file: !3109, line: 432, baseType: !3112, size: 192)
!3112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3113, size: 192, elements: !459)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3114, line: 16, size: 64, elements: !3115)
!3114 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3115 = !{!3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3113, file: !3114, line: 17, baseType: !96, size: 16)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3113, file: !3114, line: 18, baseType: !96, size: 16, offset: 16)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3113, file: !3114, line: 19, baseType: !96, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3113, file: !3114, line: 19, baseType: !96, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3113, file: !3114, line: 19, baseType: !96, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3113, file: !3114, line: 19, baseType: !96, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3113, file: !3114, line: 19, baseType: !96, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3113, file: !3114, line: 20, baseType: !96, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3113, file: !3114, line: 20, baseType: !96, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3113, file: !3114, line: 20, baseType: !96, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3113, file: !3114, line: 20, baseType: !96, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3113, file: !3114, line: 20, baseType: !96, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3113, file: !3114, line: 20, baseType: !96, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3108, file: !3109, line: 436, baseType: !42, size: 64, offset: 192)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3108, file: !3109, line: 440, baseType: !29, size: 16, offset: 256)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3108, file: !3109, line: 441, baseType: !29, size: 16, offset: 272)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3108, file: !3109, line: 442, baseType: !29, size: 16, offset: 288)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3108, file: !3109, line: 443, baseType: !29, size: 16, offset: 304)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3108, file: !3109, line: 447, baseType: !42, size: 64, offset: 320)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3108, file: !3109, line: 448, baseType: !42, size: 64, offset: 384)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3108, file: !3109, line: 459, baseType: !3137, size: 256, offset: 448)
!3137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3138, size: 256, elements: !238)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3109, line: 428, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3108, file: !3109, line: 461, baseType: !42, size: 64, offset: 704)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3108, file: !3109, line: 463, baseType: !42, size: 64, offset: 768)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3108, file: !3109, line: 465, baseType: !42, size: 64, offset: 832)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3108, file: !3109, line: 466, baseType: !42, size: 64, offset: 896)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3108, file: !3109, line: 467, baseType: !42, size: 64, offset: 960)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3108, file: !3109, line: 473, baseType: !3146, size: 64, offset: 1024)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3109, line: 10, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3108, file: !3109, line: 480, baseType: !42, size: 64, offset: 1088)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3108, file: !3109, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3108, file: !3109, line: 491, baseType: !281, size: 32, offset: 1184)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3108, file: !3109, line: 501, baseType: !3152, size: 33792, offset: 1536)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3153, line: 448, size: 33792, elements: !3154)
!3153 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3154 = !{!3155, !3156, !3157, !3321, !3322, !3328, !3329}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3152, file: !3153, line: 461, baseType: !7, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3152, file: !3153, line: 468, baseType: !42, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3152, file: !3153, line: 476, baseType: !3158, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3153, line: 356, size: 33280, align: 512, elements: !3160)
!3160 = !{!3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3159, file: !3153, line: 358, baseType: !7, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3159, file: !3153, line: 361, baseType: !7, size: 32, offset: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3159, file: !3153, line: 364, baseType: !285, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3159, file: !3153, line: 367, baseType: !285, size: 64, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3159, file: !3153, line: 370, baseType: !285, size: 64, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3159, file: !3153, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3159, file: !3153, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3159, file: !3153, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3159, file: !3153, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3159, file: !3153, line: 397, baseType: !3171, size: 32768, offset: 512)
!3171 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3153, line: 348, size: 32768, elements: !3172)
!3172 = !{!3173, !3188, !3227, !3304, !3317}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3171, file: !3153, line: 349, baseType: !3174, size: 896)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3153, line: 12, size: 896, elements: !3175)
!3175 = !{!3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3187}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3174, file: !3153, line: 13, baseType: !281, size: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3174, file: !3153, line: 14, baseType: !281, size: 32, offset: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3174, file: !3153, line: 15, baseType: !281, size: 32, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3174, file: !3153, line: 16, baseType: !281, size: 32, offset: 96)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3174, file: !3153, line: 17, baseType: !281, size: 32, offset: 128)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3174, file: !3153, line: 18, baseType: !281, size: 32, offset: 160)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3174, file: !3153, line: 19, baseType: !281, size: 32, offset: 192)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3174, file: !3153, line: 22, baseType: !3184, size: 640, offset: 224)
!3184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 640, elements: !3185)
!3185 = !{!3186}
!3186 = !DISubrange(count: 20)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3174, file: !3153, line: 25, baseType: !281, size: 32, offset: 864)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3171, file: !3153, line: 350, baseType: !3189, size: 4096, align: 128)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3153, line: 34, size: 4096, align: 128, elements: !3190)
!3190 = !{!3191, !3192, !3193, !3194, !3195, !3210, !3211, !3212, !3216, !3218, !3222}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3189, file: !3153, line: 35, baseType: !96, size: 16)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3189, file: !3153, line: 36, baseType: !96, size: 16, offset: 16)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3189, file: !3153, line: 37, baseType: !96, size: 16, offset: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3189, file: !3153, line: 38, baseType: !96, size: 16, offset: 48)
!3195 = !DIDerivedType(tag: DW_TAG_member, scope: !3189, file: !3153, line: 39, baseType: !3196, size: 128, offset: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3189, file: !3153, line: 39, size: 128, elements: !3197)
!3197 = !{!3198, !3203}
!3198 = !DIDerivedType(tag: DW_TAG_member, scope: !3196, file: !3153, line: 40, baseType: !3199, size: 128)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3196, file: !3153, line: 40, size: 128, elements: !3200)
!3200 = !{!3201, !3202}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3199, file: !3153, line: 41, baseType: !285, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3199, file: !3153, line: 42, baseType: !285, size: 64, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, scope: !3196, file: !3153, line: 44, baseType: !3204, size: 128)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3196, file: !3153, line: 44, size: 128, elements: !3205)
!3205 = !{!3206, !3207, !3208, !3209}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3204, file: !3153, line: 45, baseType: !281, size: 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3204, file: !3153, line: 46, baseType: !281, size: 32, offset: 32)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3204, file: !3153, line: 47, baseType: !281, size: 32, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3204, file: !3153, line: 48, baseType: !281, size: 32, offset: 96)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3189, file: !3153, line: 51, baseType: !281, size: 32, offset: 192)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3189, file: !3153, line: 52, baseType: !281, size: 32, offset: 224)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3189, file: !3153, line: 55, baseType: !3213, size: 1024, offset: 256)
!3213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 1024, elements: !3214)
!3214 = !{!3215}
!3215 = !DISubrange(count: 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3189, file: !3153, line: 58, baseType: !3217, size: 2048, offset: 1280)
!3217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 2048, elements: !2756)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3189, file: !3153, line: 60, baseType: !3219, size: 384, offset: 3328)
!3219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 384, elements: !3220)
!3220 = !{!3221}
!3221 = !DISubrange(count: 12)
!3222 = !DIDerivedType(tag: DW_TAG_member, scope: !3189, file: !3153, line: 62, baseType: !3223, size: 384, offset: 3712)
!3223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3189, file: !3153, line: 62, size: 384, elements: !3224)
!3224 = !{!3225, !3226}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3223, file: !3153, line: 63, baseType: !3219, size: 384)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3223, file: !3153, line: 64, baseType: !3219, size: 384)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3171, file: !3153, line: 351, baseType: !3228, size: 1088)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3153, line: 79, size: 1088, elements: !3229)
!3229 = !{!3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3303}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3228, file: !3153, line: 80, baseType: !281, size: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3228, file: !3153, line: 81, baseType: !281, size: 32, offset: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3228, file: !3153, line: 82, baseType: !281, size: 32, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3228, file: !3153, line: 83, baseType: !281, size: 32, offset: 96)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3228, file: !3153, line: 84, baseType: !281, size: 32, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3228, file: !3153, line: 85, baseType: !281, size: 32, offset: 160)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3228, file: !3153, line: 86, baseType: !281, size: 32, offset: 192)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3228, file: !3153, line: 88, baseType: !3184, size: 640, offset: 224)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3228, file: !3153, line: 89, baseType: !86, size: 8, offset: 864)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3228, file: !3153, line: 90, baseType: !86, size: 8, offset: 872)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3228, file: !3153, line: 91, baseType: !86, size: 8, offset: 880)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3228, file: !3153, line: 92, baseType: !86, size: 8, offset: 888)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3228, file: !3153, line: 93, baseType: !86, size: 8, offset: 896)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3228, file: !3153, line: 94, baseType: !86, size: 8, offset: 904)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3228, file: !3153, line: 95, baseType: !3245, size: 64, offset: 960)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3247, line: 11, size: 128, elements: !3248)
!3247 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3248 = !{!3249, !3250}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3246, file: !3247, line: 12, baseType: !843, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3246, file: !3247, line: 13, baseType: !3251, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3253, line: 103, size: 1344, elements: !3254)
!3253 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3283, !3284, !3285}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3252, file: !3253, line: 109, baseType: !42, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3252, file: !3253, line: 110, baseType: !42, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3252, file: !3253, line: 111, baseType: !42, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3252, file: !3253, line: 112, baseType: !42, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3252, file: !3253, line: 113, baseType: !42, size: 64, offset: 256)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3252, file: !3253, line: 114, baseType: !42, size: 64, offset: 320)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3252, file: !3253, line: 117, baseType: !42, size: 64, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3252, file: !3253, line: 118, baseType: !42, size: 64, offset: 448)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3252, file: !3253, line: 119, baseType: !42, size: 64, offset: 512)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3252, file: !3253, line: 120, baseType: !42, size: 64, offset: 576)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3252, file: !3253, line: 121, baseType: !42, size: 64, offset: 640)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3252, file: !3253, line: 122, baseType: !42, size: 64, offset: 704)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3252, file: !3253, line: 123, baseType: !42, size: 64, offset: 768)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3252, file: !3253, line: 124, baseType: !42, size: 64, offset: 832)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3252, file: !3253, line: 125, baseType: !42, size: 64, offset: 896)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3252, file: !3253, line: 139, baseType: !42, size: 64, offset: 960)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3252, file: !3253, line: 142, baseType: !42, size: 64, offset: 1024)
!3272 = !DIDerivedType(tag: DW_TAG_member, scope: !3252, file: !3253, line: 144, baseType: !3273, size: 64, offset: 1088)
!3273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3252, file: !3253, line: 144, size: 64, elements: !3274)
!3274 = !{!3275, !3276, !3277}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3273, file: !3253, line: 146, baseType: !96, size: 16)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3273, file: !3253, line: 148, baseType: !285, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3273, file: !3253, line: 150, baseType: !3278, size: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3253, line: 59, size: 64, elements: !3279)
!3279 = !{!3280, !3281, !3282}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3278, file: !3253, line: 61, baseType: !285, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3278, file: !3253, line: 63, baseType: !285, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3278, file: !3253, line: 65, baseType: !285, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3252, file: !3253, line: 153, baseType: !42, size: 64, offset: 1152)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3252, file: !3253, line: 154, baseType: !42, size: 64, offset: 1216)
!3285 = !DIDerivedType(tag: DW_TAG_member, scope: !3252, file: !3253, line: 156, baseType: !3286, size: 64, offset: 1280)
!3286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3252, file: !3253, line: 156, size: 64, elements: !3287)
!3287 = !{!3288, !3289, !3290}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3286, file: !3253, line: 158, baseType: !96, size: 16)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3286, file: !3253, line: 160, baseType: !285, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3286, file: !3253, line: 162, baseType: !3291, size: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3253, line: 69, size: 64, elements: !3292)
!3292 = !{!3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3291, file: !3253, line: 71, baseType: !285, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3291, file: !3253, line: 73, baseType: !285, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3291, file: !3253, line: 75, baseType: !285, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3291, file: !3253, line: 77, baseType: !285, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3291, file: !3253, line: 80, baseType: !285, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3291, file: !3253, line: 83, baseType: !285, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3291, file: !3253, line: 86, baseType: !285, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3291, file: !3253, line: 88, baseType: !285, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3291, file: !3253, line: 93, baseType: !285, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3291, file: !3253, line: 100, baseType: !285, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3228, file: !3153, line: 96, baseType: !281, size: 32, offset: 1024)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3171, file: !3153, line: 352, baseType: !3305, size: 4608, align: 512)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3153, line: 333, size: 4608, align: 512, elements: !3306)
!3306 = !{!3307, !3308, !3315}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3305, file: !3153, line: 334, baseType: !3189, size: 4096, align: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3305, file: !3153, line: 335, baseType: !3309, size: 512, offset: 4096)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3153, line: 312, size: 512, elements: !3310)
!3310 = !{!3311, !3312, !3313}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3309, file: !3153, line: 313, baseType: !285, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3309, file: !3153, line: 314, baseType: !285, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3309, file: !3153, line: 315, baseType: !3314, size: 384, offset: 128)
!3314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 384, elements: !597)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3305, file: !3153, line: 336, baseType: !3316, offset: 4608)
!3316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, elements: !384)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3171, file: !3153, line: 353, baseType: !3318, size: 32768)
!3318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 32768, elements: !3319)
!3319 = !{!3320}
!3320 = !DISubrange(count: 4096)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3152, file: !3153, line: 484, baseType: !3158, size: 64, offset: 192)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3152, file: !3153, line: 491, baseType: !3323, size: 128, offset: 256)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3153, line: 404, size: 128, elements: !3324)
!3324 = !{!3325, !3326, !3327}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3323, file: !3153, line: 424, baseType: !285, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3323, file: !3153, line: 432, baseType: !7, size: 32, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3323, file: !3153, line: 440, baseType: !7, size: 32, offset: 96)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3152, file: !3153, line: 498, baseType: !3323, size: 128, offset: 384)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3152, file: !3153, line: 508, baseType: !3159, size: 33280, align: 512, offset: 512)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2101, file: !2102, line: 16, baseType: !57, size: 192, offset: 512)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2101, file: !2102, line: 17, baseType: !52, size: 32, offset: 704)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !322, file: !134, line: 1240, baseType: !23, size: 64, offset: 6912)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !322, file: !134, line: 1243, baseType: !281, size: 32, offset: 6976)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !322, file: !134, line: 1245, baseType: !567, size: 64, offset: 7040)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !322, file: !134, line: 1246, baseType: !567, size: 64, offset: 7104)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !322, file: !134, line: 1248, baseType: !282, size: 32, offset: 7168)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !322, file: !134, line: 1249, baseType: !3338, size: 64, offset: 7232)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !134, line: 634, flags: DIFlagFwdDecl)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !322, file: !134, line: 1252, baseType: !3341, size: 256, offset: 7296)
!3341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !3214)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !322, file: !134, line: 1253, baseType: !3343, size: 128, offset: 7552)
!3343 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3344, line: 21, baseType: !3345)
!3344 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3344, line: 19, size: 128, elements: !3346)
!3346 = !{!3347}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3345, file: !3344, line: 20, baseType: !3348, size: 128)
!3348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !2536)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !322, file: !134, line: 1255, baseType: !7, size: 32, offset: 7680)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !322, file: !134, line: 1261, baseType: !422, size: 256, offset: 7744)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !322, file: !134, line: 1267, baseType: !19, size: 64, offset: 8000)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !322, file: !134, line: 1269, baseType: !3353, size: 64, offset: 8064)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3355)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !249, line: 128, size: 1024, align: 512, elements: !3356)
!3356 = !{!3357, !3361, !3362, !3369, !3375, !3379, !3383, !3387, !3388, !3392, !3396, !3401, !3405}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3355, file: !249, line: 129, baseType: !3358, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!25, !247, !7}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3355, file: !249, line: 130, baseType: !3358, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3355, file: !249, line: 131, baseType: !3363, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!25, !3366, !3368}
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3355, file: !249, line: 132, baseType: !3370, size: 64, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!25, !3366, !7, !19, !3373}
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3355, file: !249, line: 134, baseType: !3376, size: 64, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!25, !3366}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3355, file: !249, line: 135, baseType: !3380, size: 64, offset: 320)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!25, !247}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3355, file: !249, line: 136, baseType: !3384, size: 64, offset: 384)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{null, !247}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3355, file: !249, line: 137, baseType: !3384, size: 64, offset: 448)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3355, file: !249, line: 138, baseType: !3389, size: 64, offset: 512)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{null, !247, !292}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3355, file: !249, line: 139, baseType: !3393, size: 64, offset: 576)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!370, !247, !370, !25}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3355, file: !249, line: 140, baseType: !3397, size: 64, offset: 640)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!874, !3400}
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3355, file: !249, line: 141, baseType: !3402, size: 64, offset: 704)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!25, !1922, !610}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3355, file: !249, line: 142, baseType: !3406, size: 64, offset: 768)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!247, !247, !3409}
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !322, file: !134, line: 1271, baseType: !3412, size: 448, offset: 8128)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1862, line: 63, size: 448, elements: !3413)
!3413 = !{!3414, !3419, !3420, !3421, !3422, !3423, !3424}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3412, file: !1862, line: 64, baseType: !3415, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!42, !3418, !1860}
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3412, file: !1862, line: 66, baseType: !3415, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3412, file: !1862, line: 69, baseType: !843, size: 64, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3412, file: !1862, line: 70, baseType: !25, size: 32, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3412, file: !1862, line: 71, baseType: !7, size: 32, offset: 224)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3412, file: !1862, line: 74, baseType: !100, size: 128, offset: 256)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3412, file: !1862, line: 85, baseType: !3425, size: 64, offset: 384)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !322, file: !134, line: 1274, baseType: !413, size: 64, offset: 8576)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !322, file: !134, line: 1280, baseType: !413, size: 64, offset: 8640)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !322, file: !134, line: 1283, baseType: !25, size: 32, offset: 8704)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !322, file: !134, line: 1286, baseType: !1421, size: 32, offset: 8736)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !322, file: !134, line: 1289, baseType: !3431, size: 64, offset: 8768)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !743, line: 18, flags: DIFlagFwdDecl)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !322, file: !134, line: 1290, baseType: !476, size: 64, offset: 8832)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !322, file: !134, line: 1297, baseType: !693, size: 64, offset: 8896)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !322, file: !134, line: 1304, baseType: !3436, size: 64, offset: 8960)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3437, line: 49, size: 64, elements: !3438)
!3437 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3438 = !{!3439}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3436, file: !3437, line: 50, baseType: !3440, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3437, line: 41, size: 512, align: 512, elements: !3442)
!3442 = !{!3443, !3444, !3449}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3441, file: !3437, line: 43, baseType: !62, size: 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3441, file: !3437, line: 45, baseType: !3445, size: 192, offset: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3437, line: 29, size: 192, elements: !3446)
!3446 = !{!3447, !3448}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3445, file: !3437, line: 30, baseType: !100, size: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3445, file: !3437, line: 32, baseType: !843, size: 64, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3441, file: !3437, line: 46, baseType: !843, size: 64, offset: 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !322, file: !134, line: 1305, baseType: !3436, size: 64, offset: 9024)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !322, file: !134, line: 1306, baseType: !400, size: 128, align: 64, offset: 9088)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !322, file: !134, line: 1307, baseType: !742, size: 256, offset: 9216)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !322, file: !134, line: 1309, baseType: !422, size: 256, offset: 9472)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !322, file: !134, line: 1314, baseType: !25, size: 32, offset: 9728)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !322, file: !134, line: 1317, baseType: !62, size: 32, align: 512, offset: 10240)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !322, file: !134, line: 1318, baseType: !100, size: 128, offset: 10304)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !322, file: !134, line: 1320, baseType: !62, size: 32, offset: 10432)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !322, file: !134, line: 1321, baseType: !100, size: 128, offset: 10496)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !293, file: !134, line: 656, baseType: !1238, size: 64, offset: 512)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !293, file: !134, line: 659, baseType: !23, size: 64, offset: 576)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !293, file: !134, line: 663, baseType: !42, size: 64, offset: 640)
!3462 = !DIDerivedType(tag: DW_TAG_member, scope: !293, file: !134, line: 671, baseType: !3463, size: 32, offset: 704)
!3463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !293, file: !134, line: 671, size: 32, elements: !3464)
!3464 = !{!3465, !3467}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3463, file: !134, line: 672, baseType: !3466, size: 32)
!3466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3463, file: !134, line: 673, baseType: !7, size: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !293, file: !134, line: 675, baseType: !326, size: 32, offset: 736)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !293, file: !134, line: 676, baseType: !44, size: 64, offset: 768)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !293, file: !134, line: 677, baseType: !3471, size: 128, offset: 832)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !568, line: 13, size: 128, elements: !3472)
!3472 = !{!3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3471, file: !568, line: 14, baseType: !567, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3471, file: !568, line: 15, baseType: !843, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !293, file: !134, line: 678, baseType: !3471, size: 128, offset: 960)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !293, file: !134, line: 679, baseType: !3471, size: 128, offset: 1088)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !293, file: !134, line: 680, baseType: !62, size: 32, offset: 1216)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !293, file: !134, line: 681, baseType: !29, size: 16, offset: 1248)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !293, file: !134, line: 682, baseType: !86, size: 8, offset: 1264)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !293, file: !134, line: 683, baseType: !86, size: 8, offset: 1272)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !293, file: !134, line: 684, baseType: !1995, size: 64, offset: 1280)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !293, file: !134, line: 691, baseType: !42, size: 64, offset: 1344)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !293, file: !134, line: 692, baseType: !551, size: 320, offset: 1408)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !293, file: !134, line: 694, baseType: !42, size: 64, offset: 1728)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !293, file: !134, line: 695, baseType: !42, size: 64, offset: 1792)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !293, file: !134, line: 697, baseType: !480, size: 128, offset: 1856)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !293, file: !134, line: 698, baseType: !100, size: 128, offset: 1984)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !293, file: !134, line: 707, baseType: !100, size: 128, offset: 2112)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !293, file: !134, line: 708, baseType: !100, size: 128, offset: 2240)
!3490 = !DIDerivedType(tag: DW_TAG_member, scope: !293, file: !134, line: 709, baseType: !3491, size: 128, offset: 2368)
!3491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !293, file: !134, line: 709, size: 128, elements: !3492)
!3492 = !{!3493, !3494}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3491, file: !134, line: 710, baseType: !476, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3491, file: !134, line: 711, baseType: !400, size: 128, align: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !293, file: !134, line: 713, baseType: !415, size: 64, offset: 2496)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !293, file: !134, line: 714, baseType: !415, size: 64, offset: 2560)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !293, file: !134, line: 715, baseType: !52, size: 32, offset: 2624)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !293, file: !134, line: 716, baseType: !52, size: 32, offset: 2656)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !293, file: !134, line: 717, baseType: !52, size: 32, offset: 2688)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !293, file: !134, line: 719, baseType: !52, size: 32, offset: 2720)
!3501 = !DIDerivedType(tag: DW_TAG_member, scope: !293, file: !134, line: 721, baseType: !3502, size: 64, offset: 2752)
!3502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !293, file: !134, line: 721, size: 64, elements: !3503)
!3503 = !{!3504, !3505}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3502, file: !134, line: 722, baseType: !887, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3502, file: !134, line: 723, baseType: !1750, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !293, file: !134, line: 725, baseType: !3507, size: 64, offset: 2816)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !134, line: 725, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !293, file: !134, line: 726, baseType: !1239, size: 1536, align: 64, offset: 2880)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !293, file: !134, line: 727, baseType: !100, size: 128, offset: 4416)
!3511 = !DIDerivedType(tag: DW_TAG_member, scope: !293, file: !134, line: 728, baseType: !3512, size: 64, offset: 4544)
!3512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !293, file: !134, line: 728, size: 64, elements: !3513)
!3513 = !{!3514, !3515, !3518, !3519}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3512, file: !134, line: 729, baseType: !1617, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3512, file: !134, line: 730, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !134, line: 730, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3512, file: !134, line: 731, baseType: !370, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3512, file: !134, line: 732, baseType: !7, size: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !293, file: !134, line: 735, baseType: !282, size: 32, offset: 4608)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !293, file: !134, line: 738, baseType: !282, size: 32, offset: 4640)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !293, file: !134, line: 739, baseType: !3338, size: 64, offset: 4672)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !293, file: !134, line: 750, baseType: !23, size: 64, offset: 4736)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !248, file: !249, line: 91, baseType: !3525, size: 256, offset: 448)
!3525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !3214)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !248, file: !249, line: 94, baseType: !3527, size: 64, offset: 704)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3528, line: 25, size: 64, elements: !3529)
!3528 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3529 = !{!3530}
!3530 = !DIDerivedType(tag: DW_TAG_member, scope: !3527, file: !3528, line: 26, baseType: !3531, size: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3527, file: !3528, line: 26, size: 64, elements: !3532)
!3532 = !{!3533, !3534}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3531, file: !3528, line: 28, baseType: !286, size: 64, align: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, scope: !3531, file: !3528, line: 30, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3531, file: !3528, line: 30, size: 64, elements: !3536)
!3536 = !{!3537, !3538}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3535, file: !3528, line: 31, baseType: !62, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3535, file: !3528, line: 32, baseType: !25, size: 32, offset: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !248, file: !249, line: 95, baseType: !3353, size: 64, offset: 768)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !248, file: !249, line: 96, baseType: !321, size: 64, offset: 832)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !248, file: !249, line: 97, baseType: !42, size: 64, offset: 896)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !248, file: !249, line: 98, baseType: !23, size: 64, offset: 960)
!3543 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !249, line: 100, baseType: !3544, size: 128, offset: 1024)
!3544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !249, line: 100, size: 128, elements: !3545)
!3545 = !{!3546, !3547}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3544, file: !249, line: 101, baseType: !100, size: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3544, file: !249, line: 102, baseType: !3548, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !248, file: !249, line: 104, baseType: !100, size: 128, offset: 1152)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !248, file: !249, line: 105, baseType: !100, size: 128, offset: 1280)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !248, file: !249, line: 113, baseType: !3552, size: 128, offset: 1408)
!3552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !249, line: 109, size: 128, elements: !3553)
!3553 = !{!3554, !3555, !3556}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3552, file: !249, line: 110, baseType: !480, size: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3552, file: !249, line: 111, baseType: !263, size: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3552, file: !249, line: 112, baseType: !400, size: 128, align: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !241, file: !134, line: 1968, baseType: !3558, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!19, !247, !292, !3561}
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3563, line: 10, size: 128, elements: !3564)
!3563 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3564 = !{!3565, !3569}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3562, file: !3563, line: 11, baseType: !3566, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{null, !23}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3562, file: !3563, line: 12, baseType: !23, size: 64, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !241, file: !134, line: 1969, baseType: !3571, size: 64, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!25, !882, !292, !25}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !241, file: !134, line: 1970, baseType: !3575, size: 64, offset: 192)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!315, !292, !25, !610}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !241, file: !134, line: 1972, baseType: !3579, size: 64, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!25, !247, !370, !25}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !241, file: !134, line: 1974, baseType: !3583, size: 64, offset: 320)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!25, !882, !292, !247, !27, !610}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !241, file: !134, line: 1976, baseType: !3587, size: 64, offset: 384)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!25, !247, !292, !247}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !241, file: !134, line: 1977, baseType: !3591, size: 64, offset: 448)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!25, !292, !247}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !241, file: !134, line: 1978, baseType: !3595, size: 64, offset: 512)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!25, !882, !292, !247, !19}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !241, file: !134, line: 1980, baseType: !3599, size: 64, offset: 576)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!25, !882, !292, !247, !27}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !241, file: !134, line: 1982, baseType: !3591, size: 64, offset: 640)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !241, file: !134, line: 1983, baseType: !3604, size: 64, offset: 704)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!25, !882, !292, !247, !27, !326}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !241, file: !134, line: 1985, baseType: !3608, size: 64, offset: 768)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!25, !882, !292, !247, !292, !247, !7}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !241, file: !134, line: 1987, baseType: !3612, size: 64, offset: 832)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!25, !882, !247, !3615}
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !134, line: 226, size: 640, elements: !3617)
!3617 = !{!3618, !3619, !3620, !3630, !3639, !3640, !3641, !3642, !3643}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3616, file: !134, line: 227, baseType: !7, size: 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3616, file: !134, line: 228, baseType: !27, size: 16, offset: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, scope: !3616, file: !134, line: 241, baseType: !3621, size: 32, offset: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3616, file: !134, line: 241, size: 32, elements: !3622)
!3622 = !{!3623, !3624}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3621, file: !134, line: 242, baseType: !298, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3621, file: !134, line: 243, baseType: !3625, size: 32)
!3625 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3626, line: 16, baseType: !3627)
!3626 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3626, line: 14, size: 32, elements: !3628)
!3628 = !{!3629}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3627, file: !3626, line: 15, baseType: !303, size: 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, scope: !3616, file: !134, line: 245, baseType: !3631, size: 32, offset: 96)
!3631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3616, file: !134, line: 245, size: 32, elements: !3632)
!3632 = !{!3633, !3634}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3631, file: !134, line: 246, baseType: !307, size: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3631, file: !134, line: 247, baseType: !3635, size: 32)
!3635 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3626, line: 20, baseType: !3636)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3626, line: 18, size: 32, elements: !3637)
!3637 = !{!3638}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3636, file: !3626, line: 19, baseType: !311, size: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3616, file: !134, line: 249, baseType: !44, size: 64, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3616, file: !134, line: 250, baseType: !3471, size: 128, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3616, file: !134, line: 251, baseType: !3471, size: 128, offset: 320)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3616, file: !134, line: 252, baseType: !3471, size: 128, offset: 448)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3616, file: !134, line: 259, baseType: !387, size: 64, offset: 576)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !241, file: !134, line: 1988, baseType: !3645, size: 64, offset: 896)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!25, !882, !1922, !3648, !281, !7}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3650, line: 22, size: 1280, elements: !3651)
!3650 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3651 = !{!3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3649, file: !3650, line: 23, baseType: !281, size: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3649, file: !3650, line: 24, baseType: !27, size: 16, offset: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3649, file: !3650, line: 25, baseType: !7, size: 32, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3649, file: !3650, line: 26, baseType: !575, size: 32, offset: 96)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3649, file: !3650, line: 27, baseType: !285, size: 64, offset: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3649, file: !3650, line: 28, baseType: !285, size: 64, offset: 192)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3649, file: !3650, line: 41, baseType: !285, size: 64, offset: 256)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3649, file: !3650, line: 42, baseType: !326, size: 32, offset: 320)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3649, file: !3650, line: 43, baseType: !326, size: 32, offset: 352)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3649, file: !3650, line: 44, baseType: !298, size: 32, offset: 384)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3649, file: !3650, line: 45, baseType: !307, size: 32, offset: 416)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3649, file: !3650, line: 46, baseType: !44, size: 64, offset: 448)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3649, file: !3650, line: 47, baseType: !3471, size: 128, offset: 512)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3649, file: !3650, line: 48, baseType: !3471, size: 128, offset: 640)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3649, file: !3650, line: 49, baseType: !3471, size: 128, offset: 768)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3649, file: !3650, line: 50, baseType: !3471, size: 128, offset: 896)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3649, file: !3650, line: 51, baseType: !285, size: 64, offset: 1024)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3649, file: !3650, line: 52, baseType: !285, size: 64, offset: 1088)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3649, file: !3650, line: 53, baseType: !281, size: 32, offset: 1152)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3649, file: !3650, line: 54, baseType: !281, size: 32, offset: 1184)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3649, file: !3650, line: 55, baseType: !285, size: 64, offset: 1216)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !241, file: !134, line: 1990, baseType: !3674, size: 64, offset: 960)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!903, !247, !370, !38}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !241, file: !134, line: 1991, baseType: !3678, size: 64, offset: 1024)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!25, !292, !3681, !285, !285}
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !134, line: 55, flags: DIFlagFwdDecl)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !241, file: !134, line: 1993, baseType: !3684, size: 64, offset: 1088)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!25, !292, !25}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !241, file: !134, line: 1994, baseType: !3688, size: 64, offset: 1152)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!25, !292, !247, !387, !7, !27}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !241, file: !134, line: 1997, baseType: !3692, size: 64, offset: 1216)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!25, !882, !292, !387, !27}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !241, file: !134, line: 1999, baseType: !3696, size: 64, offset: 1280)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!315, !882, !247, !25}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !241, file: !134, line: 2001, baseType: !3700, size: 64, offset: 1344)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!25, !882, !247, !315, !25}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !241, file: !134, line: 2003, baseType: !3704, size: 64, offset: 1408)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!25, !882, !247, !3707}
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !134, line: 76, flags: DIFlagFwdDecl)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !241, file: !134, line: 2005, baseType: !3710, size: 64, offset: 1472)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!25, !247, !3707}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !241, file: !134, line: 2006, baseType: !3714, size: 64, offset: 1536)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!3717, !292}
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !134, line: 3192, size: 192, elements: !3719)
!3719 = !{!3720, !3721}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3718, file: !134, line: 3193, baseType: !1243, size: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3718, file: !134, line: 3194, baseType: !281, size: 32, offset: 128)
!3722 = !{i32 7, !"Dwarf Version", i32 5}
!3723 = !{i32 2, !"Debug Info Version", i32 3}
!3724 = !{i32 1, !"wchar_size", i32 2}
!3725 = !{i32 8, !"cf-protection-branch", i32 1}
!3726 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3727 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3728 = !{i32 1, !"Code Model", i32 2}
!3729 = !{i32 1, !"override-stack-alignment", i32 8}
!3730 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3731 = distinct !DISubprogram(name: "kernfs_create_link", scope: !3, file: !3, line: 25, type: !3732, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3892)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!3734, !3734, !19, !3734}
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !194, line: 190, size: 1152, elements: !3736)
!3736 = !{!3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3871, !3872, !3873, !3874, !3875, !3891}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3735, file: !194, line: 191, baseType: !52, size: 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3735, file: !194, line: 192, baseType: !52, size: 32, offset: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3735, file: !194, line: 202, baseType: !3734, size: 64, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3735, file: !194, line: 203, baseType: !19, size: 64, offset: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3735, file: !194, line: 205, baseType: !543, size: 192, align: 64, offset: 192)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3735, file: !194, line: 207, baseType: !2032, size: 64, offset: 384)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3735, file: !194, line: 208, baseType: !7, size: 32, offset: 448)
!3744 = !DIDerivedType(tag: DW_TAG_member, scope: !3735, file: !194, line: 209, baseType: !3745, size: 256, offset: 512)
!3745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3735, file: !194, line: 209, size: 256, elements: !3746)
!3746 = !{!3747, !3799, !3803}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3745, file: !194, line: 210, baseType: !3748, size: 256)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !194, line: 153, size: 256, elements: !3749)
!3749 = !{!3750, !3751, !3752, !3798}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3748, file: !194, line: 154, baseType: !42, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3748, file: !194, line: 156, baseType: !823, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3748, file: !194, line: 162, baseType: !3753, size: 64, offset: 128)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3755, line: 34, size: 1856, elements: !3756)
!3755 = !DIFile(filename: "fs/kernfs/kernfs-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "32718b52ec0a489d6666a316c4c2b870")
!3756 = !{!3757, !3758, !3759, !3766, !3767, !3768, !3792, !3793, !3794, !3795, !3796, !3797}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3754, file: !3755, line: 36, baseType: !3734, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3754, file: !3755, line: 37, baseType: !7, size: 32, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3754, file: !3755, line: 40, baseType: !3760, size: 192, offset: 128)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3761, line: 19, size: 192, elements: !3762)
!3761 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3762 = !{!3763, !3764, !3765}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3760, file: !3761, line: 20, baseType: !1243, size: 128)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3760, file: !3761, line: 21, baseType: !7, size: 32, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3760, file: !3761, line: 22, baseType: !7, size: 32, offset: 160)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3754, file: !3755, line: 41, baseType: !281, size: 32, offset: 320)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3754, file: !3755, line: 42, baseType: !281, size: 32, offset: 352)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3754, file: !3755, line: 43, baseType: !3769, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !194, line: 237, size: 320, elements: !3771)
!3771 = !{!3772, !3776, !3780, !3784, !3788}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3770, file: !194, line: 238, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!25, !1638, !3753}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3770, file: !194, line: 240, baseType: !3777, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!25, !3734, !19, !27}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3770, file: !194, line: 242, baseType: !3781, size: 64, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!25, !3734}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3770, file: !194, line: 243, baseType: !3785, size: 64, offset: 192)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!25, !3734, !3734, !19}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3770, file: !194, line: 245, baseType: !3789, size: 64, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!25, !1638, !3734, !3753}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3754, file: !3755, line: 46, baseType: !100, size: 128, offset: 448)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3754, file: !3755, line: 48, baseType: !57, size: 192, offset: 576)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "kernfs_rwsem", scope: !3754, file: !3755, line: 49, baseType: !551, size: 320, offset: 768)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "kernfs_iattr_rwsem", scope: !3754, file: !3755, line: 50, baseType: !551, size: 320, offset: 1088)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "kernfs_supers_rwsem", scope: !3754, file: !3755, line: 51, baseType: !551, size: 320, offset: 1408)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3754, file: !3755, line: 53, baseType: !400, size: 128, align: 64, offset: 1728)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3748, file: !194, line: 167, baseType: !42, size: 64, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3745, file: !194, line: 211, baseType: !3800, size: 64)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !194, line: 170, size: 64, elements: !3801)
!3801 = !{!3802}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3800, file: !194, line: 171, baseType: !3734, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3745, file: !194, line: 212, baseType: !3804, size: 256)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !194, line: 174, size: 256, elements: !3805)
!3805 = !{!3806, !3866, !3869, !3870}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3804, file: !194, line: 175, baseType: !3807, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3809)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !194, line: 271, size: 768, elements: !3810)
!3810 = !{!3811, !3831, !3835, !3839, !3843, !3847, !3851, !3855, !3856, !3857, !3858, !3862}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3809, file: !194, line: 276, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!25, !3815}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !194, line: 251, size: 1216, elements: !3817)
!3817 = !{!3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3816, file: !194, line: 253, baseType: !3734, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3816, file: !194, line: 254, baseType: !387, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3816, file: !194, line: 255, baseType: !1638, size: 64, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3816, file: !194, line: 256, baseType: !23, size: 64, offset: 192)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3816, file: !194, line: 259, baseType: !422, size: 256, offset: 256)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3816, file: !194, line: 260, baseType: !422, size: 256, offset: 512)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3816, file: !194, line: 261, baseType: !25, size: 32, offset: 768)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3816, file: !194, line: 262, baseType: !100, size: 128, offset: 832)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3816, file: !194, line: 263, baseType: !370, size: 64, offset: 960)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3816, file: !194, line: 265, baseType: !38, size: 64, offset: 1024)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3816, file: !194, line: 266, baseType: !610, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3816, file: !194, line: 267, baseType: !610, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3816, file: !194, line: 268, baseType: !1152, size: 64, offset: 1152)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3809, file: !194, line: 277, baseType: !3832, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{null, !3815}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3809, file: !194, line: 290, baseType: !3836, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!25, !1638, !23}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3809, file: !194, line: 292, baseType: !3840, size: 64, offset: 192)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!23, !1638, !43}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3809, file: !194, line: 293, baseType: !3844, size: 64, offset: 256)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!23, !1638, !23, !43}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3809, file: !194, line: 294, baseType: !3848, size: 64, offset: 320)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{null, !1638, !23}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3809, file: !194, line: 296, baseType: !3852, size: 64, offset: 384)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!903, !3815, !370, !38, !44}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3809, file: !194, line: 306, baseType: !38, size: 64, offset: 448)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3809, file: !194, line: 313, baseType: !610, size: 8, offset: 512)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3809, file: !194, line: 314, baseType: !3852, size: 64, offset: 576)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3809, file: !194, line: 317, baseType: !3859, size: 64, offset: 640)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!962, !3815, !964}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3809, file: !194, line: 320, baseType: !3863, size: 64, offset: 704)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!25, !3815, !975}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3804, file: !194, line: 176, baseType: !3867, size: 64, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !194, line: 35, flags: DIFlagFwdDecl)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3804, file: !194, line: 177, baseType: !44, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3804, file: !194, line: 178, baseType: !3734, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3735, file: !194, line: 215, baseType: !23, size: 64, offset: 768)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3735, file: !194, line: 221, baseType: !285, size: 64, offset: 832)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3735, file: !194, line: 223, baseType: !29, size: 16, offset: 896)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3735, file: !194, line: 224, baseType: !27, size: 16, offset: 912)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3735, file: !194, line: 225, baseType: !3876, size: 64, offset: 960)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3755, line: 22, size: 640, elements: !3878)
!3878 = !{!3879, !3880, !3881, !3882, !3883, !3884, !3889, !3890}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3877, file: !3755, line: 23, baseType: !298, size: 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3877, file: !3755, line: 24, baseType: !307, size: 32, offset: 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3877, file: !3755, line: 25, baseType: !3471, size: 128, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3877, file: !3755, line: 26, baseType: !3471, size: 128, offset: 192)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3877, file: !3755, line: 27, baseType: !3471, size: 128, offset: 320)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "xattrs", scope: !3877, file: !3755, line: 29, baseType: !3885, size: 128, offset: 448)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_xattrs", file: !2015, line: 104, size: 128, elements: !3886)
!3886 = !{!3887, !3888}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3885, file: !2015, line: 105, baseType: !823, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3885, file: !2015, line: 106, baseType: !440, size: 64, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user_xattrs", scope: !3877, file: !3755, line: 30, baseType: !52, size: 32, offset: 576)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "user_xattr_size", scope: !3877, file: !3755, line: 31, baseType: !52, size: 32, offset: 608)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3735, file: !194, line: 227, baseType: !400, size: 128, align: 64, offset: 1024)
!3892 = !{!3893, !3894, !3895, !3896, !3897, !3898, !3899}
!3893 = !DILocalVariable(name: "parent", arg: 1, scope: !3731, file: !3, line: 25, type: !3734)
!3894 = !DILocalVariable(name: "name", arg: 2, scope: !3731, file: !3, line: 26, type: !19)
!3895 = !DILocalVariable(name: "target", arg: 3, scope: !3731, file: !3, line: 27, type: !3734)
!3896 = !DILocalVariable(name: "kn", scope: !3731, file: !3, line: 29, type: !3734)
!3897 = !DILocalVariable(name: "error", scope: !3731, file: !3, line: 30, type: !25)
!3898 = !DILocalVariable(name: "uid", scope: !3731, file: !3, line: 31, type: !298)
!3899 = !DILocalVariable(name: "gid", scope: !3731, file: !3, line: 32, type: !307)
!3900 = !DILocation(line: 25, column: 60, scope: !3731)
!3901 = !DILocation(line: 26, column: 24, scope: !3731)
!3902 = !DILocation(line: 27, column: 32, scope: !3731)
!3903 = !DILocation(line: 29, column: 2, scope: !3731)
!3904 = !DILocation(line: 29, column: 22, scope: !3731)
!3905 = !DILocation(line: 30, column: 2, scope: !3731)
!3906 = !DILocation(line: 30, column: 6, scope: !3731)
!3907 = !DILocation(line: 31, column: 2, scope: !3731)
!3908 = !DILocation(line: 31, column: 9, scope: !3731)
!3909 = !DILocation(line: 32, column: 2, scope: !3731)
!3910 = !DILocation(line: 32, column: 9, scope: !3731)
!3911 = !DILocation(line: 34, column: 6, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 34, column: 6)
!3913 = !DILocation(line: 34, column: 14, scope: !3912)
!3914 = !DILocation(line: 34, column: 6, scope: !3731)
!3915 = !DILocation(line: 35, column: 9, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 34, column: 21)
!3917 = !DILocation(line: 35, column: 17, scope: !3916)
!3918 = !DILocation(line: 35, column: 24, scope: !3916)
!3919 = !DILocation(line: 36, column: 9, scope: !3916)
!3920 = !DILocation(line: 36, column: 17, scope: !3916)
!3921 = !DILocation(line: 36, column: 24, scope: !3916)
!3922 = !DILocation(line: 37, column: 2, scope: !3916)
!3923 = !DILocation(line: 39, column: 23, scope: !3731)
!3924 = !DILocation(line: 39, column: 31, scope: !3731)
!3925 = !DILocation(line: 39, column: 7, scope: !3731)
!3926 = !DILocation(line: 39, column: 5, scope: !3731)
!3927 = !DILocation(line: 40, column: 7, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 40, column: 6)
!3929 = !DILocation(line: 40, column: 6, scope: !3731)
!3930 = !DILocation(line: 41, column: 10, scope: !3928)
!3931 = !DILocation(line: 41, column: 3, scope: !3928)
!3932 = !DILocation(line: 43, column: 24, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 43, column: 6)
!3934 = !DILocation(line: 43, column: 6, scope: !3933)
!3935 = !DILocation(line: 43, column: 6, scope: !3731)
!3936 = !DILocation(line: 44, column: 12, scope: !3933)
!3937 = !DILocation(line: 44, column: 20, scope: !3933)
!3938 = !DILocation(line: 44, column: 3, scope: !3933)
!3939 = !DILocation(line: 44, column: 7, scope: !3933)
!3940 = !DILocation(line: 44, column: 10, scope: !3933)
!3941 = !DILocation(line: 45, column: 26, scope: !3731)
!3942 = !DILocation(line: 45, column: 2, scope: !3731)
!3943 = !DILocation(line: 45, column: 6, scope: !3731)
!3944 = !DILocation(line: 45, column: 14, scope: !3731)
!3945 = !DILocation(line: 45, column: 24, scope: !3731)
!3946 = !DILocation(line: 46, column: 13, scope: !3731)
!3947 = !DILocation(line: 46, column: 2, scope: !3731)
!3948 = !DILocation(line: 48, column: 25, scope: !3731)
!3949 = !DILocation(line: 48, column: 10, scope: !3731)
!3950 = !DILocation(line: 48, column: 8, scope: !3731)
!3951 = !DILocation(line: 49, column: 7, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 49, column: 6)
!3953 = !DILocation(line: 49, column: 6, scope: !3731)
!3954 = !DILocation(line: 50, column: 10, scope: !3952)
!3955 = !DILocation(line: 50, column: 3, scope: !3952)
!3956 = !DILocation(line: 52, column: 13, scope: !3731)
!3957 = !DILocation(line: 52, column: 2, scope: !3731)
!3958 = !DILocation(line: 53, column: 17, scope: !3731)
!3959 = !DILocation(line: 53, column: 9, scope: !3731)
!3960 = !DILocation(line: 53, column: 2, scope: !3731)
!3961 = !DILocation(line: 54, column: 1, scope: !3731)
!3962 = !DISubprogram(name: "kernfs_new_node", scope: !3755, file: !3755, line: 154, type: !3963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!3734, !3734, !19, !27, !298, !307, !7}
!3965 = distinct !DISubprogram(name: "ERR_PTR", scope: !3966, file: !3966, line: 39, type: !3967, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3969)
!3966 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!23, !843}
!3969 = !{!3970}
!3970 = !DILocalVariable(name: "error", arg: 1, scope: !3965, file: !3966, line: 39, type: !843)
!3971 = !DILocation(line: 39, column: 48, scope: !3965)
!3972 = !DILocation(line: 41, column: 18, scope: !3965)
!3973 = !DILocation(line: 41, column: 9, scope: !3965)
!3974 = !DILocation(line: 41, column: 2, scope: !3965)
!3975 = distinct !DISubprogram(name: "kernfs_ns_enabled", scope: !194, file: !194, line: 391, type: !3976, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3978)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!610, !3734}
!3978 = !{!3979}
!3979 = !DILocalVariable(name: "kn", arg: 1, scope: !3975, file: !194, line: 391, type: !3734)
!3980 = !DILocation(line: 391, column: 58, scope: !3975)
!3981 = !DILocation(line: 393, column: 9, scope: !3975)
!3982 = !DILocation(line: 393, column: 13, scope: !3975)
!3983 = !DILocation(line: 393, column: 19, scope: !3975)
!3984 = !DILocation(line: 393, column: 2, scope: !3975)
!3985 = !DISubprogram(name: "kernfs_get", scope: !194, file: !194, line: 406, type: !3986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{null, !3734}
!3988 = !DISubprogram(name: "kernfs_add_one", scope: !3755, file: !3755, line: 153, type: !3782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3989 = !DISubprogram(name: "kernfs_put", scope: !194, file: !194, line: 407, type: !3986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3990 = distinct !DISubprogram(name: "kernfs_iop_get_link", scope: !3, file: !3, line: 126, type: !3559, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3991)
!3991 = !{!3992, !3993, !3994, !3995, !3996}
!3992 = !DILocalVariable(name: "dentry", arg: 1, scope: !3990, file: !3, line: 126, type: !247)
!3993 = !DILocalVariable(name: "inode", arg: 2, scope: !3990, file: !3, line: 127, type: !292)
!3994 = !DILocalVariable(name: "done", arg: 3, scope: !3990, file: !3, line: 128, type: !3561)
!3995 = !DILocalVariable(name: "body", scope: !3990, file: !3, line: 130, type: !370)
!3996 = !DILocalVariable(name: "error", scope: !3990, file: !3, line: 131, type: !25)
!3997 = !DILocation(line: 126, column: 55, scope: !3990)
!3998 = !DILocation(line: 127, column: 26, scope: !3990)
!3999 = !DILocation(line: 128, column: 33, scope: !3990)
!4000 = !DILocation(line: 130, column: 2, scope: !3990)
!4001 = !DILocation(line: 130, column: 8, scope: !3990)
!4002 = !DILocation(line: 131, column: 2, scope: !3990)
!4003 = !DILocation(line: 131, column: 6, scope: !3990)
!4004 = !DILocation(line: 133, column: 7, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 133, column: 6)
!4006 = !DILocation(line: 133, column: 6, scope: !3990)
!4007 = !DILocation(line: 134, column: 10, scope: !4005)
!4008 = !DILocation(line: 134, column: 3, scope: !4005)
!4009 = !DILocation(line: 135, column: 9, scope: !3990)
!4010 = !DILocation(line: 135, column: 7, scope: !3990)
!4011 = !DILocation(line: 136, column: 7, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 136, column: 6)
!4013 = !DILocation(line: 136, column: 6, scope: !3990)
!4014 = !DILocation(line: 137, column: 10, scope: !4012)
!4015 = !DILocation(line: 137, column: 3, scope: !4012)
!4016 = !DILocation(line: 138, column: 25, scope: !3990)
!4017 = !DILocation(line: 138, column: 32, scope: !3990)
!4018 = !DILocation(line: 138, column: 10, scope: !3990)
!4019 = !DILocation(line: 138, column: 8, scope: !3990)
!4020 = !DILocation(line: 139, column: 6, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 139, column: 6)
!4022 = !DILocation(line: 139, column: 6, scope: !3990)
!4023 = !DILocation(line: 140, column: 9, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4021, file: !3, line: 139, column: 27)
!4025 = !DILocation(line: 140, column: 3, scope: !4024)
!4026 = !DILocation(line: 141, column: 18, scope: !4024)
!4027 = !DILocation(line: 141, column: 10, scope: !4024)
!4028 = !DILocation(line: 141, column: 3, scope: !4024)
!4029 = !DILocation(line: 143, column: 19, scope: !3990)
!4030 = !DILocation(line: 143, column: 37, scope: !3990)
!4031 = !DILocation(line: 143, column: 2, scope: !3990)
!4032 = !DILocation(line: 144, column: 9, scope: !3990)
!4033 = !DILocation(line: 144, column: 2, scope: !3990)
!4034 = !DILocation(line: 145, column: 1, scope: !3990)
!4035 = distinct !DISubprogram(name: "kzalloc", scope: !218, file: !218, line: 719, type: !4036, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4038)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!23, !38, !228}
!4038 = !{!4039, !4040}
!4039 = !DILocalVariable(name: "size", arg: 1, scope: !4035, file: !218, line: 719, type: !38)
!4040 = !DILocalVariable(name: "flags", arg: 2, scope: !4035, file: !218, line: 719, type: !228)
!4041 = !DILocation(line: 719, column: 52, scope: !4035)
!4042 = !DILocation(line: 719, column: 64, scope: !4035)
!4043 = !DILocation(line: 721, column: 17, scope: !4035)
!4044 = !DILocation(line: 721, column: 23, scope: !4035)
!4045 = !DILocation(line: 721, column: 29, scope: !4035)
!4046 = !DILocation(line: 721, column: 9, scope: !4035)
!4047 = !DILocation(line: 721, column: 2, scope: !4035)
!4048 = distinct !DISubprogram(name: "kernfs_getlink", scope: !3, file: !3, line: 111, type: !4049, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4051)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!25, !292, !370}
!4051 = !{!4052, !4053, !4054, !4055, !4056, !4057, !4058}
!4052 = !DILocalVariable(name: "inode", arg: 1, scope: !4048, file: !3, line: 111, type: !292)
!4053 = !DILocalVariable(name: "path", arg: 2, scope: !4048, file: !3, line: 111, type: !370)
!4054 = !DILocalVariable(name: "kn", scope: !4048, file: !3, line: 113, type: !3734)
!4055 = !DILocalVariable(name: "parent", scope: !4048, file: !3, line: 114, type: !3734)
!4056 = !DILocalVariable(name: "target", scope: !4048, file: !3, line: 115, type: !3734)
!4057 = !DILocalVariable(name: "root", scope: !4048, file: !3, line: 116, type: !3753)
!4058 = !DILocalVariable(name: "error", scope: !4048, file: !3, line: 117, type: !25)
!4059 = !DILocation(line: 111, column: 41, scope: !4048)
!4060 = !DILocation(line: 111, column: 54, scope: !4048)
!4061 = !DILocation(line: 113, column: 2, scope: !4048)
!4062 = !DILocation(line: 113, column: 22, scope: !4048)
!4063 = !DILocation(line: 113, column: 27, scope: !4048)
!4064 = !DILocation(line: 113, column: 34, scope: !4048)
!4065 = !DILocation(line: 114, column: 2, scope: !4048)
!4066 = !DILocation(line: 114, column: 22, scope: !4048)
!4067 = !DILocation(line: 114, column: 31, scope: !4048)
!4068 = !DILocation(line: 114, column: 35, scope: !4048)
!4069 = !DILocation(line: 115, column: 2, scope: !4048)
!4070 = !DILocation(line: 115, column: 22, scope: !4048)
!4071 = !DILocation(line: 115, column: 31, scope: !4048)
!4072 = !DILocation(line: 115, column: 35, scope: !4048)
!4073 = !DILocation(line: 115, column: 43, scope: !4048)
!4074 = !DILocation(line: 116, column: 2, scope: !4048)
!4075 = !DILocation(line: 116, column: 22, scope: !4048)
!4076 = !DILocation(line: 116, column: 41, scope: !4048)
!4077 = !DILocation(line: 116, column: 29, scope: !4048)
!4078 = !DILocation(line: 117, column: 2, scope: !4048)
!4079 = !DILocation(line: 117, column: 6, scope: !4048)
!4080 = !DILocation(line: 119, column: 13, scope: !4048)
!4081 = !DILocation(line: 119, column: 19, scope: !4048)
!4082 = !DILocation(line: 119, column: 2, scope: !4048)
!4083 = !DILocation(line: 120, column: 33, scope: !4048)
!4084 = !DILocation(line: 120, column: 41, scope: !4048)
!4085 = !DILocation(line: 120, column: 49, scope: !4048)
!4086 = !DILocation(line: 120, column: 10, scope: !4048)
!4087 = !DILocation(line: 120, column: 8, scope: !4048)
!4088 = !DILocation(line: 121, column: 11, scope: !4048)
!4089 = !DILocation(line: 121, column: 17, scope: !4048)
!4090 = !DILocation(line: 121, column: 2, scope: !4048)
!4091 = !DILocation(line: 123, column: 9, scope: !4048)
!4092 = !DILocation(line: 124, column: 1, scope: !4048)
!4093 = !DILocation(line: 123, column: 2, scope: !4048)
!4094 = !DISubprogram(name: "kfree", scope: !218, file: !218, line: 227, type: !4095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{null, !2032}
!4097 = distinct !DISubprogram(name: "set_delayed_call", scope: !3563, file: !3563, line: 18, type: !4098, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4100)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{null, !3561, !3566, !23}
!4100 = !{!4101, !4102, !4103}
!4101 = !DILocalVariable(name: "call", arg: 1, scope: !4097, file: !3563, line: 18, type: !3561)
!4102 = !DILocalVariable(name: "fn", arg: 2, scope: !4097, file: !3563, line: 19, type: !3566)
!4103 = !DILocalVariable(name: "arg", arg: 3, scope: !4097, file: !3563, line: 19, type: !23)
!4104 = !DILocation(line: 18, column: 58, scope: !4097)
!4105 = !DILocation(line: 19, column: 10, scope: !4097)
!4106 = !DILocation(line: 19, column: 29, scope: !4097)
!4107 = !DILocation(line: 21, column: 13, scope: !4097)
!4108 = !DILocation(line: 21, column: 2, scope: !4097)
!4109 = !DILocation(line: 21, column: 8, scope: !4097)
!4110 = !DILocation(line: 21, column: 11, scope: !4097)
!4111 = !DILocation(line: 22, column: 14, scope: !4097)
!4112 = !DILocation(line: 22, column: 2, scope: !4097)
!4113 = !DILocation(line: 22, column: 8, scope: !4097)
!4114 = !DILocation(line: 22, column: 12, scope: !4097)
!4115 = !DILocation(line: 23, column: 1, scope: !4097)
!4116 = distinct !DISubprogram(name: "kmalloc", scope: !218, file: !218, line: 591, type: !4036, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4117)
!4117 = !{!4118, !4119, !4120}
!4118 = !DILocalVariable(name: "size", arg: 1, scope: !4116, file: !218, line: 591, type: !38)
!4119 = !DILocalVariable(name: "flags", arg: 2, scope: !4116, file: !218, line: 591, type: !228)
!4120 = !DILocalVariable(name: "index", scope: !4121, file: !218, line: 594, type: !7)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !218, line: 593, column: 42)
!4122 = distinct !DILexicalBlock(scope: !4116, file: !218, line: 593, column: 6)
!4123 = !DILocation(line: 591, column: 61, scope: !4116)
!4124 = !DILocation(line: 591, column: 73, scope: !4116)
!4125 = !DILocation(line: 593, column: 27, scope: !4122)
!4126 = !DILocation(line: 593, column: 6, scope: !4122)
!4127 = !DILocation(line: 593, column: 33, scope: !4122)
!4128 = !DILocation(line: 593, column: 36, scope: !4122)
!4129 = !DILocation(line: 593, column: 6, scope: !4116)
!4130 = !DILocation(line: 594, column: 3, scope: !4121)
!4131 = !DILocation(line: 594, column: 16, scope: !4121)
!4132 = !DILocation(line: 596, column: 7, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4121, file: !218, line: 596, column: 7)
!4134 = !DILocation(line: 596, column: 12, scope: !4133)
!4135 = !DILocation(line: 596, column: 7, scope: !4121)
!4136 = !DILocation(line: 597, column: 25, scope: !4133)
!4137 = !DILocation(line: 597, column: 31, scope: !4133)
!4138 = !DILocation(line: 597, column: 11, scope: !4133)
!4139 = !DILocation(line: 597, column: 4, scope: !4133)
!4140 = !DILocation(line: 599, column: 11, scope: !4121)
!4141 = !DILocation(line: 599, column: 9, scope: !4121)
!4142 = !DILocation(line: 601, column: 33, scope: !4121)
!4143 = !DILocation(line: 601, column: 40, scope: !4121)
!4144 = !DILocation(line: 601, column: 20, scope: !4121)
!4145 = !DILocation(line: 601, column: 5, scope: !4121)
!4146 = !DILocation(line: 601, column: 51, scope: !4121)
!4147 = !DILocation(line: 602, column: 5, scope: !4121)
!4148 = !DILocation(line: 602, column: 12, scope: !4121)
!4149 = !DILocation(line: 600, column: 10, scope: !4121)
!4150 = !DILocation(line: 600, column: 3, scope: !4121)
!4151 = !DILocation(line: 603, column: 2, scope: !4122)
!4152 = !DILocation(line: 604, column: 19, scope: !4116)
!4153 = !DILocation(line: 604, column: 25, scope: !4116)
!4154 = !DILocation(line: 604, column: 9, scope: !4116)
!4155 = !DILocation(line: 604, column: 2, scope: !4116)
!4156 = !DILocation(line: 605, column: 1, scope: !4116)
!4157 = !DISubprogram(name: "kmalloc_large", scope: !218, file: !218, line: 531, type: !4036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4158 = distinct !DISubprogram(name: "__kmalloc_index", scope: !218, file: !218, line: 444, type: !4159, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4161)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!7, !38, !610}
!4161 = !{!4162, !4163}
!4162 = !DILocalVariable(name: "size", arg: 1, scope: !4158, file: !218, line: 444, type: !38)
!4163 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4158, file: !218, line: 445, type: !610)
!4164 = !DILocation(line: 444, column: 60, scope: !4158)
!4165 = !DILocation(line: 445, column: 16, scope: !4158)
!4166 = !DILocation(line: 447, column: 7, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 447, column: 6)
!4168 = !DILocation(line: 447, column: 6, scope: !4158)
!4169 = !DILocation(line: 448, column: 3, scope: !4167)
!4170 = !DILocation(line: 450, column: 6, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 450, column: 6)
!4172 = !DILocation(line: 450, column: 11, scope: !4171)
!4173 = !DILocation(line: 450, column: 6, scope: !4158)
!4174 = !DILocation(line: 451, column: 3, scope: !4171)
!4175 = !DILocation(line: 453, column: 32, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 453, column: 6)
!4177 = !DILocation(line: 453, column: 37, scope: !4176)
!4178 = !DILocation(line: 453, column: 42, scope: !4176)
!4179 = !DILocation(line: 453, column: 45, scope: !4176)
!4180 = !DILocation(line: 453, column: 50, scope: !4176)
!4181 = !DILocation(line: 453, column: 6, scope: !4158)
!4182 = !DILocation(line: 454, column: 3, scope: !4176)
!4183 = !DILocation(line: 455, column: 32, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 455, column: 6)
!4185 = !DILocation(line: 455, column: 37, scope: !4184)
!4186 = !DILocation(line: 455, column: 43, scope: !4184)
!4187 = !DILocation(line: 455, column: 46, scope: !4184)
!4188 = !DILocation(line: 455, column: 51, scope: !4184)
!4189 = !DILocation(line: 455, column: 6, scope: !4158)
!4190 = !DILocation(line: 456, column: 3, scope: !4184)
!4191 = !DILocation(line: 457, column: 6, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 457, column: 6)
!4193 = !DILocation(line: 457, column: 11, scope: !4192)
!4194 = !DILocation(line: 457, column: 6, scope: !4158)
!4195 = !DILocation(line: 457, column: 26, scope: !4192)
!4196 = !DILocation(line: 458, column: 6, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 458, column: 6)
!4198 = !DILocation(line: 458, column: 11, scope: !4197)
!4199 = !DILocation(line: 458, column: 6, scope: !4158)
!4200 = !DILocation(line: 458, column: 26, scope: !4197)
!4201 = !DILocation(line: 459, column: 6, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 459, column: 6)
!4203 = !DILocation(line: 459, column: 11, scope: !4202)
!4204 = !DILocation(line: 459, column: 6, scope: !4158)
!4205 = !DILocation(line: 459, column: 26, scope: !4202)
!4206 = !DILocation(line: 460, column: 6, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 460, column: 6)
!4208 = !DILocation(line: 460, column: 11, scope: !4207)
!4209 = !DILocation(line: 460, column: 6, scope: !4158)
!4210 = !DILocation(line: 460, column: 26, scope: !4207)
!4211 = !DILocation(line: 461, column: 6, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 461, column: 6)
!4213 = !DILocation(line: 461, column: 11, scope: !4212)
!4214 = !DILocation(line: 461, column: 6, scope: !4158)
!4215 = !DILocation(line: 461, column: 26, scope: !4212)
!4216 = !DILocation(line: 462, column: 6, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 462, column: 6)
!4218 = !DILocation(line: 462, column: 11, scope: !4217)
!4219 = !DILocation(line: 462, column: 6, scope: !4158)
!4220 = !DILocation(line: 462, column: 26, scope: !4217)
!4221 = !DILocation(line: 463, column: 6, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 463, column: 6)
!4223 = !DILocation(line: 463, column: 11, scope: !4222)
!4224 = !DILocation(line: 463, column: 6, scope: !4158)
!4225 = !DILocation(line: 463, column: 26, scope: !4222)
!4226 = !DILocation(line: 464, column: 6, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 464, column: 6)
!4228 = !DILocation(line: 464, column: 11, scope: !4227)
!4229 = !DILocation(line: 464, column: 6, scope: !4158)
!4230 = !DILocation(line: 464, column: 26, scope: !4227)
!4231 = !DILocation(line: 465, column: 6, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 465, column: 6)
!4233 = !DILocation(line: 465, column: 11, scope: !4232)
!4234 = !DILocation(line: 465, column: 6, scope: !4158)
!4235 = !DILocation(line: 465, column: 26, scope: !4232)
!4236 = !DILocation(line: 466, column: 6, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 466, column: 6)
!4238 = !DILocation(line: 466, column: 11, scope: !4237)
!4239 = !DILocation(line: 466, column: 6, scope: !4158)
!4240 = !DILocation(line: 466, column: 26, scope: !4237)
!4241 = !DILocation(line: 467, column: 6, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 467, column: 6)
!4243 = !DILocation(line: 467, column: 11, scope: !4242)
!4244 = !DILocation(line: 467, column: 6, scope: !4158)
!4245 = !DILocation(line: 467, column: 26, scope: !4242)
!4246 = !DILocation(line: 468, column: 6, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 468, column: 6)
!4248 = !DILocation(line: 468, column: 11, scope: !4247)
!4249 = !DILocation(line: 468, column: 6, scope: !4158)
!4250 = !DILocation(line: 468, column: 26, scope: !4247)
!4251 = !DILocation(line: 469, column: 6, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 469, column: 6)
!4253 = !DILocation(line: 469, column: 11, scope: !4252)
!4254 = !DILocation(line: 469, column: 6, scope: !4158)
!4255 = !DILocation(line: 469, column: 26, scope: !4252)
!4256 = !DILocation(line: 470, column: 6, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 470, column: 6)
!4258 = !DILocation(line: 470, column: 11, scope: !4257)
!4259 = !DILocation(line: 470, column: 6, scope: !4158)
!4260 = !DILocation(line: 470, column: 26, scope: !4257)
!4261 = !DILocation(line: 471, column: 6, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 471, column: 6)
!4263 = !DILocation(line: 471, column: 11, scope: !4262)
!4264 = !DILocation(line: 471, column: 6, scope: !4158)
!4265 = !DILocation(line: 471, column: 26, scope: !4262)
!4266 = !DILocation(line: 472, column: 6, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 472, column: 6)
!4268 = !DILocation(line: 472, column: 11, scope: !4267)
!4269 = !DILocation(line: 472, column: 6, scope: !4158)
!4270 = !DILocation(line: 472, column: 26, scope: !4267)
!4271 = !DILocation(line: 473, column: 6, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 473, column: 6)
!4273 = !DILocation(line: 473, column: 11, scope: !4272)
!4274 = !DILocation(line: 473, column: 6, scope: !4158)
!4275 = !DILocation(line: 473, column: 26, scope: !4272)
!4276 = !DILocation(line: 474, column: 6, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 474, column: 6)
!4278 = !DILocation(line: 474, column: 11, scope: !4277)
!4279 = !DILocation(line: 474, column: 6, scope: !4158)
!4280 = !DILocation(line: 474, column: 27, scope: !4277)
!4281 = !DILocation(line: 475, column: 6, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 475, column: 6)
!4283 = !DILocation(line: 475, column: 11, scope: !4282)
!4284 = !DILocation(line: 475, column: 6, scope: !4158)
!4285 = !DILocation(line: 475, column: 32, scope: !4282)
!4286 = !DILocation(line: 477, column: 50, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4158, file: !218, line: 477, column: 6)
!4288 = !{i8 0, i8 2}
!4289 = !DILocation(line: 477, column: 6, scope: !4158)
!4290 = !DILocation(line: 478, column: 3, scope: !4287)
!4291 = !DILocation(line: 478, column: 3, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4293, file: !218, line: 478, column: 3)
!4293 = distinct !DILexicalBlock(scope: !4287, file: !218, line: 478, column: 3)
!4294 = !{i32 -2141721746}
!4295 = !DILocation(line: 478, column: 3, scope: !4293)
!4296 = !DILocation(line: 480, column: 3, scope: !4287)
!4297 = !DILocation(line: 480, column: 3, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4287, file: !218, line: 480, column: 3)
!4299 = !DILocation(line: 480, column: 3, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4298, file: !218, line: 480, column: 3)
!4301 = !DILocation(line: 480, column: 3, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4298, file: !218, line: 480, column: 3)
!4303 = !{i64 2153245753, i64 2153245782, i64 2153245828, i64 2153245886, i64 2153245940, i64 2153245994, i64 2153246049, i64 2153246080}
!4304 = !DILocation(line: 483, column: 2, scope: !4158)
!4305 = !DILocation(line: 484, column: 1, scope: !4158)
!4306 = !DISubprogram(name: "kmalloc_trace", scope: !218, file: !218, line: 525, type: !4307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!23, !4309, !228, !38}
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4311, line: 325, flags: DIFlagFwdDecl)
!4311 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4312 = distinct !DISubprogram(name: "kmalloc_type", scope: !218, file: !218, line: 401, type: !4313, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4315)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!217, !228, !42}
!4315 = !{!4316, !4317}
!4316 = !DILocalVariable(name: "flags", arg: 1, scope: !4312, file: !218, line: 401, type: !228)
!4317 = !DILocalVariable(name: "caller", arg: 2, scope: !4312, file: !218, line: 401, type: !42)
!4318 = !DILocation(line: 401, column: 67, scope: !4312)
!4319 = !DILocation(line: 401, column: 88, scope: !4312)
!4320 = !DILocation(line: 407, column: 6, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4312, file: !218, line: 407, column: 6)
!4322 = !DILocation(line: 407, column: 6, scope: !4312)
!4323 = !DILocation(line: 413, column: 3, scope: !4321)
!4324 = !DILocation(line: 423, column: 38, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4312, file: !218, line: 423, column: 6)
!4326 = !DILocation(line: 423, column: 44, scope: !4325)
!4327 = !DILocation(line: 423, column: 6, scope: !4312)
!4328 = !DILocation(line: 424, column: 3, scope: !4325)
!4329 = !DILocation(line: 426, column: 3, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4312, file: !218, line: 425, column: 6)
!4331 = !DILocation(line: 429, column: 1, scope: !4312)
!4332 = !DISubprogram(name: "__kmalloc", scope: !218, file: !218, line: 488, type: !4036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4333 = !DISubprogram(name: "__compiletime_assert_245", scope: !218, file: !218, line: 478, type: !2753, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4334 = distinct !DISubprogram(name: "kernfs_root", scope: !3755, file: !3755, line: 67, type: !4335, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4337)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!3753, !3734}
!4337 = !{!4338}
!4338 = !DILocalVariable(name: "kn", arg: 1, scope: !4334, file: !3755, line: 67, type: !3734)
!4339 = !DILocation(line: 67, column: 67, scope: !4334)
!4340 = !DILocation(line: 70, column: 6, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4334, file: !3755, line: 70, column: 6)
!4342 = !DILocation(line: 70, column: 10, scope: !4341)
!4343 = !DILocation(line: 70, column: 6, scope: !4334)
!4344 = !DILocation(line: 71, column: 8, scope: !4341)
!4345 = !DILocation(line: 71, column: 12, scope: !4341)
!4346 = !DILocation(line: 71, column: 6, scope: !4341)
!4347 = !DILocation(line: 71, column: 3, scope: !4341)
!4348 = !DILocation(line: 72, column: 9, scope: !4334)
!4349 = !DILocation(line: 72, column: 13, scope: !4334)
!4350 = !DILocation(line: 72, column: 17, scope: !4334)
!4351 = !DILocation(line: 72, column: 2, scope: !4334)
!4352 = !DISubprogram(name: "down_read", scope: !552, file: !552, line: 175, type: !4353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{null, !4355}
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!4356 = distinct !DISubprogram(name: "kernfs_get_target_path", scope: !3, file: !3, line: 56, type: !4357, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4359)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!25, !3734, !3734, !370}
!4359 = !{!4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367}
!4360 = !DILocalVariable(name: "parent", arg: 1, scope: !4356, file: !3, line: 56, type: !3734)
!4361 = !DILocalVariable(name: "target", arg: 2, scope: !4356, file: !3, line: 57, type: !3734)
!4362 = !DILocalVariable(name: "path", arg: 3, scope: !4356, file: !3, line: 57, type: !370)
!4363 = !DILocalVariable(name: "base", scope: !4356, file: !3, line: 59, type: !3734)
!4364 = !DILocalVariable(name: "kn", scope: !4356, file: !3, line: 59, type: !3734)
!4365 = !DILocalVariable(name: "s", scope: !4356, file: !3, line: 60, type: !370)
!4366 = !DILocalVariable(name: "len", scope: !4356, file: !3, line: 61, type: !25)
!4367 = !DILocalVariable(name: "slen", scope: !4368, file: !3, line: 98, type: !25)
!4368 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 97, column: 35)
!4369 = !DILocation(line: 56, column: 55, scope: !4356)
!4370 = !DILocation(line: 57, column: 27, scope: !4356)
!4371 = !DILocation(line: 57, column: 41, scope: !4356)
!4372 = !DILocation(line: 59, column: 2, scope: !4356)
!4373 = !DILocation(line: 59, column: 22, scope: !4356)
!4374 = !DILocation(line: 59, column: 29, scope: !4356)
!4375 = !DILocation(line: 60, column: 2, scope: !4356)
!4376 = !DILocation(line: 60, column: 8, scope: !4356)
!4377 = !DILocation(line: 60, column: 12, scope: !4356)
!4378 = !DILocation(line: 61, column: 2, scope: !4356)
!4379 = !DILocation(line: 61, column: 6, scope: !4356)
!4380 = !DILocation(line: 64, column: 9, scope: !4356)
!4381 = !DILocation(line: 64, column: 7, scope: !4356)
!4382 = !DILocation(line: 65, column: 2, scope: !4356)
!4383 = !DILocation(line: 65, column: 9, scope: !4356)
!4384 = !DILocation(line: 65, column: 15, scope: !4356)
!4385 = !DILocation(line: 66, column: 8, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 65, column: 23)
!4387 = !DILocation(line: 66, column: 16, scope: !4386)
!4388 = !DILocation(line: 66, column: 6, scope: !4386)
!4389 = !DILocation(line: 67, column: 3, scope: !4386)
!4390 = !DILocation(line: 67, column: 10, scope: !4386)
!4391 = !DILocation(line: 67, column: 14, scope: !4386)
!4392 = !DILocation(line: 67, column: 21, scope: !4386)
!4393 = !DILocation(line: 67, column: 24, scope: !4386)
!4394 = !DILocation(line: 67, column: 32, scope: !4386)
!4395 = !DILocation(line: 67, column: 29, scope: !4386)
!4396 = !DILocation(line: 0, scope: !4386)
!4397 = !DILocation(line: 68, column: 9, scope: !4386)
!4398 = !DILocation(line: 68, column: 13, scope: !4386)
!4399 = !DILocation(line: 68, column: 7, scope: !4386)
!4400 = distinct !{!4400, !4389, !4398, !4401, !4402}
!4401 = !{!"llvm.loop.mustprogress"}
!4402 = !{!"llvm.loop.unroll.disable"}
!4403 = !DILocation(line: 70, column: 7, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 70, column: 7)
!4405 = !DILocation(line: 70, column: 15, scope: !4404)
!4406 = !DILocation(line: 70, column: 12, scope: !4404)
!4407 = !DILocation(line: 70, column: 7, scope: !4386)
!4408 = !DILocation(line: 71, column: 4, scope: !4404)
!4409 = !DILocation(line: 73, column: 8, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 73, column: 7)
!4411 = !DILocation(line: 73, column: 12, scope: !4410)
!4412 = !DILocation(line: 73, column: 10, scope: !4410)
!4413 = !DILocation(line: 73, column: 18, scope: !4410)
!4414 = !DILocation(line: 73, column: 22, scope: !4410)
!4415 = !DILocation(line: 73, column: 7, scope: !4386)
!4416 = !DILocation(line: 74, column: 4, scope: !4410)
!4417 = !DILocation(line: 76, column: 10, scope: !4386)
!4418 = !DILocation(line: 76, column: 3, scope: !4386)
!4419 = !DILocation(line: 77, column: 5, scope: !4386)
!4420 = !DILocation(line: 78, column: 10, scope: !4386)
!4421 = !DILocation(line: 78, column: 16, scope: !4386)
!4422 = !DILocation(line: 78, column: 8, scope: !4386)
!4423 = distinct !{!4423, !4382, !4424, !4401, !4402}
!4424 = !DILocation(line: 79, column: 2, scope: !4356)
!4425 = !DILocation(line: 82, column: 7, scope: !4356)
!4426 = !DILocation(line: 82, column: 5, scope: !4356)
!4427 = !DILocation(line: 83, column: 2, scope: !4356)
!4428 = !DILocation(line: 83, column: 9, scope: !4356)
!4429 = !DILocation(line: 83, column: 13, scope: !4356)
!4430 = !DILocation(line: 83, column: 20, scope: !4356)
!4431 = !DILocation(line: 83, column: 23, scope: !4356)
!4432 = !DILocation(line: 83, column: 29, scope: !4356)
!4433 = !DILocation(line: 83, column: 26, scope: !4356)
!4434 = !DILocation(line: 0, scope: !4356)
!4435 = !DILocation(line: 84, column: 17, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 83, column: 35)
!4437 = !DILocation(line: 84, column: 21, scope: !4436)
!4438 = !DILocation(line: 84, column: 10, scope: !4436)
!4439 = !DILocation(line: 84, column: 27, scope: !4436)
!4440 = !DILocation(line: 84, column: 7, scope: !4436)
!4441 = !DILocation(line: 85, column: 8, scope: !4436)
!4442 = !DILocation(line: 85, column: 12, scope: !4436)
!4443 = !DILocation(line: 85, column: 6, scope: !4436)
!4444 = distinct !{!4444, !4427, !4445, !4401, !4402}
!4445 = !DILocation(line: 86, column: 2, scope: !4356)
!4446 = !DILocation(line: 89, column: 6, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 89, column: 6)
!4448 = !DILocation(line: 89, column: 10, scope: !4447)
!4449 = !DILocation(line: 89, column: 6, scope: !4356)
!4450 = !DILocation(line: 90, column: 3, scope: !4447)
!4451 = !DILocation(line: 91, column: 5, scope: !4356)
!4452 = !DILocation(line: 92, column: 7, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 92, column: 6)
!4454 = !DILocation(line: 92, column: 11, scope: !4453)
!4455 = !DILocation(line: 92, column: 9, scope: !4453)
!4456 = !DILocation(line: 92, column: 19, scope: !4453)
!4457 = !DILocation(line: 92, column: 17, scope: !4453)
!4458 = !DILocation(line: 92, column: 23, scope: !4453)
!4459 = !DILocation(line: 92, column: 6, scope: !4356)
!4460 = !DILocation(line: 93, column: 3, scope: !4453)
!4461 = !DILocation(line: 96, column: 7, scope: !4356)
!4462 = !DILocation(line: 96, column: 5, scope: !4356)
!4463 = !DILocation(line: 97, column: 2, scope: !4356)
!4464 = !DILocation(line: 97, column: 9, scope: !4356)
!4465 = !DILocation(line: 97, column: 13, scope: !4356)
!4466 = !DILocation(line: 97, column: 20, scope: !4356)
!4467 = !DILocation(line: 97, column: 23, scope: !4356)
!4468 = !DILocation(line: 97, column: 29, scope: !4356)
!4469 = !DILocation(line: 97, column: 26, scope: !4356)
!4470 = !DILocation(line: 98, column: 3, scope: !4368)
!4471 = !DILocation(line: 98, column: 7, scope: !4368)
!4472 = !DILocation(line: 98, column: 21, scope: !4368)
!4473 = !DILocation(line: 98, column: 25, scope: !4368)
!4474 = !DILocation(line: 98, column: 14, scope: !4368)
!4475 = !DILocation(line: 100, column: 10, scope: !4368)
!4476 = !DILocation(line: 100, column: 7, scope: !4368)
!4477 = !DILocation(line: 101, column: 10, scope: !4368)
!4478 = !DILocation(line: 101, column: 14, scope: !4368)
!4479 = !DILocation(line: 101, column: 12, scope: !4368)
!4480 = !DILocation(line: 101, column: 19, scope: !4368)
!4481 = !DILocation(line: 101, column: 23, scope: !4368)
!4482 = !DILocation(line: 101, column: 29, scope: !4368)
!4483 = !DILocation(line: 101, column: 3, scope: !4368)
!4484 = !DILocation(line: 102, column: 7, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4368, file: !3, line: 102, column: 7)
!4486 = !DILocation(line: 102, column: 7, scope: !4368)
!4487 = !DILocation(line: 103, column: 4, scope: !4485)
!4488 = !DILocation(line: 103, column: 6, scope: !4485)
!4489 = !DILocation(line: 103, column: 13, scope: !4485)
!4490 = !DILocation(line: 105, column: 8, scope: !4368)
!4491 = !DILocation(line: 105, column: 12, scope: !4368)
!4492 = !DILocation(line: 105, column: 6, scope: !4368)
!4493 = !DILocation(line: 106, column: 2, scope: !4356)
!4494 = distinct !{!4494, !4463, !4493, !4401, !4402}
!4495 = !DILocation(line: 108, column: 2, scope: !4356)
!4496 = !DILocation(line: 109, column: 1, scope: !4356)
!4497 = !DISubprogram(name: "up_read", scope: !552, file: !552, line: 198, type: !4353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4498 = !DISubprogram(name: "strcpy", scope: !4499, file: !4499, line: 63, type: !4500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4499 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!370, !370, !19}
!4502 = !DISubprogram(name: "strlen", scope: !4499, file: !4499, line: 128, type: !4503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!42, !19}
