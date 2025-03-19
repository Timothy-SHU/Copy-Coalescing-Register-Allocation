; ModuleID = 'fs/efivarfs/inode.c'
source_filename = "fs/efivarfs/inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [56 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.timespec64 = type { i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.13 = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.16 = type { ptr }
%struct.guid_t = type { [16 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [32 x i8], %struct.lockref, ptr, ptr, i64, ptr, %union.anon.21, %struct.list_head, %struct.list_head, %union.anon.22 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.17, ptr }
%union.anon.17 = type { i64 }
%struct.lockref = type { %union.anon.19 }
%union.anon.19 = type { i64 }
%union.anon.21 = type { %struct.list_head }
%union.anon.22 = type { %struct.hlist_node }
%struct.anon.18 = type { i32, i32 }
%struct.efivar_entry = type { %struct.efi_variable, %struct.list_head, %struct.kobject }
%struct.efi_variable = type <{ [512 x i16], %struct.guid_t, i64, [1024 x i8], i64, i32 }>
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }

@efivarfs_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efivarfs_fileattr_set, ptr @efivarfs_fileattr_get, ptr null, [56 x i8] undef }, align 64, !dbg !0
@efivarfs_file_operations = external dso_local constant %struct.file_operations, align 8
@efivarfs_dir_inode_operations = hidden constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr @efivarfs_create, ptr null, ptr @efivarfs_unlink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [56 x i8] undef }, align 64, !dbg !83
@simple_dir_operations = external dso_local constant %struct.file_operations, align 8
@efivarfs_list = external dso_local global %struct.list_head, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3915

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @efivarfs_get_inode(ptr noundef %sb, ptr noundef %dir, i32 noundef %mode, i32 noundef %dev, i1 noundef zeroext %is_removable) #0 align 16 !dbg !3929 {
entry:
  %sb.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %dev.addr = alloca i32, align 4
  %is_removable.addr = alloca i8, align 1
  %inode = alloca ptr, align 8
  %tmp = alloca %struct.timespec64, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !3933, metadata !DIExpression()), !dbg !3939
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !3934, metadata !DIExpression()), !dbg !3940
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !3935, metadata !DIExpression()), !dbg !3941
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3936, metadata !DIExpression()), !dbg !3942
  %frombool = zext i1 %is_removable to i8
  store i8 %frombool, ptr %is_removable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_removable.addr, metadata !3937, metadata !DIExpression()), !dbg !3943
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #14, !dbg !3944
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !3938, metadata !DIExpression()), !dbg !3945
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !3946
  %call = call ptr @new_inode(ptr noundef %0) #15, !dbg !3947
  store ptr %call, ptr %inode, align 8, !dbg !3945
  %1 = load ptr, ptr %inode, align 8, !dbg !3948
  %tobool = icmp ne ptr %1, null, !dbg !3948
  br i1 %tobool, label %if.then, label %if.end, !dbg !3950

if.then:                                          ; preds = %entry
  %call1 = call i32 @get_next_ino() #15, !dbg !3951
  %conv = zext i32 %call1 to i64, !dbg !3951
  %2 = load ptr, ptr %inode, align 8, !dbg !3953
  %i_ino = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 12, !dbg !3954
  store i64 %conv, ptr %i_ino, align 8, !dbg !3955
  %3 = load i32, ptr %mode.addr, align 4, !dbg !3956
  %conv2 = trunc i32 %3 to i16, !dbg !3956
  %4 = load ptr, ptr %inode, align 8, !dbg !3957
  %i_mode = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 0, !dbg !3958
  store i16 %conv2, ptr %i_mode, align 8, !dbg !3959
  %5 = load ptr, ptr %inode, align 8, !dbg !3960
  %i_atime = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 16, !dbg !3961
  %6 = load ptr, ptr %inode, align 8, !dbg !3962
  %i_mtime = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 17, !dbg !3963
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #14, !dbg !3964
  %7 = load ptr, ptr %inode, align 8, !dbg !3965
  %call3 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %7) #15, !dbg !3964
  %8 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !3964
  %9 = extractvalue { i64, i64 } %call3, 0, !dbg !3964
  store i64 %9, ptr %8, align 8, !dbg !3964
  %10 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !3964
  %11 = extractvalue { i64, i64 } %call3, 1, !dbg !3964
  store i64 %11, ptr %10, align 8, !dbg !3964
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %tmp, i64 16, i1 false), !dbg !3964
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #14, !dbg !3964
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_atime, ptr align 8 %i_mtime, i64 16, i1 false), !dbg !3966
  %12 = load i8, ptr %is_removable.addr, align 1, !dbg !3967, !range !3968, !noundef !971
  %tobool4 = trunc i8 %12 to i1, !dbg !3967
  %13 = zext i1 %tobool4 to i64, !dbg !3967
  %cond = select i1 %tobool4, i32 0, i32 8, !dbg !3967
  %14 = load ptr, ptr %inode, align 8, !dbg !3969
  %i_flags = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 5, !dbg !3970
  store i32 %cond, ptr %i_flags, align 4, !dbg !3971
  %15 = load i32, ptr %mode.addr, align 4, !dbg !3972
  %and = and i32 %15, 61440, !dbg !3973
  switch i32 %and, label %sw.epilog [
    i32 32768, label %sw.bb
    i32 16384, label %sw.bb6
  ], !dbg !3974

sw.bb:                                            ; preds = %if.then
  %16 = load ptr, ptr %inode, align 8, !dbg !3975
  %i_op = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 8, !dbg !3977
  store ptr @efivarfs_file_inode_operations, ptr %i_op, align 8, !dbg !3978
  %17 = load ptr, ptr %inode, align 8, !dbg !3979
  %18 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 39, !dbg !3980
  store ptr @efivarfs_file_operations, ptr %18, align 8, !dbg !3981
  br label %sw.epilog, !dbg !3982

sw.bb6:                                           ; preds = %if.then
  %19 = load ptr, ptr %inode, align 8, !dbg !3983
  %i_op7 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8, !dbg !3984
  store ptr @efivarfs_dir_inode_operations, ptr %i_op7, align 8, !dbg !3985
  %20 = load ptr, ptr %inode, align 8, !dbg !3986
  %21 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 39, !dbg !3987
  store ptr @simple_dir_operations, ptr %21, align 8, !dbg !3988
  %22 = load ptr, ptr %inode, align 8, !dbg !3989
  call void @inc_nlink(ptr noundef %22) #15, !dbg !3990
  br label %sw.epilog, !dbg !3991

sw.epilog:                                        ; preds = %if.then, %sw.bb6, %sw.bb
  br label %if.end, !dbg !3992

if.end:                                           ; preds = %sw.epilog, %entry
  %23 = load ptr, ptr %inode, align 8, !dbg !3993
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #14, !dbg !3994
  ret ptr %23, !dbg !3995
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3996 dso_local ptr @new_inode(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3997 dso_local i32 @get_next_ino() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4000 dso_local { i64, i64 } @inode_set_ctime_current(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4003 dso_local void @inc_nlink(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efivarfs_create(ptr noundef %idmap, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 16 !dbg !4004 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %excl.addr = alloca i8, align 1
  %inode = alloca ptr, align 8
  %var = alloca ptr, align 8
  %namelen = alloca i32, align 4
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %is_removable = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.guid_t, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !4006, metadata !DIExpression()), !dbg !4047
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !4007, metadata !DIExpression()), !dbg !4048
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4008, metadata !DIExpression()), !dbg !4049
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4009, metadata !DIExpression()), !dbg !4050
  %frombool = zext i1 %excl to i8
  store i8 %frombool, ptr %excl.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %excl.addr, metadata !4010, metadata !DIExpression()), !dbg !4051
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #14, !dbg !4052
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4011, metadata !DIExpression()), !dbg !4053
  store ptr null, ptr %inode, align 8, !dbg !4053
  call void @llvm.lifetime.start.p0(i64 8, ptr %var) #14, !dbg !4054
  call void @llvm.dbg.declare(metadata ptr %var, metadata !4012, metadata !DIExpression()), !dbg !4055
  call void @llvm.lifetime.start.p0(i64 4, ptr %namelen) #14, !dbg !4056
  call void @llvm.dbg.declare(metadata ptr %namelen, metadata !4042, metadata !DIExpression()), !dbg !4057
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !4056
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4043, metadata !DIExpression()), !dbg !4058
  store i32 0, ptr %i, align 4, !dbg !4058
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !4056
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4044, metadata !DIExpression()), !dbg !4059
  store i32 0, ptr %err, align 4, !dbg !4059
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_removable) #14, !dbg !4060
  call void @llvm.dbg.declare(metadata ptr %is_removable, metadata !4045, metadata !DIExpression()), !dbg !4061
  store i8 0, ptr %is_removable, align 1, !dbg !4061
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4062
  %d_name = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4, !dbg !4064
  %name = getelementptr inbounds %struct.qstr, ptr %d_name, i32 0, i32 1, !dbg !4065
  %1 = load ptr, ptr %name, align 8, !dbg !4065
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !4066
  %d_name1 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, !dbg !4067
  %3 = getelementptr inbounds %struct.qstr, ptr %d_name1, i32 0, i32 0, !dbg !4068
  %len = getelementptr inbounds %struct.anon.18, ptr %3, i32 0, i32 1, !dbg !4068
  %4 = load i32, ptr %len, align 4, !dbg !4068
  %call = call zeroext i1 @efivarfs_valid_name(ptr noundef %1, i32 noundef %4) #15, !dbg !4069
  br i1 %call, label %if.end, label %if.then, !dbg !4070

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4071

if.end:                                           ; preds = %entry
  %call2 = call noalias ptr @kzalloc(i64 noundef 2168, i32 noundef 3264) #16, !dbg !4072
  store ptr %call2, ptr %var, align 8, !dbg !4073
  %5 = load ptr, ptr %var, align 8, !dbg !4074
  %tobool = icmp ne ptr %5, null, !dbg !4074
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !4076

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !4077
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4077

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !4078
  %d_name5 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 4, !dbg !4079
  %7 = getelementptr inbounds %struct.qstr, ptr %d_name5, i32 0, i32 0, !dbg !4080
  %len6 = getelementptr inbounds %struct.anon.18, ptr %7, i32 0, i32 1, !dbg !4080
  %8 = load i32, ptr %len6, align 4, !dbg !4080
  %sub = sub i32 %8, 36, !dbg !4081
  %sub7 = sub i32 %sub, 1, !dbg !4082
  store i32 %sub7, ptr %namelen, align 4, !dbg !4083
  %9 = load ptr, ptr %dentry.addr, align 8, !dbg !4084
  %d_name8 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 4, !dbg !4085
  %name9 = getelementptr inbounds %struct.qstr, ptr %d_name8, i32 0, i32 1, !dbg !4086
  %10 = load ptr, ptr %name9, align 8, !dbg !4086
  %11 = load i32, ptr %namelen, align 4, !dbg !4087
  %idx.ext = sext i32 %11 to i64, !dbg !4088
  %add.ptr = getelementptr i8, ptr %10, i64 %idx.ext, !dbg !4088
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i64 1, !dbg !4089
  %12 = load ptr, ptr %var, align 8, !dbg !4090
  %var11 = getelementptr inbounds %struct.efivar_entry, ptr %12, i32 0, i32 0, !dbg !4091
  %VendorGuid = getelementptr inbounds %struct.efi_variable, ptr %var11, i32 0, i32 1, !dbg !4092
  %call12 = call i32 @guid_parse(ptr noundef %add.ptr10, ptr noundef %VendorGuid) #15, !dbg !4093
  store i32 %call12, ptr %err, align 4, !dbg !4094
  %13 = load i32, ptr %err, align 4, !dbg !4095
  %tobool13 = icmp ne i32 %13, 0, !dbg !4095
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4097

if.then14:                                        ; preds = %if.end4
  br label %out, !dbg !4098

if.end15:                                         ; preds = %if.end4
  %14 = load ptr, ptr %var, align 8, !dbg !4099
  %var16 = getelementptr inbounds %struct.efivar_entry, ptr %14, i32 0, i32 0, !dbg !4101
  %VendorGuid17 = getelementptr inbounds %struct.efi_variable, ptr %var16, i32 0, i32 1, !dbg !4102
  %b = getelementptr inbounds %struct.guid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !4103
  %arrayinit.begin = getelementptr inbounds [16 x i8], ptr %b, i64 0, i64 0, !dbg !4103
  store i8 -68, ptr %arrayinit.begin, align 1, !dbg !4103
  %arrayinit.element = getelementptr inbounds i8, ptr %arrayinit.begin, i64 1, !dbg !4103
  store i8 -27, ptr %arrayinit.element, align 1, !dbg !4103
  %arrayinit.element18 = getelementptr inbounds i8, ptr %arrayinit.element, i64 1, !dbg !4103
  store i8 -31, ptr %arrayinit.element18, align 1, !dbg !4103
  %arrayinit.element19 = getelementptr inbounds i8, ptr %arrayinit.element18, i64 1, !dbg !4103
  store i8 28, ptr %arrayinit.element19, align 1, !dbg !4103
  %arrayinit.element20 = getelementptr inbounds i8, ptr %arrayinit.element19, i64 1, !dbg !4103
  store i8 -21, ptr %arrayinit.element20, align 1, !dbg !4103
  %arrayinit.element21 = getelementptr inbounds i8, ptr %arrayinit.element20, i64 1, !dbg !4103
  store i8 124, ptr %arrayinit.element21, align 1, !dbg !4103
  %arrayinit.element22 = getelementptr inbounds i8, ptr %arrayinit.element21, i64 1, !dbg !4103
  store i8 -14, ptr %arrayinit.element22, align 1, !dbg !4103
  %arrayinit.element23 = getelementptr inbounds i8, ptr %arrayinit.element22, i64 1, !dbg !4103
  store i8 66, ptr %arrayinit.element23, align 1, !dbg !4103
  %arrayinit.element24 = getelementptr inbounds i8, ptr %arrayinit.element23, i64 1, !dbg !4103
  store i8 -127, ptr %arrayinit.element24, align 1, !dbg !4103
  %arrayinit.element25 = getelementptr inbounds i8, ptr %arrayinit.element24, i64 1, !dbg !4103
  store i8 -27, ptr %arrayinit.element25, align 1, !dbg !4103
  %arrayinit.element26 = getelementptr inbounds i8, ptr %arrayinit.element25, i64 1, !dbg !4103
  store i8 -118, ptr %arrayinit.element26, align 1, !dbg !4103
  %arrayinit.element27 = getelementptr inbounds i8, ptr %arrayinit.element26, i64 1, !dbg !4103
  store i8 -83, ptr %arrayinit.element27, align 1, !dbg !4103
  %arrayinit.element28 = getelementptr inbounds i8, ptr %arrayinit.element27, i64 1, !dbg !4103
  store i8 -15, ptr %arrayinit.element28, align 1, !dbg !4103
  %arrayinit.element29 = getelementptr inbounds i8, ptr %arrayinit.element28, i64 1, !dbg !4103
  store i8 -128, ptr %arrayinit.element29, align 1, !dbg !4103
  %arrayinit.element30 = getelementptr inbounds i8, ptr %arrayinit.element29, i64 1, !dbg !4103
  store i8 -11, ptr %arrayinit.element30, align 1, !dbg !4103
  %arrayinit.element31 = getelementptr inbounds i8, ptr %arrayinit.element30, i64 1, !dbg !4103
  store i8 123, ptr %arrayinit.element31, align 1, !dbg !4103
  %call32 = call zeroext i1 @guid_equal(ptr noundef %VendorGuid17, ptr noundef %.compoundliteral) #15, !dbg !4104
  br i1 %call32, label %if.then33, label %if.end34, !dbg !4105

if.then33:                                        ; preds = %if.end15
  store i32 -1, ptr %err, align 4, !dbg !4106
  br label %out, !dbg !4108

if.end34:                                         ; preds = %if.end15
  %15 = load ptr, ptr %var, align 8, !dbg !4109
  %var35 = getelementptr inbounds %struct.efivar_entry, ptr %15, i32 0, i32 0, !dbg !4111
  %VendorGuid36 = getelementptr inbounds %struct.efi_variable, ptr %var35, i32 0, i32 1, !dbg !4112
  %16 = load ptr, ptr %dentry.addr, align 8, !dbg !4113
  %d_name37 = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 4, !dbg !4114
  %name38 = getelementptr inbounds %struct.qstr, ptr %d_name37, i32 0, i32 1, !dbg !4115
  %17 = load ptr, ptr %name38, align 8, !dbg !4115
  %18 = load i32, ptr %namelen, align 4, !dbg !4116
  %conv = sext i32 %18 to i64, !dbg !4116
  %19 = getelementptr inbounds { i64, i64 }, ptr %VendorGuid36, i32 0, i32 0, !dbg !4117
  %20 = load i64, ptr %19, align 8, !dbg !4117
  %21 = getelementptr inbounds { i64, i64 }, ptr %VendorGuid36, i32 0, i32 1, !dbg !4117
  %22 = load i64, ptr %21, align 8, !dbg !4117
  %call39 = call zeroext i1 @efivar_variable_is_removable(i64 %20, i64 %22, ptr noundef %17, i64 noundef %conv) #15, !dbg !4117
  br i1 %call39, label %if.then40, label %if.end41, !dbg !4118

if.then40:                                        ; preds = %if.end34
  store i8 1, ptr %is_removable, align 1, !dbg !4119
  br label %if.end41, !dbg !4120

if.end41:                                         ; preds = %if.then40, %if.end34
  %23 = load ptr, ptr %dir.addr, align 8, !dbg !4121
  %i_sb = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 9, !dbg !4122
  %24 = load ptr, ptr %i_sb, align 8, !dbg !4122
  %25 = load ptr, ptr %dir.addr, align 8, !dbg !4123
  %26 = load i16, ptr %mode.addr, align 2, !dbg !4124
  %conv42 = zext i16 %26 to i32, !dbg !4124
  %27 = load i8, ptr %is_removable, align 1, !dbg !4125, !range !3968, !noundef !971
  %tobool43 = trunc i8 %27 to i1, !dbg !4125
  %call44 = call ptr @efivarfs_get_inode(ptr noundef %24, ptr noundef %25, i32 noundef %conv42, i32 noundef 0, i1 noundef zeroext %tobool43) #15, !dbg !4126
  store ptr %call44, ptr %inode, align 8, !dbg !4127
  %28 = load ptr, ptr %inode, align 8, !dbg !4128
  %tobool45 = icmp ne ptr %28, null, !dbg !4128
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !4130

if.then46:                                        ; preds = %if.end41
  store i32 -12, ptr %err, align 4, !dbg !4131
  br label %out, !dbg !4133

if.end47:                                         ; preds = %if.end41
  store i32 0, ptr %i, align 4, !dbg !4134
  br label %for.cond, !dbg !4136

for.cond:                                         ; preds = %for.inc, %if.end47
  %29 = load i32, ptr %i, align 4, !dbg !4137
  %30 = load i32, ptr %namelen, align 4, !dbg !4139
  %cmp = icmp slt i32 %29, %30, !dbg !4140
  br i1 %cmp, label %for.body, label %for.end, !dbg !4141

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %dentry.addr, align 8, !dbg !4142
  %d_name49 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 4, !dbg !4143
  %name50 = getelementptr inbounds %struct.qstr, ptr %d_name49, i32 0, i32 1, !dbg !4144
  %32 = load ptr, ptr %name50, align 8, !dbg !4144
  %33 = load i32, ptr %i, align 4, !dbg !4145
  %idxprom = sext i32 %33 to i64, !dbg !4142
  %arrayidx = getelementptr i8, ptr %32, i64 %idxprom, !dbg !4142
  %34 = load i8, ptr %arrayidx, align 1, !dbg !4142
  %conv51 = zext i8 %34 to i16, !dbg !4142
  %35 = load ptr, ptr %var, align 8, !dbg !4146
  %var52 = getelementptr inbounds %struct.efivar_entry, ptr %35, i32 0, i32 0, !dbg !4147
  %VariableName = getelementptr inbounds %struct.efi_variable, ptr %var52, i32 0, i32 0, !dbg !4148
  %36 = load i32, ptr %i, align 4, !dbg !4149
  %idxprom53 = sext i32 %36 to i64, !dbg !4146
  %arrayidx54 = getelementptr [512 x i16], ptr %VariableName, i64 0, i64 %idxprom53, !dbg !4146
  store i16 %conv51, ptr %arrayidx54, align 2, !dbg !4150
  br label %for.inc, !dbg !4146

for.inc:                                          ; preds = %for.body
  %37 = load i32, ptr %i, align 4, !dbg !4151
  %inc = add i32 %37, 1, !dbg !4151
  store i32 %inc, ptr %i, align 4, !dbg !4151
  br label %for.cond, !dbg !4152, !llvm.loop !4153

for.end:                                          ; preds = %for.cond
  %38 = load ptr, ptr %var, align 8, !dbg !4157
  %var55 = getelementptr inbounds %struct.efivar_entry, ptr %38, i32 0, i32 0, !dbg !4158
  %VariableName56 = getelementptr inbounds %struct.efi_variable, ptr %var55, i32 0, i32 0, !dbg !4159
  %39 = load i32, ptr %i, align 4, !dbg !4160
  %idxprom57 = sext i32 %39 to i64, !dbg !4157
  %arrayidx58 = getelementptr [512 x i16], ptr %VariableName56, i64 0, i64 %idxprom57, !dbg !4157
  store i16 0, ptr %arrayidx58, align 2, !dbg !4161
  %40 = load ptr, ptr %var, align 8, !dbg !4162
  %41 = load ptr, ptr %inode, align 8, !dbg !4163
  %i_private = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 47, !dbg !4164
  store ptr %40, ptr %i_private, align 8, !dbg !4165
  %42 = load ptr, ptr %var, align 8, !dbg !4166
  call void @kmemleak_ignore(ptr noundef %42) #15, !dbg !4167
  %43 = load ptr, ptr %var, align 8, !dbg !4168
  %call59 = call i32 @efivar_entry_add(ptr noundef %43, ptr noundef @efivarfs_list) #15, !dbg !4169
  store i32 %call59, ptr %err, align 4, !dbg !4170
  %44 = load i32, ptr %err, align 4, !dbg !4171
  %tobool60 = icmp ne i32 %44, 0, !dbg !4171
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !4173

if.then61:                                        ; preds = %for.end
  br label %out, !dbg !4174

if.end62:                                         ; preds = %for.end
  %45 = load ptr, ptr %dentry.addr, align 8, !dbg !4175
  %46 = load ptr, ptr %inode, align 8, !dbg !4176
  call void @d_instantiate(ptr noundef %45, ptr noundef %46) #15, !dbg !4177
  %47 = load ptr, ptr %dentry.addr, align 8, !dbg !4178
  %call63 = call ptr @dget(ptr noundef %47) #15, !dbg !4179
  br label %out, !dbg !4179

out:                                              ; preds = %if.end62, %if.then61, %if.then46, %if.then33, %if.then14
  call void @llvm.dbg.label(metadata !4046), !dbg !4180
  %48 = load i32, ptr %err, align 4, !dbg !4181
  %tobool64 = icmp ne i32 %48, 0, !dbg !4181
  br i1 %tobool64, label %if.then65, label %if.end69, !dbg !4183

if.then65:                                        ; preds = %out
  %49 = load ptr, ptr %var, align 8, !dbg !4184
  call void @kfree(ptr noundef %49) #15, !dbg !4186
  %50 = load ptr, ptr %inode, align 8, !dbg !4187
  %tobool66 = icmp ne ptr %50, null, !dbg !4187
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !4189

if.then67:                                        ; preds = %if.then65
  %51 = load ptr, ptr %inode, align 8, !dbg !4190
  call void @iput(ptr noundef %51) #15, !dbg !4191
  br label %if.end68, !dbg !4191

if.end68:                                         ; preds = %if.then67, %if.then65
  br label %if.end69, !dbg !4192

if.end69:                                         ; preds = %if.end68, %out
  %52 = load i32, ptr %err, align 4, !dbg !4193
  store i32 %52, ptr %retval, align 4, !dbg !4194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4194

cleanup:                                          ; preds = %if.end69, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_removable) #14, !dbg !4195
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !4195
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !4195
  call void @llvm.lifetime.end.p0(i64 4, ptr %namelen) #14, !dbg !4195
  call void @llvm.lifetime.end.p0(i64 8, ptr %var) #14, !dbg !4195
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #14, !dbg !4195
  %53 = load i32, ptr %retval, align 4, !dbg !4195
  ret i32 %53, !dbg !4195
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efivarfs_unlink(ptr noundef %dir, ptr noundef %dentry) #0 align 16 !dbg !4196 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %var = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !4198, metadata !DIExpression()), !dbg !4201
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4199, metadata !DIExpression()), !dbg !4202
  call void @llvm.lifetime.start.p0(i64 8, ptr %var) #14, !dbg !4203
  call void @llvm.dbg.declare(metadata ptr %var, metadata !4200, metadata !DIExpression()), !dbg !4204
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4205
  %call = call ptr @d_inode(ptr noundef %0) #15, !dbg !4206
  %i_private = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 47, !dbg !4207
  %1 = load ptr, ptr %i_private, align 8, !dbg !4207
  store ptr %1, ptr %var, align 8, !dbg !4204
  %2 = load ptr, ptr %var, align 8, !dbg !4208
  %call1 = call i32 @efivar_entry_delete(ptr noundef %2) #15, !dbg !4210
  %tobool = icmp ne i32 %call1, 0, !dbg !4210
  br i1 %tobool, label %if.then, label %if.end, !dbg !4211

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4212

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dentry.addr, align 8, !dbg !4213
  %call2 = call ptr @d_inode(ptr noundef %3) #15, !dbg !4214
  call void @drop_nlink(ptr noundef %call2) #15, !dbg !4215
  %4 = load ptr, ptr %dentry.addr, align 8, !dbg !4216
  call void @dput(ptr noundef %4) #15, !dbg !4217
  store i32 0, ptr %retval, align 4, !dbg !4218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4218

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %var) #14, !dbg !4219
  %5 = load i32, ptr %retval, align 4, !dbg !4219
  ret i32 %5, !dbg !4219
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efivarfs_valid_name(ptr noundef %str, i32 noundef %len) #0 align 16 !dbg !4220 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !4224, metadata !DIExpression()), !dbg !4227
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4225, metadata !DIExpression()), !dbg !4228
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #14, !dbg !4229
  call void @llvm.dbg.declare(metadata ptr %s, metadata !4226, metadata !DIExpression()), !dbg !4230
  %0 = load ptr, ptr %str.addr, align 8, !dbg !4231
  %1 = load i32, ptr %len.addr, align 4, !dbg !4232
  %idx.ext = sext i32 %1 to i64, !dbg !4233
  %add.ptr = getelementptr i8, ptr %0, i64 %idx.ext, !dbg !4233
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i64 -36, !dbg !4234
  store ptr %add.ptr1, ptr %s, align 8, !dbg !4230
  %2 = load i32, ptr %len.addr, align 4, !dbg !4235
  %cmp = icmp slt i32 %2, 38, !dbg !4237
  br i1 %cmp, label %if.then, label %if.end, !dbg !4238

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4239

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %s, align 8, !dbg !4240
  %add.ptr2 = getelementptr i8, ptr %3, i64 -1, !dbg !4242
  %4 = load i8, ptr %add.ptr2, align 1, !dbg !4243
  %conv = zext i8 %4 to i32, !dbg !4243
  %cmp3 = icmp ne i32 %conv, 45, !dbg !4244
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !4245

if.then5:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !4246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4246

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %s, align 8, !dbg !4247
  %call = call zeroext i1 @uuid_is_valid(ptr noundef %5) #15, !dbg !4248
  store i1 %call, ptr %retval, align 1, !dbg !4249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4249

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #14, !dbg !4250
  %6 = load i1, ptr %retval, align 1, !dbg !4250
  ret i1 %6, !dbg !4250
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !4251 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4255, metadata !DIExpression()), !dbg !4257
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4256, metadata !DIExpression()), !dbg !4258
  %0 = load i64, ptr %size.addr, align 8, !dbg !4259
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4260
  %or = or i32 %1, 256, !dbg !4261
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !4262
  ret ptr %call, !dbg !4263
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4264 dso_local i32 @guid_parse(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @guid_equal(ptr noundef %u1, ptr noundef %u2) #6 align 16 !dbg !4268 {
entry:
  %u1.addr = alloca ptr, align 8
  %u2.addr = alloca ptr, align 8
  store ptr %u1, ptr %u1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u1.addr, metadata !4274, metadata !DIExpression()), !dbg !4276
  store ptr %u2, ptr %u2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u2.addr, metadata !4275, metadata !DIExpression()), !dbg !4277
  %0 = load ptr, ptr %u1.addr, align 8, !dbg !4278
  %1 = load ptr, ptr %u2.addr, align 8, !dbg !4279
  %call = call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef 16) #15, !dbg !4280
  %cmp = icmp eq i32 %call, 0, !dbg !4281
  ret i1 %cmp, !dbg !4282
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4283 dso_local zeroext i1 @efivar_variable_is_removable(i64, i64, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmemleak_ignore(ptr noundef %ptr) #6 align 16 !dbg !4286 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4291, metadata !DIExpression()), !dbg !4292
  ret void, !dbg !4293
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4294 dso_local i32 @efivar_entry_add(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4297 dso_local void @d_instantiate(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dget(ptr noundef %dentry) #6 align 16 !dbg !4298 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4302, metadata !DIExpression()), !dbg !4303
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4304
  %tobool = icmp ne ptr %0, null, !dbg !4304
  br i1 %tobool, label %if.then, label %if.end, !dbg !4306

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dentry.addr, align 8, !dbg !4307
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7, !dbg !4308
  call void @lockref_get(ptr noundef %d_lockref) #15, !dbg !4309
  br label %if.end, !dbg !4309

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %dentry.addr, align 8, !dbg !4310
  ret ptr %2, !dbg !4311
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4312 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4313 dso_local void @iput(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4314 dso_local zeroext i1 @uuid_is_valid(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !4317 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4319, metadata !DIExpression()), !dbg !4324
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4320, metadata !DIExpression()), !dbg !4325
  %0 = load i64, ptr %size.addr, align 8, !dbg !4326
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4327
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4328

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4329
  %tobool = icmp ne i64 %2, 0, !dbg !4329
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4330

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !4331
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4321, metadata !DIExpression()), !dbg !4332
  %3 = load i64, ptr %size.addr, align 8, !dbg !4333
  %cmp = icmp ugt i64 %3, 8192, !dbg !4335
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4336

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4337
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4338
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !4339
  store ptr %call, ptr %retval, align 8, !dbg !4340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4340

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4341
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !4341
  store i32 %call2, ptr %index, align 4, !dbg !4342
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4343
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4344
  %9 = ptrtoint ptr %8 to i64, !dbg !4344
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !4345
  %idxprom = zext i32 %call3 to i64, !dbg !4346
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4346
  %10 = load i32, ptr %index, align 4, !dbg !4347
  %idxprom4 = zext i32 %10 to i64, !dbg !4346
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4346
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4346
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4348
  %13 = load i64, ptr %size.addr, align 8, !dbg !4349
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !4350
  store ptr %call6, ptr %retval, align 8, !dbg !4351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4351

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !4352
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4353
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4354
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !4355
  store ptr %call8, ptr %retval, align 8, !dbg !4356
  br label %return, !dbg !4356

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4357
  ret ptr %16, !dbg !4357
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4358 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !4359 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4363, metadata !DIExpression()), !dbg !4365
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4364, metadata !DIExpression()), !dbg !4366
  %0 = load i64, ptr %size.addr, align 8, !dbg !4367
  %tobool = icmp ne i64 %0, 0, !dbg !4367
  br i1 %tobool, label %if.end, label %if.then, !dbg !4369

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4370
  br label %return, !dbg !4370

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4371
  %cmp = icmp ule i64 %1, 8, !dbg !4373
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4374

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4375
  br label %return, !dbg !4375

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4376
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4378
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4379

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4380
  %cmp4 = icmp ule i64 %3, 96, !dbg !4381
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4382

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4383
  br label %return, !dbg !4383

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4384
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4386
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4387

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4388
  %cmp9 = icmp ule i64 %5, 192, !dbg !4389
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4390

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4391
  br label %return, !dbg !4391

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4392
  %cmp12 = icmp ule i64 %6, 8, !dbg !4394
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4395

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4396
  br label %return, !dbg !4396

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4397
  %cmp15 = icmp ule i64 %7, 16, !dbg !4399
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4400

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4401
  br label %return, !dbg !4401

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4402
  %cmp18 = icmp ule i64 %8, 32, !dbg !4404
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4405

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4406
  br label %return, !dbg !4406

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4407
  %cmp21 = icmp ule i64 %9, 64, !dbg !4409
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4410

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4411
  br label %return, !dbg !4411

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4412
  %cmp24 = icmp ule i64 %10, 128, !dbg !4414
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4415

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4416
  br label %return, !dbg !4416

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4417
  %cmp27 = icmp ule i64 %11, 256, !dbg !4419
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4420

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4421
  br label %return, !dbg !4421

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4422
  %cmp30 = icmp ule i64 %12, 512, !dbg !4424
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4425

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4426
  br label %return, !dbg !4426

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4427
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4429
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4430

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4431
  br label %return, !dbg !4431

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4432
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4434
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4435

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4436
  br label %return, !dbg !4436

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4437
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4439
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4440

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4441
  br label %return, !dbg !4441

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4442
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4444
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4445

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4446
  br label %return, !dbg !4446

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4447
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4449
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4450

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4451
  br label %return, !dbg !4451

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4452
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4454
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4455

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4456
  br label %return, !dbg !4456

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4457
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4459
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4460

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4461
  br label %return, !dbg !4461

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4462
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4464
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4465

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4466
  br label %return, !dbg !4466

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4467
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4469
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4470

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4471
  br label %return, !dbg !4471

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4472
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4474
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4475

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4476
  br label %return, !dbg !4476

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4477
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4479
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4480

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4481
  br label %return, !dbg !4481

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4482
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4484
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4485

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4486
  br label %return, !dbg !4486

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4487, !range !3968, !noundef !971
  %tobool69 = trunc i8 %25 to i1, !dbg !4487
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4489

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4490

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_212() #18, !dbg !4491, !srcloc !4494
  unreachable, !dbg !4491

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4495

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4496

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4497

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4499

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4497

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #14, !dbg !4501, !srcloc !4503
  br label %do.end75, !dbg !4501

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4497

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4504
  br label %return, !dbg !4504

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4505
  ret i32 %26, !dbg !4505
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4506 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !4512 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4516, metadata !DIExpression()), !dbg !4518
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4517, metadata !DIExpression()), !dbg !4519
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4520
  %and = and i32 %0, 17, !dbg !4520
  %cmp = icmp eq i32 %and, 0, !dbg !4520
  %lnot = xor i1 %cmp, true, !dbg !4520
  %lnot1 = xor i1 %lnot, true, !dbg !4520
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4520
  %conv = sext i32 %lnot.ext to i64, !dbg !4520
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4520
  %tobool = icmp ne i64 %expval, 0, !dbg !4520
  br i1 %tobool, label %if.then, label %if.end, !dbg !4522

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4523
  br label %return, !dbg !4523

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4524
  %and2 = and i32 %1, 1, !dbg !4526
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4526
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4527

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4528
  br label %return, !dbg !4528

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4529
  br label %return, !dbg !4529

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4531
  ret i32 %2, !dbg !4531
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4532 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4533 dso_local void @__compiletime_assert_212() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4534 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4538 dso_local void @lockref_get(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @d_inode(ptr noundef %dentry) #6 align 16 !dbg !4542 {
entry:
  %dentry.addr = alloca ptr, align 8
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4546, metadata !DIExpression()), !dbg !4547
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4548
  %d_inode = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5, !dbg !4549
  %1 = load ptr, ptr %d_inode, align 8, !dbg !4549
  ret ptr %1, !dbg !4550
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4551 dso_local i32 @efivar_entry_delete(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4554 dso_local void @drop_nlink(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4555 dso_local void @dput(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efivarfs_fileattr_set(ptr noundef %idmap, ptr noundef %dentry, ptr noundef %fa) #0 align 16 !dbg !4556 {
entry:
  %retval = alloca i32, align 4
  %idmap.addr = alloca ptr, align 8
  %dentry.addr = alloca ptr, align 8
  %fa.addr = alloca ptr, align 8
  %i_flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idmap, ptr %idmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idmap.addr, metadata !4558, metadata !DIExpression()), !dbg !4562
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4559, metadata !DIExpression()), !dbg !4563
  store ptr %fa, ptr %fa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fa.addr, metadata !4560, metadata !DIExpression()), !dbg !4564
  call void @llvm.lifetime.start.p0(i64 4, ptr %i_flags) #14, !dbg !4565
  call void @llvm.dbg.declare(metadata ptr %i_flags, metadata !4561, metadata !DIExpression()), !dbg !4566
  store i32 0, ptr %i_flags, align 4, !dbg !4566
  %0 = load ptr, ptr %fa.addr, align 8, !dbg !4567
  %call = call zeroext i1 @fileattr_has_fsx(ptr noundef %0) #15, !dbg !4569
  br i1 %call, label %if.then, label %if.end, !dbg !4570

if.then:                                          ; preds = %entry
  store i32 -95, ptr %retval, align 4, !dbg !4571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4571

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %fa.addr, align 8, !dbg !4572
  %flags = getelementptr inbounds %struct.fileattr, ptr %1, i32 0, i32 0, !dbg !4574
  %2 = load i32, ptr %flags, align 4, !dbg !4574
  %and = and i32 %2, -17, !dbg !4575
  %tobool = icmp ne i32 %and, 0, !dbg !4575
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !4576

if.then1:                                         ; preds = %if.end
  store i32 -95, ptr %retval, align 4, !dbg !4577
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4577

if.end2:                                          ; preds = %if.end
  %3 = load ptr, ptr %fa.addr, align 8, !dbg !4578
  %flags3 = getelementptr inbounds %struct.fileattr, ptr %3, i32 0, i32 0, !dbg !4580
  %4 = load i32, ptr %flags3, align 4, !dbg !4580
  %and4 = and i32 %4, 16, !dbg !4581
  %tobool5 = icmp ne i32 %and4, 0, !dbg !4581
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4582

if.then6:                                         ; preds = %if.end2
  %5 = load i32, ptr %i_flags, align 4, !dbg !4583
  %or = or i32 %5, 8, !dbg !4583
  store i32 %or, ptr %i_flags, align 4, !dbg !4583
  br label %if.end7, !dbg !4584

if.end7:                                          ; preds = %if.then6, %if.end2
  %6 = load ptr, ptr %dentry.addr, align 8, !dbg !4585
  %call8 = call ptr @d_inode(ptr noundef %6) #15, !dbg !4586
  %7 = load i32, ptr %i_flags, align 4, !dbg !4587
  call void @inode_set_flags(ptr noundef %call8, i32 noundef %7, i32 noundef 8) #15, !dbg !4588
  store i32 0, ptr %retval, align 4, !dbg !4589
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4589

cleanup:                                          ; preds = %if.end7, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i_flags) #14, !dbg !4590
  %8 = load i32, ptr %retval, align 4, !dbg !4590
  ret i32 %8, !dbg !4590
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efivarfs_fileattr_get(ptr noundef %dentry, ptr noundef %fa) #0 align 16 !dbg !4591 {
entry:
  %dentry.addr = alloca ptr, align 8
  %fa.addr = alloca ptr, align 8
  %i_flags = alloca i32, align 4
  %flags = alloca i32, align 4
  store ptr %dentry, ptr %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dentry.addr, metadata !4593, metadata !DIExpression()), !dbg !4597
  store ptr %fa, ptr %fa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fa.addr, metadata !4594, metadata !DIExpression()), !dbg !4598
  call void @llvm.lifetime.start.p0(i64 4, ptr %i_flags) #14, !dbg !4599
  call void @llvm.dbg.declare(metadata ptr %i_flags, metadata !4595, metadata !DIExpression()), !dbg !4600
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #14, !dbg !4601
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4596, metadata !DIExpression()), !dbg !4602
  store i32 0, ptr %flags, align 4, !dbg !4602
  %0 = load ptr, ptr %dentry.addr, align 8, !dbg !4603
  %call = call ptr @d_inode(ptr noundef %0) #15, !dbg !4604
  %i_flags1 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 5, !dbg !4605
  %1 = load i32, ptr %i_flags1, align 4, !dbg !4605
  store i32 %1, ptr %i_flags, align 4, !dbg !4606
  %2 = load i32, ptr %i_flags, align 4, !dbg !4607
  %and = and i32 %2, 8, !dbg !4609
  %tobool = icmp ne i32 %and, 0, !dbg !4609
  br i1 %tobool, label %if.then, label %if.end, !dbg !4610

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %flags, align 4, !dbg !4611
  %or = or i32 %3, 16, !dbg !4611
  store i32 %or, ptr %flags, align 4, !dbg !4611
  br label %if.end, !dbg !4612

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %fa.addr, align 8, !dbg !4613
  %5 = load i32, ptr %flags, align 4, !dbg !4614
  call void @fileattr_fill_flags(ptr noundef %4, i32 noundef %5) #15, !dbg !4615
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #14, !dbg !4616
  call void @llvm.lifetime.end.p0(i64 4, ptr %i_flags) #14, !dbg !4616
  ret i32 0, !dbg !4617
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fileattr_has_fsx(ptr noundef %fa) #6 align 16 !dbg !4618 {
entry:
  %fa.addr = alloca ptr, align 8
  store ptr %fa, ptr %fa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fa.addr, metadata !4624, metadata !DIExpression()), !dbg !4625
  %0 = load ptr, ptr %fa.addr, align 8, !dbg !4626
  %fsx_valid = getelementptr inbounds %struct.fileattr, ptr %0, i32 0, i32 6, !dbg !4627
  %bf.load = load i8, ptr %fsx_valid, align 4, !dbg !4627
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !4627
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4627
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !4627
  br i1 %bf.cast, label %land.rhs, label %land.end, !dbg !4628

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %fa.addr, align 8, !dbg !4629
  %fsx_xflags = getelementptr inbounds %struct.fileattr, ptr %1, i32 0, i32 1, !dbg !4630
  %2 = load i32, ptr %fsx_xflags, align 4, !dbg !4630
  %and = and i32 %2, -33529, !dbg !4631
  %tobool = icmp ne i32 %and, 0, !dbg !4631
  br i1 %tobool, label %lor.end, label %lor.lhs.false, !dbg !4632

lor.lhs.false:                                    ; preds = %land.rhs
  %3 = load ptr, ptr %fa.addr, align 8, !dbg !4633
  %fsx_extsize = getelementptr inbounds %struct.fileattr, ptr %3, i32 0, i32 2, !dbg !4634
  %4 = load i32, ptr %fsx_extsize, align 4, !dbg !4634
  %cmp = icmp ne i32 %4, 0, !dbg !4635
  br i1 %cmp, label %lor.end, label %lor.lhs.false1, !dbg !4636

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %fa.addr, align 8, !dbg !4637
  %fsx_projid = getelementptr inbounds %struct.fileattr, ptr %5, i32 0, i32 4, !dbg !4638
  %6 = load i32, ptr %fsx_projid, align 4, !dbg !4638
  %cmp2 = icmp ne i32 %6, 0, !dbg !4639
  br i1 %cmp2, label %lor.end, label %lor.rhs, !dbg !4640

lor.rhs:                                          ; preds = %lor.lhs.false1
  %7 = load ptr, ptr %fa.addr, align 8, !dbg !4641
  %fsx_cowextsize = getelementptr inbounds %struct.fileattr, ptr %7, i32 0, i32 5, !dbg !4642
  %8 = load i32, ptr %fsx_cowextsize, align 4, !dbg !4642
  %cmp3 = icmp ne i32 %8, 0, !dbg !4643
  br label %lor.end, !dbg !4640

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false1, %lor.lhs.false, %land.rhs
  %9 = phi i1 [ true, %lor.lhs.false1 ], [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp3, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %10 = phi i1 [ false, %entry ], [ %9, %lor.end ], !dbg !4644
  ret i1 %10, !dbg !4645
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4646 dso_local void @inode_set_flags(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4649 dso_local void @fileattr_fill_flags(ptr noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927}
!llvm.ident = !{!3928}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "efivarfs_file_inode_operations", scope: !2, file: !3, line: 185, type: !85, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/efivarfs/.inode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D MODULE -D KBUILD_BASENAME=\22inode\22 -D KBUILD_MODNAME=\22efivarfs\22 -D __KBUILD_MODNAME=kmod_efivarfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/efivarfs/inode.ll fs/efivarfs/inode.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !78, globals: !82, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/efivarfs/inode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b7e0118e45308b869b38d44ee243afc")
!4 = !{!5, !13, !21, !28, !34, !39, !45, !50, !56, !63, !68}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !14, line: 9, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!17 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!18 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!19 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!20 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !22, line: 15, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!25 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!26 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!27 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !29, line: 26, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!32 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!33 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !35, line: 2052, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!38 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !40, line: 54, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "USRQUOTA", value: 0)
!43 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!44 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !46, line: 65, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!47 = !{!48, !49}
!48 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!49 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !51, line: 16, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "TT_NONE", value: 0)
!54 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!55 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !57, line: 51, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!60 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!61 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!62 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 10, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "false", value: 0)
!67 = !DIEnumerator(name: "true", value: 1)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !69, line: 364, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!70 = !{!71, !72, !73, !74, !75, !76, !77}
!71 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!72 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!73 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!74 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!75 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!76 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!77 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!78 = !{!79, !81}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !80, line: 154, baseType: !7)
!80 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!81 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!82 = !{!83, !3915, !0}
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "efivarfs_dir_inode_operations", scope: !2, file: !3, line: 144, type: !85, isLocal: false, isDefinition: true)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !35, line: 1966, size: 2048, align: 512, elements: !87)
!87 = !{!88, !3743, !3753, !3757, !3761, !3765, !3769, !3773, !3777, !3781, !3785, !3786, !3790, !3794, !3827, !3856, !3860, !3866, !3870, !3874, !3878, !3882, !3886, !3902, !3906}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !86, file: !35, line: 1967, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!92, !140, !92, !7}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !94, line: 82, size: 1536, elements: !95)
!94 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!95 = !{!96, !97, !107, !115, !116, !139, !3711, !3713, !3726, !3727, !3728, !3729, !3730, !3735, !3736, !3737}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !93, file: !94, line: 84, baseType: !7, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !93, file: !94, line: 85, baseType: !98, size: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !99, line: 275, baseType: !100)
!99 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !99, line: 275, size: 32, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !100, file: !99, line: 275, baseType: !103, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !99, line: 69, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !99, line: 64, size: 32, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !104, file: !99, line: 65, baseType: !7, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !93, file: !94, line: 86, baseType: !108, size: 128, offset: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !109, line: 38, size: 128, elements: !110)
!109 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !108, file: !109, line: 39, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !108, file: !109, line: 39, baseType: !114, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !93, file: !94, line: 87, baseType: !92, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !93, file: !94, line: 88, baseType: !117, size: 128, offset: 256)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !94, line: 49, size: 128, elements: !118)
!118 = !{!119, !135}
!119 = !DIDerivedType(tag: DW_TAG_member, scope: !117, file: !94, line: 50, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !117, file: !94, line: 50, size: 64, elements: !121)
!121 = !{!122, !131}
!122 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !94, line: 51, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !120, file: !94, line: 51, size: 64, elements: !124)
!124 = !{!125, !130}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !123, file: !94, line: 52, baseType: !126, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !127, line: 21, baseType: !128)
!127 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !129, line: 27, baseType: !7)
!129 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!130 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !123, file: !94, line: 52, baseType: !126, size: 32, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !120, file: !94, line: 54, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !127, line: 23, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !129, line: 31, baseType: !134)
!134 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !94, line: 56, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !93, file: !94, line: 89, baseType: !140, size: 64, offset: 384)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !35, line: 641, size: 4800, elements: !142)
!142 = !{!143, !146, !147, !156, !162, !169, !170, !173, !174, !176, !3638, !3639, !3640, !3641, !3647, !3648, !3649, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3685, !3688, !3689, !3690, !3707, !3708, !3709, !3710}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !141, file: !35, line: 642, baseType: !144, size: 16)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !80, line: 24, baseType: !145)
!145 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !141, file: !35, line: 643, baseType: !145, size: 16, offset: 16)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !141, file: !35, line: 644, baseType: !148, size: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !149, line: 23, baseType: !150)
!149 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 21, size: 32, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !150, file: !149, line: 22, baseType: !153, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !80, line: 37, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !155, line: 49, baseType: !7)
!155 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!156 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !141, file: !35, line: 645, baseType: !157, size: 128, offset: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !80, line: 190, size: 128, elements: !158)
!158 = !{!159, !161}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !80, line: 191, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !157, file: !80, line: 191, baseType: !160, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !141, file: !35, line: 646, baseType: !163, size: 32, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !149, line: 28, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 26, size: 32, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !164, file: !149, line: 27, baseType: !167, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !80, line: 38, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !155, line: 50, baseType: !7)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !141, file: !35, line: 647, baseType: !7, size: 32, offset: 224)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !141, file: !35, line: 650, baseType: !171, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !35, line: 607, flags: DIFlagFwdDecl)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !141, file: !35, line: 651, baseType: !171, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !141, file: !35, line: 654, baseType: !175, size: 64, offset: 384)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !141, file: !35, line: 655, baseType: !177, size: 64, offset: 448)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !35, line: 1190, size: 10752, elements: !179)
!179 = !{!180, !181, !184, !185, !186, !190, !1962, !2094, !2134, !2219, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2236, !2240, !2241, !2244, !2247, !2250, !2253, !2254, !2255, !2296, !3513, !3514, !3515, !3516, !3517, !3518, !3521, !3523, !3530, !3531, !3532, !3533, !3592, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !178, file: !35, line: 1191, baseType: !157, size: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !178, file: !35, line: 1192, baseType: !182, size: 32, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !80, line: 21, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !80, line: 18, baseType: !126)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !178, file: !35, line: 1193, baseType: !138, size: 8, offset: 160)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !178, file: !35, line: 1194, baseType: !81, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !178, file: !35, line: 1195, baseType: !187, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !80, line: 52, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !155, line: 88, baseType: !189)
!189 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !178, file: !35, line: 1196, baseType: !191, size: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !35, line: 2366, size: 576, elements: !193)
!193 = !{!194, !198, !200, !207, !211, !216, !220, !1950, !1951, !1952, !1954, !1955, !1956, !1958, !1959, !1960, !1961}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !192, file: !35, line: 2367, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !192, file: !35, line: 2368, baseType: !199, size: 32, offset: 64)
!199 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !192, file: !35, line: 2376, baseType: !201, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!199, !204}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !206, line: 21, flags: DIFlagFwdDecl)
!206 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!207 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !192, file: !35, line: 2377, baseType: !208, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !35, line: 75, flags: DIFlagFwdDecl)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !192, file: !35, line: 2378, baseType: !212, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!92, !191, !199, !195, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !192, file: !35, line: 2380, baseType: !217, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !177}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !192, file: !35, line: 2381, baseType: !221, size: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !223)
!223 = !{!224, !225, !226, !230, !1606, !1632, !1633, !1634, !1635, !1639, !1642, !1643, !1644, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1712, !1716, !1736, !1754, !1755, !1756, !1757, !1766, !1789, !1790, !1793, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1807, !1808, !1908, !1916, !1917, !1918, !1920, !1924, !1925, !1929, !1930, !1931, !1932, !1934, !1935, !1936, !1943, !1944, !1945, !1949}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !222, file: !6, line: 403, baseType: !5, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !222, file: !6, line: 406, baseType: !157, size: 128, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !6, line: 409, baseType: !227, size: 448, offset: 192)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 448, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 56)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !222, file: !6, line: 417, baseType: !231, size: 768, offset: 640)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !232)
!232 = !{!233, !1589, !1590, !1591, !1594}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !231, file: !6, line: 46, baseType: !234, size: 512)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !235, line: 64, size: 512, elements: !236)
!235 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!236 = !{!237, !238, !239, !241, !326, !1487, !1579, !1584, !1585, !1586, !1587, !1588}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !234, file: !235, line: 65, baseType: !195, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !234, file: !235, line: 66, baseType: !157, size: 128, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !234, file: !235, line: 67, baseType: !240, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !234, file: !235, line: 68, baseType: !242, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !235, line: 168, size: 768, elements: !244)
!244 = !{!245, !246, !285, !286}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !243, file: !235, line: 169, baseType: !157, size: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !243, file: !235, line: 170, baseType: !247, size: 32, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !248, line: 29, baseType: !249)
!248 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !248, line: 17, size: 32, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !248, line: 18, baseType: !252, size: 32)
!252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !248, line: 18, size: 32, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !252, file: !248, line: 19, baseType: !255, size: 32)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !256, line: 14, size: 32, elements: !257)
!256 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !255, file: !256, line: 15, baseType: !259, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !260, line: 44, baseType: !261)
!260 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !260, line: 14, size: 32, elements: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, scope: !261, file: !260, line: 15, baseType: !264, size: 32)
!264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !261, file: !260, line: 15, size: 32, elements: !265)
!265 = !{!266, !271, !278}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !264, file: !260, line: 16, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !80, line: 174, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 172, size: 32, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !268, file: !80, line: 173, baseType: !199, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !264, file: !260, line: 24, baseType: !272, size: 16)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !264, file: !260, line: 24, size: 16, elements: !273)
!273 = !{!274, !277}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !272, file: !260, line: 25, baseType: !275, size: 8)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !127, line: 17, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !129, line: 21, baseType: !138)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !272, file: !260, line: 26, baseType: !275, size: 8, offset: 8)
!278 = !DIDerivedType(tag: DW_TAG_member, scope: !264, file: !260, line: 28, baseType: !279, size: 32)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !264, file: !260, line: 28, size: 32, elements: !280)
!280 = !{!281, !284}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !279, file: !260, line: 29, baseType: !282, size: 16)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !127, line: 19, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !129, line: 24, baseType: !145)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !279, file: !260, line: 30, baseType: !282, size: 16, offset: 16)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !243, file: !235, line: 171, baseType: !234, size: 512, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !243, file: !235, line: 172, baseType: !287, size: 64, offset: 704)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !235, line: 133, size: 192, elements: !290)
!290 = !{!291, !298, !303}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !289, file: !235, line: 134, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!199, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !289, file: !235, line: 135, baseType: !299, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!195, !296}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !289, file: !235, line: 136, baseType: !304, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!199, !296, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !235, line: 125, size: 20736, elements: !310)
!310 = !{!311, !316, !320, !321, !325}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !309, file: !235, line: 126, baseType: !312, size: 192)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 192, elements: !314)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!314 = !{!315}
!315 = !DISubrange(count: 3)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !309, file: !235, line: 127, baseType: !317, size: 4096, offset: 192)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 4096, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !309, file: !235, line: 128, baseType: !199, size: 32, offset: 4288)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !309, file: !235, line: 129, baseType: !322, size: 16384, offset: 4320)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 16384, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 2048)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !309, file: !235, line: 130, baseType: !199, size: 32, offset: 20704)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !234, file: !235, line: 69, baseType: !327, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !235, line: 116, size: 384, elements: !330)
!330 = !{!331, !335, !361, !1446, !1477, !1481}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !329, file: !235, line: 117, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !240}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !329, file: !235, line: 118, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !339, line: 254, size: 128, elements: !340)
!339 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!340 = !{!341, !354}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !338, file: !339, line: 255, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!345, !240, !349, !313}
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !80, line: 66, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !155, line: 73, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !155, line: 15, baseType: !348)
!348 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !339, line: 30, size: 128, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !350, file: !339, line: 31, baseType: !195, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !350, file: !339, line: 32, baseType: !144, size: 16, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !338, file: !339, line: 256, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!345, !240, !349, !195, !358}
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !80, line: 61, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !155, line: 72, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !155, line: 16, baseType: !81)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !329, file: !235, line: 119, baseType: !362, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !339, line: 84, size: 320, elements: !366)
!366 = !{!367, !368, !372, !1442, !1444}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !365, file: !339, line: 85, baseType: !195, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !365, file: !339, line: 86, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!144, !240, !349, !199}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !365, file: !339, line: 88, baseType: !373, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!144, !240, !376, !199}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !339, line: 175, size: 512, elements: !378)
!378 = !{!379, !380, !381, !382, !1433, !1437, !1438}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !377, file: !339, line: 176, baseType: !350, size: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !377, file: !339, line: 177, baseType: !358, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !377, file: !339, line: 178, baseType: !215, size: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !377, file: !339, line: 179, baseType: !383, size: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !35, line: 472, size: 1536, align: 64, elements: !388)
!388 = !{!389, !390, !397, !419, !420, !421, !436, !437, !438, !1427, !1428, !1429, !1430, !1431, !1432}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !387, file: !35, line: 473, baseType: !140, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !387, file: !35, line: 474, baseType: !391, size: 128, offset: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !392, line: 296, size: 128, elements: !393)
!392 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!393 = !{!394, !395, !396}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !391, file: !392, line: 297, baseType: !247, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !391, file: !392, line: 299, baseType: !79, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !391, file: !392, line: 300, baseType: !215, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !387, file: !35, line: 475, baseType: !398, size: 320, offset: 192)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !399, line: 48, size: 320, elements: !400)
!399 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!400 = !{!401, !410, !411, !416, !418}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !398, file: !399, line: 49, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !403, line: 13, baseType: !404)
!403 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !80, line: 181, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 179, size: 64, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !405, file: !80, line: 180, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !127, line: 22, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !129, line: 30, baseType: !189)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !398, file: !399, line: 55, baseType: !402, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !398, file: !399, line: 57, baseType: !412, size: 32, offset: 128)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !413, line: 15, size: 32, elements: !414)
!413 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !412, file: !413, line: 20, baseType: !267, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !398, file: !399, line: 59, baseType: !417, size: 32, offset: 160)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !256, line: 23, baseType: !255)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !398, file: !399, line: 60, baseType: !157, size: 128, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !387, file: !35, line: 476, baseType: !79, size: 32, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !387, file: !35, line: 477, baseType: !267, size: 32, offset: 544)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !387, file: !35, line: 482, baseType: !422, size: 128, offset: 576)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !423, line: 26, size: 128, elements: !424)
!423 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!424 = !{!425, !435}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !422, file: !423, line: 27, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !423, line: 12, size: 64, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !426, file: !423, line: 13, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !423, line: 5, size: 192, align: 64, elements: !431)
!431 = !{!432, !433, !434}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !430, file: !423, line: 6, baseType: !81, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !430, file: !423, line: 7, baseType: !429, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !430, file: !423, line: 8, baseType: !429, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !422, file: !423, line: 28, baseType: !429, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !387, file: !35, line: 483, baseType: !81, size: 64, offset: 704)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !387, file: !35, line: 484, baseType: !81, size: 64, offset: 768)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !387, file: !35, line: 485, baseType: !439, size: 64, offset: 832)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !35, line: 404, size: 1280, elements: !442)
!442 = !{!443, !518, !1353, !1357, !1361, !1367, !1372, !1376, !1381, !1385, !1389, !1393, !1394, !1398, !1402, !1406, !1411, !1415, !1422, !1423}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !441, file: !35, line: 405, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!199, !447, !516}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !449, line: 74, size: 512, align: 128, elements: !450)
!449 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!450 = !{!451, !452, !510, !515}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !448, file: !449, line: 75, baseType: !81, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !449, line: 83, baseType: !453, size: 320, offset: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !449, line: 83, size: 320, elements: !454)
!454 = !{!455, !476, !490, !494, !501}
!455 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !449, line: 84, baseType: !456, size: 320)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !449, line: 84, size: 320, elements: !457)
!457 = !{!458, !469, !470, !475}
!458 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !449, line: 90, baseType: !459, size: 128)
!459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !449, line: 90, size: 128, elements: !460)
!460 = !{!461, !462, !467, !468}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !459, file: !449, line: 91, baseType: !157, size: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !449, line: 94, baseType: !463, size: 128)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !449, line: 94, size: 128, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !463, file: !449, line: 96, baseType: !215, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !463, file: !449, line: 98, baseType: !7, size: 32, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !459, file: !449, line: 102, baseType: !157, size: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !459, file: !449, line: 103, baseType: !157, size: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !456, file: !449, line: 106, baseType: !386, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !449, line: 107, baseType: !471, size: 64, offset: 192)
!471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !449, line: 107, size: 64, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !471, file: !449, line: 108, baseType: !81, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !471, file: !449, line: 109, baseType: !81, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !456, file: !449, line: 117, baseType: !81, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !449, line: 119, baseType: !477, size: 320)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !449, line: 119, size: 320, elements: !478)
!478 = !{!479, !480, !483, !484, !485}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !477, file: !449, line: 124, baseType: !81, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !477, file: !449, line: 125, baseType: !481, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !449, line: 125, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !477, file: !449, line: 126, baseType: !81, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !477, file: !449, line: 127, baseType: !81, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, scope: !477, file: !449, line: 128, baseType: !486, size: 64, offset: 256)
!486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !477, file: !449, line: 128, size: 64, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !486, file: !449, line: 133, baseType: !81, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !486, file: !449, line: 138, baseType: !402, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !449, line: 141, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !449, line: 141, size: 64, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !491, file: !449, line: 142, baseType: !81, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !449, line: 144, baseType: !495, size: 128)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !449, line: 144, size: 128, elements: !496)
!496 = !{!497, !500}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !495, file: !449, line: 146, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !449, line: 146, flags: DIFlagFwdDecl)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !495, file: !449, line: 147, baseType: !215, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !453, file: !449, line: 161, baseType: !502, size: 128, align: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !80, line: 232, size: 128, align: 64, elements: !503)
!503 = !{!504, !506}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !502, file: !80, line: 233, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !502, file: !80, line: 234, baseType: !507, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !505}
!510 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !449, line: 164, baseType: !511, size: 32, offset: 384)
!511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !449, line: 164, size: 32, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !511, file: !449, line: 169, baseType: !267, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !511, file: !449, line: 177, baseType: !7, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !448, file: !449, line: 181, baseType: !267, size: 32, offset: 416)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !35, line: 309, flags: DIFlagFwdDecl)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !441, file: !35, line: 406, baseType: !519, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!199, !522, !1287}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !35, line: 994, size: 1856, align: 64, elements: !524)
!524 = !{!525, !536, !537, !539, !540, !548, !549, !550, !622, !819, !828, !843, !844, !1277, !1278, !1279, !1280, !1282, !1283, !1286}
!525 = !DIDerivedType(tag: DW_TAG_member, scope: !523, file: !35, line: 995, baseType: !526, size: 128)
!526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !523, file: !35, line: 995, size: 128, elements: !527)
!527 = !{!528, !534, !535}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !526, file: !35, line: 996, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !530, line: 60, size: 64, elements: !531)
!530 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!531 = !{!532}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !529, file: !530, line: 61, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !526, file: !35, line: 997, baseType: !502, size: 128, align: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !526, file: !35, line: 998, baseType: !7, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !523, file: !35, line: 1005, baseType: !247, size: 32, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !523, file: !35, line: 1006, baseType: !538, size: 32, offset: 160)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !80, line: 156, baseType: !7)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !523, file: !35, line: 1007, baseType: !402, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !523, file: !35, line: 1008, baseType: !541, size: 256, offset: 256)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !542, line: 66, size: 256, elements: !543)
!542 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!543 = !{!544, !545, !546, !547}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !541, file: !542, line: 67, baseType: !402, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !541, file: !542, line: 68, baseType: !417, size: 32, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !541, file: !542, line: 70, baseType: !412, size: 32, offset: 96)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !541, file: !542, line: 72, baseType: !157, size: 128, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !523, file: !35, line: 1009, baseType: !187, size: 64, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !523, file: !35, line: 1010, baseType: !7, size: 32, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !523, file: !35, line: 1011, baseType: !551, size: 256, offset: 640)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !35, line: 948, size: 256, elements: !552)
!552 = !{!553, !574, !618, !619, !620, !621}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !551, file: !35, line: 949, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !555, line: 34, baseType: !556)
!555 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !555, line: 25, size: 64, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !556, file: !555, line: 26, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !560, line: 27, baseType: !561)
!560 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !560, line: 13, size: 64, elements: !562)
!562 = !{!563, !573}
!563 = !DIDerivedType(tag: DW_TAG_member, scope: !561, file: !560, line: 14, baseType: !564, size: 32)
!564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !561, file: !560, line: 14, size: 32, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !564, file: !560, line: 15, baseType: !267, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, scope: !564, file: !560, line: 16, baseType: !568, size: 32)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !564, file: !560, line: 16, size: 32, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !568, file: !560, line: 18, baseType: !275, size: 8)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !568, file: !560, line: 19, baseType: !572, size: 24, offset: 8)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 24, elements: !314)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !561, file: !560, line: 26, baseType: !259, size: 32, offset: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !551, file: !35, line: 950, baseType: !575, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !14, line: 59, size: 768, elements: !577)
!577 = !{!578, !584, !585, !586, !599, !600, !607, !608}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !576, file: !14, line: 61, baseType: !579, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !580, line: 113, baseType: !581)
!580 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !580, line: 111, size: 32, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !581, file: !580, line: 112, baseType: !267, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !576, file: !14, line: 62, baseType: !7, size: 32, offset: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !576, file: !14, line: 63, baseType: !247, size: 32, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !576, file: !14, line: 65, baseType: !587, size: 256, offset: 128)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 256, elements: !597)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !80, line: 194, size: 64, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !588, file: !80, line: 195, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !80, line: 198, size: 128, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !592, file: !80, line: 199, baseType: !591, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !592, file: !80, line: 199, baseType: !596, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!597 = !{!598}
!598 = !DISubrange(count: 4)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !576, file: !14, line: 66, baseType: !588, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !576, file: !14, line: 68, baseType: !601, size: 192, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !602, line: 41, baseType: !603)
!602 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !602, line: 37, size: 192, elements: !604)
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !603, file: !602, line: 38, baseType: !247, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !603, file: !602, line: 39, baseType: !157, size: 128, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !576, file: !14, line: 69, baseType: !502, size: 128, align: 64, offset: 640)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !576, file: !14, line: 70, baseType: !609, offset: 768)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, elements: !616)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !14, line: 54, size: 128, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !610, file: !14, line: 55, baseType: !199, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !610, file: !14, line: 56, baseType: !614, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !14, line: 56, flags: DIFlagFwdDecl)
!616 = !{!617}
!617 = !DISubrange(count: -1)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !551, file: !35, line: 951, baseType: !13, size: 32, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !551, file: !35, line: 952, baseType: !148, size: 32, offset: 160)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !551, file: !35, line: 952, baseType: !148, size: 32, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !551, file: !35, line: 953, baseType: !199, size: 32, offset: 224)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !523, file: !35, line: 1012, baseType: !623, size: 64, offset: 896)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !626, line: 110, size: 1472, elements: !627)
!626 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !644, !645, !646, !647, !648, !649, !764, !765, !766, !767, !768, !799, !802, !806, !814}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !625, file: !626, line: 111, baseType: !402, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !625, file: !626, line: 112, baseType: !148, size: 32, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !625, file: !626, line: 113, baseType: !163, size: 32, offset: 96)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !625, file: !626, line: 114, baseType: !148, size: 32, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !625, file: !626, line: 115, baseType: !163, size: 32, offset: 160)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !625, file: !626, line: 116, baseType: !148, size: 32, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !625, file: !626, line: 117, baseType: !163, size: 32, offset: 224)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !625, file: !626, line: 118, baseType: !148, size: 32, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !625, file: !626, line: 119, baseType: !163, size: 32, offset: 288)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !625, file: !626, line: 120, baseType: !7, size: 32, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !625, file: !626, line: 121, baseType: !639, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !640, line: 24, baseType: !641)
!640 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !640, line: 24, size: 64, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !641, file: !640, line: 24, baseType: !132, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !625, file: !626, line: 122, baseType: !639, size: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !625, file: !626, line: 123, baseType: !639, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !625, file: !626, line: 124, baseType: !639, size: 64, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !625, file: !626, line: 125, baseType: !639, size: 64, offset: 640)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !625, file: !626, line: 127, baseType: !138, size: 8, offset: 704)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !625, file: !626, line: 129, baseType: !650, size: 64, offset: 768)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !652, line: 195, size: 1728, elements: !653)
!652 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!653 = !{!654, !655, !660, !665, !666, !669, !670, !677, !678, !679, !680, !683, !684, !685, !687, !688, !728, !749}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !651, file: !652, line: 196, baseType: !579, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !651, file: !652, line: 197, baseType: !656, size: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !652, line: 28, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !80, line: 104, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !127, line: 20, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !129, line: 26, baseType: !199)
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 198, baseType: !661, size: 192, offset: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 198, size: 192, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !661, file: !652, line: 199, baseType: !157, size: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !661, file: !652, line: 200, baseType: !430, size: 192, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !651, file: !652, line: 205, baseType: !398, size: 320, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !651, file: !652, line: 206, baseType: !667, size: 64, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !652, line: 206, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !651, file: !652, line: 207, baseType: !215, size: 64, offset: 640)
!670 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 208, baseType: !671, size: 64, offset: 704)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 208, size: 64, elements: !672)
!672 = !{!673, !676}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !671, file: !652, line: 209, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !675, line: 8, baseType: !409)
!675 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!676 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !671, file: !652, line: 210, baseType: !674, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !651, file: !652, line: 212, baseType: !674, size: 64, offset: 768)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !651, file: !652, line: 213, baseType: !148, size: 32, offset: 832)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !651, file: !652, line: 214, baseType: !163, size: 32, offset: 864)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !651, file: !652, line: 215, baseType: !681, size: 32, offset: 896)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !652, line: 31, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !80, line: 110, baseType: !126)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !651, file: !652, line: 216, baseType: !145, size: 16, offset: 928)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !651, file: !652, line: 217, baseType: !145, size: 16, offset: 944)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !651, file: !652, line: 221, baseType: !686, size: 16, offset: 960)
!686 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !652, line: 228, baseType: !81, size: 64, offset: 1024)
!688 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 245, baseType: !689, size: 320, offset: 1088)
!689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 245, size: 320, elements: !690)
!690 = !{!691, !720}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !689, file: !652, line: 246, baseType: !692, size: 320)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !652, line: 114, size: 320, elements: !693)
!693 = !{!694, !695, !707, !710, !719}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !692, file: !652, line: 116, baseType: !81, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !652, line: 117, baseType: !696, size: 64, offset: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !652, line: 117, size: 64, elements: !697)
!697 = !{!698, !706}
!698 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !652, line: 118, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !652, line: 118, size: 64, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !699, file: !652, line: 120, baseType: !282, size: 16)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !699, file: !652, line: 121, baseType: !703, size: 48, offset: 16)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 48, elements: !704)
!704 = !{!705}
!705 = !DISubrange(count: 6)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !696, file: !652, line: 127, baseType: !81, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !692, file: !652, line: 129, baseType: !708, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !652, line: 102, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !692, file: !652, line: 130, baseType: !711, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !652, line: 108, size: 192, elements: !713)
!713 = !{!714, !715, !716}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !712, file: !652, line: 109, baseType: !502, size: 128, align: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !712, file: !652, line: 110, baseType: !579, size: 32, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !712, file: !652, line: 111, baseType: !717, size: 8, offset: 160)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !80, line: 35, baseType: !718)
!718 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !692, file: !652, line: 131, baseType: !195, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, scope: !689, file: !652, line: 247, baseType: !721, size: 320)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !689, file: !652, line: 247, size: 320, elements: !722)
!722 = !{!723, !724, !725, !726, !727}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !721, file: !652, line: 248, baseType: !81, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !721, file: !652, line: 249, baseType: !81, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !721, file: !652, line: 250, baseType: !708, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !721, file: !652, line: 251, baseType: !711, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !721, file: !652, line: 252, baseType: !313, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 260, baseType: !729, size: 256, offset: 1408)
!729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 260, size: 256, elements: !730)
!730 = !{!731, !737}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !729, file: !652, line: 261, baseType: !732, size: 256)
!732 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !652, line: 134, size: 256, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !732, file: !652, line: 135, baseType: !215, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !732, file: !652, line: 136, baseType: !736, size: 256)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 256, elements: !597)
!737 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !652, line: 262, baseType: !738, size: 256)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !652, line: 262, size: 256, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !738, file: !652, line: 264, baseType: !157, size: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !738, file: !652, line: 265, baseType: !742, size: 128, offset: 128)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !743, line: 22, size: 128, elements: !744)
!743 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!744 = !{!745, !748}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !742, file: !743, line: 23, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !743, line: 23, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !742, file: !743, line: 24, baseType: !81, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !651, file: !652, line: 280, baseType: !750, size: 64, offset: 1664)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !652, line: 176, size: 192, elements: !752)
!752 = !{!753, !762, !763}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !751, file: !652, line: 177, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !652, line: 171, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!199, !650, !758, !760, !650}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !751, file: !652, line: 178, baseType: !650, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !751, file: !652, line: 179, baseType: !708, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !625, file: !626, line: 130, baseType: !650, size: 64, offset: 832)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !625, file: !626, line: 131, baseType: !650, size: 64, offset: 896)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !625, file: !626, line: 132, baseType: !650, size: 64, offset: 960)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !625, file: !626, line: 135, baseType: !215, size: 64, offset: 1024)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !625, file: !626, line: 137, baseType: !769, size: 64, offset: 1088)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !771, line: 14, size: 1088, elements: !772)
!771 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!772 = !{!773, !774, !783, !784, !785, !786, !787, !788}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !770, file: !771, line: 15, baseType: !579, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !770, file: !771, line: 17, baseType: !775, size: 320, offset: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !776, line: 22, size: 320, elements: !777)
!776 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!777 = !{!778, !779, !780, !781}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !775, file: !776, line: 23, baseType: !417, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !775, file: !776, line: 24, baseType: !408, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !775, file: !776, line: 26, baseType: !157, size: 128, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !775, file: !776, line: 28, baseType: !782, size: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !770, file: !771, line: 19, baseType: !81, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !770, file: !771, line: 20, baseType: !402, size: 64, offset: 448)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !770, file: !771, line: 23, baseType: !592, size: 128, offset: 512)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !770, file: !771, line: 24, baseType: !148, size: 32, offset: 640)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !770, file: !771, line: 29, baseType: !402, size: 64, offset: 704)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !770, file: !771, line: 36, baseType: !789, size: 320, offset: 768)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !790, line: 15, size: 320, elements: !791)
!790 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!791 = !{!792, !793, !794, !795, !796, !797, !798}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !789, file: !790, line: 16, baseType: !417, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !789, file: !790, line: 18, baseType: !199, size: 32, offset: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !789, file: !790, line: 19, baseType: !199, size: 32, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !789, file: !790, line: 20, baseType: !199, size: 32, offset: 96)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !789, file: !790, line: 21, baseType: !199, size: 32, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !789, file: !790, line: 22, baseType: !81, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !789, file: !790, line: 23, baseType: !81, size: 64, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !625, file: !626, line: 138, baseType: !800, size: 64, offset: 1152)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !149, line: 18, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !625, file: !626, line: 139, baseType: !803, size: 64, offset: 1216)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !805, line: 16, flags: DIFlagFwdDecl)
!805 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!806 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !625, file: !626, line: 140, baseType: !807, size: 64, offset: 1280)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !626, line: 25, size: 64, elements: !809)
!809 = !{!810, !811, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !808, file: !626, line: 26, baseType: !267, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !808, file: !626, line: 27, baseType: !199, size: 32, offset: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !808, file: !626, line: 28, baseType: !813, offset: 64)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, elements: !616)
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !626, line: 142, baseType: !815, size: 128, offset: 1344)
!815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !626, line: 142, size: 128, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !815, file: !626, line: 143, baseType: !199, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !815, file: !626, line: 144, baseType: !502, size: 128, align: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !523, file: !35, line: 1013, baseType: !820, size: 256, offset: 960)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !35, line: 970, size: 256, elements: !821)
!821 = !{!822, !823, !824, !825, !826, !827}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !820, file: !35, line: 971, baseType: !81, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !820, file: !35, line: 972, baseType: !7, size: 32, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !820, file: !35, line: 973, baseType: !7, size: 32, offset: 96)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !820, file: !35, line: 974, baseType: !7, size: 32, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !820, file: !35, line: 975, baseType: !7, size: 32, offset: 160)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !820, file: !35, line: 976, baseType: !187, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !523, file: !35, line: 1014, baseType: !829, size: 128, offset: 1216)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !830, line: 8, size: 128, elements: !831)
!830 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!831 = !{!832, !842}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !829, file: !830, line: 9, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !206, line: 70, size: 256, elements: !835)
!835 = !{!836, !837, !838, !839}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !834, file: !206, line: 71, baseType: !92, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !834, file: !206, line: 72, baseType: !177, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !834, file: !206, line: 73, baseType: !199, size: 32, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !834, file: !206, line: 74, baseType: !840, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !640, line: 42, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !829, file: !830, line: 10, baseType: !92, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !523, file: !35, line: 1015, baseType: !140, size: 64, offset: 1344)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !523, file: !35, line: 1016, baseType: !845, size: 64, offset: 1408)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !35, line: 1914, size: 2112, elements: !848)
!848 = !{!849, !850, !854, !859, !863, !891, !892, !898, !911, !928, !932, !933, !1160, !1161, !1165, !1170, !1171, !1175, !1179, !1185, !1186, !1190, !1191, !1198, !1202, !1206, !1212, !1216, !1258, !1262, !1266, !1267, !1273}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !847, file: !35, line: 1915, baseType: !221, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !847, file: !35, line: 1916, baseType: !851, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!187, !522, !187, !199}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !847, file: !35, line: 1917, baseType: !855, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!345, !522, !313, !358, !858}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !847, file: !35, line: 1918, baseType: !860, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!345, !522, !195, !358, !858}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !847, file: !35, line: 1919, baseType: !864, size: 64, offset: 256)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!345, !867, !889}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !35, line: 373, size: 384, elements: !869)
!869 = !{!870, !871, !872, !876, !877, !878, !879}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !868, file: !35, line: 374, baseType: !522, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !868, file: !35, line: 375, baseType: !187, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !868, file: !35, line: 376, baseType: !873, size: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !867, !348}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !868, file: !35, line: 377, baseType: !215, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !868, file: !35, line: 378, baseType: !199, size: 32, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !868, file: !35, line: 379, baseType: !282, size: 16, offset: 288)
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !35, line: 380, baseType: !880, size: 64, offset: 320)
!880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !868, file: !35, line: 380, size: 64, elements: !881)
!881 = !{!882, !885}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !880, file: !35, line: 386, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !35, line: 386, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !880, file: !35, line: 395, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!345, !215}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !35, line: 69, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !847, file: !35, line: 1920, baseType: !864, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !847, file: !35, line: 1921, baseType: !893, size: 64, offset: 384)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!199, !867, !896, !7}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !35, line: 53, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !847, file: !35, line: 1923, baseType: !899, size: 64, offset: 448)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!199, !522, !902}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !35, line: 1858, size: 128, elements: !904)
!904 = !{!905, !910}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !903, file: !35, line: 1859, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !35, line: 1855, baseType: !907)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!717, !902, !195, !199, !187, !132, !7}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !903, file: !35, line: 1860, baseType: !187, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !847, file: !35, line: 1924, baseType: !912, size: 64, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!915, !522, !917}
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !916, line: 59, baseType: !7)
!916 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !919, line: 37, size: 128, elements: !920)
!919 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!920 = !{!921, !927}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !918, file: !919, line: 38, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !919, line: 31, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !522, !926, !917}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !918, file: !919, line: 39, baseType: !915, size: 32, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !847, file: !35, line: 1925, baseType: !929, size: 64, offset: 576)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!348, !522, !7, !81}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !847, file: !35, line: 1926, baseType: !929, size: 64, offset: 640)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !847, file: !35, line: 1927, baseType: !934, size: 64, offset: 704)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!199, !522, !937}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !449, line: 625, size: 1344, elements: !939)
!939 = !{!940, !949, !1118, !1124, !1131, !1132, !1137, !1138, !1143, !1144, !1147, !1151, !1152, !1153, !1154, !1155, !1158}
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !449, line: 628, baseType: !941, size: 128)
!941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !938, file: !449, line: 628, size: 128, elements: !942)
!942 = !{!943, !948}
!943 = !DIDerivedType(tag: DW_TAG_member, scope: !941, file: !449, line: 629, baseType: !944, size: 128)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !941, file: !449, line: 629, size: 128, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !944, file: !449, line: 631, baseType: !81, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !944, file: !449, line: 632, baseType: !81, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !941, file: !449, line: 635, baseType: !502, size: 128, align: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !938, file: !449, line: 639, baseType: !950, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !449, line: 733, size: 10240, elements: !952)
!952 = !{!953, !1116}
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !449, line: 734, baseType: !954, size: 10240)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !449, line: 734, size: 10240, elements: !955)
!955 = !{!956, !960, !974, !978, !979, !980, !981, !982, !983, !992, !993, !994, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1033, !1035, !1038, !1085, !1086, !1087, !1090, !1091, !1092, !1095, !1096, !1097, !1103, !1104}
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !449, line: 739, baseType: !957, size: 512, align: 512)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !449, line: 739, size: 512, align: 512, elements: !958)
!958 = !{!959}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !957, file: !449, line: 747, baseType: !267, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !954, file: !449, line: 750, baseType: !961, size: 128, offset: 512)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !962, line: 218, size: 128, elements: !963)
!962 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!963 = !{!964, !972, !973}
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !962, line: 219, baseType: !965, size: 32)
!965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !962, line: 219, size: 32, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !965, file: !962, line: 220, baseType: !247, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !965, file: !962, line: 221, baseType: !969)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !962, line: 197, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !962, line: 197, elements: !971)
!971 = !{}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !961, file: !962, line: 223, baseType: !7, size: 32, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !961, file: !962, line: 224, baseType: !215, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !954, file: !449, line: 752, baseType: !975, size: 64, offset: 640)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!81, !522, !81, !81, !81, !81}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !954, file: !449, line: 756, baseType: !81, size: 64, offset: 704)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !954, file: !449, line: 757, baseType: !81, size: 64, offset: 768)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !954, file: !449, line: 760, baseType: !81, size: 64, offset: 832)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !954, file: !449, line: 761, baseType: !81, size: 64, offset: 896)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !954, file: !449, line: 763, baseType: !81, size: 64, offset: 960)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !954, file: !449, line: 764, baseType: !984, size: 64, offset: 1024)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !986, line: 299, baseType: !987)
!986 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !986, line: 299, size: 64, elements: !988)
!988 = !{!989}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !987, file: !986, line: 299, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !991, line: 18, baseType: !81)
!991 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!992 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !954, file: !449, line: 773, baseType: !267, size: 32, offset: 1088)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !954, file: !449, line: 785, baseType: !267, size: 32, offset: 1120)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !954, file: !449, line: 795, baseType: !995, size: 64, offset: 1152)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !449, line: 726, size: 128, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !996, file: !449, line: 727, baseType: !132, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !996, file: !449, line: 728, baseType: !199, size: 32, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !954, file: !449, line: 801, baseType: !81, size: 64, offset: 1216)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !954, file: !449, line: 804, baseType: !402, size: 64, offset: 1280)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !954, file: !449, line: 806, baseType: !199, size: 32, offset: 1344)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !954, file: !449, line: 808, baseType: !247, size: 32, offset: 1376)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !954, file: !449, line: 823, baseType: !398, size: 320, offset: 1408)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !954, file: !449, line: 825, baseType: !157, size: 128, offset: 1728)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !954, file: !449, line: 845, baseType: !199, size: 32, offset: 1856)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !954, file: !449, line: 849, baseType: !81, size: 64, offset: 1920)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !954, file: !449, line: 850, baseType: !81, size: 64, offset: 1984)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !954, file: !449, line: 852, baseType: !81, size: 64, offset: 2048)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !954, file: !449, line: 853, baseType: !81, size: 64, offset: 2112)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !954, file: !449, line: 854, baseType: !404, size: 64, offset: 2176)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !954, file: !449, line: 855, baseType: !81, size: 64, offset: 2240)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !954, file: !449, line: 856, baseType: !81, size: 64, offset: 2304)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !954, file: !449, line: 857, baseType: !81, size: 64, offset: 2368)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !954, file: !449, line: 858, baseType: !81, size: 64, offset: 2432)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !954, file: !449, line: 865, baseType: !103, size: 32, offset: 2496)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !954, file: !449, line: 867, baseType: !247, size: 32, offset: 2528)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !954, file: !449, line: 869, baseType: !81, size: 64, offset: 2560)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !954, file: !449, line: 869, baseType: !81, size: 64, offset: 2624)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !954, file: !449, line: 869, baseType: !81, size: 64, offset: 2688)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !954, file: !449, line: 869, baseType: !81, size: 64, offset: 2752)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !954, file: !449, line: 870, baseType: !81, size: 64, offset: 2816)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !954, file: !449, line: 870, baseType: !81, size: 64, offset: 2880)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !954, file: !449, line: 870, baseType: !81, size: 64, offset: 2944)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !954, file: !449, line: 871, baseType: !81, size: 64, offset: 3008)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !954, file: !449, line: 871, baseType: !81, size: 64, offset: 3072)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !954, file: !449, line: 871, baseType: !81, size: 64, offset: 3136)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !954, file: !449, line: 871, baseType: !81, size: 64, offset: 3200)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !954, file: !449, line: 873, baseType: !1030, size: 3328, offset: 3264)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 3328, elements: !1031)
!1031 = !{!1032}
!1032 = !DISubrange(count: 52)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !954, file: !449, line: 875, baseType: !1034, size: 1280, offset: 6592)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 1280, elements: !597)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !954, file: !449, line: 877, baseType: !1036, size: 64, offset: 7872)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !449, line: 877, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !954, file: !449, line: 880, baseType: !1039, size: 1088, offset: 7936)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1040, line: 72, baseType: !1041)
!1040 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1040, line: 23, size: 1088, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1050, !1051, !1052, !1053, !1080, !1081, !1082}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1041, file: !1040, line: 28, baseType: !132, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1041, file: !1040, line: 38, baseType: !404, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1041, file: !1040, line: 40, baseType: !81, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1041, file: !1040, line: 43, baseType: !398, size: 320, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1041, file: !1040, line: 44, baseType: !1048, size: 64, offset: 512)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1040, line: 44, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1041, file: !1040, line: 48, baseType: !81, size: 64, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1041, file: !1040, line: 59, baseType: !541, size: 256, offset: 640)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1041, file: !1040, line: 60, baseType: !215, size: 64, offset: 896)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1041, file: !1040, line: 61, baseType: !1054, size: 64, offset: 960)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1057, line: 13, size: 1216, elements: !1058)
!1057 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1058 = !{!1059, !1060, !1061, !1062, !1063, !1064, !1065, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1056, file: !1057, line: 14, baseType: !215, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1056, file: !1057, line: 15, baseType: !81, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1056, file: !1057, line: 17, baseType: !81, size: 64, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1056, file: !1057, line: 17, baseType: !81, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1056, file: !1057, line: 18, baseType: !81, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1056, file: !1057, line: 18, baseType: !81, size: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1056, file: !1057, line: 19, baseType: !1066, size: 64, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1056, file: !1057, line: 21, baseType: !348, size: 64, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1056, file: !1057, line: 23, baseType: !348, size: 64, offset: 512)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1056, file: !1057, line: 24, baseType: !348, size: 64, offset: 576)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1056, file: !1057, line: 25, baseType: !348, size: 64, offset: 640)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1056, file: !1057, line: 26, baseType: !348, size: 64, offset: 704)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1056, file: !1057, line: 27, baseType: !348, size: 64, offset: 768)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1056, file: !1057, line: 28, baseType: !348, size: 64, offset: 832)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1056, file: !1057, line: 29, baseType: !348, size: 64, offset: 896)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1056, file: !1057, line: 30, baseType: !348, size: 64, offset: 960)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1056, file: !1057, line: 31, baseType: !348, size: 64, offset: 1024)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1056, file: !1057, line: 32, baseType: !348, size: 64, offset: 1088)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1056, file: !1057, line: 33, baseType: !348, size: 64, offset: 1152)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1041, file: !1040, line: 63, baseType: !267, size: 32, offset: 1024)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1041, file: !1040, line: 69, baseType: !282, size: 16, offset: 1056)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1041, file: !1040, line: 70, baseType: !1083, size: 16, offset: 1072)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !127, line: 18, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !129, line: 23, baseType: !686)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !954, file: !449, line: 882, baseType: !81, size: 64, offset: 9024)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !954, file: !449, line: 885, baseType: !247, size: 32, offset: 9088)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !954, file: !449, line: 886, baseType: !1088, size: 64, offset: 9152)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !449, line: 732, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !954, file: !449, line: 901, baseType: !800, size: 64, offset: 9216)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !954, file: !449, line: 904, baseType: !522, size: 64, offset: 9280)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !954, file: !449, line: 906, baseType: !1093, size: 64, offset: 9344)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !449, line: 906, flags: DIFlagFwdDecl)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !954, file: !449, line: 930, baseType: !267, size: 32, offset: 9408)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !954, file: !449, line: 933, baseType: !267, size: 32, offset: 9440)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !954, file: !449, line: 935, baseType: !1098, size: 64, offset: 9472)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !1099)
!1099 = !{!1100}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1098, file: !57, line: 104, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !954, file: !449, line: 940, baseType: !402, size: 64, offset: 9536)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !954, file: !449, line: 942, baseType: !1105, size: 256, offset: 9600)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1106, line: 98, size: 256, elements: !1107)
!1106 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1107 = !{!1108, !1109, !1110}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1105, file: !1106, line: 99, baseType: !402, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1105, file: !1106, line: 100, baseType: !157, size: 128, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1105, file: !1106, line: 101, baseType: !1111, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1106, line: 21, baseType: !1112)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !1115}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !951, file: !449, line: 986, baseType: !1117, offset: 10240)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, elements: !616)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !938, file: !449, line: 640, baseType: !1119, size: 64, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !986, line: 297, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !986, line: 297, size: 64, elements: !1121)
!1121 = !{!1122}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1120, file: !986, line: 297, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !991, line: 19, baseType: !81)
!1124 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !449, line: 646, baseType: !1125, size: 64, offset: 256)
!1125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !938, file: !449, line: 646, size: 64, elements: !1126)
!1126 = !{!1127, !1130}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1125, file: !449, line: 647, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1129)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !449, line: 542, baseType: !81)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1125, file: !449, line: 648, baseType: !1129, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !938, file: !449, line: 666, baseType: !199, size: 32, offset: 320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !938, file: !449, line: 667, baseType: !1133, size: 64, offset: 384)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !449, line: 579, size: 320, elements: !1135)
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1134, file: !449, line: 580, baseType: !398, size: 320)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !938, file: !449, line: 670, baseType: !717, size: 8, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !938, file: !449, line: 681, baseType: !1139, size: 256, offset: 512)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !938, file: !449, line: 678, size: 256, elements: !1140)
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1139, file: !449, line: 679, baseType: !430, size: 192, align: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1139, file: !449, line: 680, baseType: !81, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !938, file: !449, line: 689, baseType: !157, size: 128, offset: 768)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !938, file: !449, line: 691, baseType: !1145, size: 64, offset: 896)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !449, line: 691, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !938, file: !449, line: 694, baseType: !1148, size: 64, offset: 960)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1150)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !449, line: 694, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !938, file: !449, line: 697, baseType: !81, size: 64, offset: 1024)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !938, file: !449, line: 699, baseType: !522, size: 64, offset: 1088)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !938, file: !449, line: 700, baseType: !215, size: 64, offset: 1152)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !938, file: !449, line: 711, baseType: !402, size: 64, offset: 1216)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !938, file: !449, line: 717, baseType: !1156, size: 64, offset: 1280)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !449, line: 717, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !938, file: !449, line: 722, baseType: !1159, offset: 1344)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !449, line: 570, elements: !971)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !847, file: !35, line: 1928, baseType: !81, size: 64, offset: 768)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !847, file: !35, line: 1929, baseType: !1162, size: 64, offset: 832)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!199, !140, !522}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !847, file: !35, line: 1930, baseType: !1166, size: 64, offset: 896)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!199, !522, !1169}
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !35, line: 1061, baseType: !215)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !847, file: !35, line: 1931, baseType: !1162, size: 64, offset: 960)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !847, file: !35, line: 1932, baseType: !1172, size: 64, offset: 1024)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!199, !522, !187, !187, !199}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !847, file: !35, line: 1933, baseType: !1176, size: 64, offset: 1088)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!199, !199, !522, !199}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !847, file: !35, line: 1934, baseType: !1180, size: 64, offset: 1152)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!199, !522, !199, !1183}
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !35, line: 1063, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !847, file: !35, line: 1935, baseType: !975, size: 64, offset: 1216)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !847, file: !35, line: 1936, baseType: !1187, size: 64, offset: 1280)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!199, !199}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !847, file: !35, line: 1937, baseType: !1180, size: 64, offset: 1344)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !847, file: !35, line: 1938, baseType: !1192, size: 64, offset: 1408)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!345, !1195, !522, !858, !358, !7}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1197, line: 59, flags: DIFlagFwdDecl)
!1197 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !847, file: !35, line: 1939, baseType: !1199, size: 64, offset: 1472)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!345, !522, !858, !1195, !358, !7}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !847, file: !35, line: 1940, baseType: !1203, size: 64, offset: 1536)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !522}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !847, file: !35, line: 1941, baseType: !1207, size: 64, offset: 1600)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!199, !522, !199, !1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !847, file: !35, line: 1942, baseType: !1213, size: 64, offset: 1664)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!348, !522, !199, !187, !187}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !847, file: !35, line: 1944, baseType: !1217, size: 64, offset: 1728)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !1220, !522}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1222, line: 17, size: 960, elements: !1223)
!1222 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1253, !1254, !1257}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1221, file: !1222, line: 18, baseType: !313, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1221, file: !1222, line: 19, baseType: !358, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1221, file: !1222, line: 20, baseType: !358, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1221, file: !1222, line: 21, baseType: !358, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1221, file: !1222, line: 22, baseType: !358, size: 64, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1221, file: !1222, line: 23, baseType: !187, size: 64, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1221, file: !1222, line: 24, baseType: !187, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1221, file: !1222, line: 25, baseType: !541, size: 256, offset: 448)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1221, file: !1222, line: 26, baseType: !1233, size: 64, offset: 704)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1235)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1222, line: 32, size: 256, elements: !1236)
!1236 = !{!1237, !1241, !1245, !1249}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1235, file: !1222, line: 33, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!215, !1220, !858}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1235, file: !1222, line: 34, baseType: !1242, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !1220, !215}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1235, file: !1222, line: 35, baseType: !1246, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!215, !1220, !215, !858}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1235, file: !1222, line: 36, baseType: !1250, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!199, !1220, !215}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1221, file: !1222, line: 27, baseType: !199, size: 32, offset: 768)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1221, file: !1222, line: 28, baseType: !1255, size: 64, offset: 832)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1221, file: !1222, line: 29, baseType: !215, size: 64, offset: 896)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !847, file: !35, line: 1948, baseType: !1259, size: 64, offset: 1792)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!345, !522, !187, !522, !187, !358, !7}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !847, file: !35, line: 1950, baseType: !1263, size: 64, offset: 1856)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!187, !522, !187, !522, !187, !187, !7}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !847, file: !35, line: 1953, baseType: !1172, size: 64, offset: 1920)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !847, file: !35, line: 1954, baseType: !1268, size: 64, offset: 1984)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!199, !1271, !7}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !35, line: 1911, flags: DIFlagFwdDecl)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !847, file: !35, line: 1955, baseType: !1274, size: 64, offset: 2048)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!199, !1271, !896, !7}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !523, file: !35, line: 1018, baseType: !132, size: 64, offset: 1472)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !523, file: !35, line: 1020, baseType: !215, size: 64, offset: 1536)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !523, file: !35, line: 1023, baseType: !215, size: 64, offset: 1600)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !523, file: !35, line: 1027, baseType: !1281, size: 64, offset: 1664)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !523, file: !35, line: 1029, baseType: !386, size: 64, offset: 1728)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !523, file: !35, line: 1030, baseType: !1284, size: 32, offset: 1792)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1285, line: 8, baseType: !126)
!1285 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !523, file: !35, line: 1031, baseType: !1284, size: 32, offset: 1824)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !449, line: 293, size: 1536, elements: !1289)
!1289 = !{!1290, !1320, !1334}
!1290 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !449, line: 295, baseType: !1291, size: 512)
!1291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !449, line: 295, size: 512, elements: !1292)
!1292 = !{!1293, !1319}
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !449, line: 296, baseType: !1294, size: 448)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1291, file: !449, line: 296, size: 448, elements: !1295)
!1295 = !{!1296, !1297, !1306, !1307, !1308, !1317, !1318}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1294, file: !449, line: 298, baseType: !81, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !449, line: 299, baseType: !1298, size: 128, offset: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !449, line: 299, size: 128, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1298, file: !449, line: 300, baseType: !157, size: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !449, line: 302, baseType: !1302, size: 128)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1298, file: !449, line: 302, size: 128, elements: !1303)
!1303 = !{!1304, !1305}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1302, file: !449, line: 303, baseType: !215, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1302, file: !449, line: 305, baseType: !7, size: 32, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1294, file: !449, line: 310, baseType: !386, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1294, file: !449, line: 311, baseType: !81, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !449, line: 312, baseType: !1309, size: 64, offset: 320)
!1309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !449, line: 312, size: 64, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1309, file: !449, line: 313, baseType: !215, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1309, file: !449, line: 314, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !449, line: 257, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !449, line: 255, size: 64, elements: !1315)
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1314, file: !449, line: 256, baseType: !81, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1294, file: !449, line: 316, baseType: !267, size: 32, offset: 384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1294, file: !449, line: 317, baseType: !267, size: 32, offset: 416)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1291, file: !449, line: 323, baseType: !448, size: 512, align: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !449, line: 325, baseType: !1321, size: 512, offset: 512)
!1321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !449, line: 325, size: 512, elements: !1322)
!1322 = !{!1323, !1333}
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1321, file: !449, line: 326, baseType: !1324, size: 320)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1321, file: !449, line: 326, size: 320, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331, !1332}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1324, file: !449, line: 327, baseType: !81, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1324, file: !449, line: 328, baseType: !81, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1324, file: !449, line: 329, baseType: !81, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1324, file: !449, line: 331, baseType: !267, size: 32, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1324, file: !449, line: 332, baseType: !267, size: 32, offset: 224)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1324, file: !449, line: 333, baseType: !267, size: 32, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1324, file: !449, line: 335, baseType: !7, size: 32, offset: 288)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1321, file: !449, line: 339, baseType: !448, size: 512, align: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !449, line: 341, baseType: !1335, size: 512, offset: 1024)
!1335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !449, line: 341, size: 512, elements: !1336)
!1336 = !{!1337, !1346, !1352}
!1337 = !DIDerivedType(tag: DW_TAG_member, scope: !1335, file: !449, line: 342, baseType: !1338, size: 384)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1335, file: !449, line: 342, size: 384, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1345}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1338, file: !449, line: 343, baseType: !81, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1338, file: !449, line: 344, baseType: !81, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1338, file: !449, line: 346, baseType: !215, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1338, file: !449, line: 347, baseType: !215, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1338, file: !449, line: 348, baseType: !215, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1338, file: !449, line: 349, baseType: !215, size: 64, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, scope: !1335, file: !449, line: 352, baseType: !1347, size: 256)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1335, file: !449, line: 352, size: 256, elements: !1348)
!1348 = !{!1349, !1350, !1351}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1347, file: !449, line: 353, baseType: !81, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1347, file: !449, line: 354, baseType: !81, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1347, file: !449, line: 356, baseType: !157, size: 128, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1335, file: !449, line: 359, baseType: !448, size: 512, align: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !441, file: !35, line: 409, baseType: !1354, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!199, !386, !516}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !441, file: !35, line: 412, baseType: !1358, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!717, !386, !1287}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !441, file: !35, line: 414, baseType: !1362, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !1365}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !35, line: 310, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !441, file: !35, line: 416, baseType: !1368, size: 64, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!199, !522, !386, !187, !7, !1371, !1211}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !441, file: !35, line: 419, baseType: !1373, size: 64, offset: 384)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!199, !522, !386, !187, !7, !7, !447, !215}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !441, file: !35, line: 424, baseType: !1377, size: 64, offset: 448)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!1380, !386, !1380}
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !80, line: 131, baseType: !132)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !441, file: !35, line: 425, baseType: !1382, size: 64, offset: 512)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !1287, !358, !358}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !441, file: !35, line: 426, baseType: !1386, size: 64, offset: 576)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!717, !1287, !79}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !441, file: !35, line: 427, baseType: !1390, size: 64, offset: 640)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !1287}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !441, file: !35, line: 428, baseType: !864, size: 64, offset: 704)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !441, file: !35, line: 433, baseType: !1395, size: 64, offset: 768)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!199, !386, !1287, !1287, !21}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !441, file: !35, line: 435, baseType: !1399, size: 64, offset: 832)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!199, !1287}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !441, file: !35, line: 436, baseType: !1403, size: 64, offset: 896)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!717, !1287, !358, !358}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !441, file: !35, line: 438, baseType: !1407, size: 64, offset: 960)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !1287, !1410, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !441, file: !35, line: 439, baseType: !1412, size: 64, offset: 1024)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!199, !386, !447}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !441, file: !35, line: 442, baseType: !1416, size: 64, offset: 1088)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!199, !1419, !522, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !35, line: 66, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !441, file: !35, line: 444, baseType: !1203, size: 64, offset: 1152)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !441, file: !35, line: 445, baseType: !1424, size: 64, offset: 1216)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!199, !867, !889}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !387, file: !35, line: 486, baseType: !81, size: 64, offset: 896)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !387, file: !35, line: 487, baseType: !398, size: 320, offset: 960)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !387, file: !35, line: 488, baseType: !1284, size: 32, offset: 1280)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !387, file: !35, line: 489, baseType: !247, size: 32, offset: 1312)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !387, file: !35, line: 490, baseType: !157, size: 128, offset: 1344)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !387, file: !35, line: 491, baseType: !215, size: 64, offset: 1472)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !377, file: !339, line: 180, baseType: !1434, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!345, !522, !240, !376, !313, !187, !358}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !377, file: !339, line: 182, baseType: !1434, size: 64, offset: 384)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !377, file: !339, line: 184, baseType: !1439, size: 64, offset: 448)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!199, !522, !240, !376, !937}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !365, file: !339, line: 90, baseType: !1443, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !365, file: !339, line: 91, baseType: !1445, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !329, file: !235, line: 120, baseType: !1447, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!1450, !296}
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1452)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !29, line: 39, size: 384, elements: !1453)
!1453 = !{!1454, !1455, !1459, !1463, !1469, !1473}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1452, file: !29, line: 40, baseType: !28, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1452, file: !29, line: 41, baseType: !1456, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!717}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1452, file: !29, line: 42, baseType: !1460, size: 64, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!215}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1452, file: !29, line: 43, baseType: !1464, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!1066, !1467}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !29, line: 19, flags: DIFlagFwdDecl)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1452, file: !29, line: 44, baseType: !1470, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!1066}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1452, file: !29, line: 45, baseType: !1474, size: 64, offset: 320)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{null, !215}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !329, file: !235, line: 121, baseType: !1478, size: 64, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!1066, !296}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !329, file: !235, line: 122, baseType: !1482, size: 64, offset: 320)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !296, !1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !234, file: !235, line: 70, baseType: !1488, size: 64, offset: 384)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1490, line: 190, size: 1152, elements: !1491)
!1490 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1491 = !{!1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1571, !1572, !1573, !1574, !1575, !1578}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1489, file: !1490, line: 191, baseType: !267, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1489, file: !1490, line: 192, baseType: !267, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1489, file: !1490, line: 202, baseType: !1488, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1489, file: !1490, line: 203, baseType: !195, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1489, file: !1490, line: 205, baseType: !430, size: 192, align: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1489, file: !1490, line: 207, baseType: !1066, size: 64, offset: 384)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1489, file: !1490, line: 208, baseType: !7, size: 32, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !1489, file: !1490, line: 209, baseType: !1500, size: 256, offset: 512)
!1500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1489, file: !1490, line: 209, size: 256, elements: !1501)
!1501 = !{!1502, !1511, !1515}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1500, file: !1490, line: 210, baseType: !1503, size: 256)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1490, line: 153, size: 256, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1510}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1503, file: !1490, line: 154, baseType: !81, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1503, file: !1490, line: 156, baseType: !426, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1503, file: !1490, line: 162, baseType: !1508, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1490, line: 162, flags: DIFlagFwdDecl)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1503, file: !1490, line: 167, baseType: !81, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1500, file: !1490, line: 211, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1490, line: 170, size: 64, elements: !1513)
!1513 = !{!1514}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1512, file: !1490, line: 171, baseType: !1488, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1500, file: !1490, line: 212, baseType: !1516, size: 256)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1490, line: 174, size: 256, elements: !1517)
!1517 = !{!1518, !1566, !1569, !1570}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1516, file: !1490, line: 175, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1521)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1490, line: 271, size: 768, elements: !1522)
!1522 = !{!1523, !1543, !1547, !1548, !1549, !1550, !1551, !1555, !1556, !1557, !1558, !1562}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1521, file: !1490, line: 276, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!199, !1527}
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1490, line: 251, size: 1216, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1528, file: !1490, line: 253, baseType: !1488, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1528, file: !1490, line: 254, baseType: !522, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1528, file: !1490, line: 255, baseType: !1220, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1528, file: !1490, line: 256, baseType: !215, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1528, file: !1490, line: 259, baseType: !541, size: 256, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1528, file: !1490, line: 260, baseType: !541, size: 256, offset: 512)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1528, file: !1490, line: 261, baseType: !199, size: 32, offset: 768)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1528, file: !1490, line: 262, baseType: !157, size: 128, offset: 832)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1528, file: !1490, line: 263, baseType: !313, size: 64, offset: 960)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1528, file: !1490, line: 265, baseType: !358, size: 64, offset: 1024)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1528, file: !1490, line: 266, baseType: !717, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1528, file: !1490, line: 267, baseType: !717, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1528, file: !1490, line: 268, baseType: !1148, size: 64, offset: 1152)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1521, file: !1490, line: 277, baseType: !1544, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !1527}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1521, file: !1490, line: 290, baseType: !1250, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1521, file: !1490, line: 292, baseType: !1238, size: 64, offset: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1521, file: !1490, line: 293, baseType: !1246, size: 64, offset: 256)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1521, file: !1490, line: 294, baseType: !1242, size: 64, offset: 320)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1521, file: !1490, line: 296, baseType: !1552, size: 64, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!345, !1527, !313, !358, !187}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1521, file: !1490, line: 306, baseType: !358, size: 64, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1521, file: !1490, line: 313, baseType: !717, size: 8, offset: 512)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1521, file: !1490, line: 314, baseType: !1552, size: 64, offset: 576)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1521, file: !1490, line: 317, baseType: !1559, size: 64, offset: 640)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!915, !1527, !917}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1521, file: !1490, line: 320, baseType: !1563, size: 64, offset: 704)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!199, !1527, !937}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1516, file: !1490, line: 176, baseType: !1567, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1490, line: 35, flags: DIFlagFwdDecl)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1516, file: !1490, line: 177, baseType: !187, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1516, file: !1490, line: 178, baseType: !1488, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1489, file: !1490, line: 215, baseType: !215, size: 64, offset: 768)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1489, file: !1490, line: 221, baseType: !132, size: 64, offset: 832)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1489, file: !1490, line: 223, baseType: !145, size: 16, offset: 896)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1489, file: !1490, line: 224, baseType: !144, size: 16, offset: 912)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1489, file: !1490, line: 225, baseType: !1576, size: 64, offset: 960)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1490, line: 36, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1489, file: !1490, line: 227, baseType: !502, size: 128, align: 64, offset: 1024)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !234, file: !235, line: 71, baseType: !1580, size: 32, offset: 448)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1581, line: 19, size: 32, elements: !1582)
!1581 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1582 = !{!1583}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1580, file: !1581, line: 20, baseType: !579, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !234, file: !235, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !234, file: !235, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !234, file: !235, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !234, file: !235, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !234, file: !235, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !231, file: !6, line: 47, baseType: !221, size: 64, offset: 512)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !231, file: !6, line: 48, baseType: !240, size: 64, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !231, file: !6, line: 49, baseType: !1592, size: 64, offset: 640)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !231, file: !6, line: 50, baseType: !1595, size: 64, offset: 704)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1597, line: 26, size: 256, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1598 = !{!1599, !1600}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1596, file: !1597, line: 27, baseType: !7, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1596, file: !1597, line: 28, baseType: !1601, size: 192, offset: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1602, line: 43, size: 192, elements: !1603)
!1602 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1603 = !{!1604, !1605}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1601, file: !1602, line: 44, baseType: !417, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1601, file: !1602, line: 45, baseType: !157, size: 128, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !222, file: !6, line: 418, baseType: !1607, size: 64, offset: 1408)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1609)
!1609 = !{!1610, !1611, !1616, !1620, !1624, !1628}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1608, file: !6, line: 54, baseType: !350, size: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1608, file: !6, line: 55, baseType: !1612, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!345, !1607, !1615, !313}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1608, file: !6, line: 57, baseType: !1617, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!345, !1607, !1615, !195, !358}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1608, file: !6, line: 59, baseType: !1621, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{null, !221, !195}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1608, file: !6, line: 60, baseType: !1625, size: 64, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!199, !221}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1608, file: !6, line: 61, baseType: !1629, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{null, !221}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !222, file: !6, line: 419, baseType: !195, size: 64, offset: 1472)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !222, file: !6, line: 420, baseType: !195, size: 64, offset: 1536)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !222, file: !6, line: 421, baseType: !240, size: 64, offset: 1600)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !222, file: !6, line: 424, baseType: !1636, size: 64, offset: 1664)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !222, file: !6, line: 425, baseType: !1640, size: 64, offset: 1728)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !222, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !222, file: !6, line: 435, baseType: !541, size: 256, offset: 1856)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !222, file: !6, line: 437, baseType: !1645, size: 64, offset: 2112)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1647, line: 69, size: 320, elements: !1648)
!1647 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1648 = !{!1649, !1650, !1651, !1668, !1670, !1674, !1675}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1646, file: !1647, line: 70, baseType: !195, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1646, file: !1647, line: 71, baseType: !221, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1646, file: !1647, line: 72, baseType: !1652, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1647, line: 47, size: 256, elements: !1655)
!1655 = !{!1656, !1657, !1663, !1667}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1654, file: !1647, line: 49, baseType: !7, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1654, file: !1647, line: 51, baseType: !1658, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!199, !195, !1661}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1654, file: !1647, line: 53, baseType: !1664, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!199, !313, !1661}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1654, file: !1647, line: 55, baseType: !1474, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1646, file: !1647, line: 73, baseType: !1669, size: 16, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1646, file: !1647, line: 74, baseType: !1671, size: 8, offset: 208)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !127, line: 16, baseType: !1672)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !129, line: 20, baseType: !1673)
!1673 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1646, file: !1647, line: 75, baseType: !275, size: 8, offset: 216)
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !1647, line: 76, baseType: !1676, size: 64, offset: 256)
!1676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1646, file: !1647, line: 76, size: 64, elements: !1677)
!1677 = !{!1678, !1679, !1686}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1676, file: !1647, line: 77, baseType: !215, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1676, file: !1647, line: 78, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1647, line: 86, size: 128, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1682, file: !1647, line: 87, baseType: !7, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1682, file: !1647, line: 88, baseType: !313, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1676, file: !1647, line: 79, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1647, line: 92, size: 256, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1695, !1696}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1689, file: !1647, line: 94, baseType: !7, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1689, file: !1647, line: 95, baseType: !7, size: 32, offset: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1689, file: !1647, line: 96, baseType: !1694, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1689, file: !1647, line: 97, baseType: !1652, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1689, file: !1647, line: 98, baseType: !215, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !222, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !222, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !222, file: !6, line: 442, baseType: !1636, size: 64, offset: 2240)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !222, file: !6, line: 443, baseType: !1640, size: 64, offset: 2304)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !222, file: !6, line: 444, baseType: !717, size: 8, offset: 2368)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !222, file: !6, line: 451, baseType: !717, size: 8, offset: 2376)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !222, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !222, file: !6, line: 455, baseType: !1705, size: 64, offset: 2432)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1707, line: 23, size: 96, elements: !1708)
!1707 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1708 = !{!1709, !1710, !1711}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1706, file: !1707, line: 24, baseType: !199, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1706, file: !1707, line: 24, baseType: !199, size: 32, offset: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1706, file: !1707, line: 24, baseType: !199, size: 32, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !222, file: !6, line: 458, baseType: !1713, size: 64, offset: 2496)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!199}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !222, file: !6, line: 460, baseType: !1717, size: 4032, align: 512, offset: 2560)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1718, size: 4032, elements: !1734)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1719)
!1719 = !{!1720, !1721, !1722}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1718, file: !6, line: 363, baseType: !215, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1718, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1718, file: !6, line: 367, baseType: !1723, size: 448, offset: 128)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1723, file: !6, line: 320, baseType: !221, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1723, file: !6, line: 321, baseType: !1727, size: 384, offset: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1728, line: 40, size: 384, elements: !1729)
!1728 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1729 = !{!1730}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1727, file: !1728, line: 41, baseType: !1731, size: 384, align: 64)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 384, align: 64, elements: !1732)
!1732 = !{!1733}
!1733 = !DISubrange(count: 2)
!1734 = !{!1735}
!1735 = !DISubrange(count: 7)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !222, file: !6, line: 463, baseType: !1737, size: 192, offset: 6592)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1738, line: 8, size: 192, elements: !1739)
!1738 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1739 = !{!1740, !1741, !1743}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1737, file: !1738, line: 10, baseType: !7, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1737, file: !1738, line: 11, baseType: !1742, size: 64, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1737, file: !1738, line: 12, baseType: !1744, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1746, line: 59, size: 48, elements: !1747)
!1746 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1747 = !{!1748, !1749, !1750, !1751, !1752, !1753}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1745, file: !1746, line: 60, baseType: !1083, size: 16)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1745, file: !1746, line: 61, baseType: !1083, size: 16, offset: 16)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1745, file: !1746, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1745, file: !1746, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1745, file: !1746, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1745, file: !1746, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !222, file: !6, line: 465, baseType: !81, size: 64, offset: 6784)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !222, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !222, file: !6, line: 470, baseType: !157, size: 128, offset: 6912)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !222, file: !6, line: 471, baseType: !1758, size: 64, offset: 7040)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1760, line: 33, size: 96, elements: !1761)
!1760 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1761 = !{!1762, !1763, !1764, !1765}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1759, file: !1760, line: 37, baseType: !199, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1759, file: !1760, line: 43, baseType: !199, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1759, file: !1760, line: 45, baseType: !145, size: 16, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1759, file: !1760, line: 47, baseType: !145, size: 16, offset: 80)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !222, file: !6, line: 476, baseType: !1767, size: 64, offset: 7104)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1769)
!1769 = !{!1770, !1786, !1787, !1788}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1768, file: !6, line: 379, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1773, line: 204, baseType: !1774)
!1773 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1773, line: 197, size: 192, elements: !1775)
!1775 = !{!1776, !1778, !1779, !1780, !1782, !1784}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1774, file: !1773, line: 198, baseType: !1777, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1773, line: 21, baseType: !128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1774, file: !1773, line: 199, baseType: !138, size: 8, offset: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1774, file: !1773, line: 200, baseType: !138, size: 8, offset: 40)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1774, file: !1773, line: 201, baseType: !1781, size: 16, offset: 48)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1773, line: 17, baseType: !283)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1774, file: !1773, line: 202, baseType: !1783, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1773, line: 16, baseType: !133)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1774, file: !1773, line: 203, baseType: !1785, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1773, line: 22, baseType: !133)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1768, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1768, file: !6, line: 381, baseType: !313, size: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1768, file: !6, line: 382, baseType: !313, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !222, file: !6, line: 477, baseType: !1768, size: 256, offset: 7168)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !222, file: !6, line: 480, baseType: !1791, size: 64, offset: 7424)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !222, file: !6, line: 483, baseType: !1794, size: 64, offset: 7488)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !222, file: !6, line: 488, baseType: !313, size: 64, offset: 7552)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !222, file: !6, line: 492, baseType: !215, size: 64, offset: 7616)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !222, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !222, file: !6, line: 495, baseType: !215, size: 64, offset: 7744)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !222, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !222, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !222, file: !6, line: 500, baseType: !1803, size: 64, offset: 7872)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1805, line: 45, baseType: !1806)
!1805 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !222, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !222, file: !6, line: 504, baseType: !1809, size: 64, offset: 8000)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1812, line: 96, size: 192, elements: !1813)
!1812 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1813 = !{!1814, !1815, !1869, !1872}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1811, file: !1812, line: 97, baseType: !7, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1811, file: !1812, line: 98, baseType: !1816, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1812, line: 24, size: 3072, elements: !1818)
!1818 = !{!1819, !1821, !1822, !1823, !1824, !1838, !1839, !1840, !1841, !1853, !1854, !1855, !1866, !1867, !1868}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1817, file: !1812, line: 26, baseType: !1820, size: 128)
!1820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 128, elements: !1732)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1817, file: !1812, line: 27, baseType: !1820, size: 128, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1817, file: !1812, line: 28, baseType: !199, size: 32, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1817, file: !1812, line: 31, baseType: !247, size: 32, align: 512, offset: 512)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1817, file: !1812, line: 32, baseType: !1825, size: 960, offset: 576)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1826, line: 206, size: 960, elements: !1827)
!1826 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1827 = !{!1828, !1829, !1832, !1834, !1835, !1837}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1825, file: !1826, line: 207, baseType: !505, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1825, file: !1826, line: 208, baseType: !1830, size: 256, offset: 64)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1831, size: 256, elements: !597)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1825, file: !1826, line: 209, baseType: !1833, size: 256, offset: 320)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 256, elements: !597)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1825, file: !1826, line: 213, baseType: !348, size: 64, offset: 576)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1825, file: !1826, line: 215, baseType: !1836, size: 256, offset: 640)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 256, elements: !597)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1825, file: !1826, line: 216, baseType: !275, size: 8, offset: 896)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1817, file: !1812, line: 33, baseType: !81, size: 64, offset: 1536)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1817, file: !1812, line: 34, baseType: !81, size: 64, offset: 1600)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1817, file: !1812, line: 35, baseType: !717, size: 8, offset: 1664)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1817, file: !1812, line: 36, baseType: !1842, size: 320, offset: 1728)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1843, line: 11, size: 320, elements: !1844)
!1843 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1844 = !{!1845, !1846, !1847, !1852}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1842, file: !1843, line: 16, baseType: !592, size: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1842, file: !1843, line: 17, baseType: !81, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1842, file: !1843, line: 18, baseType: !1848, size: 64, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !1851}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1842, file: !1843, line: 19, baseType: !126, size: 32, offset: 256)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1817, file: !1812, line: 37, baseType: !1105, size: 256, offset: 2048)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1817, file: !1812, line: 38, baseType: !502, size: 128, align: 64, offset: 2304)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1817, file: !1812, line: 39, baseType: !1856, size: 64, offset: 2432)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1812, line: 49, size: 768, elements: !1858)
!1858 = !{!1859, !1860, !1861, !1862, !1863, !1864, !1865}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1857, file: !1812, line: 50, baseType: !247, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1857, file: !1812, line: 51, baseType: !1833, size: 256, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1857, file: !1812, line: 53, baseType: !1833, size: 256, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1857, file: !1812, line: 54, baseType: !81, size: 64, offset: 576)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1857, file: !1812, line: 55, baseType: !1856, size: 64, offset: 640)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1857, file: !1812, line: 56, baseType: !199, size: 32, offset: 704)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1857, file: !1812, line: 57, baseType: !199, size: 32, offset: 736)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1817, file: !1812, line: 40, baseType: !81, size: 64, offset: 2496)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1817, file: !1812, line: 42, baseType: !199, size: 32, offset: 2560)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1817, file: !1812, line: 43, baseType: !1810, size: 64, offset: 2624)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1811, file: !1812, line: 99, baseType: !1870, offset: 128)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1871, line: 211, elements: !971)
!1871 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1811, file: !1812, line: 100, baseType: !1873, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1812, line: 63, size: 3008, elements: !1875)
!1875 = !{!1876, !1877, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1907}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1874, file: !1812, line: 64, baseType: !1856, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1874, file: !1812, line: 65, baseType: !1878, size: 192, offset: 64)
!1878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1856, size: 192, elements: !314)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1874, file: !1812, line: 67, baseType: !199, size: 32, offset: 256)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1874, file: !1812, line: 68, baseType: !541, size: 256, offset: 320)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1874, file: !1812, line: 69, baseType: !247, size: 32, offset: 576)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1874, file: !1812, line: 70, baseType: !541, size: 256, offset: 640)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1874, file: !1812, line: 71, baseType: !81, size: 64, offset: 896)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1874, file: !1812, line: 72, baseType: !81, size: 64, offset: 960)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1874, file: !1812, line: 73, baseType: !81, size: 64, offset: 1024)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1874, file: !1812, line: 74, baseType: !81, size: 64, offset: 1088)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1874, file: !1812, line: 75, baseType: !81, size: 64, offset: 1152)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1874, file: !1812, line: 76, baseType: !81, size: 64, offset: 1216)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1874, file: !1812, line: 77, baseType: !81, size: 64, offset: 1280)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1874, file: !1812, line: 78, baseType: !81, size: 64, offset: 1344)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1874, file: !1812, line: 79, baseType: !717, size: 8, offset: 1408)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1874, file: !1812, line: 80, baseType: !81, size: 64, offset: 1472)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1874, file: !1812, line: 81, baseType: !541, size: 256, offset: 1536)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1874, file: !1812, line: 82, baseType: !1596, size: 256, offset: 1792)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1874, file: !1812, line: 84, baseType: !267, size: 32, offset: 2048)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1874, file: !1812, line: 87, baseType: !81, size: 64, offset: 2112)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1874, file: !1812, line: 88, baseType: !81, size: 64, offset: 2176)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1874, file: !1812, line: 89, baseType: !1899, size: 704, offset: 2240)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1106, line: 111, size: 704, elements: !1900)
!1900 = !{!1901, !1902, !1903, !1906}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1899, file: !1106, line: 112, baseType: !1105, size: 256)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1899, file: !1106, line: 113, baseType: !1842, size: 320, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1899, file: !1106, line: 116, baseType: !1904, size: 64, offset: 576)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1106, line: 18, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1899, file: !1106, line: 117, baseType: !199, size: 32, offset: 640)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1874, file: !1812, line: 90, baseType: !1810, size: 64, offset: 2944)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !222, file: !6, line: 515, baseType: !1909, size: 64, offset: 8064)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1911, line: 117, size: 128, elements: !1912)
!1911 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1912 = !{!1913, !1914, !1915}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1910, file: !1911, line: 118, baseType: !658, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1910, file: !1911, line: 119, baseType: !658, size: 32, offset: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1910, file: !1911, line: 120, baseType: !348, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !222, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !222, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !222, file: !6, line: 520, baseType: !1919, size: 64, offset: 8192)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !222, file: !6, line: 523, baseType: !1921, size: 64, offset: 8256)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !222, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !222, file: !6, line: 525, baseType: !1926, size: 64, offset: 8384)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !222, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !222, file: !6, line: 533, baseType: !215, size: 64, offset: 8512)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !222, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !222, file: !6, line: 535, baseType: !1933, size: 64, offset: 8640)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !222, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !222, file: !6, line: 539, baseType: !199, size: 32, offset: 8736)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !222, file: !6, line: 540, baseType: !1937, size: 64, offset: 8768)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1939, line: 32, size: 64, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1938, file: !1939, line: 33, baseType: !658, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1938, file: !1939, line: 34, baseType: !658, size: 32, offset: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !222, file: !6, line: 563, baseType: !157, size: 128, offset: 8832)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !222, file: !6, line: 565, baseType: !157, size: 128, offset: 8960)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !222, file: !6, line: 568, baseType: !1946, size: 64, offset: 9088)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !222, file: !6, line: 570, baseType: !267, size: 32, offset: 9152)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !35, line: 2382, baseType: !191, size: 64, offset: 448)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !192, file: !35, line: 2383, baseType: !588, size: 64, offset: 512)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !192, file: !35, line: 2385, baseType: !1953, offset: 576)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1871, line: 206, elements: !971)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !192, file: !35, line: 2386, baseType: !1953, offset: 576)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !192, file: !35, line: 2387, baseType: !1953, offset: 576)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !192, file: !35, line: 2388, baseType: !1957, offset: 576)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1953, elements: !314)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !192, file: !35, line: 2390, baseType: !1953, offset: 576)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !192, file: !35, line: 2391, baseType: !1953, offset: 576)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !192, file: !35, line: 2392, baseType: !1953, offset: 576)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !192, file: !35, line: 2393, baseType: !1953, offset: 576)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !178, file: !35, line: 1197, baseType: !1963, size: 64, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1965)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !35, line: 2057, size: 1664, elements: !1966)
!1966 = !{!1967, !1971, !1975, !1976, !1980, !1984, !1988, !1989, !1990, !1994, !1998, !2002, !2003, !2004, !2010, !2014, !2015, !2019, !2020, !2021, !2022, !2026, !2030, !2077, !2092, !2093}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1965, file: !35, line: 2058, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!140, !177}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1965, file: !35, line: 2059, baseType: !1972, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !140}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1965, file: !35, line: 2060, baseType: !1972, size: 64, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1965, file: !35, line: 2062, baseType: !1977, size: 64, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null, !140, !199}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1965, file: !35, line: 2063, baseType: !1981, size: 64, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!199, !140, !516}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1965, file: !35, line: 2064, baseType: !1985, size: 64, offset: 320)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!199, !140}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1965, file: !35, line: 2065, baseType: !1972, size: 64, offset: 384)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1965, file: !35, line: 2066, baseType: !217, size: 64, offset: 448)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1965, file: !35, line: 2067, baseType: !1991, size: 64, offset: 512)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!199, !177, !199}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1965, file: !35, line: 2068, baseType: !1995, size: 64, offset: 576)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!199, !177, !34}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1965, file: !35, line: 2069, baseType: !1999, size: 64, offset: 640)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!199, !177}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1965, file: !35, line: 2070, baseType: !1995, size: 64, offset: 704)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1965, file: !35, line: 2071, baseType: !1999, size: 64, offset: 768)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1965, file: !35, line: 2072, baseType: !2005, size: 64, offset: 832)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!199, !92, !2008}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !35, line: 62, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1965, file: !35, line: 2073, baseType: !2011, size: 64, offset: 896)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!199, !177, !1742, !313}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1965, file: !35, line: 2074, baseType: !217, size: 64, offset: 960)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1965, file: !35, line: 2076, baseType: !2016, size: 64, offset: 1024)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!199, !1220, !92}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1965, file: !35, line: 2077, baseType: !2016, size: 64, offset: 1088)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1965, file: !35, line: 2078, baseType: !2016, size: 64, offset: 1152)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1965, file: !35, line: 2079, baseType: !2016, size: 64, offset: 1216)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1965, file: !35, line: 2081, baseType: !2023, size: 64, offset: 1280)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!345, !177, !199, !313, !358, !187}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1965, file: !35, line: 2082, baseType: !2027, size: 64, offset: 1344)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!345, !177, !199, !195, !358, !187}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1965, file: !35, line: 2083, baseType: !2031, size: 64, offset: 1408)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!2034, !140}
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !40, line: 296, size: 1664, elements: !2037)
!2037 = !{!2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2062, !2063, !2064}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2036, file: !40, line: 297, baseType: !592, size: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2036, file: !40, line: 298, baseType: !157, size: 128, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2036, file: !40, line: 299, baseType: !157, size: 128, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2036, file: !40, line: 300, baseType: !157, size: 128, offset: 384)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2036, file: !40, line: 301, baseType: !541, size: 256, offset: 512)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2036, file: !40, line: 302, baseType: !247, size: 32, offset: 768)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2036, file: !40, line: 303, baseType: !267, size: 32, offset: 800)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2036, file: !40, line: 304, baseType: !177, size: 64, offset: 832)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2036, file: !40, line: 305, baseType: !2047, size: 64, offset: 896)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !40, line: 68, size: 64, elements: !2048)
!2048 = !{!2049, !2061}
!2049 = !DIDerivedType(tag: DW_TAG_member, scope: !2047, file: !40, line: 69, baseType: !2050, size: 32)
!2050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2047, file: !40, line: 69, size: 32, elements: !2051)
!2051 = !{!2052, !2053, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2050, file: !40, line: 70, baseType: !148, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2050, file: !40, line: 71, baseType: !163, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2050, file: !40, line: 72, baseType: !2055, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2056, line: 24, baseType: !2057)
!2056 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2056, line: 22, size: 32, elements: !2058)
!2058 = !{!2059}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2057, file: !2056, line: 23, baseType: !2060, size: 32)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2056, line: 20, baseType: !154)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2047, file: !40, line: 74, baseType: !39, size: 32, offset: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2036, file: !40, line: 306, baseType: !187, size: 64, offset: 960)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2036, file: !40, line: 307, baseType: !81, size: 64, offset: 1024)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2036, file: !40, line: 308, baseType: !2065, size: 576, offset: 1088)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !40, line: 205, size: 576, elements: !2066)
!2066 = !{!2067, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2065, file: !40, line: 206, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !40, line: 66, baseType: !189)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2065, file: !40, line: 207, baseType: !2068, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2065, file: !40, line: 208, baseType: !2068, size: 64, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2065, file: !40, line: 209, baseType: !2068, size: 64, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2065, file: !40, line: 210, baseType: !2068, size: 64, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2065, file: !40, line: 211, baseType: !2068, size: 64, offset: 320)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2065, file: !40, line: 212, baseType: !2068, size: 64, offset: 384)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2065, file: !40, line: 213, baseType: !674, size: 64, offset: 448)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2065, file: !40, line: 214, baseType: !674, size: 64, offset: 512)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1965, file: !35, line: 2085, baseType: !2078, size: 64, offset: 1472)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!348, !177, !2081}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2083, line: 15, size: 256, elements: !2084)
!2083 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2084 = !{!2085, !2086, !2087, !2088, !2089}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2082, file: !2083, line: 16, baseType: !79, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2082, file: !2083, line: 19, baseType: !199, size: 32, offset: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2082, file: !2083, line: 26, baseType: !81, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2082, file: !2083, line: 33, baseType: !81, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2082, file: !2083, line: 36, baseType: !2090, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2083, line: 36, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1965, file: !35, line: 2087, baseType: !2078, size: 64, offset: 1536)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1965, file: !35, line: 2089, baseType: !217, size: 64, offset: 1600)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !178, file: !35, line: 1198, baseType: !2095, size: 64, offset: 448)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2097)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !40, line: 324, size: 704, elements: !2098)
!2098 = !{!2099, !2103, !2107, !2111, !2112, !2113, !2114, !2115, !2120, !2125, !2129}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2097, file: !40, line: 325, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!199, !2035}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2097, file: !40, line: 326, baseType: !2104, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!2035, !177, !199}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2097, file: !40, line: 327, baseType: !2108, size: 64, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{null, !2035}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2097, file: !40, line: 328, baseType: !2100, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2097, file: !40, line: 329, baseType: !2100, size: 64, offset: 256)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2097, file: !40, line: 330, baseType: !2100, size: 64, offset: 320)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2097, file: !40, line: 331, baseType: !1991, size: 64, offset: 384)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2097, file: !40, line: 334, baseType: !2116, size: 64, offset: 448)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!2119, !140}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2097, file: !40, line: 335, baseType: !2121, size: 64, offset: 512)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!199, !140, !2124}
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2097, file: !40, line: 337, baseType: !2126, size: 64, offset: 576)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!199, !140, !2119}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2097, file: !40, line: 339, baseType: !2130, size: 64, offset: 640)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!199, !177, !2133}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !178, file: !35, line: 1199, baseType: !2135, size: 64, offset: 512)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2137)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !40, line: 430, size: 704, elements: !2138)
!2138 = !{!2139, !2145, !2146, !2150, !2151, !2152, !2167, !2190, !2194, !2195, !2218}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2137, file: !40, line: 431, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!199, !177, !199, !199, !2143}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2137, file: !40, line: 432, baseType: !1991, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2137, file: !40, line: 433, baseType: !2147, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!199, !177, !7}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2137, file: !40, line: 434, baseType: !2147, size: 64, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2137, file: !40, line: 435, baseType: !1991, size: 64, offset: 256)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2137, file: !40, line: 436, baseType: !2153, size: 64, offset: 320)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!199, !177, !199, !2156}
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !40, line: 417, size: 256, elements: !2158)
!2158 = !{!2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2157, file: !40, line: 418, baseType: !199, size: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2157, file: !40, line: 419, baseType: !7, size: 32, offset: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2157, file: !40, line: 420, baseType: !7, size: 32, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2157, file: !40, line: 422, baseType: !7, size: 32, offset: 96)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2157, file: !40, line: 423, baseType: !7, size: 32, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2157, file: !40, line: 424, baseType: !7, size: 32, offset: 160)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2157, file: !40, line: 425, baseType: !7, size: 32, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2157, file: !40, line: 426, baseType: !7, size: 32, offset: 224)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2137, file: !40, line: 437, baseType: !2168, size: 64, offset: 384)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!199, !177, !2047, !2171}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !40, line: 345, size: 960, elements: !2173)
!2173 = !{!2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2172, file: !40, line: 346, baseType: !199, size: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2172, file: !40, line: 347, baseType: !132, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2172, file: !40, line: 348, baseType: !132, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2172, file: !40, line: 349, baseType: !132, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2172, file: !40, line: 350, baseType: !132, size: 64, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2172, file: !40, line: 351, baseType: !132, size: 64, offset: 320)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2172, file: !40, line: 352, baseType: !132, size: 64, offset: 384)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2172, file: !40, line: 353, baseType: !408, size: 64, offset: 448)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2172, file: !40, line: 355, baseType: !408, size: 64, offset: 512)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2172, file: !40, line: 356, baseType: !199, size: 32, offset: 576)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2172, file: !40, line: 357, baseType: !199, size: 32, offset: 608)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2172, file: !40, line: 358, baseType: !132, size: 64, offset: 640)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2172, file: !40, line: 359, baseType: !132, size: 64, offset: 704)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2172, file: !40, line: 360, baseType: !132, size: 64, offset: 768)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2172, file: !40, line: 361, baseType: !408, size: 64, offset: 832)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2172, file: !40, line: 362, baseType: !199, size: 32, offset: 896)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2137, file: !40, line: 438, baseType: !2191, size: 64, offset: 448)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!199, !177, !2133, !2171}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2137, file: !40, line: 440, baseType: !2168, size: 64, offset: 512)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2137, file: !40, line: 441, baseType: !2196, size: 64, offset: 576)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!199, !177, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !40, line: 411, size: 1408, elements: !2201)
!2201 = !{!2202, !2203}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2200, file: !40, line: 412, baseType: !7, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2200, file: !40, line: 413, baseType: !2204, size: 1344, offset: 64)
!2204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2205, size: 1344, elements: !314)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !40, line: 397, size: 448, elements: !2206)
!2206 = !{!2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2217}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2205, file: !40, line: 398, baseType: !7, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2205, file: !40, line: 399, baseType: !7, size: 32, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2205, file: !40, line: 401, baseType: !7, size: 32, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2205, file: !40, line: 402, baseType: !7, size: 32, offset: 96)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2205, file: !40, line: 403, baseType: !7, size: 32, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2205, file: !40, line: 404, baseType: !7, size: 32, offset: 160)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2205, file: !40, line: 405, baseType: !7, size: 32, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2205, file: !40, line: 406, baseType: !134, size: 64, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2205, file: !40, line: 407, baseType: !2216, size: 64, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !80, line: 132, baseType: !132)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2205, file: !40, line: 408, baseType: !2216, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2137, file: !40, line: 442, baseType: !2147, size: 64, offset: 640)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !178, file: !35, line: 1200, baseType: !2220, size: 64, offset: 576)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2222)
!2222 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !35, line: 54, flags: DIFlagFwdDecl)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !178, file: !35, line: 1201, baseType: !81, size: 64, offset: 640)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !178, file: !35, line: 1202, baseType: !81, size: 64, offset: 704)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !178, file: !35, line: 1203, baseType: !81, size: 64, offset: 768)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !178, file: !35, line: 1204, baseType: !92, size: 64, offset: 832)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !178, file: !35, line: 1205, baseType: !398, size: 320, offset: 896)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !178, file: !35, line: 1206, baseType: !199, size: 32, offset: 1216)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !178, file: !35, line: 1207, baseType: !267, size: 32, offset: 1248)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !178, file: !35, line: 1209, baseType: !215, size: 64, offset: 1280)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !178, file: !35, line: 1211, baseType: !2232, size: 64, offset: 1344)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2235)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !35, line: 1211, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !178, file: !35, line: 1223, baseType: !2237, size: 64, offset: 1408)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !109, line: 34, size: 64, elements: !2238)
!2238 = !{!2239}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2237, file: !109, line: 35, baseType: !112, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !178, file: !35, line: 1224, baseType: !157, size: 128, offset: 1472)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !178, file: !35, line: 1225, baseType: !2242, size: 64, offset: 1600)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !35, line: 1225, flags: DIFlagFwdDecl)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !178, file: !35, line: 1226, baseType: !2245, size: 64, offset: 1664)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !35, line: 1226, flags: DIFlagFwdDecl)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !178, file: !35, line: 1227, baseType: !2248, size: 64, offset: 1728)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !35, line: 50, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !178, file: !35, line: 1228, baseType: !2251, size: 64, offset: 1792)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !35, line: 1228, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !178, file: !35, line: 1229, baseType: !592, size: 128, offset: 1856)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !178, file: !35, line: 1230, baseType: !7, size: 32, offset: 1984)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !178, file: !35, line: 1231, baseType: !2256, size: 2496, offset: 2048)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !40, line: 521, size: 2496, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2262, !2294}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2256, file: !40, line: 522, baseType: !7, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2256, file: !40, line: 523, baseType: !398, size: 320, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2256, file: !40, line: 524, baseType: !2261, size: 192, offset: 384)
!2261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 192, elements: !314)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2256, file: !40, line: 525, baseType: !2263, size: 1728, offset: 576)
!2263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2264, size: 1728, elements: !314)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !40, line: 222, size: 576, elements: !2265)
!2265 = !{!2266, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2264, file: !40, line: 223, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !40, line: 445, size: 256, elements: !2269)
!2269 = !{!2270, !2271, !2284, !2285}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2268, file: !40, line: 446, baseType: !199, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2268, file: !40, line: 447, baseType: !2272, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2274)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !40, line: 312, size: 512, elements: !2275)
!2275 = !{!2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2274, file: !40, line: 313, baseType: !1991, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2274, file: !40, line: 314, baseType: !1991, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2274, file: !40, line: 315, baseType: !1991, size: 64, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2274, file: !40, line: 316, baseType: !1991, size: 64, offset: 192)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2274, file: !40, line: 317, baseType: !2100, size: 64, offset: 256)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2274, file: !40, line: 318, baseType: !2100, size: 64, offset: 320)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2274, file: !40, line: 319, baseType: !2100, size: 64, offset: 384)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2274, file: !40, line: 320, baseType: !2130, size: 64, offset: 448)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2268, file: !40, line: 448, baseType: !221, size: 64, offset: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2268, file: !40, line: 449, baseType: !2267, size: 64, offset: 192)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2264, file: !40, line: 224, baseType: !199, size: 32, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2264, file: !40, line: 226, baseType: !157, size: 128, offset: 128)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2264, file: !40, line: 227, baseType: !81, size: 64, offset: 256)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2264, file: !40, line: 228, baseType: !7, size: 32, offset: 320)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2264, file: !40, line: 229, baseType: !7, size: 32, offset: 352)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2264, file: !40, line: 230, baseType: !2068, size: 64, offset: 384)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2264, file: !40, line: 231, baseType: !2068, size: 64, offset: 448)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2264, file: !40, line: 232, baseType: !215, size: 64, offset: 512)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2256, file: !40, line: 526, baseType: !2295, size: 192, offset: 2304)
!2295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2272, size: 192, elements: !314)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !178, file: !35, line: 1233, baseType: !2297, size: 2368, offset: 4544)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !35, line: 1184, size: 2368, elements: !2298)
!2298 = !{!2299, !2300, !2301}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2297, file: !35, line: 1185, baseType: !145, size: 16)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2297, file: !35, line: 1186, baseType: !145, size: 16, offset: 16)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2297, file: !35, line: 1187, baseType: !2302, size: 2304, offset: 64)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2303, size: 2304, elements: !314)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2304, line: 12, size: 768, elements: !2305)
!2304 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2305 = !{!2306, !2314, !2315, !3511, !3512}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2303, file: !2304, line: 13, baseType: !2307, size: 384)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2308, line: 17, size: 384, elements: !2309)
!2308 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2309 = !{!2310, !2311, !2312, !2313}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2307, file: !2308, line: 18, baseType: !199, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2307, file: !2308, line: 19, baseType: !199, size: 32, offset: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2307, file: !2308, line: 20, baseType: !601, size: 192, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2307, file: !2308, line: 22, baseType: !502, size: 128, align: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2303, file: !2304, line: 14, baseType: !1694, size: 64, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2303, file: !2304, line: 15, baseType: !2316, size: 64, offset: 448)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2317, line: 16, size: 64, elements: !2318)
!2317 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2318 = !{!2319}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2316, file: !2317, line: 17, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1197, line: 746, size: 58368, elements: !2322)
!2322 = !{!2323, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2403, !2414, !2502, !2506, !2509, !2540, !2541, !2542, !2543, !2554, !2556, !2557, !2558, !2559, !2560, !2561, !2572, !2573, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2590, !2591, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2684, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2732, !2738, !2739, !2740, !2741, !2742, !2746, !2749, !2756, !2761, !2764, !2767, !2770, !2773, !2911, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2949, !2950, !2951, !2960, !2968, !2969, !2970, !2971, !2972, !2977, !2978, !2979, !2982, !2983, !2986, !2989, !2992, !3000, !3003, !3004, !3090, !3091, !3092, !3093, !3094, !3100, !3101, !3102, !3103, !3106, !3107, !3110, !3113, !3114, !3117, !3118, !3119, !3122, !3123, !3124, !3125, !3126, !3127, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3159, !3160, !3166, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3178, !3250, !3252, !3253, !3254, !3255, !3256, !3257, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3286, !3287, !3288}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2321, file: !1197, line: 752, baseType: !2324, size: 192)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2325, line: 56, size: 192, elements: !2326)
!2325 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2326 = !{!2327, !2328, !2329, !2330}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2324, file: !2325, line: 57, baseType: !81, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2324, file: !2325, line: 58, baseType: !81, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2324, file: !2325, line: 59, baseType: !126, size: 32, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2324, file: !2325, line: 61, baseType: !126, size: 32, offset: 160)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2321, file: !1197, line: 754, baseType: !7, size: 32, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2321, file: !1197, line: 767, baseType: !215, size: 64, offset: 256)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2321, file: !1197, line: 768, baseType: !579, size: 32, offset: 320)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2321, file: !1197, line: 770, baseType: !7, size: 32, offset: 352)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2321, file: !1197, line: 771, baseType: !7, size: 32, offset: 384)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2321, file: !1197, line: 774, baseType: !199, size: 32, offset: 416)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2321, file: !1197, line: 775, baseType: !2338, size: 128, offset: 448)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2339, line: 58, size: 128, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2340 = !{!2341, !2342, !2347, !2348}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2338, file: !2339, line: 59, baseType: !529, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, scope: !2338, file: !2339, line: 60, baseType: !2343, size: 32, offset: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2338, file: !2339, line: 60, size: 32, elements: !2344)
!2344 = !{!2345, !2346}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2343, file: !2339, line: 61, baseType: !7, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2343, file: !2339, line: 62, baseType: !267, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2338, file: !2339, line: 65, baseType: !282, size: 16, offset: 96)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2338, file: !2339, line: 65, baseType: !282, size: 16, offset: 112)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2321, file: !1197, line: 776, baseType: !7, size: 32, offset: 576)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2321, file: !1197, line: 777, baseType: !81, size: 64, offset: 640)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2321, file: !1197, line: 778, baseType: !2320, size: 64, offset: 704)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2321, file: !1197, line: 787, baseType: !199, size: 32, offset: 768)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2321, file: !1197, line: 788, baseType: !199, size: 32, offset: 800)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2321, file: !1197, line: 790, baseType: !199, size: 32, offset: 832)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2321, file: !1197, line: 792, baseType: !199, size: 32, offset: 864)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2321, file: !1197, line: 793, baseType: !199, size: 32, offset: 896)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2321, file: !1197, line: 794, baseType: !199, size: 32, offset: 928)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2321, file: !1197, line: 795, baseType: !7, size: 32, offset: 960)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2321, file: !1197, line: 797, baseType: !2360, size: 2048, offset: 1024)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1197, line: 551, size: 2048, elements: !2361)
!2361 = !{!2362, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2382, !2385, !2386, !2387}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2360, file: !1197, line: 553, baseType: !2363, size: 128)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1197, line: 411, size: 128, elements: !2364)
!2364 = !{!2365, !2366}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2363, file: !1197, line: 412, baseType: !81, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2363, file: !1197, line: 413, baseType: !126, size: 32, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2360, file: !1197, line: 554, baseType: !430, size: 192, align: 64, offset: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2360, file: !1197, line: 555, baseType: !132, size: 64, offset: 320)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2360, file: !1197, line: 556, baseType: !132, size: 64, offset: 384)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2360, file: !1197, line: 558, baseType: !157, size: 128, offset: 448)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2360, file: !1197, line: 559, baseType: !7, size: 32, offset: 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2360, file: !1197, line: 561, baseType: !132, size: 64, offset: 640)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2360, file: !1197, line: 562, baseType: !132, size: 64, offset: 704)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2360, file: !1197, line: 563, baseType: !132, size: 64, offset: 768)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2360, file: !1197, line: 564, baseType: !132, size: 64, offset: 832)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2360, file: !1197, line: 565, baseType: !408, size: 64, offset: 896)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2360, file: !1197, line: 566, baseType: !132, size: 64, offset: 960)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2360, file: !1197, line: 568, baseType: !132, size: 64, offset: 1024)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2360, file: !1197, line: 571, baseType: !199, size: 32, offset: 1088)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2360, file: !1197, line: 572, baseType: !2381, size: 64, offset: 1152)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2360, file: !1197, line: 574, baseType: !2383, size: 64, offset: 1216)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1197, line: 49, flags: DIFlagFwdDecl)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2360, file: !1197, line: 576, baseType: !2383, size: 64, offset: 1280)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2360, file: !1197, line: 578, baseType: !81, size: 64, offset: 1344)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2360, file: !1197, line: 588, baseType: !2388, size: 512, align: 512, offset: 1536)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1197, line: 497, size: 512, align: 512, elements: !2389)
!2389 = !{!2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2388, file: !1197, line: 498, baseType: !132, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2388, file: !1197, line: 499, baseType: !132, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2388, file: !1197, line: 500, baseType: !132, size: 64, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2388, file: !1197, line: 501, baseType: !126, size: 32, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2388, file: !1197, line: 502, baseType: !126, size: 32, offset: 224)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2388, file: !1197, line: 503, baseType: !81, size: 64, offset: 256)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2388, file: !1197, line: 504, baseType: !81, size: 64, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2388, file: !1197, line: 505, baseType: !81, size: 64, offset: 384)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2388, file: !1197, line: 506, baseType: !2399, size: 64, align: 64, offset: 448)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1197, line: 445, size: 64, align: 64, elements: !2400)
!2400 = !{!2401, !2402}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2399, file: !1197, line: 446, baseType: !7, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2399, file: !1197, line: 447, baseType: !7, size: 32, offset: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2321, file: !1197, line: 798, baseType: !2404, size: 384, offset: 3072)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1197, line: 592, size: 384, elements: !2405)
!2405 = !{!2406, !2407, !2408, !2409, !2410, !2411, !2412}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2404, file: !1197, line: 593, baseType: !157, size: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2404, file: !1197, line: 594, baseType: !81, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2404, file: !1197, line: 595, baseType: !81, size: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2404, file: !1197, line: 596, baseType: !7, size: 32, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2404, file: !1197, line: 597, baseType: !145, size: 16, offset: 288)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2404, file: !1197, line: 598, baseType: !145, size: 16, offset: 304)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2404, file: !1197, line: 600, baseType: !2413, size: 64, offset: 320)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2321, file: !1197, line: 799, baseType: !2415, size: 1792, offset: 3456)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1197, line: 610, size: 1792, elements: !2416)
!2416 = !{!2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2499, !2500}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2415, file: !1197, line: 611, baseType: !430, size: 192, align: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2415, file: !1197, line: 618, baseType: !132, size: 64, offset: 192)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2415, file: !1197, line: 619, baseType: !132, size: 64, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2415, file: !1197, line: 620, baseType: !132, size: 64, offset: 320)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2415, file: !1197, line: 621, baseType: !132, size: 64, offset: 384)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2415, file: !1197, line: 622, baseType: !132, size: 64, offset: 448)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2415, file: !1197, line: 629, baseType: !408, size: 64, offset: 512)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2415, file: !1197, line: 630, baseType: !132, size: 64, offset: 576)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2415, file: !1197, line: 631, baseType: !7, size: 32, offset: 640)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2415, file: !1197, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2415, file: !1197, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2415, file: !1197, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2415, file: !1197, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2415, file: !1197, line: 662, baseType: !2431, size: 512, offset: 704)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !46, line: 118, size: 512, elements: !2432)
!2432 = !{!2433, !2441, !2442, !2447, !2495, !2496, !2497, !2498}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2431, file: !46, line: 119, baseType: !2434, size: 256)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2435, line: 9, size: 256, elements: !2436)
!2435 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2436 = !{!2437, !2438}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2434, file: !2435, line: 10, baseType: !430, size: 192, align: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2434, file: !2435, line: 11, baseType: !2439, size: 64, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2440, line: 29, baseType: !408)
!2440 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2431, file: !46, line: 120, baseType: !2439, size: 64, offset: 256)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2431, file: !46, line: 121, baseType: !2443, size: 64, offset: 320)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!45, !2446}
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2431, file: !46, line: 122, baseType: !2448, size: 64, offset: 384)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !46, line: 159, size: 512, align: 512, elements: !2450)
!2450 = !{!2451, !2476, !2477, !2480, !2485, !2486, !2490, !2494}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2449, file: !46, line: 160, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !46, line: 215, size: 4608, align: 512, elements: !2454)
!2454 = !{!2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2453, file: !46, line: 216, baseType: !417, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2453, file: !46, line: 217, baseType: !7, size: 32, offset: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2453, file: !46, line: 218, baseType: !7, size: 32, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2453, file: !46, line: 219, baseType: !7, size: 32, offset: 96)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2453, file: !46, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2453, file: !46, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2453, file: !46, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2453, file: !46, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2453, file: !46, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2453, file: !46, line: 226, baseType: !7, size: 32, offset: 160)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2453, file: !46, line: 227, baseType: !145, size: 16, offset: 192)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2453, file: !46, line: 228, baseType: !145, size: 16, offset: 208)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2453, file: !46, line: 229, baseType: !7, size: 32, offset: 224)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2453, file: !46, line: 235, baseType: !2439, size: 64, offset: 256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2453, file: !46, line: 236, baseType: !2446, size: 64, offset: 320)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2453, file: !46, line: 237, baseType: !2439, size: 64, offset: 384)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2453, file: !46, line: 238, baseType: !2446, size: 64, offset: 448)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2453, file: !46, line: 239, baseType: !2473, size: 4096, align: 512, offset: 512)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2449, size: 4096, align: 512, elements: !2474)
!2474 = !{!2475}
!2475 = !DISubrange(count: 8)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2449, file: !46, line: 161, baseType: !7, size: 32, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2449, file: !46, line: 162, baseType: !2478, size: 32, offset: 96)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !80, line: 32, baseType: !2479)
!2479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !155, line: 96, baseType: !199)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2449, file: !46, line: 163, baseType: !2481, size: 32, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !99, line: 274, baseType: !2482)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !99, line: 274, size: 32, elements: !2483)
!2483 = !{!2484}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2482, file: !99, line: 274, baseType: !103, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2449, file: !46, line: 164, baseType: !2446, size: 64, offset: 192)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2449, file: !46, line: 165, baseType: !2487, size: 128, offset: 256)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2435, line: 14, size: 128, elements: !2488)
!2488 = !{!2489}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2487, file: !2435, line: 15, baseType: !422, size: 128)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2449, file: !46, line: 166, baseType: !2491, size: 64, offset: 384)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!2439}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2449, file: !46, line: 167, baseType: !2439, size: 64, offset: 448)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2431, file: !46, line: 123, baseType: !275, size: 8, offset: 448)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2431, file: !46, line: 124, baseType: !275, size: 8, offset: 456)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2431, file: !46, line: 125, baseType: !275, size: 8, offset: 464)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2431, file: !46, line: 126, baseType: !275, size: 8, offset: 472)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2415, file: !1197, line: 671, baseType: !2431, size: 512, offset: 1216)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2415, file: !1197, line: 679, baseType: !2501, size: 64, offset: 1728)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2321, file: !1197, line: 800, baseType: !2503, size: 64, offset: 5248)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2505)
!2505 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1197, line: 800, flags: DIFlagFwdDecl)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2321, file: !1197, line: 809, baseType: !2507, size: 64, offset: 5312)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1197, line: 70, flags: DIFlagFwdDecl)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2321, file: !1197, line: 825, baseType: !2510, size: 2048, align: 512, offset: 5632)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1197, line: 509, size: 2048, align: 512, elements: !2511)
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2510, file: !1197, line: 511, baseType: !132, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2510, file: !1197, line: 512, baseType: !132, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2510, file: !1197, line: 513, baseType: !132, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2510, file: !1197, line: 514, baseType: !132, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2510, file: !1197, line: 515, baseType: !132, size: 64, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2510, file: !1197, line: 516, baseType: !132, size: 64, offset: 320)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2510, file: !1197, line: 518, baseType: !132, size: 64, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2510, file: !1197, line: 519, baseType: !132, size: 64, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2510, file: !1197, line: 520, baseType: !408, size: 64, offset: 512)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2510, file: !1197, line: 522, baseType: !132, size: 64, offset: 576)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2510, file: !1197, line: 523, baseType: !132, size: 64, offset: 640)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2510, file: !1197, line: 524, baseType: !408, size: 64, offset: 704)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2510, file: !1197, line: 526, baseType: !408, size: 64, offset: 768)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2510, file: !1197, line: 527, baseType: !132, size: 64, offset: 832)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2510, file: !1197, line: 529, baseType: !132, size: 64, offset: 896)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2510, file: !1197, line: 530, baseType: !132, size: 64, offset: 960)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2510, file: !1197, line: 531, baseType: !132, size: 64, offset: 1024)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2510, file: !1197, line: 532, baseType: !132, size: 64, offset: 1088)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2510, file: !1197, line: 533, baseType: !132, size: 64, offset: 1152)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2510, file: !1197, line: 535, baseType: !132, size: 64, offset: 1216)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2510, file: !1197, line: 536, baseType: !132, size: 64, offset: 1280)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2510, file: !1197, line: 537, baseType: !132, size: 64, offset: 1344)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2510, file: !1197, line: 538, baseType: !132, size: 64, offset: 1408)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2510, file: !1197, line: 539, baseType: !132, size: 64, offset: 1472)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2510, file: !1197, line: 540, baseType: !132, size: 64, offset: 1536)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2510, file: !1197, line: 541, baseType: !132, size: 64, offset: 1600)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2510, file: !1197, line: 542, baseType: !132, size: 64, offset: 1664)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2510, file: !1197, line: 543, baseType: !132, size: 64, offset: 1728)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2321, file: !1197, line: 833, baseType: !7, size: 32, offset: 7680)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2321, file: !1197, line: 836, baseType: !7, size: 32, offset: 7712)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2321, file: !1197, line: 837, baseType: !199, size: 32, offset: 7744)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2321, file: !1197, line: 838, baseType: !2544, size: 64, offset: 7808)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2546)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2547, line: 19, baseType: !2548)
!2547 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2547, line: 19, size: 64, elements: !2549)
!2549 = !{!2550}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2548, file: !2547, line: 19, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !2552)
!2552 = !{!2553}
!2553 = !DISubrange(count: 1)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2321, file: !1197, line: 839, baseType: !2555, size: 64, offset: 7872)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2321, file: !1197, line: 840, baseType: !2546, size: 64, offset: 7936)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2321, file: !1197, line: 841, baseType: !215, size: 64, offset: 8000)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2321, file: !1197, line: 843, baseType: !145, size: 16, offset: 8064)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2321, file: !1197, line: 845, baseType: !145, size: 16, offset: 8080)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2321, file: !1197, line: 848, baseType: !199, size: 32, offset: 8096)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2321, file: !1197, line: 849, baseType: !2562, size: 32, offset: 8128)
!2562 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1197, line: 718, size: 32, elements: !2563)
!2563 = !{!2564, !2571}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2562, file: !1197, line: 724, baseType: !2565, size: 32)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2562, file: !1197, line: 719, size: 32, elements: !2566)
!2566 = !{!2567, !2568, !2569, !2570}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2565, file: !1197, line: 720, baseType: !275, size: 8)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2565, file: !1197, line: 721, baseType: !275, size: 8, offset: 8)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2565, file: !1197, line: 722, baseType: !275, size: 8, offset: 16)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2565, file: !1197, line: 723, baseType: !275, size: 8, offset: 24)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2562, file: !1197, line: 725, baseType: !126, size: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2321, file: !1197, line: 850, baseType: !157, size: 128, offset: 8192)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2321, file: !1197, line: 851, baseType: !2574, size: 64, offset: 8320)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1197, line: 60, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2321, file: !1197, line: 855, baseType: !81, size: 64, offset: 8384)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2321, file: !1197, line: 856, baseType: !275, size: 8, offset: 8448)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2321, file: !1197, line: 857, baseType: !275, size: 8, offset: 8456)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2321, file: !1197, line: 858, baseType: !199, size: 32, offset: 8480)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2321, file: !1197, line: 859, baseType: !157, size: 128, offset: 8512)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2321, file: !1197, line: 860, baseType: !199, size: 32, offset: 8640)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2321, file: !1197, line: 861, baseType: !157, size: 128, offset: 8704)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2321, file: !1197, line: 873, baseType: !2584, size: 256, offset: 8832)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1197, line: 376, size: 256, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2584, file: !1197, line: 381, baseType: !81, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2584, file: !1197, line: 384, baseType: !134, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2584, file: !1197, line: 389, baseType: !134, size: 64, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2584, file: !1197, line: 392, baseType: !134, size: 64, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2321, file: !1197, line: 875, baseType: !157, size: 128, offset: 9088)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2321, file: !1197, line: 877, baseType: !2592, size: 320, offset: 9216)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2593, line: 86, size: 320, elements: !2594)
!2593 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2594 = !{!2595, !2596, !2597}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2592, file: !2593, line: 87, baseType: !199, size: 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2592, file: !2593, line: 88, baseType: !157, size: 128, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2592, file: !2593, line: 89, baseType: !157, size: 128, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2321, file: !1197, line: 878, baseType: !430, size: 192, align: 64, offset: 9536)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2321, file: !1197, line: 881, baseType: !950, size: 64, offset: 9728)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2321, file: !1197, line: 882, baseType: !950, size: 64, offset: 9792)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2321, file: !1197, line: 884, baseType: !199, size: 32, offset: 9856)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2321, file: !1197, line: 885, baseType: !199, size: 32, offset: 9888)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2321, file: !1197, line: 886, baseType: !199, size: 32, offset: 9920)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2321, file: !1197, line: 888, baseType: !199, size: 32, offset: 9952)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2321, file: !1197, line: 890, baseType: !81, size: 64, offset: 9984)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2321, file: !1197, line: 893, baseType: !7, size: 32, offset: 10048)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2321, file: !1197, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2321, file: !1197, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2321, file: !1197, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2321, file: !1197, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2321, file: !1197, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2321, file: !1197, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2321, file: !1197, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2321, file: !1197, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2321, file: !1197, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2321, file: !1197, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2321, file: !1197, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2321, file: !1197, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2321, file: !1197, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2321, file: !1197, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2321, file: !1197, line: 969, baseType: !81, size: 64, offset: 10176)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2321, file: !1197, line: 971, baseType: !2623, size: 448, offset: 10240)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !51, line: 25, size: 448, elements: !2624)
!2624 = !{!2625, !2626, !2631}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2623, file: !51, line: 26, baseType: !81, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2623, file: !51, line: 27, baseType: !2627, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!348, !2630}
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, scope: !2623, file: !51, line: 28, baseType: !2632, size: 320, offset: 128)
!2632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2623, file: !51, line: 28, size: 320, elements: !2633)
!2633 = !{!2634, !2644, !2669}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2632, file: !51, line: 37, baseType: !2635, size: 320)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2632, file: !51, line: 30, size: 320, elements: !2636)
!2636 = !{!2637, !2639, !2640, !2641, !2642, !2643}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2635, file: !51, line: 31, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2635, file: !51, line: 32, baseType: !126, size: 32, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2635, file: !51, line: 33, baseType: !126, size: 32, offset: 96)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2635, file: !51, line: 34, baseType: !126, size: 32, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2635, file: !51, line: 35, baseType: !132, size: 64, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2635, file: !51, line: 36, baseType: !2638, size: 64, offset: 256)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2632, file: !51, line: 47, baseType: !2645, size: 192)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2632, file: !51, line: 39, size: 192, elements: !2646)
!2646 = !{!2647, !2648, !2649, !2668}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2645, file: !51, line: 40, baseType: !2478, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2645, file: !51, line: 41, baseType: !50, size: 32, offset: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, scope: !2645, file: !51, line: 42, baseType: !2650, size: 64, offset: 64)
!2650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2645, file: !51, line: 42, size: 64, elements: !2651)
!2651 = !{!2652, !2660}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2650, file: !51, line: 43, baseType: !2653, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2655, line: 7, size: 128, elements: !2656)
!2655 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2656 = !{!2657, !2659}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2654, file: !2655, line: 8, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !155, line: 93, baseType: !189)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2654, file: !2655, line: 9, baseType: !189, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2650, file: !51, line: 44, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2663, line: 7, size: 64, elements: !2664)
!2663 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2664 = !{!2665, !2667}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2662, file: !2663, line: 8, baseType: !2666, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2663, line: 5, baseType: !658)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2662, file: !2663, line: 9, baseType: !658, size: 32, offset: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2645, file: !51, line: 46, baseType: !132, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2632, file: !51, line: 55, baseType: !2670, size: 256)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2632, file: !51, line: 49, size: 256, elements: !2671)
!2671 = !{!2672, !2680, !2681, !2682, !2683}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2670, file: !51, line: 50, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2675, line: 36, size: 64, elements: !2676)
!2675 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2676 = !{!2677, !2678, !2679}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2674, file: !2675, line: 37, baseType: !199, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2674, file: !2675, line: 38, baseType: !686, size: 16, offset: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2674, file: !2675, line: 39, baseType: !686, size: 16, offset: 48)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2670, file: !51, line: 51, baseType: !199, size: 32, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2670, file: !51, line: 52, baseType: !199, size: 32, offset: 96)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2670, file: !51, line: 53, baseType: !81, size: 64, offset: 128)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2670, file: !51, line: 54, baseType: !81, size: 64, offset: 192)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2321, file: !1197, line: 973, baseType: !2685, size: 32, offset: 10688)
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !80, line: 27, baseType: !2686)
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !155, line: 28, baseType: !199)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2321, file: !1197, line: 974, baseType: !2685, size: 32, offset: 10720)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2321, file: !1197, line: 978, baseType: !81, size: 64, offset: 10752)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2321, file: !1197, line: 987, baseType: !2320, size: 64, offset: 10816)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2321, file: !1197, line: 990, baseType: !2320, size: 64, offset: 10880)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2321, file: !1197, line: 995, baseType: !157, size: 128, offset: 10944)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2321, file: !1197, line: 996, baseType: !157, size: 128, offset: 11072)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2321, file: !1197, line: 997, baseType: !2320, size: 64, offset: 11200)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2321, file: !1197, line: 1005, baseType: !157, size: 128, offset: 11264)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2321, file: !1197, line: 1006, baseType: !157, size: 128, offset: 11392)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2321, file: !1197, line: 1009, baseType: !575, size: 64, offset: 11520)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2321, file: !1197, line: 1010, baseType: !2698, size: 512, offset: 11584)
!2698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 512, elements: !597)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2321, file: !1197, line: 1011, baseType: !157, size: 128, offset: 12096)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2321, file: !1197, line: 1012, baseType: !157, size: 128, offset: 12224)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2321, file: !1197, line: 1014, baseType: !1595, size: 64, offset: 12352)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2321, file: !1197, line: 1017, baseType: !1742, size: 64, offset: 12416)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2321, file: !1197, line: 1020, baseType: !1742, size: 64, offset: 12480)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2321, file: !1197, line: 1023, baseType: !215, size: 64, offset: 12544)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2321, file: !1197, line: 1025, baseType: !132, size: 64, offset: 12608)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2321, file: !1197, line: 1026, baseType: !132, size: 64, offset: 12672)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2321, file: !1197, line: 1031, baseType: !132, size: 64, offset: 12736)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2321, file: !1197, line: 1032, baseType: !2709, size: 192, offset: 12800)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1197, line: 324, size: 192, elements: !2710)
!2710 = !{!2711, !2712, !2713}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2709, file: !1197, line: 326, baseType: !132, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2709, file: !1197, line: 327, baseType: !132, size: 64, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2709, file: !1197, line: 328, baseType: !417, size: 32, offset: 128)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2321, file: !1197, line: 1041, baseType: !81, size: 64, offset: 12992)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2321, file: !1197, line: 1042, baseType: !81, size: 64, offset: 13056)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2321, file: !1197, line: 1045, baseType: !132, size: 64, offset: 13120)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2321, file: !1197, line: 1048, baseType: !132, size: 64, offset: 13184)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2321, file: !1197, line: 1051, baseType: !81, size: 64, offset: 13248)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2321, file: !1197, line: 1052, baseType: !81, size: 64, offset: 13312)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2321, file: !1197, line: 1055, baseType: !2721, size: 640, offset: 13376)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2722, line: 132, size: 640, elements: !2723)
!2722 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2723 = !{!2724, !2730, !2731}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2721, file: !2722, line: 133, baseType: !2725, size: 576)
!2725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2726, size: 576, elements: !314)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2722, line: 117, size: 192, elements: !2727)
!2727 = !{!2728, !2729}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2726, file: !2722, line: 118, baseType: !132, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2726, file: !2722, line: 119, baseType: !2487, size: 128, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2721, file: !2722, line: 134, baseType: !7, size: 32, offset: 576)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2721, file: !2722, line: 135, baseType: !7, size: 32, offset: 608)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2321, file: !1197, line: 1058, baseType: !2733, size: 448, offset: 14016)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2722, line: 144, size: 448, elements: !2734)
!2734 = !{!2735, !2736, !2737}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2733, file: !2722, line: 145, baseType: !502, size: 128, align: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2733, file: !2722, line: 146, baseType: !541, size: 256, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2733, file: !2722, line: 147, baseType: !7, size: 32, offset: 384)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2321, file: !1197, line: 1064, baseType: !623, size: 64, offset: 14464)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2321, file: !1197, line: 1067, baseType: !623, size: 64, offset: 14528)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2321, file: !1197, line: 1070, baseType: !623, size: 64, offset: 14592)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2321, file: !1197, line: 1074, baseType: !650, size: 64, offset: 14656)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2321, file: !1197, line: 1084, baseType: !2743, size: 128, offset: 14720)
!2743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 128, elements: !2744)
!2744 = !{!2745}
!2745 = !DISubrange(count: 16)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2321, file: !1197, line: 1086, baseType: !2747, size: 64, offset: 14848)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1197, line: 55, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2321, file: !1197, line: 1089, baseType: !2750, size: 64, offset: 14912)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2751, line: 12, size: 64, elements: !2752)
!2751 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2752 = !{!2753}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2750, file: !2751, line: 13, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2751, line: 8, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2321, file: !1197, line: 1090, baseType: !2757, size: 128, offset: 14976)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2758, line: 13, size: 128, elements: !2759)
!2758 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2759 = !{!2760}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2757, file: !2758, line: 14, baseType: !157, size: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2321, file: !1197, line: 1097, baseType: !2762, size: 64, offset: 15104)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1197, line: 50, flags: DIFlagFwdDecl)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2321, file: !1197, line: 1100, baseType: !2765, size: 64, offset: 15168)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1197, line: 1100, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2321, file: !1197, line: 1103, baseType: !2768, size: 64, offset: 15232)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1197, line: 53, flags: DIFlagFwdDecl)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2321, file: !1197, line: 1107, baseType: !2771, size: 64, offset: 15296)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1197, line: 56, flags: DIFlagFwdDecl)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2321, file: !1197, line: 1110, baseType: !2774, size: 64, offset: 15360)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2776, line: 93, size: 8768, elements: !2777)
!2776 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2777 = !{!2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2825, !2834, !2835, !2837, !2838, !2839, !2842, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2880, !2881, !2888, !2898, !2901, !2902, !2905, !2906, !2907, !2908, !2909, !2910}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2775, file: !2776, line: 94, baseType: !579, size: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2775, file: !2776, line: 95, baseType: !267, size: 32, offset: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2775, file: !2776, line: 96, baseType: !199, size: 32, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2775, file: !2776, line: 97, baseType: !199, size: 32, offset: 96)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2775, file: !2776, line: 98, baseType: !157, size: 128, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2775, file: !2776, line: 100, baseType: !601, size: 192, offset: 256)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2775, file: !2776, line: 103, baseType: !2320, size: 64, offset: 448)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2775, file: !2776, line: 106, baseType: !2786, size: 192, offset: 512)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !805, line: 32, size: 192, elements: !2787)
!2787 = !{!2788, !2789}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2786, file: !805, line: 33, baseType: !157, size: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2786, file: !805, line: 34, baseType: !2790, size: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2791, line: 25, baseType: !2792)
!2791 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2791, line: 23, size: 64, elements: !2793)
!2793 = !{!2794}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2792, file: !2791, line: 24, baseType: !2551, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2775, file: !2776, line: 109, baseType: !588, size: 64, offset: 704)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2775, file: !2776, line: 112, baseType: !199, size: 32, offset: 768)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2775, file: !2776, line: 114, baseType: !199, size: 32, offset: 800)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2775, file: !2776, line: 115, baseType: !2320, size: 64, offset: 832)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2775, file: !2776, line: 118, baseType: !199, size: 32, offset: 896)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2775, file: !2776, line: 119, baseType: !7, size: 32, offset: 928)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2775, file: !2776, line: 121, baseType: !2802, size: 64, offset: 960)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2776, line: 80, size: 448, elements: !2804)
!2804 = !{!2805, !2806, !2812}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2803, file: !2776, line: 81, baseType: !267, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2803, file: !2776, line: 82, baseType: !2807, size: 128, offset: 64)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2776, line: 75, size: 128, elements: !2808)
!2808 = !{!2809, !2810}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2807, file: !2776, line: 76, baseType: !2320, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2807, file: !2776, line: 77, baseType: !2811, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2803, file: !2776, line: 83, baseType: !1596, size: 256, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2775, file: !2776, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2775, file: !2776, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2775, file: !2776, line: 138, baseType: !7, size: 32, offset: 1056)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2775, file: !2776, line: 139, baseType: !157, size: 128, offset: 1088)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2775, file: !2776, line: 142, baseType: !2431, size: 512, offset: 1216)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2775, file: !2776, line: 143, baseType: !2439, size: 64, offset: 1728)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2775, file: !2776, line: 150, baseType: !2820, size: 256, offset: 1792)
!2820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2821, size: 256, elements: !1732)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2776, line: 38, size: 128, elements: !2822)
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2821, file: !2776, line: 39, baseType: !132, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2821, file: !2776, line: 40, baseType: !132, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2775, file: !2776, line: 156, baseType: !2826, size: 192, offset: 2048)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2776, line: 66, size: 192, elements: !2827)
!2827 = !{!2828}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2826, file: !2776, line: 67, baseType: !2829, size: 192)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2776, line: 47, size: 192, elements: !2830)
!2830 = !{!2831, !2832, !2833}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2829, file: !2776, line: 48, baseType: !404, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2829, file: !2776, line: 49, baseType: !404, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2829, file: !2776, line: 50, baseType: !404, size: 64, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2775, file: !2776, line: 160, baseType: !2721, size: 640, offset: 2240)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2775, file: !2776, line: 163, baseType: !2836, size: 256, offset: 2880)
!2836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 256, elements: !597)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2775, file: !2776, line: 169, baseType: !575, size: 64, offset: 3136)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2775, file: !2776, line: 172, baseType: !199, size: 32, offset: 3200)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2775, file: !2776, line: 174, baseType: !2840, size: 64, offset: 3264)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2776, line: 174, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2775, file: !2776, line: 185, baseType: !2843, size: 64, offset: 3328)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !99, line: 860, baseType: !2844)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 853, size: 64, elements: !2845)
!2845 = !{!2846, !2847}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2844, file: !99, line: 858, baseType: !98, size: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2844, file: !99, line: 859, baseType: !247, size: 32, offset: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2775, file: !2776, line: 186, baseType: !132, size: 64, offset: 3392)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2775, file: !2776, line: 186, baseType: !132, size: 64, offset: 3456)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2775, file: !2776, line: 186, baseType: !132, size: 64, offset: 3520)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2775, file: !2776, line: 186, baseType: !132, size: 64, offset: 3584)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2775, file: !2776, line: 187, baseType: !132, size: 64, offset: 3648)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2775, file: !2776, line: 188, baseType: !132, size: 64, offset: 3712)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2775, file: !2776, line: 189, baseType: !2709, size: 192, offset: 3776)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2775, file: !2776, line: 190, baseType: !81, size: 64, offset: 3968)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2775, file: !2776, line: 190, baseType: !81, size: 64, offset: 4032)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2775, file: !2776, line: 190, baseType: !81, size: 64, offset: 4096)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2775, file: !2776, line: 190, baseType: !81, size: 64, offset: 4160)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2775, file: !2776, line: 191, baseType: !81, size: 64, offset: 4224)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2775, file: !2776, line: 191, baseType: !81, size: 64, offset: 4288)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2775, file: !2776, line: 191, baseType: !81, size: 64, offset: 4352)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2775, file: !2776, line: 191, baseType: !81, size: 64, offset: 4416)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2775, file: !2776, line: 192, baseType: !81, size: 64, offset: 4480)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2775, file: !2776, line: 192, baseType: !81, size: 64, offset: 4544)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2775, file: !2776, line: 192, baseType: !81, size: 64, offset: 4608)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2775, file: !2776, line: 192, baseType: !81, size: 64, offset: 4672)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2775, file: !2776, line: 193, baseType: !81, size: 64, offset: 4736)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2775, file: !2776, line: 193, baseType: !81, size: 64, offset: 4800)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2775, file: !2776, line: 194, baseType: !2870, size: 448, offset: 4864)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2871, line: 12, size: 448, elements: !2872)
!2871 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2872 = !{!2873, !2874, !2875, !2876, !2877, !2878, !2879}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2870, file: !2871, line: 15, baseType: !132, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2870, file: !2871, line: 17, baseType: !132, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2870, file: !2871, line: 19, baseType: !132, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2870, file: !2871, line: 21, baseType: !132, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2870, file: !2871, line: 29, baseType: !132, size: 64, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2870, file: !2871, line: 35, baseType: !132, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2870, file: !2871, line: 44, baseType: !132, size: 64, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2775, file: !2776, line: 202, baseType: !134, size: 64, offset: 5312)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2775, file: !2776, line: 213, baseType: !2882, size: 2048, offset: 5376)
!2882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2883, size: 2048, elements: !2744)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2884, line: 43, size: 128, elements: !2885)
!2884 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2885 = !{!2886, !2887}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2883, file: !2884, line: 44, baseType: !360, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2883, file: !2884, line: 45, baseType: !360, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2775, file: !2776, line: 216, baseType: !2889, size: 448, offset: 7424)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2776, line: 30, size: 448, elements: !2890)
!2890 = !{!2891, !2892, !2893, !2894, !2895, !2896, !2897}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2889, file: !2776, line: 31, baseType: !199, size: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2889, file: !2776, line: 32, baseType: !348, size: 64, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2889, file: !2776, line: 33, baseType: !81, size: 64, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2889, file: !2776, line: 34, baseType: !132, size: 64, offset: 192)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2889, file: !2776, line: 34, baseType: !132, size: 64, offset: 256)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2889, file: !2776, line: 35, baseType: !81, size: 64, offset: 320)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2889, file: !2776, line: 35, baseType: !81, size: 64, offset: 384)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2775, file: !2776, line: 219, baseType: !2899, size: 64, offset: 7872)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2776, line: 219, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2775, file: !2776, line: 222, baseType: !7, size: 32, offset: 7936)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2775, file: !2776, line: 223, baseType: !2903, size: 64, offset: 8000)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2776, line: 223, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2775, file: !2776, line: 230, baseType: !717, size: 8, offset: 8064)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2775, file: !2776, line: 231, baseType: !686, size: 16, offset: 8080)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2775, file: !2776, line: 232, baseType: !686, size: 16, offset: 8096)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2775, file: !2776, line: 234, baseType: !950, size: 64, offset: 8128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2775, file: !2776, line: 237, baseType: !541, size: 256, offset: 8192)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2775, file: !2776, line: 243, baseType: !398, size: 320, offset: 8448)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2321, file: !1197, line: 1111, baseType: !2912, size: 64, offset: 15424)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2776, line: 20, size: 16640, elements: !2914)
!2914 = !{!2915, !2916, !2917, !2918}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2913, file: !2776, line: 21, baseType: !247, size: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2913, file: !2776, line: 22, baseType: !579, size: 32, offset: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2913, file: !2776, line: 23, baseType: !601, size: 192, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2913, file: !2776, line: 24, baseType: !2919, size: 16384, offset: 256)
!2919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2920, size: 16384, elements: !318)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !805, line: 51, size: 256, elements: !2921)
!2921 = !{!2922}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2920, file: !805, line: 52, baseType: !2923, size: 256)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !805, line: 37, size: 256, elements: !2924)
!2924 = !{!2925, !2932, !2933, !2937}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2923, file: !805, line: 39, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2927, line: 83, baseType: !2928)
!2927 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2927, line: 82, baseType: !2930)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{null, !199}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2923, file: !805, line: 40, baseType: !81, size: 64, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2923, file: !805, line: 46, baseType: !2934, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2927, line: 86, baseType: !2935)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2927, line: 85, baseType: !1947)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2923, file: !805, line: 48, baseType: !2790, size: 64, offset: 192)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2321, file: !1197, line: 1112, baseType: !2790, size: 64, offset: 15488)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2321, file: !1197, line: 1113, baseType: !2790, size: 64, offset: 15552)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2321, file: !1197, line: 1115, baseType: !2790, size: 64, offset: 15616)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2321, file: !1197, line: 1116, baseType: !2786, size: 192, offset: 15680)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2321, file: !1197, line: 1117, baseType: !81, size: 64, offset: 15872)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2321, file: !1197, line: 1118, baseType: !358, size: 64, offset: 15936)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2321, file: !1197, line: 1119, baseType: !7, size: 32, offset: 16000)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2321, file: !1197, line: 1121, baseType: !505, size: 64, offset: 16064)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2321, file: !1197, line: 1125, baseType: !2947, size: 64, offset: 16128)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1197, line: 43, flags: DIFlagFwdDecl)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2321, file: !1197, line: 1127, baseType: !148, size: 32, offset: 16192)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2321, file: !1197, line: 1128, baseType: !7, size: 32, offset: 16224)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2321, file: !1197, line: 1130, baseType: !2952, size: 128, offset: 16256)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2953, line: 37, size: 128, elements: !2954)
!2953 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2954 = !{!2955, !2956, !2957}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2952, file: !2953, line: 38, baseType: !199, size: 32)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2952, file: !2953, line: 39, baseType: !267, size: 32, offset: 32)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2952, file: !2953, line: 40, baseType: !2958, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2953, line: 24, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2321, file: !1197, line: 1131, baseType: !2961, size: 256, offset: 16384)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2962, line: 12, size: 256, elements: !2963)
!2962 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2963 = !{!2964, !2965, !2966, !2967}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2961, file: !2962, line: 13, baseType: !313, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2961, file: !2962, line: 14, baseType: !81, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2961, file: !2962, line: 15, baseType: !81, size: 64, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2961, file: !2962, line: 16, baseType: !717, size: 8, offset: 192)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2321, file: !1197, line: 1134, baseType: !132, size: 64, offset: 16640)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2321, file: !1197, line: 1135, baseType: !132, size: 64, offset: 16704)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2321, file: !1197, line: 1138, baseType: !247, size: 32, offset: 16768)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2321, file: !1197, line: 1141, baseType: !417, size: 32, offset: 16800)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2321, file: !1197, line: 1143, baseType: !2973, size: 64, offset: 16832)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1197, line: 735, size: 64, elements: !2974)
!2974 = !{!2975}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2973, file: !1197, line: 736, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2321, file: !1197, line: 1147, baseType: !422, size: 128, offset: 16896)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2321, file: !1197, line: 1149, baseType: !2320, size: 64, offset: 17024)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2321, file: !1197, line: 1151, baseType: !2980, size: 64, offset: 17088)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1197, line: 1151, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2321, file: !1197, line: 1188, baseType: !215, size: 64, offset: 17152)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2321, file: !1197, line: 1191, baseType: !2984, size: 64, offset: 17216)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1197, line: 44, flags: DIFlagFwdDecl)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2321, file: !1197, line: 1194, baseType: !2987, size: 64, offset: 17280)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1197, line: 45, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2321, file: !1197, line: 1197, baseType: !2990, size: 64, offset: 17344)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1197, line: 61, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2321, file: !1197, line: 1199, baseType: !2993, size: 64, offset: 17408)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2995, line: 99, size: 128, elements: !2996)
!2995 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2996 = !{!2997, !2998, !2999}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2994, file: !2995, line: 100, baseType: !402, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2994, file: !2995, line: 101, baseType: !267, size: 32, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2994, file: !2995, line: 103, baseType: !145, size: 16, offset: 96)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2321, file: !1197, line: 1202, baseType: !3001, size: 64, offset: 17472)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1197, line: 48, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2321, file: !1197, line: 1205, baseType: !81, size: 64, offset: 17536)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2321, file: !1197, line: 1206, baseType: !3005, size: 64, offset: 17600)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !805, line: 14, baseType: !3007)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !805, line: 12, size: 384, elements: !3008)
!3008 = !{!3009}
!3009 = !DIDerivedType(tag: DW_TAG_member, scope: !3007, file: !805, line: 13, baseType: !3010, size: 384)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3007, file: !805, line: 13, size: 384, elements: !3011)
!3011 = !{!3012, !3013, !3014, !3015}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3010, file: !805, line: 13, baseType: !199, size: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3010, file: !805, line: 13, baseType: !199, size: 32, offset: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3010, file: !805, line: 13, baseType: !199, size: 32, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3010, file: !805, line: 13, baseType: !3016, size: 256, offset: 128)
!3016 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3017, line: 37, size: 256, elements: !3018)
!3017 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3018 = !{!3019, !3024, !3037, !3043, !3052, !3079, !3084}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3016, file: !3017, line: 42, baseType: !3020, size: 64)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !3017, line: 39, size: 64, elements: !3021)
!3021 = !{!3022, !3023}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3020, file: !3017, line: 40, baseType: !2686, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3020, file: !3017, line: 41, baseType: !154, size: 32, offset: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3016, file: !3017, line: 50, baseType: !3025, size: 192)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !3017, line: 45, size: 192, elements: !3026)
!3026 = !{!3027, !3029, !3030, !3036}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3025, file: !3017, line: 46, baseType: !3028, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !155, line: 95, baseType: !199)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3025, file: !3017, line: 47, baseType: !199, size: 32, offset: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3025, file: !3017, line: 48, baseType: !3031, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3017, line: 11, baseType: !3032)
!3032 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3017, line: 8, size: 64, elements: !3033)
!3033 = !{!3034, !3035}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3032, file: !3017, line: 9, baseType: !199, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3032, file: !3017, line: 10, baseType: !215, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3025, file: !3017, line: 49, baseType: !199, size: 32, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3016, file: !3017, line: 57, baseType: !3038, size: 128)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !3017, line: 53, size: 128, elements: !3039)
!3039 = !{!3040, !3041, !3042}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3038, file: !3017, line: 54, baseType: !2686, size: 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3038, file: !3017, line: 55, baseType: !154, size: 32, offset: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3038, file: !3017, line: 56, baseType: !3031, size: 64, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3016, file: !3017, line: 66, baseType: !3044, size: 256)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !3017, line: 60, size: 256, elements: !3045)
!3045 = !{!3046, !3047, !3048, !3049, !3051}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3044, file: !3017, line: 61, baseType: !2686, size: 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3044, file: !3017, line: 62, baseType: !154, size: 32, offset: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3044, file: !3017, line: 63, baseType: !199, size: 32, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3044, file: !3017, line: 64, baseType: !3050, size: 64, offset: 128)
!3050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !155, line: 94, baseType: !347)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3044, file: !3017, line: 65, baseType: !3050, size: 64, offset: 192)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3016, file: !3017, line: 105, baseType: !3053, size: 256)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !3017, line: 69, size: 256, elements: !3054)
!3054 = !{!3055, !3056}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3053, file: !3017, line: 70, baseType: !215, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, scope: !3053, file: !3017, line: 79, baseType: !3057, size: 192, offset: 64)
!3057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3053, file: !3017, line: 79, size: 192, elements: !3058)
!3058 = !{!3059, !3060, !3061, !3068, !3073}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3057, file: !3017, line: 81, baseType: !199, size: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3057, file: !3017, line: 86, baseType: !686, size: 16)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3057, file: !3017, line: 92, baseType: !3062, size: 192)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3057, file: !3017, line: 88, size: 192, elements: !3063)
!3063 = !{!3064, !3066, !3067}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3062, file: !3017, line: 89, baseType: !3065, size: 64)
!3065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 64, elements: !2474)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3062, file: !3017, line: 90, baseType: !215, size: 64, offset: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3062, file: !3017, line: 91, baseType: !215, size: 64, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3057, file: !3017, line: 97, baseType: !3069, size: 96)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3057, file: !3017, line: 94, size: 96, elements: !3070)
!3070 = !{!3071, !3072}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3069, file: !3017, line: 95, baseType: !3065, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3069, file: !3017, line: 96, baseType: !128, size: 32, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3057, file: !3017, line: 103, baseType: !3074, size: 128)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3057, file: !3017, line: 99, size: 128, elements: !3075)
!3075 = !{!3076, !3077, !3078}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3074, file: !3017, line: 100, baseType: !81, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3074, file: !3017, line: 101, baseType: !128, size: 32, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3074, file: !3017, line: 102, baseType: !128, size: 32, offset: 96)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3016, file: !3017, line: 111, baseType: !3080, size: 128)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !3017, line: 108, size: 128, elements: !3081)
!3081 = !{!3082, !3083}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3080, file: !3017, line: 109, baseType: !348, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3080, file: !3017, line: 110, baseType: !199, size: 32, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3016, file: !3017, line: 118, baseType: !3085, size: 128)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3016, file: !3017, line: 114, size: 128, elements: !3086)
!3086 = !{!3087, !3088, !3089}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3085, file: !3017, line: 115, baseType: !215, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3085, file: !3017, line: 116, baseType: !199, size: 32, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3085, file: !3017, line: 117, baseType: !7, size: 32, offset: 96)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2321, file: !1197, line: 1208, baseType: !2870, size: 448, offset: 17664)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2321, file: !1197, line: 1215, baseType: !132, size: 64, offset: 18112)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2321, file: !1197, line: 1217, baseType: !132, size: 64, offset: 18176)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2321, file: !1197, line: 1219, baseType: !132, size: 64, offset: 18240)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2321, file: !1197, line: 1223, baseType: !3095, size: 64, offset: 18304)
!3095 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3096, line: 99, baseType: !3097)
!3096 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3096, line: 99, size: 64, elements: !3098)
!3098 = !{!3099}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3097, file: !3096, line: 99, baseType: !2551, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2321, file: !1197, line: 1225, baseType: !98, size: 32, offset: 18368)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2321, file: !1197, line: 1226, baseType: !199, size: 32, offset: 18400)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2321, file: !1197, line: 1227, baseType: !199, size: 32, offset: 18432)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2321, file: !1197, line: 1231, baseType: !3104, size: 64, offset: 18496)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1197, line: 1231, flags: DIFlagFwdDecl)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2321, file: !1197, line: 1233, baseType: !157, size: 128, offset: 18560)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2321, file: !1197, line: 1240, baseType: !3108, size: 64, offset: 18688)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1197, line: 62, flags: DIFlagFwdDecl)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2321, file: !1197, line: 1242, baseType: !3111, size: 64, offset: 18752)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1197, line: 1242, flags: DIFlagFwdDecl)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2321, file: !1197, line: 1244, baseType: !157, size: 128, offset: 18816)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2321, file: !1197, line: 1245, baseType: !3115, size: 64, offset: 18944)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1197, line: 51, flags: DIFlagFwdDecl)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2321, file: !1197, line: 1246, baseType: !541, size: 256, offset: 19008)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2321, file: !1197, line: 1247, baseType: !7, size: 32, offset: 19264)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2321, file: !1197, line: 1250, baseType: !3120, size: 64, offset: 19328)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1197, line: 57, flags: DIFlagFwdDecl)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2321, file: !1197, line: 1251, baseType: !541, size: 256, offset: 19392)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2321, file: !1197, line: 1252, baseType: !157, size: 128, offset: 19648)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2321, file: !1197, line: 1259, baseType: !1156, size: 64, offset: 19776)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2321, file: !1197, line: 1260, baseType: !686, size: 16, offset: 19840)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2321, file: !1197, line: 1261, baseType: !686, size: 16, offset: 19856)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2321, file: !1197, line: 1314, baseType: !3128, size: 64, offset: 19904)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3130, line: 62, size: 256, align: 256, elements: !3131)
!3130 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3137, !3138}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3129, file: !3130, line: 75, baseType: !128, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3129, file: !3130, line: 90, baseType: !128, size: 32, offset: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3129, file: !3130, line: 112, baseType: !133, size: 64, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3129, file: !3130, line: 132, baseType: !128, size: 32, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3129, file: !3130, line: 140, baseType: !128, size: 32, offset: 160)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3129, file: !3130, line: 149, baseType: !128, size: 32, offset: 192)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3129, file: !3130, line: 154, baseType: !3139, offset: 224)
!3139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, elements: !616)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2321, file: !1197, line: 1315, baseType: !126, size: 32, offset: 19968)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2321, file: !1197, line: 1316, baseType: !126, size: 32, offset: 20000)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2321, file: !1197, line: 1321, baseType: !81, size: 64, offset: 20032)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2321, file: !1197, line: 1325, baseType: !199, size: 32, offset: 20096)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2321, file: !1197, line: 1326, baseType: !199, size: 32, offset: 20128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2321, file: !1197, line: 1327, baseType: !199, size: 32, offset: 20160)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2321, file: !1197, line: 1328, baseType: !199, size: 32, offset: 20192)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2321, file: !1197, line: 1329, baseType: !502, size: 128, align: 64, offset: 20224)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2321, file: !1197, line: 1332, baseType: !3149, size: 128, offset: 20352)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3150, line: 51, size: 128, elements: !3151)
!3150 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3151 = !{!3152, !3157, !3158}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3149, file: !3150, line: 60, baseType: !3153, size: 64)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3154, line: 7, size: 64, elements: !3155)
!3154 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3155 = !{!3156}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3153, file: !3154, line: 12, baseType: !2548, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3149, file: !3150, line: 63, baseType: !717, size: 8, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3149, file: !3150, line: 70, baseType: !717, size: 8, offset: 72)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2321, file: !1197, line: 1335, baseType: !1195, size: 64, offset: 20480)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2321, file: !1197, line: 1337, baseType: !3161, size: 128, offset: 20544)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3150, line: 39, size: 128, elements: !3162)
!3162 = !{!3163, !3164, !3165}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3161, file: !3150, line: 40, baseType: !447, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3161, file: !3150, line: 42, baseType: !128, size: 32, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3161, file: !3150, line: 43, baseType: !128, size: 32, offset: 96)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2321, file: !1197, line: 1340, baseType: !3167, size: 64, offset: 20672)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1197, line: 69, flags: DIFlagFwdDecl)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2321, file: !1197, line: 1351, baseType: !199, size: 32, offset: 20736)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2321, file: !1197, line: 1352, baseType: !199, size: 32, offset: 20768)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2321, file: !1197, line: 1354, baseType: !81, size: 64, offset: 20800)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2321, file: !1197, line: 1364, baseType: !132, size: 64, offset: 20864)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2321, file: !1197, line: 1365, baseType: !132, size: 64, offset: 20928)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2321, file: !1197, line: 1412, baseType: !81, size: 64, offset: 20992)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2321, file: !1197, line: 1453, baseType: !3176, size: 64, offset: 21056)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1197, line: 1453, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2321, file: !1197, line: 1457, baseType: !3179, size: 64, offset: 21120)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !3181)
!3181 = !{!3182, !3183, !3202, !3205, !3206, !3239, !3249}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3180, file: !57, line: 62, baseType: !56, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, scope: !3180, file: !57, line: 64, baseType: !3184, size: 192, offset: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3180, file: !57, line: 64, size: 192, elements: !3185)
!3185 = !{!3186, !3197}
!3186 = !DIDerivedType(tag: DW_TAG_member, scope: !3184, file: !57, line: 65, baseType: !3187, size: 192)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3184, file: !57, line: 65, size: 192, elements: !3188)
!3188 = !{!3189, !3196}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3187, file: !57, line: 66, baseType: !3190, size: 128)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3191, line: 50, size: 128, elements: !3192)
!3191 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3192 = !{!3193, !3194, !3195}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3190, file: !3191, line: 52, baseType: !81, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3190, file: !3191, line: 54, baseType: !7, size: 32, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3190, file: !3191, line: 55, baseType: !7, size: 32, offset: 96)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3187, file: !57, line: 67, baseType: !81, size: 64, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, scope: !3184, file: !57, line: 70, baseType: !3198, size: 192)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3184, file: !57, line: 70, size: 192, elements: !3199)
!3199 = !{!3200, !3201}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3198, file: !57, line: 71, baseType: !502, size: 128, align: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3198, file: !57, line: 72, baseType: !81, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3180, file: !57, line: 76, baseType: !3203, size: 64, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3180, file: !57, line: 77, baseType: !81, size: 64, offset: 320)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3180, file: !57, line: 79, baseType: !3207, size: 64, offset: 384)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3191, line: 25, size: 256, elements: !3209)
!3209 = !{!3210, !3216, !3220}
!3210 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !3191, line: 26, baseType: !3211, size: 128)
!3211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3208, file: !3191, line: 26, size: 128, elements: !3212)
!3212 = !{!3213, !3215}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3211, file: !3191, line: 27, baseType: !3214, size: 128)
!3214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 128, elements: !2744)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3211, file: !3191, line: 28, baseType: !3214, size: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3208, file: !3191, line: 31, baseType: !3217, size: 64, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3219)
!3219 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3191, line: 23, flags: DIFlagFwdDecl)
!3220 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !3191, line: 33, baseType: !3221, size: 64, offset: 192)
!3221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3208, file: !3191, line: 33, size: 64, elements: !3222)
!3222 = !{!3223, !3229, !3234}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3221, file: !3191, line: 38, baseType: !3224, size: 64)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3221, file: !3191, line: 34, size: 64, elements: !3225)
!3225 = !{!3226, !3227, !3228}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3224, file: !3191, line: 35, baseType: !658, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3224, file: !3191, line: 36, baseType: !275, size: 8, offset: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3224, file: !3191, line: 37, baseType: !275, size: 8, offset: 40)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3221, file: !3191, line: 42, baseType: !3230, size: 16)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3221, file: !3191, line: 39, size: 16, elements: !3231)
!3231 = !{!3232, !3233}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3230, file: !3191, line: 40, baseType: !275, size: 8)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3230, file: !3191, line: 41, baseType: !275, size: 8, offset: 8)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3221, file: !3191, line: 46, baseType: !3235, size: 16)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3221, file: !3191, line: 43, size: 16, elements: !3236)
!3236 = !{!3237, !3238}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3235, file: !3191, line: 44, baseType: !275, size: 8)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3235, file: !3191, line: 45, baseType: !275, size: 8, offset: 8)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3180, file: !57, line: 81, baseType: !3240, size: 64, offset: 448)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !3242)
!3242 = !{!3243, !3244, !3245, !3246, !3247, !3248}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3241, file: !57, line: 86, baseType: !3203, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3241, file: !57, line: 87, baseType: !81, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3241, file: !57, line: 88, baseType: !81, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3241, file: !57, line: 89, baseType: !81, size: 64, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3241, file: !57, line: 90, baseType: !717, size: 8, offset: 256)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3241, file: !57, line: 92, baseType: !3240, size: 64, offset: 320)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3180, file: !57, line: 82, baseType: !7, size: 32, offset: 512)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2321, file: !1197, line: 1463, baseType: !3251, offset: 21184)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1197, line: 739, elements: !971)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2321, file: !1197, line: 1470, baseType: !502, size: 128, align: 64, offset: 21184)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2321, file: !1197, line: 1471, baseType: !579, size: 32, offset: 21312)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2321, file: !1197, line: 1472, baseType: !199, size: 32, offset: 21344)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2321, file: !1197, line: 1474, baseType: !2320, size: 64, offset: 21376)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2321, file: !1197, line: 1475, baseType: !1842, size: 320, offset: 21440)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2321, file: !1197, line: 1478, baseType: !3258, size: 64, offset: 21760)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3260, line: 49, size: 512, elements: !3261)
!3260 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3261 = !{!3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3271}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3259, file: !3260, line: 50, baseType: !3258, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3259, file: !3260, line: 51, baseType: !215, size: 64, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3259, file: !3260, line: 52, baseType: !81, size: 64, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3259, file: !3260, line: 53, baseType: !81, size: 64, offset: 192)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3259, file: !3260, line: 54, baseType: !1371, size: 64, offset: 256)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3259, file: !3260, line: 56, baseType: !7, size: 32, offset: 320)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3259, file: !3260, line: 58, baseType: !7, size: 32, offset: 352)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3259, file: !3260, line: 59, baseType: !3270, size: 64, offset: 384)
!3270 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !80, line: 159, baseType: !132)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3259, file: !3260, line: 60, baseType: !1066, size: 64, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2321, file: !1197, line: 1482, baseType: !579, size: 32, offset: 21824)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2321, file: !1197, line: 1489, baseType: !215, size: 64, offset: 21888)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2321, file: !1197, line: 1504, baseType: !215, size: 64, offset: 21952)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2321, file: !1197, line: 1505, baseType: !133, size: 64, offset: 22016)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2321, file: !1197, line: 1506, baseType: !132, size: 64, offset: 22080)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2321, file: !1197, line: 1507, baseType: !133, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2321, file: !1197, line: 1508, baseType: !133, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2321, file: !1197, line: 1509, baseType: !133, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2321, file: !1197, line: 1510, baseType: !502, size: 128, align: 64, offset: 22208)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2321, file: !1197, line: 1511, baseType: !199, size: 32, offset: 22336)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2321, file: !1197, line: 1515, baseType: !3283, size: 64, offset: 22400)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !530, line: 56, size: 64, elements: !3284)
!3284 = !{!3285}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3283, file: !530, line: 57, baseType: !533, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2321, file: !1197, line: 1518, baseType: !3283, size: 64, offset: 22464)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2321, file: !1197, line: 1528, baseType: !502, size: 128, align: 64, offset: 22528)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2321, file: !1197, line: 1552, baseType: !3289, size: 35328, offset: 23040)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3290, line: 430, size: 35328, elements: !3291)
!3290 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3291 = !{!3292, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3321, !3322, !3323, !3324, !3325, !3326, !3329, !3330, !3331, !3332}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3289, file: !3290, line: 432, baseType: !3293, size: 192)
!3293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3294, size: 192, elements: !314)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3295, line: 16, size: 64, elements: !3296)
!3295 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3296 = !{!3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3294, file: !3295, line: 17, baseType: !282, size: 16)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3294, file: !3295, line: 18, baseType: !282, size: 16, offset: 16)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3294, file: !3295, line: 19, baseType: !282, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3294, file: !3295, line: 19, baseType: !282, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3294, file: !3295, line: 19, baseType: !282, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3294, file: !3295, line: 19, baseType: !282, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3294, file: !3295, line: 19, baseType: !282, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3294, file: !3295, line: 20, baseType: !282, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3294, file: !3295, line: 20, baseType: !282, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3294, file: !3295, line: 20, baseType: !282, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3294, file: !3295, line: 20, baseType: !282, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3294, file: !3295, line: 20, baseType: !282, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3294, file: !3295, line: 20, baseType: !282, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3289, file: !3290, line: 436, baseType: !81, size: 64, offset: 192)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3289, file: !3290, line: 440, baseType: !145, size: 16, offset: 256)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3289, file: !3290, line: 441, baseType: !145, size: 16, offset: 272)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3289, file: !3290, line: 442, baseType: !145, size: 16, offset: 288)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3289, file: !3290, line: 443, baseType: !145, size: 16, offset: 304)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3289, file: !3290, line: 447, baseType: !81, size: 64, offset: 320)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3289, file: !3290, line: 448, baseType: !81, size: 64, offset: 384)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3289, file: !3290, line: 459, baseType: !3318, size: 256, offset: 448)
!3318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3319, size: 256, elements: !597)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3290, line: 428, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3289, file: !3290, line: 461, baseType: !81, size: 64, offset: 704)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3289, file: !3290, line: 463, baseType: !81, size: 64, offset: 768)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3289, file: !3290, line: 465, baseType: !81, size: 64, offset: 832)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3289, file: !3290, line: 466, baseType: !81, size: 64, offset: 896)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3289, file: !3290, line: 467, baseType: !81, size: 64, offset: 960)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3289, file: !3290, line: 473, baseType: !3327, size: 64, offset: 1024)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3290, line: 10, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3289, file: !3290, line: 480, baseType: !81, size: 64, offset: 1088)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3289, file: !3290, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3289, file: !3290, line: 491, baseType: !126, size: 32, offset: 1184)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3289, file: !3290, line: 501, baseType: !3333, size: 33792, offset: 1536)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3334, line: 448, size: 33792, elements: !3335)
!3334 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3335 = !{!3336, !3337, !3338, !3502, !3503, !3509, !3510}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3333, file: !3334, line: 461, baseType: !7, size: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3333, file: !3334, line: 468, baseType: !81, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3333, file: !3334, line: 476, baseType: !3339, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3334, line: 356, size: 33280, align: 512, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3340, file: !3334, line: 358, baseType: !7, size: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3340, file: !3334, line: 361, baseType: !7, size: 32, offset: 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3340, file: !3334, line: 364, baseType: !132, size: 64, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3340, file: !3334, line: 367, baseType: !132, size: 64, offset: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3340, file: !3334, line: 370, baseType: !132, size: 64, offset: 192)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3340, file: !3334, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3340, file: !3334, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3340, file: !3334, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3340, file: !3334, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3340, file: !3334, line: 397, baseType: !3352, size: 32768, offset: 512)
!3352 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3334, line: 348, size: 32768, elements: !3353)
!3353 = !{!3354, !3369, !3408, !3485, !3498}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3352, file: !3334, line: 349, baseType: !3355, size: 896)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3334, line: 12, size: 896, elements: !3356)
!3356 = !{!3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3368}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3355, file: !3334, line: 13, baseType: !126, size: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3355, file: !3334, line: 14, baseType: !126, size: 32, offset: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3355, file: !3334, line: 15, baseType: !126, size: 32, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3355, file: !3334, line: 16, baseType: !126, size: 32, offset: 96)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3355, file: !3334, line: 17, baseType: !126, size: 32, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3355, file: !3334, line: 18, baseType: !126, size: 32, offset: 160)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3355, file: !3334, line: 19, baseType: !126, size: 32, offset: 192)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3355, file: !3334, line: 22, baseType: !3365, size: 640, offset: 224)
!3365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 640, elements: !3366)
!3366 = !{!3367}
!3367 = !DISubrange(count: 20)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3355, file: !3334, line: 25, baseType: !126, size: 32, offset: 864)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3352, file: !3334, line: 350, baseType: !3370, size: 4096, align: 128)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3334, line: 34, size: 4096, align: 128, elements: !3371)
!3371 = !{!3372, !3373, !3374, !3375, !3376, !3391, !3392, !3393, !3397, !3399, !3403}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3370, file: !3334, line: 35, baseType: !282, size: 16)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3370, file: !3334, line: 36, baseType: !282, size: 16, offset: 16)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3370, file: !3334, line: 37, baseType: !282, size: 16, offset: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3370, file: !3334, line: 38, baseType: !282, size: 16, offset: 48)
!3376 = !DIDerivedType(tag: DW_TAG_member, scope: !3370, file: !3334, line: 39, baseType: !3377, size: 128, offset: 64)
!3377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3370, file: !3334, line: 39, size: 128, elements: !3378)
!3378 = !{!3379, !3384}
!3379 = !DIDerivedType(tag: DW_TAG_member, scope: !3377, file: !3334, line: 40, baseType: !3380, size: 128)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3377, file: !3334, line: 40, size: 128, elements: !3381)
!3381 = !{!3382, !3383}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3380, file: !3334, line: 41, baseType: !132, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3380, file: !3334, line: 42, baseType: !132, size: 64, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, scope: !3377, file: !3334, line: 44, baseType: !3385, size: 128)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3377, file: !3334, line: 44, size: 128, elements: !3386)
!3386 = !{!3387, !3388, !3389, !3390}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3385, file: !3334, line: 45, baseType: !126, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3385, file: !3334, line: 46, baseType: !126, size: 32, offset: 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3385, file: !3334, line: 47, baseType: !126, size: 32, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3385, file: !3334, line: 48, baseType: !126, size: 32, offset: 96)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3370, file: !3334, line: 51, baseType: !126, size: 32, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3370, file: !3334, line: 52, baseType: !126, size: 32, offset: 224)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3370, file: !3334, line: 55, baseType: !3394, size: 1024, offset: 256)
!3394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 1024, elements: !3395)
!3395 = !{!3396}
!3396 = !DISubrange(count: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3370, file: !3334, line: 58, baseType: !3398, size: 2048, offset: 1280)
!3398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 2048, elements: !318)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3370, file: !3334, line: 60, baseType: !3400, size: 384, offset: 3328)
!3400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 384, elements: !3401)
!3401 = !{!3402}
!3402 = !DISubrange(count: 12)
!3403 = !DIDerivedType(tag: DW_TAG_member, scope: !3370, file: !3334, line: 62, baseType: !3404, size: 384, offset: 3712)
!3404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3370, file: !3334, line: 62, size: 384, elements: !3405)
!3405 = !{!3406, !3407}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3404, file: !3334, line: 63, baseType: !3400, size: 384)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3404, file: !3334, line: 64, baseType: !3400, size: 384)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3352, file: !3334, line: 351, baseType: !3409, size: 1088)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3334, line: 79, size: 1088, elements: !3410)
!3410 = !{!3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3484}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3409, file: !3334, line: 80, baseType: !126, size: 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3409, file: !3334, line: 81, baseType: !126, size: 32, offset: 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3409, file: !3334, line: 82, baseType: !126, size: 32, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3409, file: !3334, line: 83, baseType: !126, size: 32, offset: 96)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3409, file: !3334, line: 84, baseType: !126, size: 32, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3409, file: !3334, line: 85, baseType: !126, size: 32, offset: 160)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3409, file: !3334, line: 86, baseType: !126, size: 32, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3409, file: !3334, line: 88, baseType: !3365, size: 640, offset: 224)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3409, file: !3334, line: 89, baseType: !275, size: 8, offset: 864)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3409, file: !3334, line: 90, baseType: !275, size: 8, offset: 872)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3409, file: !3334, line: 91, baseType: !275, size: 8, offset: 880)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3409, file: !3334, line: 92, baseType: !275, size: 8, offset: 888)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3409, file: !3334, line: 93, baseType: !275, size: 8, offset: 896)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3409, file: !3334, line: 94, baseType: !275, size: 8, offset: 904)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3409, file: !3334, line: 95, baseType: !3426, size: 64, offset: 960)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3428, line: 11, size: 128, elements: !3429)
!3428 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3429 = !{!3430, !3431}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3427, file: !3428, line: 12, baseType: !348, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3427, file: !3428, line: 13, baseType: !3432, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3434, line: 103, size: 1344, elements: !3435)
!3434 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3464, !3465, !3466}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3433, file: !3434, line: 109, baseType: !81, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3433, file: !3434, line: 110, baseType: !81, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3433, file: !3434, line: 111, baseType: !81, size: 64, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3433, file: !3434, line: 112, baseType: !81, size: 64, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3433, file: !3434, line: 113, baseType: !81, size: 64, offset: 256)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3433, file: !3434, line: 114, baseType: !81, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3433, file: !3434, line: 117, baseType: !81, size: 64, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3433, file: !3434, line: 118, baseType: !81, size: 64, offset: 448)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3433, file: !3434, line: 119, baseType: !81, size: 64, offset: 512)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3433, file: !3434, line: 120, baseType: !81, size: 64, offset: 576)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3433, file: !3434, line: 121, baseType: !81, size: 64, offset: 640)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3433, file: !3434, line: 122, baseType: !81, size: 64, offset: 704)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3433, file: !3434, line: 123, baseType: !81, size: 64, offset: 768)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3433, file: !3434, line: 124, baseType: !81, size: 64, offset: 832)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3433, file: !3434, line: 125, baseType: !81, size: 64, offset: 896)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3433, file: !3434, line: 139, baseType: !81, size: 64, offset: 960)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3433, file: !3434, line: 142, baseType: !81, size: 64, offset: 1024)
!3453 = !DIDerivedType(tag: DW_TAG_member, scope: !3433, file: !3434, line: 144, baseType: !3454, size: 64, offset: 1088)
!3454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3433, file: !3434, line: 144, size: 64, elements: !3455)
!3455 = !{!3456, !3457, !3458}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3454, file: !3434, line: 146, baseType: !282, size: 16)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3454, file: !3434, line: 148, baseType: !132, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3454, file: !3434, line: 150, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3434, line: 59, size: 64, elements: !3460)
!3460 = !{!3461, !3462, !3463}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3459, file: !3434, line: 61, baseType: !132, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3459, file: !3434, line: 63, baseType: !132, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3459, file: !3434, line: 65, baseType: !132, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3433, file: !3434, line: 153, baseType: !81, size: 64, offset: 1152)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3433, file: !3434, line: 154, baseType: !81, size: 64, offset: 1216)
!3466 = !DIDerivedType(tag: DW_TAG_member, scope: !3433, file: !3434, line: 156, baseType: !3467, size: 64, offset: 1280)
!3467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3433, file: !3434, line: 156, size: 64, elements: !3468)
!3468 = !{!3469, !3470, !3471}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3467, file: !3434, line: 158, baseType: !282, size: 16)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3467, file: !3434, line: 160, baseType: !132, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3467, file: !3434, line: 162, baseType: !3472, size: 64)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3434, line: 69, size: 64, elements: !3473)
!3473 = !{!3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3472, file: !3434, line: 71, baseType: !132, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3472, file: !3434, line: 73, baseType: !132, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3472, file: !3434, line: 75, baseType: !132, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3472, file: !3434, line: 77, baseType: !132, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3472, file: !3434, line: 80, baseType: !132, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3472, file: !3434, line: 83, baseType: !132, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3472, file: !3434, line: 86, baseType: !132, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3472, file: !3434, line: 88, baseType: !132, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3472, file: !3434, line: 93, baseType: !132, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3472, file: !3434, line: 100, baseType: !132, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3409, file: !3334, line: 96, baseType: !126, size: 32, offset: 1024)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3352, file: !3334, line: 352, baseType: !3486, size: 4608, align: 512)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3334, line: 333, size: 4608, align: 512, elements: !3487)
!3487 = !{!3488, !3489, !3496}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3486, file: !3334, line: 334, baseType: !3370, size: 4096, align: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3486, file: !3334, line: 335, baseType: !3490, size: 512, offset: 4096)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3334, line: 312, size: 512, elements: !3491)
!3491 = !{!3492, !3493, !3494}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3490, file: !3334, line: 313, baseType: !132, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3490, file: !3334, line: 314, baseType: !132, size: 64, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3490, file: !3334, line: 315, baseType: !3495, size: 384, offset: 128)
!3495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 384, elements: !704)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3486, file: !3334, line: 336, baseType: !3497, offset: 4608)
!3497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, elements: !616)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3352, file: !3334, line: 353, baseType: !3499, size: 32768)
!3499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 32768, elements: !3500)
!3500 = !{!3501}
!3501 = !DISubrange(count: 4096)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3333, file: !3334, line: 484, baseType: !3339, size: 64, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3333, file: !3334, line: 491, baseType: !3504, size: 128, offset: 256)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3334, line: 404, size: 128, elements: !3505)
!3505 = !{!3506, !3507, !3508}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3504, file: !3334, line: 424, baseType: !132, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3504, file: !3334, line: 432, baseType: !7, size: 32, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3504, file: !3334, line: 440, baseType: !7, size: 32, offset: 96)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3333, file: !3334, line: 498, baseType: !3504, size: 128, offset: 384)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3333, file: !3334, line: 508, baseType: !3340, size: 33280, align: 512, offset: 512)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2303, file: !2304, line: 16, baseType: !601, size: 192, offset: 512)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2303, file: !2304, line: 17, baseType: !267, size: 32, offset: 704)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !178, file: !35, line: 1240, baseType: !215, size: 64, offset: 6912)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !178, file: !35, line: 1243, baseType: !126, size: 32, offset: 6976)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !178, file: !35, line: 1245, baseType: !674, size: 64, offset: 7040)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !178, file: !35, line: 1246, baseType: !674, size: 64, offset: 7104)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !178, file: !35, line: 1248, baseType: !128, size: 32, offset: 7168)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !178, file: !35, line: 1249, baseType: !3519, size: 64, offset: 7232)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !35, line: 634, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !178, file: !35, line: 1252, baseType: !3522, size: 256, offset: 7296)
!3522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 256, elements: !3395)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !178, file: !35, line: 1253, baseType: !3524, size: 128, offset: 7552)
!3524 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3525, line: 21, baseType: !3526)
!3525 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3525, line: 19, size: 128, elements: !3527)
!3527 = !{!3528}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3526, file: !3525, line: 20, baseType: !3529, size: 128)
!3529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 128, elements: !2744)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !178, file: !35, line: 1255, baseType: !7, size: 32, offset: 7680)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !178, file: !35, line: 1261, baseType: !541, size: 256, offset: 7744)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !178, file: !35, line: 1267, baseType: !195, size: 64, offset: 8000)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !178, file: !35, line: 1269, baseType: !3534, size: 64, offset: 8064)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3536)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !94, line: 128, size: 1024, align: 512, elements: !3537)
!3537 = !{!3538, !3542, !3543, !3550, !3556, !3560, !3564, !3568, !3569, !3573, !3577, !3582, !3586}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3536, file: !94, line: 129, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!199, !92, !7}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3536, file: !94, line: 130, baseType: !3539, size: 64, offset: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3536, file: !94, line: 131, baseType: !3544, size: 64, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!199, !3547, !3549}
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3536, file: !94, line: 132, baseType: !3551, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!199, !3547, !7, !195, !3554}
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3536, file: !94, line: 134, baseType: !3557, size: 64, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!199, !3547}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3536, file: !94, line: 135, baseType: !3561, size: 64, offset: 320)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!199, !92}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3536, file: !94, line: 136, baseType: !3565, size: 64, offset: 384)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !92}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3536, file: !94, line: 137, baseType: !3565, size: 64, offset: 448)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3536, file: !94, line: 138, baseType: !3570, size: 64, offset: 512)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{null, !92, !140}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3536, file: !94, line: 139, baseType: !3574, size: 64, offset: 576)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!313, !92, !313, !199}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3536, file: !94, line: 140, baseType: !3578, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!833, !3581}
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3536, file: !94, line: 141, baseType: !3583, size: 64, offset: 704)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!199, !2143, !717}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3536, file: !94, line: 142, baseType: !3587, size: 64, offset: 768)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!92, !92, !3590}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !178, file: !35, line: 1271, baseType: !3593, size: 448, offset: 8128)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2083, line: 63, size: 448, elements: !3594)
!3594 = !{!3595, !3600, !3601, !3602, !3603, !3604, !3605}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3593, file: !2083, line: 64, baseType: !3596, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!81, !3599, !2081}
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3593, file: !2083, line: 66, baseType: !3596, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3593, file: !2083, line: 69, baseType: !348, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3593, file: !2083, line: 70, baseType: !199, size: 32, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3593, file: !2083, line: 71, baseType: !7, size: 32, offset: 224)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3593, file: !2083, line: 74, baseType: !157, size: 128, offset: 256)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3593, file: !2083, line: 85, baseType: !3606, size: 64, offset: 384)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !178, file: !35, line: 1274, baseType: !402, size: 64, offset: 8576)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !178, file: !35, line: 1280, baseType: !402, size: 64, offset: 8640)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !178, file: !35, line: 1283, baseType: !199, size: 32, offset: 8704)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !178, file: !35, line: 1286, baseType: !1284, size: 32, offset: 8736)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !178, file: !35, line: 1289, baseType: !1904, size: 64, offset: 8768)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !178, file: !35, line: 1290, baseType: !588, size: 64, offset: 8832)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !178, file: !35, line: 1297, baseType: !800, size: 64, offset: 8896)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !178, file: !35, line: 1304, baseType: !3615, size: 64, offset: 8960)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3616, line: 49, size: 64, elements: !3617)
!3616 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3617 = !{!3618}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3615, file: !3616, line: 50, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3616, line: 41, size: 512, align: 512, elements: !3621)
!3621 = !{!3622, !3623, !3628}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3620, file: !3616, line: 43, baseType: !247, size: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3620, file: !3616, line: 45, baseType: !3624, size: 192, offset: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3616, line: 29, size: 192, elements: !3625)
!3625 = !{!3626, !3627}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3624, file: !3616, line: 30, baseType: !157, size: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3624, file: !3616, line: 32, baseType: !348, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3620, file: !3616, line: 46, baseType: !348, size: 64, offset: 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !178, file: !35, line: 1305, baseType: !3615, size: 64, offset: 9024)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !178, file: !35, line: 1306, baseType: !502, size: 128, align: 64, offset: 9088)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !178, file: !35, line: 1307, baseType: !1105, size: 256, offset: 9216)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !178, file: !35, line: 1309, baseType: !541, size: 256, offset: 9472)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !178, file: !35, line: 1314, baseType: !199, size: 32, offset: 9728)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !178, file: !35, line: 1317, baseType: !247, size: 32, align: 512, offset: 10240)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !178, file: !35, line: 1318, baseType: !157, size: 128, offset: 10304)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !178, file: !35, line: 1320, baseType: !247, size: 32, offset: 10432)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !178, file: !35, line: 1321, baseType: !157, size: 128, offset: 10496)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !141, file: !35, line: 656, baseType: !386, size: 64, offset: 512)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !141, file: !35, line: 659, baseType: !215, size: 64, offset: 576)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !141, file: !35, line: 663, baseType: !81, size: 64, offset: 640)
!3641 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !35, line: 671, baseType: !3642, size: 32, offset: 704)
!3642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !141, file: !35, line: 671, size: 32, elements: !3643)
!3643 = !{!3644, !3646}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3642, file: !35, line: 672, baseType: !3645, size: 32)
!3645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3642, file: !35, line: 673, baseType: !7, size: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !141, file: !35, line: 675, baseType: !182, size: 32, offset: 736)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !141, file: !35, line: 676, baseType: !187, size: 64, offset: 768)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !141, file: !35, line: 677, baseType: !3650, size: 128, offset: 832)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !675, line: 13, size: 128, elements: !3651)
!3651 = !{!3652, !3653}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3650, file: !675, line: 14, baseType: !674, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3650, file: !675, line: 15, baseType: !348, size: 64, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !141, file: !35, line: 678, baseType: !3650, size: 128, offset: 960)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !141, file: !35, line: 679, baseType: !3650, size: 128, offset: 1088)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !141, file: !35, line: 680, baseType: !247, size: 32, offset: 1216)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !141, file: !35, line: 681, baseType: !145, size: 16, offset: 1248)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !141, file: !35, line: 682, baseType: !275, size: 8, offset: 1264)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !141, file: !35, line: 683, baseType: !275, size: 8, offset: 1272)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !141, file: !35, line: 684, baseType: !2216, size: 64, offset: 1280)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !141, file: !35, line: 691, baseType: !81, size: 64, offset: 1344)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !141, file: !35, line: 692, baseType: !398, size: 320, offset: 1408)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !141, file: !35, line: 694, baseType: !81, size: 64, offset: 1728)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !141, file: !35, line: 695, baseType: !81, size: 64, offset: 1792)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !141, file: !35, line: 697, baseType: !592, size: 128, offset: 1856)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !141, file: !35, line: 698, baseType: !157, size: 128, offset: 1984)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !141, file: !35, line: 707, baseType: !157, size: 128, offset: 2112)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !141, file: !35, line: 708, baseType: !157, size: 128, offset: 2240)
!3669 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !35, line: 709, baseType: !3670, size: 128, offset: 2368)
!3670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !141, file: !35, line: 709, size: 128, elements: !3671)
!3671 = !{!3672, !3673}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3670, file: !35, line: 710, baseType: !588, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3670, file: !35, line: 711, baseType: !502, size: 128, align: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !141, file: !35, line: 713, baseType: !404, size: 64, offset: 2496)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !141, file: !35, line: 714, baseType: !404, size: 64, offset: 2560)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !141, file: !35, line: 715, baseType: !267, size: 32, offset: 2624)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !141, file: !35, line: 716, baseType: !267, size: 32, offset: 2656)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !141, file: !35, line: 717, baseType: !267, size: 32, offset: 2688)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !141, file: !35, line: 719, baseType: !267, size: 32, offset: 2720)
!3680 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !35, line: 721, baseType: !3681, size: 64, offset: 2752)
!3681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !141, file: !35, line: 721, size: 64, elements: !3682)
!3682 = !{!3683, !3684}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3681, file: !35, line: 722, baseType: !845, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3681, file: !35, line: 723, baseType: !1972, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !141, file: !35, line: 725, baseType: !3686, size: 64, offset: 2816)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !35, line: 725, flags: DIFlagFwdDecl)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !141, file: !35, line: 726, baseType: !387, size: 1536, align: 64, offset: 2880)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !141, file: !35, line: 727, baseType: !157, size: 128, offset: 4416)
!3690 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !35, line: 728, baseType: !3691, size: 64, offset: 4544)
!3691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !141, file: !35, line: 728, size: 64, elements: !3692)
!3692 = !{!3693, !3694, !3705, !3706}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3691, file: !35, line: 729, baseType: !1195, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3691, file: !35, line: 730, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3697, line: 14, size: 832, elements: !3698)
!3697 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3698 = !{!3699, !3700, !3701, !3702, !3703, !3704}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3696, file: !3697, line: 15, baseType: !234, size: 512)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3696, file: !3697, line: 16, baseType: !221, size: 64, offset: 512)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3696, file: !3697, line: 17, baseType: !845, size: 64, offset: 576)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3696, file: !3697, line: 18, baseType: !157, size: 128, offset: 640)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3696, file: !3697, line: 19, baseType: !182, size: 32, offset: 768)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3696, file: !3697, line: 20, baseType: !7, size: 32, offset: 800)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3691, file: !35, line: 731, baseType: !313, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3691, file: !35, line: 732, baseType: !7, size: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !141, file: !35, line: 735, baseType: !128, size: 32, offset: 4608)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !141, file: !35, line: 738, baseType: !128, size: 32, offset: 4640)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !141, file: !35, line: 739, baseType: !3519, size: 64, offset: 4672)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !141, file: !35, line: 750, baseType: !215, size: 64, offset: 4736)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !93, file: !94, line: 91, baseType: !3712, size: 256, offset: 448)
!3712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 256, elements: !3395)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !93, file: !94, line: 94, baseType: !3714, size: 64, offset: 704)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3715, line: 25, size: 64, elements: !3716)
!3715 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3716 = !{!3717}
!3717 = !DIDerivedType(tag: DW_TAG_member, scope: !3714, file: !3715, line: 26, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3714, file: !3715, line: 26, size: 64, elements: !3719)
!3719 = !{!3720, !3721}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3718, file: !3715, line: 28, baseType: !133, size: 64, align: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, scope: !3718, file: !3715, line: 30, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3718, file: !3715, line: 30, size: 64, elements: !3723)
!3723 = !{!3724, !3725}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3722, file: !3715, line: 31, baseType: !247, size: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3722, file: !3715, line: 32, baseType: !199, size: 32, offset: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !93, file: !94, line: 95, baseType: !3534, size: 64, offset: 768)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !93, file: !94, line: 96, baseType: !177, size: 64, offset: 832)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !93, file: !94, line: 97, baseType: !81, size: 64, offset: 896)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !93, file: !94, line: 98, baseType: !215, size: 64, offset: 960)
!3730 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !94, line: 100, baseType: !3731, size: 128, offset: 1024)
!3731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !94, line: 100, size: 128, elements: !3732)
!3732 = !{!3733, !3734}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3731, file: !94, line: 101, baseType: !157, size: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3731, file: !94, line: 102, baseType: !926, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !93, file: !94, line: 104, baseType: !157, size: 128, offset: 1152)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !93, file: !94, line: 105, baseType: !157, size: 128, offset: 1280)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !93, file: !94, line: 113, baseType: !3738, size: 128, offset: 1408)
!3738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !94, line: 109, size: 128, elements: !3739)
!3739 = !{!3740, !3741, !3742}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3738, file: !94, line: 110, baseType: !592, size: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3738, file: !94, line: 111, baseType: !108, size: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3738, file: !94, line: 112, baseType: !502, size: 128, align: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !86, file: !35, line: 1968, baseType: !3744, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!195, !92, !140, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3749, line: 10, size: 128, elements: !3750)
!3749 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3750 = !{!3751, !3752}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3748, file: !3749, line: 11, baseType: !1474, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3748, file: !3749, line: 12, baseType: !215, size: 64, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !86, file: !35, line: 1969, baseType: !3754, size: 64, offset: 128)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!199, !840, !140, !199}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !86, file: !35, line: 1970, baseType: !3758, size: 64, offset: 192)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!171, !140, !199, !717}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !86, file: !35, line: 1972, baseType: !3762, size: 64, offset: 256)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!199, !92, !313, !199}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !86, file: !35, line: 1974, baseType: !3766, size: 64, offset: 320)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!199, !840, !140, !92, !144, !717}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !86, file: !35, line: 1976, baseType: !3770, size: 64, offset: 384)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!199, !92, !140, !92}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !86, file: !35, line: 1977, baseType: !3774, size: 64, offset: 448)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!199, !140, !92}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !86, file: !35, line: 1978, baseType: !3778, size: 64, offset: 512)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!199, !840, !140, !92, !195}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !86, file: !35, line: 1980, baseType: !3782, size: 64, offset: 576)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!199, !840, !140, !92, !144}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !86, file: !35, line: 1982, baseType: !3774, size: 64, offset: 640)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !86, file: !35, line: 1983, baseType: !3787, size: 64, offset: 704)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!199, !840, !140, !92, !144, !182}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !86, file: !35, line: 1985, baseType: !3791, size: 64, offset: 768)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!199, !840, !140, !92, !140, !92, !7}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !86, file: !35, line: 1987, baseType: !3795, size: 64, offset: 832)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!199, !840, !92, !3798}
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !35, line: 226, size: 640, elements: !3800)
!3800 = !{!3801, !3802, !3803, !3813, !3822, !3823, !3824, !3825, !3826}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3799, file: !35, line: 227, baseType: !7, size: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3799, file: !35, line: 228, baseType: !144, size: 16, offset: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, scope: !3799, file: !35, line: 241, baseType: !3804, size: 32, offset: 64)
!3804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3799, file: !35, line: 241, size: 32, elements: !3805)
!3805 = !{!3806, !3807}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3804, file: !35, line: 242, baseType: !148, size: 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3804, file: !35, line: 243, baseType: !3808, size: 32)
!3808 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3809, line: 16, baseType: !3810)
!3809 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3809, line: 14, size: 32, elements: !3811)
!3811 = !{!3812}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3810, file: !3809, line: 15, baseType: !153, size: 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, scope: !3799, file: !35, line: 245, baseType: !3814, size: 32, offset: 96)
!3814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3799, file: !35, line: 245, size: 32, elements: !3815)
!3815 = !{!3816, !3817}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3814, file: !35, line: 246, baseType: !163, size: 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3814, file: !35, line: 247, baseType: !3818, size: 32)
!3818 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3809, line: 20, baseType: !3819)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3809, line: 18, size: 32, elements: !3820)
!3820 = !{!3821}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3819, file: !3809, line: 19, baseType: !167, size: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3799, file: !35, line: 249, baseType: !187, size: 64, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3799, file: !35, line: 250, baseType: !3650, size: 128, offset: 192)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3799, file: !35, line: 251, baseType: !3650, size: 128, offset: 320)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3799, file: !35, line: 252, baseType: !3650, size: 128, offset: 448)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3799, file: !35, line: 259, baseType: !522, size: 64, offset: 576)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !86, file: !35, line: 1988, baseType: !3828, size: 64, offset: 896)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!199, !840, !2143, !3831, !126, !7}
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3833, line: 22, size: 1280, elements: !3834)
!3833 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3834 = !{!3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3832, file: !3833, line: 23, baseType: !126, size: 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3832, file: !3833, line: 24, baseType: !144, size: 16, offset: 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3832, file: !3833, line: 25, baseType: !7, size: 32, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3832, file: !3833, line: 26, baseType: !682, size: 32, offset: 96)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3832, file: !3833, line: 27, baseType: !132, size: 64, offset: 128)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3832, file: !3833, line: 28, baseType: !132, size: 64, offset: 192)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3832, file: !3833, line: 41, baseType: !132, size: 64, offset: 256)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3832, file: !3833, line: 42, baseType: !182, size: 32, offset: 320)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3832, file: !3833, line: 43, baseType: !182, size: 32, offset: 352)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3832, file: !3833, line: 44, baseType: !148, size: 32, offset: 384)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3832, file: !3833, line: 45, baseType: !163, size: 32, offset: 416)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3832, file: !3833, line: 46, baseType: !187, size: 64, offset: 448)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3832, file: !3833, line: 47, baseType: !3650, size: 128, offset: 512)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3832, file: !3833, line: 48, baseType: !3650, size: 128, offset: 640)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3832, file: !3833, line: 49, baseType: !3650, size: 128, offset: 768)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3832, file: !3833, line: 50, baseType: !3650, size: 128, offset: 896)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3832, file: !3833, line: 51, baseType: !132, size: 64, offset: 1024)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3832, file: !3833, line: 52, baseType: !132, size: 64, offset: 1088)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3832, file: !3833, line: 53, baseType: !126, size: 32, offset: 1152)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3832, file: !3833, line: 54, baseType: !126, size: 32, offset: 1184)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3832, file: !3833, line: 55, baseType: !132, size: 64, offset: 1216)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !86, file: !35, line: 1990, baseType: !3857, size: 64, offset: 960)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!345, !92, !313, !358}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !86, file: !35, line: 1991, baseType: !3861, size: 64, offset: 1024)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!199, !140, !3864, !132, !132}
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !35, line: 55, flags: DIFlagFwdDecl)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !86, file: !35, line: 1993, baseType: !3867, size: 64, offset: 1088)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!199, !140, !199}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !86, file: !35, line: 1994, baseType: !3871, size: 64, offset: 1152)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!199, !140, !92, !522, !7, !144}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !86, file: !35, line: 1997, baseType: !3875, size: 64, offset: 1216)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!199, !840, !140, !522, !144}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !86, file: !35, line: 1999, baseType: !3879, size: 64, offset: 1280)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!171, !840, !92, !199}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !86, file: !35, line: 2001, baseType: !3883, size: 64, offset: 1344)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!199, !840, !92, !171, !199}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !86, file: !35, line: 2003, baseType: !3887, size: 64, offset: 1408)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!199, !840, !92, !3890}
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !3892, line: 23, size: 224, elements: !3893)
!3892 = !DIFile(filename: "./include/linux/fileattr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef04ffa7ff47b4cb1fac59819035500d")
!3893 = !{!3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3891, file: !3892, line: 24, baseType: !126, size: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "fsx_xflags", scope: !3891, file: !3892, line: 26, baseType: !126, size: 32, offset: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "fsx_extsize", scope: !3891, file: !3892, line: 27, baseType: !126, size: 32, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "fsx_nextents", scope: !3891, file: !3892, line: 28, baseType: !126, size: 32, offset: 96)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "fsx_projid", scope: !3891, file: !3892, line: 29, baseType: !126, size: 32, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "fsx_cowextsize", scope: !3891, file: !3892, line: 30, baseType: !126, size: 32, offset: 160)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "flags_valid", scope: !3891, file: !3892, line: 32, baseType: !717, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "fsx_valid", scope: !3891, file: !3892, line: 33, baseType: !717, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !86, file: !35, line: 2005, baseType: !3903, size: 64, offset: 1472)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!199, !92, !3890}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !86, file: !35, line: 2006, baseType: !3907, size: 64, offset: 1536)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!3910, !140}
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !35, line: 3192, size: 192, elements: !3912)
!3912 = !{!3913, !3914}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3911, file: !35, line: 3193, baseType: !391, size: 128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3911, file: !35, line: 3194, baseType: !126, size: 32, offset: 128)
!3915 = !DIGlobalVariableExpression(var: !3916, expr: !DIExpression())
!3916 = distinct !DIGlobalVariable(scope: null, file: !69, line: 480, type: !3917, isLocal: true, isDefinition: true)
!3917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 168, elements: !3918)
!3918 = !{!3919}
!3919 = !DISubrange(count: 21)
!3920 = !{i32 7, !"Dwarf Version", i32 5}
!3921 = !{i32 2, !"Debug Info Version", i32 3}
!3922 = !{i32 1, !"wchar_size", i32 2}
!3923 = !{i32 8, !"cf-protection-branch", i32 1}
!3924 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3925 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3926 = !{i32 1, !"Code Model", i32 2}
!3927 = !{i32 1, !"override-stack-alignment", i32 8}
!3928 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3929 = distinct !DISubprogram(name: "efivarfs_get_inode", scope: !3, file: !3, line: 19, type: !3930, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3932)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!140, !177, !3590, !199, !182, !717}
!3932 = !{!3933, !3934, !3935, !3936, !3937, !3938}
!3933 = !DILocalVariable(name: "sb", arg: 1, scope: !3929, file: !3, line: 19, type: !177)
!3934 = !DILocalVariable(name: "dir", arg: 2, scope: !3929, file: !3, line: 20, type: !3590)
!3935 = !DILocalVariable(name: "mode", arg: 3, scope: !3929, file: !3, line: 20, type: !199)
!3936 = !DILocalVariable(name: "dev", arg: 4, scope: !3929, file: !3, line: 21, type: !182)
!3937 = !DILocalVariable(name: "is_removable", arg: 5, scope: !3929, file: !3, line: 21, type: !717)
!3938 = !DILocalVariable(name: "inode", scope: !3929, file: !3, line: 23, type: !140)
!3939 = !DILocation(line: 19, column: 54, scope: !3929)
!3940 = !DILocation(line: 20, column: 25, scope: !3929)
!3941 = !DILocation(line: 20, column: 34, scope: !3929)
!3942 = !DILocation(line: 21, column: 11, scope: !3929)
!3943 = !DILocation(line: 21, column: 21, scope: !3929)
!3944 = !DILocation(line: 23, column: 2, scope: !3929)
!3945 = !DILocation(line: 23, column: 16, scope: !3929)
!3946 = !DILocation(line: 23, column: 34, scope: !3929)
!3947 = !DILocation(line: 23, column: 24, scope: !3929)
!3948 = !DILocation(line: 25, column: 6, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3929, file: !3, line: 25, column: 6)
!3950 = !DILocation(line: 25, column: 6, scope: !3929)
!3951 = !DILocation(line: 26, column: 18, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3949, file: !3, line: 25, column: 13)
!3953 = !DILocation(line: 26, column: 3, scope: !3952)
!3954 = !DILocation(line: 26, column: 10, scope: !3952)
!3955 = !DILocation(line: 26, column: 16, scope: !3952)
!3956 = !DILocation(line: 27, column: 19, scope: !3952)
!3957 = !DILocation(line: 27, column: 3, scope: !3952)
!3958 = !DILocation(line: 27, column: 10, scope: !3952)
!3959 = !DILocation(line: 27, column: 17, scope: !3952)
!3960 = !DILocation(line: 28, column: 3, scope: !3952)
!3961 = !DILocation(line: 28, column: 10, scope: !3952)
!3962 = !DILocation(line: 28, column: 20, scope: !3952)
!3963 = !DILocation(line: 28, column: 27, scope: !3952)
!3964 = !DILocation(line: 28, column: 37, scope: !3952)
!3965 = !DILocation(line: 28, column: 61, scope: !3952)
!3966 = !DILocation(line: 28, column: 35, scope: !3952)
!3967 = !DILocation(line: 29, column: 20, scope: !3952)
!3968 = !{i8 0, i8 2}
!3969 = !DILocation(line: 29, column: 3, scope: !3952)
!3970 = !DILocation(line: 29, column: 10, scope: !3952)
!3971 = !DILocation(line: 29, column: 18, scope: !3952)
!3972 = !DILocation(line: 30, column: 11, scope: !3952)
!3973 = !DILocation(line: 30, column: 16, scope: !3952)
!3974 = !DILocation(line: 30, column: 3, scope: !3952)
!3975 = !DILocation(line: 32, column: 4, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 30, column: 26)
!3977 = !DILocation(line: 32, column: 11, scope: !3976)
!3978 = !DILocation(line: 32, column: 16, scope: !3976)
!3979 = !DILocation(line: 33, column: 4, scope: !3976)
!3980 = !DILocation(line: 33, column: 11, scope: !3976)
!3981 = !DILocation(line: 33, column: 17, scope: !3976)
!3982 = !DILocation(line: 34, column: 4, scope: !3976)
!3983 = !DILocation(line: 36, column: 4, scope: !3976)
!3984 = !DILocation(line: 36, column: 11, scope: !3976)
!3985 = !DILocation(line: 36, column: 16, scope: !3976)
!3986 = !DILocation(line: 37, column: 4, scope: !3976)
!3987 = !DILocation(line: 37, column: 11, scope: !3976)
!3988 = !DILocation(line: 37, column: 17, scope: !3976)
!3989 = !DILocation(line: 38, column: 14, scope: !3976)
!3990 = !DILocation(line: 38, column: 4, scope: !3976)
!3991 = !DILocation(line: 39, column: 4, scope: !3976)
!3992 = !DILocation(line: 41, column: 2, scope: !3952)
!3993 = !DILocation(line: 42, column: 9, scope: !3929)
!3994 = !DILocation(line: 43, column: 1, scope: !3929)
!3995 = !DILocation(line: 42, column: 2, scope: !3929)
!3996 = !DISubprogram(name: "new_inode", scope: !35, file: !35, line: 2932, type: !1969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3997 = !DISubprogram(name: "get_next_ino", scope: !35, file: !35, line: 2908, type: !3998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!7}
!4000 = !DISubprogram(name: "inode_set_ctime_current", scope: !35, file: !35, line: 1515, type: !4001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!3650, !140}
!4003 = !DISubprogram(name: "inc_nlink", scope: !35, file: !35, line: 2327, type: !1973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4004 = distinct !DISubprogram(name: "efivarfs_create", scope: !3, file: !3, line: 73, type: !3767, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4005)
!4005 = !{!4006, !4007, !4008, !4009, !4010, !4011, !4012, !4042, !4043, !4044, !4045, !4046}
!4006 = !DILocalVariable(name: "idmap", arg: 1, scope: !4004, file: !3, line: 73, type: !840)
!4007 = !DILocalVariable(name: "dir", arg: 2, scope: !4004, file: !3, line: 73, type: !140)
!4008 = !DILocalVariable(name: "dentry", arg: 3, scope: !4004, file: !3, line: 74, type: !92)
!4009 = !DILocalVariable(name: "mode", arg: 4, scope: !4004, file: !3, line: 74, type: !144)
!4010 = !DILocalVariable(name: "excl", arg: 5, scope: !4004, file: !3, line: 74, type: !717)
!4011 = !DILocalVariable(name: "inode", scope: !4004, file: !3, line: 76, type: !140)
!4012 = !DILocalVariable(name: "var", scope: !4004, file: !3, line: 77, type: !4013)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efivar_entry", file: !4015, line: 21, size: 17344, elements: !4016)
!4015 = !DIFile(filename: "fs/efivarfs/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd82167b09c718742058efff5d1b8f12")
!4016 = !{!4017, !4040, !4041}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !4014, file: !4015, line: 22, baseType: !4018, size: 16672)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_variable", file: !4015, line: 12, size: 16672, elements: !4019)
!4019 = !{!4020, !4026, !4032, !4033, !4037, !4039}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "VariableName", scope: !4018, file: !4015, line: 13, baseType: !4021, size: 8192)
!4021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4022, size: 8192, elements: !4024)
!4022 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !4023, line: 49, baseType: !282)
!4023 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!4024 = !{!4025}
!4025 = !DISubrange(count: 512)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "VendorGuid", scope: !4018, file: !4015, line: 14, baseType: !4027, size: 128, align: 32, offset: 8192)
!4027 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !4023, line: 74, baseType: !4028, align: 32)
!4028 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !3525, line: 17, baseType: !4029)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3525, line: 15, size: 128, elements: !4030)
!4030 = !{!4031}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4029, file: !3525, line: 16, baseType: !3529, size: 128)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "DataSize", scope: !4018, file: !4015, line: 15, baseType: !81, size: 64, offset: 8320)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !4018, file: !4015, line: 16, baseType: !4034, size: 8192, offset: 8384)
!4034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 8192, elements: !4035)
!4035 = !{!4036}
!4036 = !DISubrange(count: 1024)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "Status", scope: !4018, file: !4015, line: 17, baseType: !4038, size: 64, offset: 16576)
!4038 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !4023, line: 47, baseType: !81)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "Attributes", scope: !4018, file: !4015, line: 18, baseType: !128, size: 32, offset: 16640)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4014, file: !4015, line: 23, baseType: !157, size: 128, offset: 16704)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4014, file: !4015, line: 24, baseType: !234, size: 512, offset: 16832)
!4042 = !DILocalVariable(name: "namelen", scope: !4004, file: !3, line: 78, type: !199)
!4043 = !DILocalVariable(name: "i", scope: !4004, file: !3, line: 78, type: !199)
!4044 = !DILocalVariable(name: "err", scope: !4004, file: !3, line: 78, type: !199)
!4045 = !DILocalVariable(name: "is_removable", scope: !4004, file: !3, line: 79, type: !717)
!4046 = !DILabel(scope: !4004, name: "out", file: !3, line: 123)
!4047 = !DILocation(line: 73, column: 46, scope: !4004)
!4048 = !DILocation(line: 73, column: 67, scope: !4004)
!4049 = !DILocation(line: 74, column: 22, scope: !4004)
!4050 = !DILocation(line: 74, column: 38, scope: !4004)
!4051 = !DILocation(line: 74, column: 49, scope: !4004)
!4052 = !DILocation(line: 76, column: 2, scope: !4004)
!4053 = !DILocation(line: 76, column: 16, scope: !4004)
!4054 = !DILocation(line: 77, column: 2, scope: !4004)
!4055 = !DILocation(line: 77, column: 23, scope: !4004)
!4056 = !DILocation(line: 78, column: 2, scope: !4004)
!4057 = !DILocation(line: 78, column: 6, scope: !4004)
!4058 = !DILocation(line: 78, column: 15, scope: !4004)
!4059 = !DILocation(line: 78, column: 22, scope: !4004)
!4060 = !DILocation(line: 79, column: 2, scope: !4004)
!4061 = !DILocation(line: 79, column: 7, scope: !4004)
!4062 = !DILocation(line: 81, column: 27, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 81, column: 6)
!4064 = !DILocation(line: 81, column: 35, scope: !4063)
!4065 = !DILocation(line: 81, column: 42, scope: !4063)
!4066 = !DILocation(line: 81, column: 48, scope: !4063)
!4067 = !DILocation(line: 81, column: 56, scope: !4063)
!4068 = !DILocation(line: 81, column: 63, scope: !4063)
!4069 = !DILocation(line: 81, column: 7, scope: !4063)
!4070 = !DILocation(line: 81, column: 6, scope: !4004)
!4071 = !DILocation(line: 82, column: 3, scope: !4063)
!4072 = !DILocation(line: 84, column: 8, scope: !4004)
!4073 = !DILocation(line: 84, column: 6, scope: !4004)
!4074 = !DILocation(line: 85, column: 7, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 85, column: 6)
!4076 = !DILocation(line: 85, column: 6, scope: !4004)
!4077 = !DILocation(line: 86, column: 3, scope: !4075)
!4078 = !DILocation(line: 89, column: 12, scope: !4004)
!4079 = !DILocation(line: 89, column: 20, scope: !4004)
!4080 = !DILocation(line: 89, column: 27, scope: !4004)
!4081 = !DILocation(line: 89, column: 31, scope: !4004)
!4082 = !DILocation(line: 89, column: 55, scope: !4004)
!4083 = !DILocation(line: 89, column: 10, scope: !4004)
!4084 = !DILocation(line: 91, column: 19, scope: !4004)
!4085 = !DILocation(line: 91, column: 27, scope: !4004)
!4086 = !DILocation(line: 91, column: 34, scope: !4004)
!4087 = !DILocation(line: 91, column: 41, scope: !4004)
!4088 = !DILocation(line: 91, column: 39, scope: !4004)
!4089 = !DILocation(line: 91, column: 49, scope: !4004)
!4090 = !DILocation(line: 91, column: 55, scope: !4004)
!4091 = !DILocation(line: 91, column: 60, scope: !4004)
!4092 = !DILocation(line: 91, column: 64, scope: !4004)
!4093 = !DILocation(line: 91, column: 8, scope: !4004)
!4094 = !DILocation(line: 91, column: 6, scope: !4004)
!4095 = !DILocation(line: 92, column: 6, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 92, column: 6)
!4097 = !DILocation(line: 92, column: 6, scope: !4004)
!4098 = !DILocation(line: 93, column: 3, scope: !4096)
!4099 = !DILocation(line: 94, column: 18, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 94, column: 6)
!4101 = !DILocation(line: 94, column: 23, scope: !4100)
!4102 = !DILocation(line: 94, column: 27, scope: !4100)
!4103 = !DILocation(line: 94, column: 40, scope: !4100)
!4104 = !DILocation(line: 94, column: 6, scope: !4100)
!4105 = !DILocation(line: 94, column: 6, scope: !4004)
!4106 = !DILocation(line: 95, column: 7, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 94, column: 75)
!4108 = !DILocation(line: 96, column: 3, scope: !4107)
!4109 = !DILocation(line: 99, column: 35, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 99, column: 6)
!4111 = !DILocation(line: 99, column: 40, scope: !4110)
!4112 = !DILocation(line: 99, column: 44, scope: !4110)
!4113 = !DILocation(line: 100, column: 7, scope: !4110)
!4114 = !DILocation(line: 100, column: 15, scope: !4110)
!4115 = !DILocation(line: 100, column: 22, scope: !4110)
!4116 = !DILocation(line: 100, column: 28, scope: !4110)
!4117 = !DILocation(line: 99, column: 6, scope: !4110)
!4118 = !DILocation(line: 99, column: 6, scope: !4004)
!4119 = !DILocation(line: 101, column: 16, scope: !4110)
!4120 = !DILocation(line: 101, column: 3, scope: !4110)
!4121 = !DILocation(line: 103, column: 29, scope: !4004)
!4122 = !DILocation(line: 103, column: 34, scope: !4004)
!4123 = !DILocation(line: 103, column: 40, scope: !4004)
!4124 = !DILocation(line: 103, column: 45, scope: !4004)
!4125 = !DILocation(line: 103, column: 54, scope: !4004)
!4126 = !DILocation(line: 103, column: 10, scope: !4004)
!4127 = !DILocation(line: 103, column: 8, scope: !4004)
!4128 = !DILocation(line: 104, column: 7, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 104, column: 6)
!4130 = !DILocation(line: 104, column: 6, scope: !4004)
!4131 = !DILocation(line: 105, column: 7, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 104, column: 14)
!4133 = !DILocation(line: 106, column: 3, scope: !4132)
!4134 = !DILocation(line: 109, column: 9, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 109, column: 2)
!4136 = !DILocation(line: 109, column: 7, scope: !4135)
!4137 = !DILocation(line: 109, column: 14, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 109, column: 2)
!4139 = !DILocation(line: 109, column: 18, scope: !4138)
!4140 = !DILocation(line: 109, column: 16, scope: !4138)
!4141 = !DILocation(line: 109, column: 2, scope: !4135)
!4142 = !DILocation(line: 110, column: 30, scope: !4138)
!4143 = !DILocation(line: 110, column: 38, scope: !4138)
!4144 = !DILocation(line: 110, column: 45, scope: !4138)
!4145 = !DILocation(line: 110, column: 50, scope: !4138)
!4146 = !DILocation(line: 110, column: 3, scope: !4138)
!4147 = !DILocation(line: 110, column: 8, scope: !4138)
!4148 = !DILocation(line: 110, column: 12, scope: !4138)
!4149 = !DILocation(line: 110, column: 25, scope: !4138)
!4150 = !DILocation(line: 110, column: 28, scope: !4138)
!4151 = !DILocation(line: 109, column: 28, scope: !4138)
!4152 = !DILocation(line: 109, column: 2, scope: !4138)
!4153 = distinct !{!4153, !4141, !4154, !4155, !4156}
!4154 = !DILocation(line: 110, column: 51, scope: !4135)
!4155 = !{!"llvm.loop.mustprogress"}
!4156 = !{!"llvm.loop.unroll.disable"}
!4157 = !DILocation(line: 112, column: 2, scope: !4004)
!4158 = !DILocation(line: 112, column: 7, scope: !4004)
!4159 = !DILocation(line: 112, column: 11, scope: !4004)
!4160 = !DILocation(line: 112, column: 24, scope: !4004)
!4161 = !DILocation(line: 112, column: 27, scope: !4004)
!4162 = !DILocation(line: 114, column: 21, scope: !4004)
!4163 = !DILocation(line: 114, column: 2, scope: !4004)
!4164 = !DILocation(line: 114, column: 9, scope: !4004)
!4165 = !DILocation(line: 114, column: 19, scope: !4004)
!4166 = !DILocation(line: 115, column: 18, scope: !4004)
!4167 = !DILocation(line: 115, column: 2, scope: !4004)
!4168 = !DILocation(line: 117, column: 25, scope: !4004)
!4169 = !DILocation(line: 117, column: 8, scope: !4004)
!4170 = !DILocation(line: 117, column: 6, scope: !4004)
!4171 = !DILocation(line: 118, column: 6, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 118, column: 6)
!4173 = !DILocation(line: 118, column: 6, scope: !4004)
!4174 = !DILocation(line: 119, column: 3, scope: !4172)
!4175 = !DILocation(line: 121, column: 16, scope: !4004)
!4176 = !DILocation(line: 121, column: 24, scope: !4004)
!4177 = !DILocation(line: 121, column: 2, scope: !4004)
!4178 = !DILocation(line: 122, column: 7, scope: !4004)
!4179 = !DILocation(line: 122, column: 2, scope: !4004)
!4180 = !DILocation(line: 123, column: 1, scope: !4004)
!4181 = !DILocation(line: 124, column: 6, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 124, column: 6)
!4183 = !DILocation(line: 124, column: 6, scope: !4004)
!4184 = !DILocation(line: 125, column: 9, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 124, column: 11)
!4186 = !DILocation(line: 125, column: 3, scope: !4185)
!4187 = !DILocation(line: 126, column: 7, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 126, column: 7)
!4189 = !DILocation(line: 126, column: 7, scope: !4185)
!4190 = !DILocation(line: 127, column: 9, scope: !4188)
!4191 = !DILocation(line: 127, column: 4, scope: !4188)
!4192 = !DILocation(line: 128, column: 2, scope: !4185)
!4193 = !DILocation(line: 129, column: 9, scope: !4004)
!4194 = !DILocation(line: 129, column: 2, scope: !4004)
!4195 = !DILocation(line: 130, column: 1, scope: !4004)
!4196 = distinct !DISubprogram(name: "efivarfs_unlink", scope: !3, file: !3, line: 132, type: !3775, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4197)
!4197 = !{!4198, !4199, !4200}
!4198 = !DILocalVariable(name: "dir", arg: 1, scope: !4196, file: !3, line: 132, type: !140)
!4199 = !DILocalVariable(name: "dentry", arg: 2, scope: !4196, file: !3, line: 132, type: !92)
!4200 = !DILocalVariable(name: "var", scope: !4196, file: !3, line: 134, type: !4013)
!4201 = !DILocation(line: 132, column: 42, scope: !4196)
!4202 = !DILocation(line: 132, column: 62, scope: !4196)
!4203 = !DILocation(line: 134, column: 2, scope: !4196)
!4204 = !DILocation(line: 134, column: 23, scope: !4196)
!4205 = !DILocation(line: 134, column: 37, scope: !4196)
!4206 = !DILocation(line: 134, column: 29, scope: !4196)
!4207 = !DILocation(line: 134, column: 46, scope: !4196)
!4208 = !DILocation(line: 136, column: 26, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 136, column: 6)
!4210 = !DILocation(line: 136, column: 6, scope: !4209)
!4211 = !DILocation(line: 136, column: 6, scope: !4196)
!4212 = !DILocation(line: 137, column: 3, scope: !4209)
!4213 = !DILocation(line: 139, column: 21, scope: !4196)
!4214 = !DILocation(line: 139, column: 13, scope: !4196)
!4215 = !DILocation(line: 139, column: 2, scope: !4196)
!4216 = !DILocation(line: 140, column: 7, scope: !4196)
!4217 = !DILocation(line: 140, column: 2, scope: !4196)
!4218 = !DILocation(line: 141, column: 2, scope: !4196)
!4219 = !DILocation(line: 142, column: 1, scope: !4196)
!4220 = distinct !DISubprogram(name: "efivarfs_valid_name", scope: !3, file: !3, line: 50, type: !4221, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4223)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!717, !195, !199}
!4223 = !{!4224, !4225, !4226}
!4224 = !DILocalVariable(name: "str", arg: 1, scope: !4220, file: !3, line: 50, type: !195)
!4225 = !DILocalVariable(name: "len", arg: 2, scope: !4220, file: !3, line: 50, type: !199)
!4226 = !DILocalVariable(name: "s", scope: !4220, file: !3, line: 52, type: !195)
!4227 = !DILocation(line: 50, column: 45, scope: !4220)
!4228 = !DILocation(line: 50, column: 54, scope: !4220)
!4229 = !DILocation(line: 52, column: 2, scope: !4220)
!4230 = !DILocation(line: 52, column: 14, scope: !4220)
!4231 = !DILocation(line: 52, column: 18, scope: !4220)
!4232 = !DILocation(line: 52, column: 24, scope: !4220)
!4233 = !DILocation(line: 52, column: 22, scope: !4220)
!4234 = !DILocation(line: 52, column: 28, scope: !4220)
!4235 = !DILocation(line: 58, column: 6, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4220, file: !3, line: 58, column: 6)
!4237 = !DILocation(line: 58, column: 10, scope: !4236)
!4238 = !DILocation(line: 58, column: 6, scope: !4220)
!4239 = !DILocation(line: 59, column: 3, scope: !4236)
!4240 = !DILocation(line: 62, column: 8, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4220, file: !3, line: 62, column: 6)
!4242 = !DILocation(line: 62, column: 10, scope: !4241)
!4243 = !DILocation(line: 62, column: 6, scope: !4241)
!4244 = !DILocation(line: 62, column: 15, scope: !4241)
!4245 = !DILocation(line: 62, column: 6, scope: !4220)
!4246 = !DILocation(line: 63, column: 3, scope: !4241)
!4247 = !DILocation(line: 70, column: 23, scope: !4220)
!4248 = !DILocation(line: 70, column: 9, scope: !4220)
!4249 = !DILocation(line: 70, column: 2, scope: !4220)
!4250 = !DILocation(line: 71, column: 1, scope: !4220)
!4251 = distinct !DISubprogram(name: "kzalloc", scope: !69, file: !69, line: 719, type: !4252, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4254)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!215, !358, !79}
!4254 = !{!4255, !4256}
!4255 = !DILocalVariable(name: "size", arg: 1, scope: !4251, file: !69, line: 719, type: !358)
!4256 = !DILocalVariable(name: "flags", arg: 2, scope: !4251, file: !69, line: 719, type: !79)
!4257 = !DILocation(line: 719, column: 52, scope: !4251)
!4258 = !DILocation(line: 719, column: 64, scope: !4251)
!4259 = !DILocation(line: 721, column: 17, scope: !4251)
!4260 = !DILocation(line: 721, column: 23, scope: !4251)
!4261 = !DILocation(line: 721, column: 29, scope: !4251)
!4262 = !DILocation(line: 721, column: 9, scope: !4251)
!4263 = !DILocation(line: 721, column: 2, scope: !4251)
!4264 = !DISubprogram(name: "guid_parse", scope: !3525, file: !3525, line: 107, type: !4265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!199, !195, !4267}
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4268 = distinct !DISubprogram(name: "guid_equal", scope: !3525, file: !3525, line: 46, type: !4269, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4273)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!717, !4271, !4271}
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4028)
!4273 = !{!4274, !4275}
!4274 = !DILocalVariable(name: "u1", arg: 1, scope: !4268, file: !3525, line: 46, type: !4271)
!4275 = !DILocalVariable(name: "u2", arg: 2, scope: !4268, file: !3525, line: 46, type: !4271)
!4276 = !DILocation(line: 46, column: 45, scope: !4268)
!4277 = !DILocation(line: 46, column: 63, scope: !4268)
!4278 = !DILocation(line: 48, column: 16, scope: !4268)
!4279 = !DILocation(line: 48, column: 20, scope: !4268)
!4280 = !DILocation(line: 48, column: 9, scope: !4268)
!4281 = !DILocation(line: 48, column: 40, scope: !4268)
!4282 = !DILocation(line: 48, column: 2, scope: !4268)
!4283 = !DISubprogram(name: "efivar_variable_is_removable", scope: !4015, file: !4015, line: 48, type: !4284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!717, !4027, !195, !358}
!4286 = distinct !DISubprogram(name: "kmemleak_ignore", scope: !4287, file: !4287, line: 96, type: !4288, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4290)
!4287 = !DIFile(filename: "./include/linux/kmemleak.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f4ed42ee6c6e5d06af9997953e90d37")
!4288 = !DISubroutineType(types: !4289)
!4289 = !{null, !1066}
!4290 = !{!4291}
!4291 = !DILocalVariable(name: "ptr", arg: 1, scope: !4286, file: !4287, line: 96, type: !1066)
!4292 = !DILocation(line: 96, column: 48, scope: !4286)
!4293 = !DILocation(line: 98, column: 1, scope: !4286)
!4294 = !DISubprogram(name: "efivar_entry_add", scope: !4015, file: !4015, line: 30, type: !4295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!199, !4013, !160}
!4297 = !DISubprogram(name: "d_instantiate", scope: !94, file: !94, line: 221, type: !3571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4298 = distinct !DISubprogram(name: "dget", scope: !94, file: !94, line: 317, type: !4299, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4301)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!92, !92}
!4301 = !{!4302}
!4302 = !DILocalVariable(name: "dentry", arg: 1, scope: !4298, file: !94, line: 317, type: !92)
!4303 = !DILocation(line: 317, column: 50, scope: !4298)
!4304 = !DILocation(line: 319, column: 6, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4298, file: !94, line: 319, column: 6)
!4306 = !DILocation(line: 319, column: 6, scope: !4298)
!4307 = !DILocation(line: 320, column: 16, scope: !4305)
!4308 = !DILocation(line: 320, column: 24, scope: !4305)
!4309 = !DILocation(line: 320, column: 3, scope: !4305)
!4310 = !DILocation(line: 321, column: 9, scope: !4298)
!4311 = !DILocation(line: 321, column: 2, scope: !4298)
!4312 = !DISubprogram(name: "kfree", scope: !69, file: !69, line: 227, type: !4288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4313 = !DISubprogram(name: "iput", scope: !35, file: !35, line: 2459, type: !1973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4314 = !DISubprogram(name: "uuid_is_valid", scope: !3525, file: !3525, line: 102, type: !4315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!717, !195}
!4317 = distinct !DISubprogram(name: "kmalloc", scope: !69, file: !69, line: 591, type: !4252, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4318)
!4318 = !{!4319, !4320, !4321}
!4319 = !DILocalVariable(name: "size", arg: 1, scope: !4317, file: !69, line: 591, type: !358)
!4320 = !DILocalVariable(name: "flags", arg: 2, scope: !4317, file: !69, line: 591, type: !79)
!4321 = !DILocalVariable(name: "index", scope: !4322, file: !69, line: 594, type: !7)
!4322 = distinct !DILexicalBlock(scope: !4323, file: !69, line: 593, column: 42)
!4323 = distinct !DILexicalBlock(scope: !4317, file: !69, line: 593, column: 6)
!4324 = !DILocation(line: 591, column: 61, scope: !4317)
!4325 = !DILocation(line: 591, column: 73, scope: !4317)
!4326 = !DILocation(line: 593, column: 27, scope: !4323)
!4327 = !DILocation(line: 593, column: 6, scope: !4323)
!4328 = !DILocation(line: 593, column: 33, scope: !4323)
!4329 = !DILocation(line: 593, column: 36, scope: !4323)
!4330 = !DILocation(line: 593, column: 6, scope: !4317)
!4331 = !DILocation(line: 594, column: 3, scope: !4322)
!4332 = !DILocation(line: 594, column: 16, scope: !4322)
!4333 = !DILocation(line: 596, column: 7, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4322, file: !69, line: 596, column: 7)
!4335 = !DILocation(line: 596, column: 12, scope: !4334)
!4336 = !DILocation(line: 596, column: 7, scope: !4322)
!4337 = !DILocation(line: 597, column: 25, scope: !4334)
!4338 = !DILocation(line: 597, column: 31, scope: !4334)
!4339 = !DILocation(line: 597, column: 11, scope: !4334)
!4340 = !DILocation(line: 597, column: 4, scope: !4334)
!4341 = !DILocation(line: 599, column: 11, scope: !4322)
!4342 = !DILocation(line: 599, column: 9, scope: !4322)
!4343 = !DILocation(line: 601, column: 33, scope: !4322)
!4344 = !DILocation(line: 601, column: 40, scope: !4322)
!4345 = !DILocation(line: 601, column: 20, scope: !4322)
!4346 = !DILocation(line: 601, column: 5, scope: !4322)
!4347 = !DILocation(line: 601, column: 51, scope: !4322)
!4348 = !DILocation(line: 602, column: 5, scope: !4322)
!4349 = !DILocation(line: 602, column: 12, scope: !4322)
!4350 = !DILocation(line: 600, column: 10, scope: !4322)
!4351 = !DILocation(line: 600, column: 3, scope: !4322)
!4352 = !DILocation(line: 603, column: 2, scope: !4323)
!4353 = !DILocation(line: 604, column: 19, scope: !4317)
!4354 = !DILocation(line: 604, column: 25, scope: !4317)
!4355 = !DILocation(line: 604, column: 9, scope: !4317)
!4356 = !DILocation(line: 604, column: 2, scope: !4317)
!4357 = !DILocation(line: 605, column: 1, scope: !4317)
!4358 = !DISubprogram(name: "kmalloc_large", scope: !69, file: !69, line: 531, type: !4252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4359 = distinct !DISubprogram(name: "__kmalloc_index", scope: !69, file: !69, line: 444, type: !4360, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4362)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!7, !358, !717}
!4362 = !{!4363, !4364}
!4363 = !DILocalVariable(name: "size", arg: 1, scope: !4359, file: !69, line: 444, type: !358)
!4364 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4359, file: !69, line: 445, type: !717)
!4365 = !DILocation(line: 444, column: 60, scope: !4359)
!4366 = !DILocation(line: 445, column: 16, scope: !4359)
!4367 = !DILocation(line: 447, column: 7, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 447, column: 6)
!4369 = !DILocation(line: 447, column: 6, scope: !4359)
!4370 = !DILocation(line: 448, column: 3, scope: !4368)
!4371 = !DILocation(line: 450, column: 6, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 450, column: 6)
!4373 = !DILocation(line: 450, column: 11, scope: !4372)
!4374 = !DILocation(line: 450, column: 6, scope: !4359)
!4375 = !DILocation(line: 451, column: 3, scope: !4372)
!4376 = !DILocation(line: 453, column: 32, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 453, column: 6)
!4378 = !DILocation(line: 453, column: 37, scope: !4377)
!4379 = !DILocation(line: 453, column: 42, scope: !4377)
!4380 = !DILocation(line: 453, column: 45, scope: !4377)
!4381 = !DILocation(line: 453, column: 50, scope: !4377)
!4382 = !DILocation(line: 453, column: 6, scope: !4359)
!4383 = !DILocation(line: 454, column: 3, scope: !4377)
!4384 = !DILocation(line: 455, column: 32, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 455, column: 6)
!4386 = !DILocation(line: 455, column: 37, scope: !4385)
!4387 = !DILocation(line: 455, column: 43, scope: !4385)
!4388 = !DILocation(line: 455, column: 46, scope: !4385)
!4389 = !DILocation(line: 455, column: 51, scope: !4385)
!4390 = !DILocation(line: 455, column: 6, scope: !4359)
!4391 = !DILocation(line: 456, column: 3, scope: !4385)
!4392 = !DILocation(line: 457, column: 6, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 457, column: 6)
!4394 = !DILocation(line: 457, column: 11, scope: !4393)
!4395 = !DILocation(line: 457, column: 6, scope: !4359)
!4396 = !DILocation(line: 457, column: 26, scope: !4393)
!4397 = !DILocation(line: 458, column: 6, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 458, column: 6)
!4399 = !DILocation(line: 458, column: 11, scope: !4398)
!4400 = !DILocation(line: 458, column: 6, scope: !4359)
!4401 = !DILocation(line: 458, column: 26, scope: !4398)
!4402 = !DILocation(line: 459, column: 6, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 459, column: 6)
!4404 = !DILocation(line: 459, column: 11, scope: !4403)
!4405 = !DILocation(line: 459, column: 6, scope: !4359)
!4406 = !DILocation(line: 459, column: 26, scope: !4403)
!4407 = !DILocation(line: 460, column: 6, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 460, column: 6)
!4409 = !DILocation(line: 460, column: 11, scope: !4408)
!4410 = !DILocation(line: 460, column: 6, scope: !4359)
!4411 = !DILocation(line: 460, column: 26, scope: !4408)
!4412 = !DILocation(line: 461, column: 6, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 461, column: 6)
!4414 = !DILocation(line: 461, column: 11, scope: !4413)
!4415 = !DILocation(line: 461, column: 6, scope: !4359)
!4416 = !DILocation(line: 461, column: 26, scope: !4413)
!4417 = !DILocation(line: 462, column: 6, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 462, column: 6)
!4419 = !DILocation(line: 462, column: 11, scope: !4418)
!4420 = !DILocation(line: 462, column: 6, scope: !4359)
!4421 = !DILocation(line: 462, column: 26, scope: !4418)
!4422 = !DILocation(line: 463, column: 6, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 463, column: 6)
!4424 = !DILocation(line: 463, column: 11, scope: !4423)
!4425 = !DILocation(line: 463, column: 6, scope: !4359)
!4426 = !DILocation(line: 463, column: 26, scope: !4423)
!4427 = !DILocation(line: 464, column: 6, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 464, column: 6)
!4429 = !DILocation(line: 464, column: 11, scope: !4428)
!4430 = !DILocation(line: 464, column: 6, scope: !4359)
!4431 = !DILocation(line: 464, column: 26, scope: !4428)
!4432 = !DILocation(line: 465, column: 6, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 465, column: 6)
!4434 = !DILocation(line: 465, column: 11, scope: !4433)
!4435 = !DILocation(line: 465, column: 6, scope: !4359)
!4436 = !DILocation(line: 465, column: 26, scope: !4433)
!4437 = !DILocation(line: 466, column: 6, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 466, column: 6)
!4439 = !DILocation(line: 466, column: 11, scope: !4438)
!4440 = !DILocation(line: 466, column: 6, scope: !4359)
!4441 = !DILocation(line: 466, column: 26, scope: !4438)
!4442 = !DILocation(line: 467, column: 6, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 467, column: 6)
!4444 = !DILocation(line: 467, column: 11, scope: !4443)
!4445 = !DILocation(line: 467, column: 6, scope: !4359)
!4446 = !DILocation(line: 467, column: 26, scope: !4443)
!4447 = !DILocation(line: 468, column: 6, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 468, column: 6)
!4449 = !DILocation(line: 468, column: 11, scope: !4448)
!4450 = !DILocation(line: 468, column: 6, scope: !4359)
!4451 = !DILocation(line: 468, column: 26, scope: !4448)
!4452 = !DILocation(line: 469, column: 6, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 469, column: 6)
!4454 = !DILocation(line: 469, column: 11, scope: !4453)
!4455 = !DILocation(line: 469, column: 6, scope: !4359)
!4456 = !DILocation(line: 469, column: 26, scope: !4453)
!4457 = !DILocation(line: 470, column: 6, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 470, column: 6)
!4459 = !DILocation(line: 470, column: 11, scope: !4458)
!4460 = !DILocation(line: 470, column: 6, scope: !4359)
!4461 = !DILocation(line: 470, column: 26, scope: !4458)
!4462 = !DILocation(line: 471, column: 6, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 471, column: 6)
!4464 = !DILocation(line: 471, column: 11, scope: !4463)
!4465 = !DILocation(line: 471, column: 6, scope: !4359)
!4466 = !DILocation(line: 471, column: 26, scope: !4463)
!4467 = !DILocation(line: 472, column: 6, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 472, column: 6)
!4469 = !DILocation(line: 472, column: 11, scope: !4468)
!4470 = !DILocation(line: 472, column: 6, scope: !4359)
!4471 = !DILocation(line: 472, column: 26, scope: !4468)
!4472 = !DILocation(line: 473, column: 6, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 473, column: 6)
!4474 = !DILocation(line: 473, column: 11, scope: !4473)
!4475 = !DILocation(line: 473, column: 6, scope: !4359)
!4476 = !DILocation(line: 473, column: 26, scope: !4473)
!4477 = !DILocation(line: 474, column: 6, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 474, column: 6)
!4479 = !DILocation(line: 474, column: 11, scope: !4478)
!4480 = !DILocation(line: 474, column: 6, scope: !4359)
!4481 = !DILocation(line: 474, column: 27, scope: !4478)
!4482 = !DILocation(line: 475, column: 6, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 475, column: 6)
!4484 = !DILocation(line: 475, column: 11, scope: !4483)
!4485 = !DILocation(line: 475, column: 6, scope: !4359)
!4486 = !DILocation(line: 475, column: 32, scope: !4483)
!4487 = !DILocation(line: 477, column: 50, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4359, file: !69, line: 477, column: 6)
!4489 = !DILocation(line: 477, column: 6, scope: !4359)
!4490 = !DILocation(line: 478, column: 3, scope: !4488)
!4491 = !DILocation(line: 478, column: 3, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4493, file: !69, line: 478, column: 3)
!4493 = distinct !DILexicalBlock(scope: !4488, file: !69, line: 478, column: 3)
!4494 = !{i32 -2141725134}
!4495 = !DILocation(line: 478, column: 3, scope: !4493)
!4496 = !DILocation(line: 480, column: 3, scope: !4488)
!4497 = !DILocation(line: 480, column: 3, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4488, file: !69, line: 480, column: 3)
!4499 = !DILocation(line: 480, column: 3, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4498, file: !69, line: 480, column: 3)
!4501 = !DILocation(line: 480, column: 3, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4498, file: !69, line: 480, column: 3)
!4503 = !{i64 2153242365, i64 2153242394, i64 2153242440, i64 2153242498, i64 2153242552, i64 2153242606, i64 2153242661, i64 2153242692}
!4504 = !DILocation(line: 483, column: 2, scope: !4359)
!4505 = !DILocation(line: 484, column: 1, scope: !4359)
!4506 = !DISubprogram(name: "kmalloc_trace", scope: !69, file: !69, line: 525, type: !4507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!215, !4509, !79, !358}
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4511, line: 325, flags: DIFlagFwdDecl)
!4511 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4512 = distinct !DISubprogram(name: "kmalloc_type", scope: !69, file: !69, line: 401, type: !4513, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4515)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!68, !79, !81}
!4515 = !{!4516, !4517}
!4516 = !DILocalVariable(name: "flags", arg: 1, scope: !4512, file: !69, line: 401, type: !79)
!4517 = !DILocalVariable(name: "caller", arg: 2, scope: !4512, file: !69, line: 401, type: !81)
!4518 = !DILocation(line: 401, column: 67, scope: !4512)
!4519 = !DILocation(line: 401, column: 88, scope: !4512)
!4520 = !DILocation(line: 407, column: 6, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4512, file: !69, line: 407, column: 6)
!4522 = !DILocation(line: 407, column: 6, scope: !4512)
!4523 = !DILocation(line: 413, column: 3, scope: !4521)
!4524 = !DILocation(line: 423, column: 38, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4512, file: !69, line: 423, column: 6)
!4526 = !DILocation(line: 423, column: 44, scope: !4525)
!4527 = !DILocation(line: 423, column: 6, scope: !4512)
!4528 = !DILocation(line: 424, column: 3, scope: !4525)
!4529 = !DILocation(line: 426, column: 3, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4512, file: !69, line: 425, column: 6)
!4531 = !DILocation(line: 429, column: 1, scope: !4512)
!4532 = !DISubprogram(name: "__kmalloc", scope: !69, file: !69, line: 488, type: !4252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4533 = !DISubprogram(name: "__compiletime_assert_212", scope: !69, file: !69, line: 478, type: !1947, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4534 = !DISubprogram(name: "memcmp", scope: !4535, file: !4535, line: 196, type: !4536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4535 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!199, !1066, !1066, !359}
!4538 = !DISubprogram(name: "lockref_get", scope: !3715, file: !3715, line: 37, type: !4539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{null, !4541}
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!4542 = distinct !DISubprogram(name: "d_inode", scope: !94, file: !94, line: 514, type: !4543, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4545)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!140, !3547}
!4545 = !{!4546}
!4546 = !DILocalVariable(name: "dentry", arg: 1, scope: !4542, file: !94, line: 514, type: !3547)
!4547 = !DILocation(line: 514, column: 58, scope: !4542)
!4548 = !DILocation(line: 516, column: 9, scope: !4542)
!4549 = !DILocation(line: 516, column: 17, scope: !4542)
!4550 = !DILocation(line: 516, column: 2, scope: !4542)
!4551 = !DISubprogram(name: "efivar_entry_delete", scope: !4015, file: !4015, line: 33, type: !4552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!199, !4013}
!4554 = !DISubprogram(name: "drop_nlink", scope: !35, file: !35, line: 2328, type: !1973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4555 = !DISubprogram(name: "dput", scope: !94, file: !94, line: 368, type: !3566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4556 = distinct !DISubprogram(name: "efivarfs_fileattr_set", scope: !3, file: !3, line: 166, type: !3888, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4557)
!4557 = !{!4558, !4559, !4560, !4561}
!4558 = !DILocalVariable(name: "idmap", arg: 1, scope: !4556, file: !3, line: 166, type: !840)
!4559 = !DILocalVariable(name: "dentry", arg: 2, scope: !4556, file: !3, line: 167, type: !92)
!4560 = !DILocalVariable(name: "fa", arg: 3, scope: !4556, file: !3, line: 167, type: !3890)
!4561 = !DILocalVariable(name: "i_flags", scope: !4556, file: !3, line: 169, type: !7)
!4562 = !DILocation(line: 166, column: 41, scope: !4556)
!4563 = !DILocation(line: 167, column: 24, scope: !4556)
!4564 = !DILocation(line: 167, column: 49, scope: !4556)
!4565 = !DILocation(line: 169, column: 2, scope: !4556)
!4566 = !DILocation(line: 169, column: 15, scope: !4556)
!4567 = !DILocation(line: 171, column: 23, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 171, column: 6)
!4569 = !DILocation(line: 171, column: 6, scope: !4568)
!4570 = !DILocation(line: 171, column: 6, scope: !4556)
!4571 = !DILocation(line: 172, column: 3, scope: !4568)
!4572 = !DILocation(line: 174, column: 6, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 174, column: 6)
!4574 = !DILocation(line: 174, column: 10, scope: !4573)
!4575 = !DILocation(line: 174, column: 16, scope: !4573)
!4576 = !DILocation(line: 174, column: 6, scope: !4556)
!4577 = !DILocation(line: 175, column: 3, scope: !4573)
!4578 = !DILocation(line: 177, column: 6, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 177, column: 6)
!4580 = !DILocation(line: 177, column: 10, scope: !4579)
!4581 = !DILocation(line: 177, column: 16, scope: !4579)
!4582 = !DILocation(line: 177, column: 6, scope: !4556)
!4583 = !DILocation(line: 178, column: 11, scope: !4579)
!4584 = !DILocation(line: 178, column: 3, scope: !4579)
!4585 = !DILocation(line: 180, column: 26, scope: !4556)
!4586 = !DILocation(line: 180, column: 18, scope: !4556)
!4587 = !DILocation(line: 180, column: 35, scope: !4556)
!4588 = !DILocation(line: 180, column: 2, scope: !4556)
!4589 = !DILocation(line: 182, column: 2, scope: !4556)
!4590 = !DILocation(line: 183, column: 1, scope: !4556)
!4591 = distinct !DISubprogram(name: "efivarfs_fileattr_get", scope: !3, file: !3, line: 151, type: !3904, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4592)
!4592 = !{!4593, !4594, !4595, !4596}
!4593 = !DILocalVariable(name: "dentry", arg: 1, scope: !4591, file: !3, line: 151, type: !92)
!4594 = !DILocalVariable(name: "fa", arg: 2, scope: !4591, file: !3, line: 151, type: !3890)
!4595 = !DILocalVariable(name: "i_flags", scope: !4591, file: !3, line: 153, type: !7)
!4596 = !DILocalVariable(name: "flags", scope: !4591, file: !3, line: 154, type: !7)
!4597 = !DILocation(line: 151, column: 38, scope: !4591)
!4598 = !DILocation(line: 151, column: 63, scope: !4591)
!4599 = !DILocation(line: 153, column: 2, scope: !4591)
!4600 = !DILocation(line: 153, column: 15, scope: !4591)
!4601 = !DILocation(line: 154, column: 2, scope: !4591)
!4602 = !DILocation(line: 154, column: 15, scope: !4591)
!4603 = !DILocation(line: 156, column: 20, scope: !4591)
!4604 = !DILocation(line: 156, column: 12, scope: !4591)
!4605 = !DILocation(line: 156, column: 29, scope: !4591)
!4606 = !DILocation(line: 156, column: 10, scope: !4591)
!4607 = !DILocation(line: 157, column: 6, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4591, file: !3, line: 157, column: 6)
!4609 = !DILocation(line: 157, column: 14, scope: !4608)
!4610 = !DILocation(line: 157, column: 6, scope: !4591)
!4611 = !DILocation(line: 158, column: 9, scope: !4608)
!4612 = !DILocation(line: 158, column: 3, scope: !4608)
!4613 = !DILocation(line: 160, column: 22, scope: !4591)
!4614 = !DILocation(line: 160, column: 26, scope: !4591)
!4615 = !DILocation(line: 160, column: 2, scope: !4591)
!4616 = !DILocation(line: 163, column: 1, scope: !4591)
!4617 = !DILocation(line: 162, column: 2, scope: !4591)
!4618 = distinct !DISubprogram(name: "fileattr_has_fsx", scope: !3892, file: !3892, line: 48, type: !4619, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4623)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!717, !4621}
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3891)
!4623 = !{!4624}
!4624 = !DILocalVariable(name: "fa", arg: 1, scope: !4618, file: !3892, line: 48, type: !4621)
!4625 = !DILocation(line: 48, column: 60, scope: !4618)
!4626 = !DILocation(line: 50, column: 9, scope: !4618)
!4627 = !DILocation(line: 50, column: 13, scope: !4618)
!4628 = !DILocation(line: 50, column: 23, scope: !4618)
!4629 = !DILocation(line: 51, column: 5, scope: !4618)
!4630 = !DILocation(line: 51, column: 9, scope: !4618)
!4631 = !DILocation(line: 51, column: 20, scope: !4618)
!4632 = !DILocation(line: 51, column: 40, scope: !4618)
!4633 = !DILocation(line: 51, column: 43, scope: !4618)
!4634 = !DILocation(line: 51, column: 47, scope: !4618)
!4635 = !DILocation(line: 51, column: 59, scope: !4618)
!4636 = !DILocation(line: 51, column: 64, scope: !4618)
!4637 = !DILocation(line: 52, column: 4, scope: !4618)
!4638 = !DILocation(line: 52, column: 8, scope: !4618)
!4639 = !DILocation(line: 52, column: 19, scope: !4618)
!4640 = !DILocation(line: 52, column: 24, scope: !4618)
!4641 = !DILocation(line: 52, column: 27, scope: !4618)
!4642 = !DILocation(line: 52, column: 31, scope: !4618)
!4643 = !DILocation(line: 52, column: 46, scope: !4618)
!4644 = !DILocation(line: 0, scope: !4618)
!4645 = !DILocation(line: 50, column: 2, scope: !4618)
!4646 = !DISubprogram(name: "inode_set_flags", scope: !35, file: !35, line: 3079, type: !4647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{null, !140, !7, !7}
!4649 = !DISubprogram(name: "fileattr_fill_flags", scope: !3892, file: !3892, line: 39, type: !4650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{null, !3890, !126}
