; ModuleID = 'fs/efivarfs/file.c'
source_filename = "fs/efivarfs/file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
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
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.16 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_t = type { i64 }
%union.anon.16 = type { %struct.callback_head }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.timespec64 = type { i64, i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.17, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.18, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.19, ptr, %struct.address_space, %struct.list_head, %union.anon.20, i32, i32, ptr, ptr }
%union.anon.17 = type { i32 }
%union.anon.18 = type { %struct.callback_head }
%union.anon.19 = type { ptr }
%union.anon.20 = type { ptr }

@efivarfs_file_operations = hidden constant %struct.file_operations { ptr null, ptr null, ptr @efivarfs_file_read, ptr @efivarfs_file_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !0
@__func__.efivarfs_file_read = private unnamed_addr constant [19 x i8] c"efivarfs_file_read\00", align 1, !dbg !86
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !93
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !98

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @efivarfs_file_read(ptr noundef %file, ptr noundef %userbuf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !3916 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %userbuf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %var = alloca ptr, align 8
  %datasize = alloca i64, align 8
  %attributes = alloca i32, align 4
  %data = alloca ptr, align 8
  %size = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !3918, metadata !DIExpression()), !dbg !3958
  store ptr %userbuf, ptr %userbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %userbuf.addr, metadata !3919, metadata !DIExpression()), !dbg !3959
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3920, metadata !DIExpression()), !dbg !3960
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !3921, metadata !DIExpression()), !dbg !3961
  call void @llvm.lifetime.start.p0(i64 8, ptr %var) #15, !dbg !3962
  call void @llvm.dbg.declare(metadata ptr %var, metadata !3922, metadata !DIExpression()), !dbg !3963
  %0 = load ptr, ptr %file.addr, align 8, !dbg !3964
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !3965
  %1 = load ptr, ptr %private_data, align 8, !dbg !3965
  store ptr %1, ptr %var, align 8, !dbg !3963
  call void @llvm.lifetime.start.p0(i64 8, ptr %datasize) #15, !dbg !3966
  call void @llvm.dbg.declare(metadata ptr %datasize, metadata !3952, metadata !DIExpression()), !dbg !3967
  store i64 0, ptr %datasize, align 8, !dbg !3967
  call void @llvm.lifetime.start.p0(i64 4, ptr %attributes) #15, !dbg !3968
  call void @llvm.dbg.declare(metadata ptr %attributes, metadata !3953, metadata !DIExpression()), !dbg !3969
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !3970
  call void @llvm.dbg.declare(metadata ptr %data, metadata !3954, metadata !DIExpression()), !dbg !3971
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #15, !dbg !3972
  call void @llvm.dbg.declare(metadata ptr %size, metadata !3955, metadata !DIExpression()), !dbg !3973
  store i64 0, ptr %size, align 8, !dbg !3973
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !3974
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3956, metadata !DIExpression()), !dbg !3975
  br label %while.cond, !dbg !3976

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %file.addr, align 8, !dbg !3977
  %f_cred = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 8, !dbg !3977
  %3 = load ptr, ptr %f_cred, align 8, !dbg !3977
  %user = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 21, !dbg !3977
  %4 = load ptr, ptr %user, align 8, !dbg !3977
  %ratelimit = getelementptr inbounds %struct.user_struct, ptr %4, i32 0, i32 7, !dbg !3977
  %call = call i32 @___ratelimit(ptr noundef %ratelimit, ptr noundef @__func__.efivarfs_file_read) #16, !dbg !3977
  %tobool = icmp ne i32 %call, 0, !dbg !3978
  %lnot = xor i1 %tobool, true, !dbg !3978
  br i1 %lnot, label %while.body, label %while.end, !dbg !3976

while.body:                                       ; preds = %while.cond
  call void @msleep(i32 noundef 50) #16, !dbg !3979
  br label %while.cond, !dbg !3976, !llvm.loop !3980

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %var, align 8, !dbg !3984
  %call1 = call i32 @efivar_entry_size(ptr noundef %5, ptr noundef %datasize) #16, !dbg !3985
  store i32 %call1, ptr %err, align 4, !dbg !3986
  %6 = load i32, ptr %err, align 4, !dbg !3987
  %cmp = icmp eq i32 %6, -2, !dbg !3989
  br i1 %cmp, label %if.then, label %if.else, !dbg !3990

if.then:                                          ; preds = %while.end
  store i64 0, ptr %retval, align 8, !dbg !3991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3991

if.else:                                          ; preds = %while.end
  %7 = load i32, ptr %err, align 4, !dbg !3992
  %tobool2 = icmp ne i32 %7, 0, !dbg !3992
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !3994

if.then3:                                         ; preds = %if.else
  %8 = load i32, ptr %err, align 4, !dbg !3995
  %conv = sext i32 %8 to i64, !dbg !3995
  store i64 %conv, ptr %retval, align 8, !dbg !3996
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3996

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  %9 = load i64, ptr %datasize, align 8, !dbg !3997
  %add = add i64 %9, 4, !dbg !3998
  %call5 = call noalias ptr @kmalloc(i64 noundef %add, i32 noundef 3264) #17, !dbg !3999
  store ptr %call5, ptr %data, align 8, !dbg !4000
  %10 = load ptr, ptr %data, align 8, !dbg !4001
  %tobool6 = icmp ne ptr %10, null, !dbg !4001
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4003

if.then7:                                         ; preds = %if.end4
  store i64 -12, ptr %retval, align 8, !dbg !4004
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4004

if.end8:                                          ; preds = %if.end4
  %11 = load ptr, ptr %var, align 8, !dbg !4005
  %12 = load ptr, ptr %data, align 8, !dbg !4006
  %add.ptr = getelementptr i8, ptr %12, i64 4, !dbg !4007
  %call9 = call i32 @efivar_entry_get(ptr noundef %11, ptr noundef %attributes, ptr noundef %datasize, ptr noundef %add.ptr) #16, !dbg !4008
  %conv10 = sext i32 %call9 to i64, !dbg !4008
  store i64 %conv10, ptr %size, align 8, !dbg !4009
  %13 = load i64, ptr %size, align 8, !dbg !4010
  %tobool11 = icmp ne i64 %13, 0, !dbg !4010
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4012

if.then12:                                        ; preds = %if.end8
  br label %out_free, !dbg !4013

if.end13:                                         ; preds = %if.end8
  %14 = load ptr, ptr %data, align 8, !dbg !4014
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 4 %attributes, i64 4, i1 false), !dbg !4015
  %15 = load ptr, ptr %userbuf.addr, align 8, !dbg !4016
  %16 = load i64, ptr %count.addr, align 8, !dbg !4017
  %17 = load ptr, ptr %ppos.addr, align 8, !dbg !4018
  %18 = load ptr, ptr %data, align 8, !dbg !4019
  %19 = load i64, ptr %datasize, align 8, !dbg !4020
  %add14 = add i64 %19, 4, !dbg !4021
  %call15 = call i64 @simple_read_from_buffer(ptr noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18, i64 noundef %add14) #16, !dbg !4022
  store i64 %call15, ptr %size, align 8, !dbg !4023
  br label %out_free, !dbg !4024

out_free:                                         ; preds = %if.end13, %if.then12
  call void @llvm.dbg.label(metadata !3957), !dbg !4025
  %20 = load ptr, ptr %data, align 8, !dbg !4026
  call void @kfree(ptr noundef %20) #16, !dbg !4027
  %21 = load i64, ptr %size, align 8, !dbg !4028
  store i64 %21, ptr %retval, align 8, !dbg !4029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4029

cleanup:                                          ; preds = %out_free, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !4030
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #15, !dbg !4030
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !4030
  call void @llvm.lifetime.end.p0(i64 4, ptr %attributes) #15, !dbg !4030
  call void @llvm.lifetime.end.p0(i64 8, ptr %datasize) #15, !dbg !4030
  call void @llvm.lifetime.end.p0(i64 8, ptr %var) #15, !dbg !4030
  %22 = load i64, ptr %retval, align 8, !dbg !4030
  ret i64 %22, !dbg !4030
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @efivarfs_file_write(ptr noundef %file, ptr noundef %userbuf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !4031 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %userbuf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %var = alloca ptr, align 8
  %data = alloca ptr, align 8
  %attributes = alloca i32, align 4
  %inode = alloca ptr, align 8
  %datasize = alloca i64, align 8
  %bytes = alloca i64, align 8
  %set = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4033, metadata !DIExpression()), !dbg !4045
  store ptr %userbuf, ptr %userbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %userbuf.addr, metadata !4034, metadata !DIExpression()), !dbg !4046
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4035, metadata !DIExpression()), !dbg !4047
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !4036, metadata !DIExpression()), !dbg !4048
  call void @llvm.lifetime.start.p0(i64 8, ptr %var) #15, !dbg !4049
  call void @llvm.dbg.declare(metadata ptr %var, metadata !4037, metadata !DIExpression()), !dbg !4050
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4051
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !4052
  %1 = load ptr, ptr %private_data, align 8, !dbg !4052
  store ptr %1, ptr %var, align 8, !dbg !4050
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !4053
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4038, metadata !DIExpression()), !dbg !4054
  call void @llvm.lifetime.start.p0(i64 4, ptr %attributes) #15, !dbg !4055
  call void @llvm.dbg.declare(metadata ptr %attributes, metadata !4039, metadata !DIExpression()), !dbg !4056
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #15, !dbg !4057
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !4040, metadata !DIExpression()), !dbg !4058
  %2 = load ptr, ptr %file.addr, align 8, !dbg !4059
  %f_mapping = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 17, !dbg !4060
  %3 = load ptr, ptr %f_mapping, align 8, !dbg !4060
  %host = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 0, !dbg !4061
  %4 = load ptr, ptr %host, align 8, !dbg !4061
  store ptr %4, ptr %inode, align 8, !dbg !4058
  call void @llvm.lifetime.start.p0(i64 8, ptr %datasize) #15, !dbg !4062
  call void @llvm.dbg.declare(metadata ptr %datasize, metadata !4041, metadata !DIExpression()), !dbg !4063
  %5 = load i64, ptr %count.addr, align 8, !dbg !4064
  %sub = sub i64 %5, 4, !dbg !4065
  store i64 %sub, ptr %datasize, align 8, !dbg !4063
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !4066
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4042, metadata !DIExpression()), !dbg !4067
  call void @llvm.lifetime.start.p0(i64 1, ptr %set) #15, !dbg !4068
  call void @llvm.dbg.declare(metadata ptr %set, metadata !4043, metadata !DIExpression()), !dbg !4069
  store i8 0, ptr %set, align 1, !dbg !4069
  %6 = load i64, ptr %count.addr, align 8, !dbg !4070
  %cmp = icmp ult i64 %6, 4, !dbg !4072
  br i1 %cmp, label %if.then, label %if.end, !dbg !4073

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !4074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4074

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %userbuf.addr, align 8, !dbg !4075
  %call = call i64 @copy_from_user(ptr noundef %attributes, ptr noundef %7, i64 noundef 4) #16, !dbg !4077
  %tobool = icmp ne i64 %call, 0, !dbg !4077
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !4078

if.then1:                                         ; preds = %if.end
  store i64 -14, ptr %retval, align 8, !dbg !4079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4079

if.end2:                                          ; preds = %if.end
  %8 = load i32, ptr %attributes, align 4, !dbg !4080
  %and = and i32 %8, -128, !dbg !4082
  %tobool3 = icmp ne i32 %and, 0, !dbg !4082
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4083

if.then4:                                         ; preds = %if.end2
  store i64 -22, ptr %retval, align 8, !dbg !4084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4084

if.end5:                                          ; preds = %if.end2
  %9 = load ptr, ptr %userbuf.addr, align 8, !dbg !4085
  %add.ptr = getelementptr i8, ptr %9, i64 4, !dbg !4086
  %10 = load i64, ptr %datasize, align 8, !dbg !4087
  %call6 = call ptr @memdup_user(ptr noundef %add.ptr, i64 noundef %10) #16, !dbg !4088
  store ptr %call6, ptr %data, align 8, !dbg !4089
  %11 = load ptr, ptr %data, align 8, !dbg !4090
  %call7 = call zeroext i1 @IS_ERR(ptr noundef %11) #16, !dbg !4092
  br i1 %call7, label %if.then8, label %if.end10, !dbg !4093

if.then8:                                         ; preds = %if.end5
  %12 = load ptr, ptr %data, align 8, !dbg !4094
  %call9 = call i64 @PTR_ERR(ptr noundef %12) #16, !dbg !4095
  store i64 %call9, ptr %retval, align 8, !dbg !4096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4096

if.end10:                                         ; preds = %if.end5
  %13 = load ptr, ptr %var, align 8, !dbg !4097
  %14 = load i32, ptr %attributes, align 4, !dbg !4098
  %15 = load ptr, ptr %data, align 8, !dbg !4099
  %call11 = call i32 @efivar_entry_set_get_size(ptr noundef %13, i32 noundef %14, ptr noundef %datasize, ptr noundef %15, ptr noundef %set) #16, !dbg !4100
  %conv = sext i32 %call11 to i64, !dbg !4100
  store i64 %conv, ptr %bytes, align 8, !dbg !4101
  %16 = load i8, ptr %set, align 1, !dbg !4102, !range !4104, !noundef !491
  %tobool12 = trunc i8 %16 to i1, !dbg !4102
  br i1 %tobool12, label %if.end19, label %land.lhs.true, !dbg !4105

land.lhs.true:                                    ; preds = %if.end10
  %17 = load i64, ptr %bytes, align 8, !dbg !4106
  %tobool13 = icmp ne i64 %17, 0, !dbg !4106
  br i1 %tobool13, label %if.then14, label %if.end19, !dbg !4107

if.then14:                                        ; preds = %land.lhs.true
  %18 = load i64, ptr %bytes, align 8, !dbg !4108
  %cmp15 = icmp eq i64 %18, -2, !dbg !4111
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !4112

if.then17:                                        ; preds = %if.then14
  store i64 -5, ptr %bytes, align 8, !dbg !4113
  br label %if.end18, !dbg !4114

if.end18:                                         ; preds = %if.then17, %if.then14
  br label %out, !dbg !4115

if.end19:                                         ; preds = %land.lhs.true, %if.end10
  %19 = load i64, ptr %bytes, align 8, !dbg !4116
  %cmp20 = icmp eq i64 %19, -2, !dbg !4118
  br i1 %cmp20, label %if.then22, label %if.else, !dbg !4119

if.then22:                                        ; preds = %if.end19
  %20 = load ptr, ptr %inode, align 8, !dbg !4120
  call void @drop_nlink(ptr noundef %20) #16, !dbg !4122
  %21 = load ptr, ptr %file.addr, align 8, !dbg !4123
  %f_path = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 10, !dbg !4124
  %dentry = getelementptr inbounds %struct.path, ptr %f_path, i32 0, i32 1, !dbg !4125
  %22 = load ptr, ptr %dentry, align 8, !dbg !4125
  call void @d_delete(ptr noundef %22) #16, !dbg !4126
  %23 = load ptr, ptr %file.addr, align 8, !dbg !4127
  %f_path23 = getelementptr inbounds %struct.file, ptr %23, i32 0, i32 10, !dbg !4128
  %dentry24 = getelementptr inbounds %struct.path, ptr %f_path23, i32 0, i32 1, !dbg !4129
  %24 = load ptr, ptr %dentry24, align 8, !dbg !4129
  call void @dput(ptr noundef %24) #16, !dbg !4130
  br label %if.end26, !dbg !4131

if.else:                                          ; preds = %if.end19
  %25 = load ptr, ptr %inode, align 8, !dbg !4132
  call void @inode_lock(ptr noundef %25) #16, !dbg !4134
  %26 = load ptr, ptr %inode, align 8, !dbg !4135
  %27 = load i64, ptr %datasize, align 8, !dbg !4136
  %add = add i64 %27, 4, !dbg !4137
  call void @i_size_write(ptr noundef %26, i64 noundef %add) #16, !dbg !4138
  %28 = load ptr, ptr %inode, align 8, !dbg !4139
  %i_mtime = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 17, !dbg !4140
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #15, !dbg !4141
  %29 = load ptr, ptr %inode, align 8, !dbg !4142
  %call25 = call { i64, i64 } @inode_set_ctime_current(ptr noundef %29) #16, !dbg !4141
  %30 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !4141
  %31 = extractvalue { i64, i64 } %call25, 0, !dbg !4141
  store i64 %31, ptr %30, align 8, !dbg !4141
  %32 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !4141
  %33 = extractvalue { i64, i64 } %call25, 1, !dbg !4141
  store i64 %33, ptr %32, align 8, !dbg !4141
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %tmp, i64 16, i1 false), !dbg !4141
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #15, !dbg !4141
  %34 = load ptr, ptr %inode, align 8, !dbg !4143
  call void @inode_unlock(ptr noundef %34) #16, !dbg !4144
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then22
  %35 = load i64, ptr %count.addr, align 8, !dbg !4145
  store i64 %35, ptr %bytes, align 8, !dbg !4146
  br label %out, !dbg !4147

out:                                              ; preds = %if.end26, %if.end18
  call void @llvm.dbg.label(metadata !4044), !dbg !4148
  %36 = load ptr, ptr %data, align 8, !dbg !4149
  call void @kfree(ptr noundef %36) #16, !dbg !4150
  %37 = load i64, ptr %bytes, align 8, !dbg !4151
  store i64 %37, ptr %retval, align 8, !dbg !4152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4152

cleanup:                                          ; preds = %out, %if.then8, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %set) #15, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 8, ptr %datasize) #15, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #15, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 4, ptr %attributes) #15, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 8, ptr %var) #15, !dbg !4153
  %38 = load i64, ptr %retval, align 8, !dbg !4153
  ret i64 %38, !dbg !4153
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4154 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4158 dso_local void @msleep(i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4162 dso_local i32 @efivar_entry_size(ptr noundef, ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !4165 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4169, metadata !DIExpression()), !dbg !4174
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4170, metadata !DIExpression()), !dbg !4175
  %0 = load i64, ptr %size.addr, align 8, !dbg !4176
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4177
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4178

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4179
  %tobool = icmp ne i64 %2, 0, !dbg !4179
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4180

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !4181
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4171, metadata !DIExpression()), !dbg !4182
  %3 = load i64, ptr %size.addr, align 8, !dbg !4183
  %cmp = icmp ugt i64 %3, 8192, !dbg !4185
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4186

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4187
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4188
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !4189
  store ptr %call, ptr %retval, align 8, !dbg !4190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4190

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4191
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !4191
  store i32 %call2, ptr %index, align 4, !dbg !4192
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4193
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4194
  %9 = ptrtoint ptr %8 to i64, !dbg !4194
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !4195
  %idxprom = zext i32 %call3 to i64, !dbg !4196
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4196
  %10 = load i32, ptr %index, align 4, !dbg !4197
  %idxprom4 = zext i32 %10 to i64, !dbg !4196
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4196
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4196
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4198
  %13 = load i64, ptr %size.addr, align 8, !dbg !4199
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !4200
  store ptr %call6, ptr %retval, align 8, !dbg !4201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4201

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !4202
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4203
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4204
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !4205
  store ptr %call8, ptr %retval, align 8, !dbg !4206
  br label %return, !dbg !4206

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4207
  ret ptr %16, !dbg !4207
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4208 dso_local i32 @efivar_entry_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4211 dso_local i64 @simple_read_from_buffer(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4214 dso_local void @kfree(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4217 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !4218 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4222, metadata !DIExpression()), !dbg !4224
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4223, metadata !DIExpression()), !dbg !4225
  %0 = load i64, ptr %size.addr, align 8, !dbg !4226
  %tobool = icmp ne i64 %0, 0, !dbg !4226
  br i1 %tobool, label %if.end, label %if.then, !dbg !4228

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4229
  br label %return, !dbg !4229

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4230
  %cmp = icmp ule i64 %1, 8, !dbg !4232
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4233

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4234
  br label %return, !dbg !4234

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4235
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4237
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4238

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4239
  %cmp4 = icmp ule i64 %3, 96, !dbg !4240
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4241

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4242
  br label %return, !dbg !4242

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4243
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4245
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4246

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4247
  %cmp9 = icmp ule i64 %5, 192, !dbg !4248
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4249

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4250
  br label %return, !dbg !4250

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4251
  %cmp12 = icmp ule i64 %6, 8, !dbg !4253
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4254

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4255
  br label %return, !dbg !4255

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4256
  %cmp15 = icmp ule i64 %7, 16, !dbg !4258
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4259

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4260
  br label %return, !dbg !4260

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4261
  %cmp18 = icmp ule i64 %8, 32, !dbg !4263
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4264

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4265
  br label %return, !dbg !4265

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4266
  %cmp21 = icmp ule i64 %9, 64, !dbg !4268
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4269

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4270
  br label %return, !dbg !4270

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4271
  %cmp24 = icmp ule i64 %10, 128, !dbg !4273
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4274

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4275
  br label %return, !dbg !4275

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4276
  %cmp27 = icmp ule i64 %11, 256, !dbg !4278
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4279

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4280
  br label %return, !dbg !4280

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4281
  %cmp30 = icmp ule i64 %12, 512, !dbg !4283
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4284

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4285
  br label %return, !dbg !4285

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4286
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4288
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4289

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4290
  br label %return, !dbg !4290

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4291
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4293
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4294

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4295
  br label %return, !dbg !4295

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4296
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4298
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4299

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4300
  br label %return, !dbg !4300

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4301
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4303
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4304

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4305
  br label %return, !dbg !4305

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4306
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4308
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4309

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4310
  br label %return, !dbg !4310

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4311
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4313
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4314

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4315
  br label %return, !dbg !4315

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4316
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4318
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4319

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4320
  br label %return, !dbg !4320

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4321
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4323
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4324

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4325
  br label %return, !dbg !4325

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4326
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4328
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4329

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4330
  br label %return, !dbg !4330

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4331
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4333
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4334

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4335
  br label %return, !dbg !4335

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4336
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4338
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4339

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4340
  br label %return, !dbg !4340

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4341
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4343
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4344

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4345
  br label %return, !dbg !4345

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4346, !range !4104, !noundef !491
  %tobool69 = trunc i8 %25 to i1, !dbg !4346
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4348

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4349

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_212() #19, !dbg !4350, !srcloc !4353
  unreachable, !dbg !4350

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4354

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4355

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4356

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4358

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4356

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #15, !dbg !4360, !srcloc !4362
  br label %do.end75, !dbg !4360

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4356

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4363
  br label %return, !dbg !4363

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4364
  ret i32 %26, !dbg !4364
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4365 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !4371 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4375, metadata !DIExpression()), !dbg !4377
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4376, metadata !DIExpression()), !dbg !4378
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4379
  %and = and i32 %0, 17, !dbg !4379
  %cmp = icmp eq i32 %and, 0, !dbg !4379
  %lnot = xor i1 %cmp, true, !dbg !4379
  %lnot1 = xor i1 %lnot, true, !dbg !4379
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4379
  %conv = sext i32 %lnot.ext to i64, !dbg !4379
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4379
  %tobool = icmp ne i64 %expval, 0, !dbg !4379
  br i1 %tobool, label %if.then, label %if.end, !dbg !4381

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4382
  br label %return, !dbg !4382

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4383
  %and2 = and i32 %1, 1, !dbg !4385
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4385
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4386

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4387
  br label %return, !dbg !4387

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4388
  br label %return, !dbg !4388

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4390
  ret i32 %2, !dbg !4390
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4391 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #7

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4392 dso_local void @__compiletime_assert_212() #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #8 align 16 !dbg !4393 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4398, metadata !DIExpression()), !dbg !4401
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4399, metadata !DIExpression()), !dbg !4402
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4400, metadata !DIExpression()), !dbg !4403
  %0 = load ptr, ptr %to.addr, align 8, !dbg !4404
  %1 = load i64, ptr %n.addr, align 8, !dbg !4406
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #16, !dbg !4407
  br i1 %call, label %if.then, label %if.end, !dbg !4408

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !4409
  %3 = load ptr, ptr %from.addr, align 8, !dbg !4410
  %4 = load i64, ptr %n.addr, align 8, !dbg !4411
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #16, !dbg !4412
  store i64 %call1, ptr %n.addr, align 8, !dbg !4413
  br label %if.end, !dbg !4414

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !4415
  ret i64 %5, !dbg !4416
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4417 dso_local ptr @memdup_user(ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #12 align 16 !dbg !4421 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4426, metadata !DIExpression()), !dbg !4427
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4428
  %1 = ptrtoint ptr %0 to i64, !dbg !4428
  %2 = inttoptr i64 %1 to ptr, !dbg !4428
  %3 = ptrtoint ptr %2 to i64, !dbg !4428
  %cmp = icmp uge i64 %3, -4095, !dbg !4428
  %lnot = xor i1 %cmp, true, !dbg !4428
  %lnot1 = xor i1 %lnot, true, !dbg !4428
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4428
  %conv = sext i32 %lnot.ext to i64, !dbg !4428
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4428
  %tobool = icmp ne i64 %expval, 0, !dbg !4428
  ret i1 %tobool, !dbg !4429
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #12 align 16 !dbg !4430 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4434, metadata !DIExpression()), !dbg !4435
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4436
  %1 = ptrtoint ptr %0 to i64, !dbg !4437
  ret i64 %1, !dbg !4438
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4439 dso_local i32 @efivar_entry_set_get_size(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4442 dso_local void @drop_nlink(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4443 dso_local void @d_delete(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4444 dso_local void @dput(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_lock(ptr noundef %inode) #12 align 16 !dbg !4445 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4447, metadata !DIExpression()), !dbg !4448
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4449
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !4450
  call void @down_write(ptr noundef %i_rwsem) #16, !dbg !4451
  ret void, !dbg !4452
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i_size_write(ptr noundef %inode, i64 noundef %i_size) #12 align 16 !dbg !4453 {
entry:
  %inode.addr = alloca ptr, align 8
  %i_size.addr = alloca i64, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4457, metadata !DIExpression()), !dbg !4459
  store i64 %i_size, ptr %i_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i_size.addr, metadata !4458, metadata !DIExpression()), !dbg !4460
  %0 = load i64, ptr %i_size.addr, align 8, !dbg !4461
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !4462
  %i_size1 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15, !dbg !4463
  store i64 %0, ptr %i_size1, align 8, !dbg !4464
  ret void, !dbg !4465
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4466 dso_local { i64, i64 } @inode_set_ctime_current(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @inode_unlock(ptr noundef %inode) #12 align 16 !dbg !4469 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4471, metadata !DIExpression()), !dbg !4472
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !4473
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 25, !dbg !4474
  call void @up_write(ptr noundef %i_rwsem) #16, !dbg !4475
  ret void, !dbg !4476
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #8 align 16 !dbg !4477 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4481, metadata !DIExpression()), !dbg !4491
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !4482, metadata !DIExpression()), !dbg !4492
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !4483, metadata !DIExpression()), !dbg !4493
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #15, !dbg !4494
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !4484, metadata !DIExpression()), !dbg !4495
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4496
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !4497
  %conv = trunc i64 %1 to i32, !dbg !4497
  store i32 %conv, ptr %sz, align 4, !dbg !4495
  %2 = load i32, ptr %sz, align 4, !dbg !4498
  %cmp = icmp sge i32 %2, 0, !dbg !4498
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4498

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !4498
  %conv2 = sext i32 %3 to i64, !dbg !4498
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !4498
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !4498
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !4500
  %lnot = xor i1 %5, true, !dbg !4498
  %lnot5 = xor i1 %lnot, true, !dbg !4498
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !4498
  %conv6 = sext i32 %lnot.ext to i64, !dbg !4498
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !4498
  %tobool = icmp ne i64 %expval, 0, !dbg !4498
  br i1 %tobool, label %if.then, label %if.end12, !dbg !4501

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !4502
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !4505
  br i1 %7, label %if.else, label %if.then7, !dbg !4506

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !4507
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !4508
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #16, !dbg !4509
  br label %if.end11, !dbg !4509

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !4510, !range !4104, !noundef !491
  %tobool8 = trunc i8 %10 to i1, !dbg !4510
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !4512

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #16, !dbg !4513, !srcloc !4514
  br label %if.end, !dbg !4513

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #16, !dbg !4515, !srcloc !4516
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !4517
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4517

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4518
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4485, metadata !DIExpression()), !dbg !4518
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !4518
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !4518
  %lnot15 = xor i1 %cmp13, true, !dbg !4518
  %lnot17 = xor i1 %lnot15, true, !dbg !4518
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4518
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !4518
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !4519
  %tobool19 = icmp ne i32 %12, 0, !dbg !4519
  %lnot20 = xor i1 %tobool19, true, !dbg !4519
  %lnot22 = xor i1 %lnot20, true, !dbg !4519
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4519
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4519
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4519
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !4519
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !4518

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !4519

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !4520
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4488, metadata !DIExpression()), !dbg !4520
  store i32 2307, ptr %__flags, align 4, !dbg !4520
  br label %do.body28, !dbg !4520

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !4521

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !4521

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !4520

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !4523
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 249, i32 %13, i64 12) #15, !dbg !4523, !srcloc !4525
  br label %do.cond30, !dbg !4523

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !4523

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !4520

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !4526

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4526

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !4519
  br label %do.cond35, !dbg !4520

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !4520

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !4520

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !4518
  %tobool38 = icmp ne i32 %14, 0, !dbg !4518
  %lnot39 = xor i1 %tobool38, true, !dbg !4518
  %lnot41 = xor i1 %lnot39, true, !dbg !4518
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !4518
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !4518
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !4518
  store i64 %expval44, ptr %tmp, align 8, !dbg !4519
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4528
  %15 = load i64, ptr %tmp, align 8, !dbg !4518
  %tobool45 = icmp ne i64 %15, 0, !dbg !4528
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !4529

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !4530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4530

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !4531
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !4532
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !4533, !range !4104, !noundef !491
  %tobool48 = trunc i8 %18 to i1, !dbg !4533
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #16, !dbg !4534
  store i1 true, ptr %retval, align 1, !dbg !4535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4535

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #15, !dbg !4536
  %19 = load i1, ptr %retval, align 1, !dbg !4536
  ret i1 %19, !dbg !4536
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4537 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #12 align 16 !dbg !4538 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4542, metadata !DIExpression()), !dbg !4544
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4543, metadata !DIExpression()), !dbg !4545
  %0 = load i32, ptr %size.addr, align 4, !dbg !4546
  %1 = load i64, ptr %count.addr, align 8, !dbg !4548
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #16, !dbg !4549
  ret void, !dbg !4550
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4551 dso_local void @__bad_copy_from() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4552 dso_local void @__bad_copy_to() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #12 align 16 !dbg !4553 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4557, metadata !DIExpression()), !dbg !4560
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4558, metadata !DIExpression()), !dbg !4561
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !4559, metadata !DIExpression()), !dbg !4562
  ret void, !dbg !4563
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4564 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4565 dso_local void @down_write(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4569 dso_local void @up_write(ptr noundef) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914}
!llvm.ident = !{!3915}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "efivarfs_file_operations", scope: !2, file: !3, line: 109, type: !104, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/efivarfs/.file.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D MODULE -D KBUILD_BASENAME=\22file\22 -D KBUILD_MODNAME=\22efivarfs\22 -D __KBUILD_MODNAME=kmod_efivarfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/efivarfs/file.ll fs/efivarfs/file.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !78, globals: !85, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/efivarfs/file.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0efa04a9c7bfd6f5bf67c3f86d93cbc3")
!4 = !{!5, !13, !18, !26, !32, !37, !43, !50, !57, !63, !68}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
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
!78 = !{!79, !80, !82, !83, !84}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !81, line: 154, baseType: !7)
!81 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!82 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!85 = !{!0, !86, !93, !98}
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 152, elements: !91)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!91 = !{!92}
!92 = !DISubrange(count: 19)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !69, line: 480, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 168, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 21)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !100, line: 249, type: !101, isLocal: true, isDefinition: true)
!100 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 224, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 28)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !106)
!106 = !{!107, !3789, !3793, !3797, !3801, !3802, !3803, !3809, !3822, !3826, !3830, !3831, !3835, !3836, !3840, !3845, !3846, !3850, !3854, !3860, !3861, !3865, !3866, !3870, !3874, !3875, !3880, !3884, !3888, !3892, !3896, !3897, !3903}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !105, file: !14, line: 1915, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !110)
!110 = !{!111, !112, !118, !122, !3465, !3491, !3492, !3493, !3494, !3498, !3501, !3502, !3503, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3570, !3574, !3592, !3609, !3610, !3611, !3612, !3621, !3644, !3645, !3648, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3662, !3663, !3749, !3757, !3758, !3759, !3761, !3765, !3766, !3770, !3771, !3772, !3773, !3775, !3776, !3777, !3784, !3785, !3786, !3788}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !109, file: !6, line: 403, baseType: !5, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !109, file: !6, line: 406, baseType: !113, size: 128, offset: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !81, line: 190, size: 128, elements: !114)
!114 = !{!115, !117}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !81, line: 191, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !113, file: !81, line: 191, baseType: !116, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !109, file: !6, line: 409, baseType: !119, size: 448, offset: 192)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 448, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 56)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !109, file: !6, line: 417, baseType: !123, size: 768, offset: 640)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !124)
!124 = !{!125, !3459, !3460, !3461, !3464}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !123, file: !6, line: 46, baseType: !126, size: 512)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !127, line: 64, size: 512, elements: !128)
!127 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!128 = !{!129, !131, !132, !134, !223, !3345, !3449, !3454, !3455, !3456, !3457, !3458}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !126, file: !127, line: 65, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !126, file: !127, line: 66, baseType: !113, size: 128, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !126, file: !127, line: 67, baseType: !133, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !126, file: !127, line: 68, baseType: !135, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !127, line: 168, size: 768, elements: !137)
!137 = !{!138, !139, !182, !183}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !136, file: !127, line: 169, baseType: !113, size: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !136, file: !127, line: 170, baseType: !140, size: 32, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !141, line: 29, baseType: !142)
!141 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !141, line: 17, size: 32, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, scope: !142, file: !141, line: 18, baseType: !145, size: 32)
!145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !142, file: !141, line: 18, size: 32, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !145, file: !141, line: 19, baseType: !148, size: 32)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !149, line: 14, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !148, file: !149, line: 15, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !153, line: 44, baseType: !154)
!153 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !153, line: 14, size: 32, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !153, line: 15, baseType: !157, size: 32)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !153, line: 15, size: 32, elements: !158)
!158 = !{!159, !164, !174}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !157, file: !153, line: 16, baseType: !160, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !81, line: 174, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 172, size: 32, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !161, file: !81, line: 173, baseType: !83, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, scope: !157, file: !153, line: 24, baseType: !165, size: 16)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !157, file: !153, line: 24, size: 16, elements: !166)
!166 = !{!167, !173}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !165, file: !153, line: 25, baseType: !168, size: 8)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !169, line: 17, baseType: !170)
!169 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !171, line: 21, baseType: !172)
!171 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!172 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !165, file: !153, line: 26, baseType: !168, size: 8, offset: 8)
!174 = !DIDerivedType(tag: DW_TAG_member, scope: !157, file: !153, line: 28, baseType: !175, size: 32)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !157, file: !153, line: 28, size: 32, elements: !176)
!176 = !{!177, !181}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !175, file: !153, line: 29, baseType: !178, size: 16)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !169, line: 19, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !171, line: 24, baseType: !180)
!180 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !175, file: !153, line: 30, baseType: !178, size: 16, offset: 16)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !136, file: !127, line: 171, baseType: !126, size: 512, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !136, file: !127, line: 172, baseType: !184, size: 64, offset: 704)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !127, line: 133, size: 192, elements: !187)
!187 = !{!188, !195, !200}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !186, file: !127, line: 134, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!83, !193}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !186, file: !127, line: 135, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!130, !193}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !186, file: !127, line: 136, baseType: !201, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!83, !193, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !127, line: 125, size: 20736, elements: !207)
!207 = !{!208, !213, !217, !218, !222}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !206, file: !127, line: 126, baseType: !209, size: 192)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 192, elements: !211)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!211 = !{!212}
!212 = !DISubrange(count: 3)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !206, file: !127, line: 127, baseType: !214, size: 4096, offset: 192)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 4096, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !206, file: !127, line: 128, baseType: !83, size: 32, offset: 4288)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !206, file: !127, line: 129, baseType: !219, size: 16384, offset: 4320)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 16384, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 2048)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !206, file: !127, line: 130, baseType: !83, size: 32, offset: 20704)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !126, file: !127, line: 69, baseType: !224, size: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !127, line: 116, size: 384, elements: !227)
!227 = !{!228, !232, !259, !3307, !3335, !3339}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !226, file: !127, line: 117, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !133}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !226, file: !127, line: 118, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !236, line: 254, size: 128, elements: !237)
!236 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!237 = !{!238, !252}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !235, file: !236, line: 255, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!242, !133, !246, !210}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !81, line: 66, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !244, line: 73, baseType: !245)
!244 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !244, line: 15, baseType: !84)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !236, line: 30, size: 128, elements: !248)
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !247, file: !236, line: 31, baseType: !130, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !247, file: !236, line: 32, baseType: !251, size: 16, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !81, line: 24, baseType: !180)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !235, file: !236, line: 256, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!242, !133, !246, !130, !256}
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 61, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !244, line: 72, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !244, line: 16, baseType: !82)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !226, file: !127, line: 119, baseType: !260, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !236, line: 84, size: 320, elements: !264)
!264 = !{!265, !266, !270, !3303, !3305}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !263, file: !236, line: 85, baseType: !130, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !263, file: !236, line: 86, baseType: !267, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!251, !133, !246, !83}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !263, file: !236, line: 88, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!251, !133, !274, !83}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !236, line: 175, size: 512, elements: !276)
!276 = !{!277, !278, !279, !280, !3241, !3245, !3246}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !275, file: !236, line: 176, baseType: !247, size: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !275, file: !236, line: 177, baseType: !256, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !275, file: !236, line: 178, baseType: !79, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !275, file: !236, line: 179, baseType: !281, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !286)
!286 = !{!287, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3235, !3236, !3237, !3238, !3239, !3240}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !285, file: !14, line: 473, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !290)
!290 = !{!291, !292, !293, !301, !302, !309, !310, !313, !314, !2974, !2975, !2976, !2977, !2978, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3018, !3021, !3022, !3023, !3040, !3041, !3042, !3043}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !289, file: !14, line: 642, baseType: !251, size: 16)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !289, file: !14, line: 643, baseType: !180, size: 16, offset: 16)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !289, file: !14, line: 644, baseType: !294, size: 32, offset: 32)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !295, line: 23, baseType: !296)
!295 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 21, size: 32, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !296, file: !295, line: 22, baseType: !299, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !81, line: 37, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !244, line: 49, baseType: !7)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !289, file: !14, line: 645, baseType: !113, size: 128, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !289, file: !14, line: 646, baseType: !303, size: 32, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !295, line: 28, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 26, size: 32, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !304, file: !295, line: 27, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !81, line: 38, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !244, line: 50, baseType: !7)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !289, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !289, file: !14, line: 650, baseType: !311, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !289, file: !14, line: 651, baseType: !311, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !289, file: !14, line: 654, baseType: !315, size: 64, offset: 384)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !318)
!318 = !{!319, !2799, !2812, !2816, !2820, !2824, !2828, !2832, !2836, !2840, !2844, !2845, !2849, !2853, !2890, !2919, !2923, !2929, !2933, !2937, !2941, !2945, !2949, !2955, !2959}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !317, file: !14, line: 1967, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!323, !288, !323, !7}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !325, line: 82, size: 1536, elements: !326)
!325 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!326 = !{!327, !328, !338, !346, !347, !367, !368, !372, !385, !2782, !2783, !2784, !2785, !2791, !2792, !2793}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !324, file: !325, line: 84, baseType: !7, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !324, file: !325, line: 85, baseType: !329, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !330, line: 275, baseType: !331)
!330 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !330, line: 275, size: 32, elements: !332)
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !331, file: !330, line: 275, baseType: !334, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !330, line: 69, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !330, line: 64, size: 32, elements: !336)
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !335, file: !330, line: 65, baseType: !7, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !324, file: !325, line: 86, baseType: !339, size: 128, offset: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !340, line: 38, size: 128, elements: !341)
!340 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!341 = !{!342, !344}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !340, line: 39, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !339, file: !340, line: 39, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !324, file: !325, line: 87, baseType: !323, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !324, file: !325, line: 88, baseType: !348, size: 128, offset: 256)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !325, line: 49, size: 128, elements: !349)
!349 = !{!350, !364}
!350 = !DIDerivedType(tag: DW_TAG_member, scope: !348, file: !325, line: 50, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !325, line: 50, size: 64, elements: !352)
!352 = !{!353, !360}
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !325, line: 51, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !351, file: !325, line: 51, size: 64, elements: !355)
!355 = !{!356, !359}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !354, file: !325, line: 52, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !169, line: 21, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !171, line: 27, baseType: !7)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !354, file: !325, line: 52, baseType: !357, size: 32, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !351, file: !325, line: 54, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !169, line: 23, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !171, line: 31, baseType: !363)
!363 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !348, file: !325, line: 56, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !324, file: !325, line: 89, baseType: !288, size: 64, offset: 384)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !324, file: !325, line: 91, baseType: !369, size: 256, offset: 448)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 256, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !324, file: !325, line: 94, baseType: !373, size: 64, offset: 704)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !374, line: 25, size: 64, elements: !375)
!374 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !374, line: 26, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !374, line: 26, size: 64, elements: !378)
!378 = !{!379, !380}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !377, file: !374, line: 28, baseType: !362, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !374, line: 30, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !377, file: !374, line: 30, size: 64, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !381, file: !374, line: 31, baseType: !140, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !381, file: !374, line: 32, baseType: !83, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !324, file: !325, line: 95, baseType: !386, size: 64, offset: 768)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !325, line: 128, size: 1024, align: 512, elements: !389)
!389 = !{!390, !394, !395, !402, !408, !412, !416, !420, !421, !425, !429, !2772, !2776}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !388, file: !325, line: 129, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!83, !323, !7}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !388, file: !325, line: 130, baseType: !391, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !388, file: !325, line: 131, baseType: !396, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!83, !399, !401}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !388, file: !325, line: 132, baseType: !403, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!83, !399, !7, !130, !406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !388, file: !325, line: 134, baseType: !409, size: 64, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!83, !399}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !388, file: !325, line: 135, baseType: !413, size: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!83, !323}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !388, file: !325, line: 136, baseType: !417, size: 64, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !323}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !388, file: !325, line: 137, baseType: !417, size: 64, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !388, file: !325, line: 138, baseType: !422, size: 64, offset: 512)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !323, !288}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !388, file: !325, line: 139, baseType: !426, size: 64, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!210, !323, !210, !83}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !388, file: !325, line: 140, baseType: !430, size: 64, offset: 640)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!433, !2771}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !435, line: 70, size: 256, elements: !436)
!435 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!436 = !{!437, !438, !2767, !2768}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !434, file: !435, line: 71, baseType: !323, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !434, file: !435, line: 72, baseType: !439, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !441)
!441 = !{!442, !443, !446, !447, !448, !452, !500, !1025, !1065, !1150, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1167, !1171, !1172, !1175, !1178, !1181, !1184, !1185, !1186, !1227, !2698, !2699, !2700, !2701, !2702, !2703, !2706, !2708, !2715, !2716, !2717, !2718, !2719, !2734, !2735, !2736, !2737, !2738, !2741, !2742, !2743, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !440, file: !14, line: 1191, baseType: !113, size: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !440, file: !14, line: 1192, baseType: !444, size: 32, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !81, line: 21, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !81, line: 18, baseType: !357)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !440, file: !14, line: 1193, baseType: !172, size: 8, offset: 160)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !440, file: !14, line: 1194, baseType: !82, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !440, file: !14, line: 1195, baseType: !449, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !81, line: 52, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !244, line: 88, baseType: !451)
!451 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !440, file: !14, line: 1196, baseType: !453, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !455)
!455 = !{!456, !457, !458, !464, !468, !472, !476, !477, !478, !488, !492, !493, !494, !496, !497, !498, !499}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !454, file: !14, line: 2367, baseType: !130, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !454, file: !14, line: 2368, baseType: !83, size: 32, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !454, file: !14, line: 2376, baseType: !459, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!83, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !435, line: 21, flags: DIFlagFwdDecl)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !454, file: !14, line: 2377, baseType: !465, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !454, file: !14, line: 2378, baseType: !469, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!323, !453, !83, !130, !79}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !454, file: !14, line: 2380, baseType: !473, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !439}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !454, file: !14, line: 2381, baseType: !108, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !454, file: !14, line: 2382, baseType: !453, size: 64, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !454, file: !14, line: 2383, baseType: !479, size: 64, offset: 512)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !81, line: 194, size: 64, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !479, file: !81, line: 195, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !81, line: 198, size: 128, elements: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !483, file: !81, line: 199, baseType: !482, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !483, file: !81, line: 199, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !454, file: !14, line: 2385, baseType: !489, offset: 576)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !490, line: 206, elements: !491)
!490 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!491 = !{}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !454, file: !14, line: 2386, baseType: !489, offset: 576)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !454, file: !14, line: 2387, baseType: !489, offset: 576)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !454, file: !14, line: 2388, baseType: !495, offset: 576)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, elements: !211)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !454, file: !14, line: 2390, baseType: !489, offset: 576)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !454, file: !14, line: 2391, baseType: !489, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !454, file: !14, line: 2392, baseType: !489, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !454, file: !14, line: 2393, baseType: !489, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !440, file: !14, line: 1197, baseType: !501, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !504)
!504 = !{!505, !509, !513, !514, !518, !524, !528, !529, !530, !534, !538, !542, !543, !544, !550, !555, !556, !950, !951, !952, !953, !957, !961, !1008, !1023, !1024}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !503, file: !14, line: 2058, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!288, !439}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !503, file: !14, line: 2059, baseType: !510, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !288}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !503, file: !14, line: 2060, baseType: !510, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !503, file: !14, line: 2062, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !288, !83}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !503, file: !14, line: 2063, baseType: !519, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!83, !288, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !503, file: !14, line: 2064, baseType: !525, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!83, !288}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !503, file: !14, line: 2065, baseType: !510, size: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !503, file: !14, line: 2066, baseType: !473, size: 64, offset: 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !503, file: !14, line: 2067, baseType: !531, size: 64, offset: 512)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!83, !439, !83}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !503, file: !14, line: 2068, baseType: !535, size: 64, offset: 576)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!83, !439, !13}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !503, file: !14, line: 2069, baseType: !539, size: 64, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!83, !439}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !503, file: !14, line: 2070, baseType: !535, size: 64, offset: 704)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !503, file: !14, line: 2071, baseType: !539, size: 64, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !503, file: !14, line: 2072, baseType: !545, size: 64, offset: 832)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!83, !323, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !503, file: !14, line: 2073, baseType: !551, size: 64, offset: 896)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!83, !439, !554, !210}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !503, file: !14, line: 2074, baseType: !473, size: 64, offset: 960)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !503, file: !14, line: 2076, baseType: !557, size: 64, offset: 1024)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!83, !560, !323}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !562, line: 17, size: 960, elements: !563)
!562 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!563 = !{!564, !565, !566, !567, !568, !569, !570, !571, !592, !614, !615, !949}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !561, file: !562, line: 18, baseType: !210, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !561, file: !562, line: 19, baseType: !256, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !561, file: !562, line: 20, baseType: !256, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !561, file: !562, line: 21, baseType: !256, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !561, file: !562, line: 22, baseType: !256, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !561, file: !562, line: 23, baseType: !449, size: 64, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !561, file: !562, line: 24, baseType: !449, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !561, file: !562, line: 25, baseType: !572, size: 256, offset: 448)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !573, line: 66, size: 256, elements: !574)
!573 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!574 = !{!575, !584, !586, !591}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !572, file: !573, line: 67, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !577, line: 13, baseType: !578)
!577 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !81, line: 181, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 179, size: 64, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !579, file: !81, line: 180, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !169, line: 22, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !171, line: 30, baseType: !451)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !572, file: !573, line: 68, baseType: !585, size: 32, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !149, line: 23, baseType: !148)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !572, file: !573, line: 70, baseType: !587, size: 32, offset: 96)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !588, line: 15, size: 32, elements: !589)
!588 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !587, file: !588, line: 20, baseType: !160, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !572, file: !573, line: 72, baseType: !113, size: 128, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !561, file: !562, line: 26, baseType: !593, size: 64, offset: 704)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !562, line: 32, size: 256, elements: !596)
!596 = !{!597, !602, !606, !610}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !595, file: !562, line: 33, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!79, !560, !601}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !595, file: !562, line: 34, baseType: !603, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !560, !79}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !595, file: !562, line: 35, baseType: !607, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!79, !560, !79, !601}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !595, file: !562, line: 36, baseType: !611, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!83, !560, !79}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !561, file: !562, line: 27, baseType: !83, size: 32, offset: 768)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !561, file: !562, line: 28, baseType: !616, size: 64, offset: 832)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !619)
!619 = !{!620, !639, !640, !642, !643, !644, !645, !646, !709, !921, !930, !936, !937, !939, !940, !941, !942, !944, !945, !948}
!620 = !DIDerivedType(tag: DW_TAG_member, scope: !618, file: !14, line: 995, baseType: !621, size: 128)
!621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !618, file: !14, line: 995, size: 128, elements: !622)
!622 = !{!623, !629, !638}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !621, file: !14, line: 996, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !625, line: 60, size: 64, elements: !626)
!625 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !624, file: !625, line: 61, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !621, file: !14, line: 997, baseType: !630, size: 128, align: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !81, line: 232, size: 128, align: 64, elements: !631)
!631 = !{!632, !634}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !630, file: !81, line: 233, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !630, file: !81, line: 234, baseType: !635, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !633}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !621, file: !14, line: 998, baseType: !7, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !618, file: !14, line: 1005, baseType: !140, size: 32, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !618, file: !14, line: 1006, baseType: !641, size: 32, offset: 160)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !81, line: 156, baseType: !7)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !618, file: !14, line: 1007, baseType: !576, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !618, file: !14, line: 1008, baseType: !572, size: 256, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !618, file: !14, line: 1009, baseType: !449, size: 64, offset: 512)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !618, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !618, file: !14, line: 1011, baseType: !647, size: 256, offset: 640)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !648)
!648 = !{!649, !670, !705, !706, !707, !708}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !647, file: !14, line: 949, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !651, line: 34, baseType: !652)
!651 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !651, line: 25, size: 64, elements: !653)
!653 = !{!654}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !652, file: !651, line: 26, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !656, line: 27, baseType: !657)
!656 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !656, line: 13, size: 64, elements: !658)
!658 = !{!659, !669}
!659 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !656, line: 14, baseType: !660, size: 32)
!660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !656, line: 14, size: 32, elements: !661)
!661 = !{!662, !663}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !660, file: !656, line: 15, baseType: !160, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !656, line: 16, baseType: !664, size: 32)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !660, file: !656, line: 16, size: 32, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !664, file: !656, line: 18, baseType: !168, size: 8)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !664, file: !656, line: 19, baseType: !668, size: 24, offset: 8)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 24, elements: !211)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !657, file: !656, line: 26, baseType: !152, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !647, file: !14, line: 950, baseType: !671, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !673)
!673 = !{!674, !680, !681, !682, !686, !687, !694, !695}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !672, file: !19, line: 61, baseType: !675, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !676, line: 113, baseType: !677)
!676 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !676, line: 111, size: 32, elements: !678)
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !677, file: !676, line: 112, baseType: !160, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !672, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !672, file: !19, line: 63, baseType: !140, size: 32, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !672, file: !19, line: 65, baseType: !683, size: 256, offset: 128)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 256, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 4)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !672, file: !19, line: 66, baseType: !479, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !672, file: !19, line: 68, baseType: !688, size: 192, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !689, line: 41, baseType: !690)
!689 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !689, line: 37, size: 192, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !690, file: !689, line: 38, baseType: !140, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !690, file: !689, line: 39, baseType: !113, size: 128, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !672, file: !19, line: 69, baseType: !630, size: 128, align: 64, offset: 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !672, file: !19, line: 70, baseType: !696, offset: 768)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, elements: !703)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !697, file: !19, line: 55, baseType: !83, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !697, file: !19, line: 56, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!703 = !{!704}
!704 = !DISubrange(count: -1)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !647, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !647, file: !14, line: 952, baseType: !294, size: 32, offset: 160)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !647, file: !14, line: 952, baseType: !294, size: 32, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !647, file: !14, line: 953, baseType: !83, size: 32, offset: 224)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !618, file: !14, line: 1012, baseType: !710, size: 64, offset: 896)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !713, line: 110, size: 1472, elements: !714)
!713 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !731, !732, !733, !734, !735, !736, !866, !867, !868, !869, !870, !901, !904, !908, !916}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !712, file: !713, line: 111, baseType: !576, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !712, file: !713, line: 112, baseType: !294, size: 32, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !712, file: !713, line: 113, baseType: !303, size: 32, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !712, file: !713, line: 114, baseType: !294, size: 32, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !712, file: !713, line: 115, baseType: !303, size: 32, offset: 160)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !712, file: !713, line: 116, baseType: !294, size: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !712, file: !713, line: 117, baseType: !303, size: 32, offset: 224)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !712, file: !713, line: 118, baseType: !294, size: 32, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !712, file: !713, line: 119, baseType: !303, size: 32, offset: 288)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !712, file: !713, line: 120, baseType: !7, size: 32, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !712, file: !713, line: 121, baseType: !726, size: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !727, line: 24, baseType: !728)
!727 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !727, line: 24, size: 64, elements: !729)
!729 = !{!730}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !728, file: !727, line: 24, baseType: !361, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !712, file: !713, line: 122, baseType: !726, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !712, file: !713, line: 123, baseType: !726, size: 64, offset: 512)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !712, file: !713, line: 124, baseType: !726, size: 64, offset: 576)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !712, file: !713, line: 125, baseType: !726, size: 64, offset: 640)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !712, file: !713, line: 127, baseType: !172, size: 8, offset: 704)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !712, file: !713, line: 129, baseType: !737, size: 64, offset: 768)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !739, line: 195, size: 1728, elements: !740)
!739 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!740 = !{!741, !742, !747, !759, !768, !771, !772, !779, !780, !781, !782, !785, !786, !787, !789, !790, !830, !851}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !738, file: !739, line: 196, baseType: !675, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !738, file: !739, line: 197, baseType: !743, size: 32, offset: 32)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !739, line: 28, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !81, line: 104, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !169, line: 20, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !171, line: 26, baseType: !83)
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !739, line: 198, baseType: !748, size: 192, offset: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !739, line: 198, size: 192, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !748, file: !739, line: 199, baseType: !113, size: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !748, file: !739, line: 200, baseType: !752, size: 192, align: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !753, line: 5, size: 192, align: 64, elements: !754)
!753 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!754 = !{!755, !756, !758}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !752, file: !753, line: 6, baseType: !82, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !752, file: !753, line: 7, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !752, file: !753, line: 8, baseType: !757, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !738, file: !739, line: 205, baseType: !760, size: 320, offset: 256)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !761, line: 48, size: 320, elements: !762)
!761 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!762 = !{!763, !764, !765, !766, !767}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !760, file: !761, line: 49, baseType: !576, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !760, file: !761, line: 55, baseType: !576, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !760, file: !761, line: 57, baseType: !587, size: 32, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !760, file: !761, line: 59, baseType: !585, size: 32, offset: 160)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !760, file: !761, line: 60, baseType: !113, size: 128, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !738, file: !739, line: 206, baseType: !769, size: 64, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !739, line: 206, flags: DIFlagFwdDecl)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !738, file: !739, line: 207, baseType: !79, size: 64, offset: 640)
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !739, line: 208, baseType: !773, size: 64, offset: 704)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !739, line: 208, size: 64, elements: !774)
!774 = !{!775, !778}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !773, file: !739, line: 209, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !777, line: 8, baseType: !583)
!777 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!778 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !773, file: !739, line: 210, baseType: !776, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !738, file: !739, line: 212, baseType: !776, size: 64, offset: 768)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !738, file: !739, line: 213, baseType: !294, size: 32, offset: 832)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !738, file: !739, line: 214, baseType: !303, size: 32, offset: 864)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !738, file: !739, line: 215, baseType: !783, size: 32, offset: 896)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !739, line: 31, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !81, line: 110, baseType: !357)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !738, file: !739, line: 216, baseType: !180, size: 16, offset: 928)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !738, file: !739, line: 217, baseType: !180, size: 16, offset: 944)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !738, file: !739, line: 221, baseType: !788, size: 16, offset: 960)
!788 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !739, line: 228, baseType: !82, size: 64, offset: 1024)
!790 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !739, line: 245, baseType: !791, size: 320, offset: 1088)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !739, line: 245, size: 320, elements: !792)
!792 = !{!793, !822}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !791, file: !739, line: 246, baseType: !794, size: 320)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !739, line: 114, size: 320, elements: !795)
!795 = !{!796, !797, !809, !812, !821}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !794, file: !739, line: 116, baseType: !82, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, scope: !794, file: !739, line: 117, baseType: !798, size: 64, offset: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !794, file: !739, line: 117, size: 64, elements: !799)
!799 = !{!800, !808}
!800 = !DIDerivedType(tag: DW_TAG_member, scope: !798, file: !739, line: 118, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !798, file: !739, line: 118, size: 64, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !801, file: !739, line: 120, baseType: !178, size: 16)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !801, file: !739, line: 121, baseType: !805, size: 48, offset: 16)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 48, elements: !806)
!806 = !{!807}
!807 = !DISubrange(count: 6)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !798, file: !739, line: 127, baseType: !82, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !794, file: !739, line: 129, baseType: !810, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !739, line: 102, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !794, file: !739, line: 130, baseType: !813, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !739, line: 108, size: 192, elements: !815)
!815 = !{!816, !817, !818}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !814, file: !739, line: 109, baseType: !630, size: 128, align: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !814, file: !739, line: 110, baseType: !675, size: 32, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !814, file: !739, line: 111, baseType: !819, size: 8, offset: 160)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !81, line: 35, baseType: !820)
!820 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !794, file: !739, line: 131, baseType: !130, size: 64, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !739, line: 247, baseType: !823, size: 320)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !791, file: !739, line: 247, size: 320, elements: !824)
!824 = !{!825, !826, !827, !828, !829}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !823, file: !739, line: 248, baseType: !82, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !823, file: !739, line: 249, baseType: !82, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !823, file: !739, line: 250, baseType: !810, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !823, file: !739, line: 251, baseType: !813, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !823, file: !739, line: 252, baseType: !210, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !739, line: 260, baseType: !831, size: 256, offset: 1408)
!831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !738, file: !739, line: 260, size: 256, elements: !832)
!832 = !{!833, !839}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !831, file: !739, line: 261, baseType: !834, size: 256)
!834 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !739, line: 134, size: 256, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !834, file: !739, line: 135, baseType: !79, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !834, file: !739, line: 136, baseType: !838, size: 256)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !684)
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !831, file: !739, line: 262, baseType: !840, size: 256)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !831, file: !739, line: 262, size: 256, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !840, file: !739, line: 264, baseType: !113, size: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !840, file: !739, line: 265, baseType: !844, size: 128, offset: 128)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !845, line: 22, size: 128, elements: !846)
!845 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!846 = !{!847, !850}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !844, file: !845, line: 23, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !845, line: 23, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !844, file: !845, line: 24, baseType: !82, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !738, file: !739, line: 280, baseType: !852, size: 64, offset: 1664)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !739, line: 176, size: 192, elements: !854)
!854 = !{!855, !864, !865}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !853, file: !739, line: 177, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !739, line: 171, baseType: !857)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!83, !737, !860, !862, !737}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !811)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !853, file: !739, line: 178, baseType: !737, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !853, file: !739, line: 179, baseType: !810, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !712, file: !713, line: 130, baseType: !737, size: 64, offset: 832)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !712, file: !713, line: 131, baseType: !737, size: 64, offset: 896)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !712, file: !713, line: 132, baseType: !737, size: 64, offset: 960)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !712, file: !713, line: 135, baseType: !79, size: 64, offset: 1024)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !712, file: !713, line: 137, baseType: !871, size: 64, offset: 1088)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !873, line: 14, size: 1088, elements: !874)
!873 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!874 = !{!875, !876, !885, !886, !887, !888, !889, !890}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !872, file: !873, line: 15, baseType: !675, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !872, file: !873, line: 17, baseType: !877, size: 320, offset: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !878, line: 22, size: 320, elements: !879)
!878 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!879 = !{!880, !881, !882, !883}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !877, file: !878, line: 23, baseType: !585, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !877, file: !878, line: 24, baseType: !582, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !877, file: !878, line: 26, baseType: !113, size: 128, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !877, file: !878, line: 28, baseType: !884, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !872, file: !873, line: 19, baseType: !82, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !872, file: !873, line: 20, baseType: !576, size: 64, offset: 448)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !872, file: !873, line: 23, baseType: !483, size: 128, offset: 512)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !872, file: !873, line: 24, baseType: !294, size: 32, offset: 640)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !872, file: !873, line: 29, baseType: !576, size: 64, offset: 704)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !872, file: !873, line: 36, baseType: !891, size: 320, offset: 768)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !892, line: 15, size: 320, elements: !893)
!892 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!893 = !{!894, !895, !896, !897, !898, !899, !900}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !891, file: !892, line: 16, baseType: !585, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !891, file: !892, line: 18, baseType: !83, size: 32, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !891, file: !892, line: 19, baseType: !83, size: 32, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !891, file: !892, line: 20, baseType: !83, size: 32, offset: 96)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !891, file: !892, line: 21, baseType: !83, size: 32, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !891, file: !892, line: 22, baseType: !82, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !891, file: !892, line: 23, baseType: !82, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !712, file: !713, line: 138, baseType: !902, size: 64, offset: 1152)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !295, line: 18, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !712, file: !713, line: 139, baseType: !905, size: 64, offset: 1216)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !907, line: 16, flags: DIFlagFwdDecl)
!907 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!908 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !712, file: !713, line: 140, baseType: !909, size: 64, offset: 1280)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !713, line: 25, size: 64, elements: !911)
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !910, file: !713, line: 26, baseType: !160, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !910, file: !713, line: 27, baseType: !83, size: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !910, file: !713, line: 28, baseType: !915, offset: 64)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, elements: !703)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !712, file: !713, line: 142, baseType: !917, size: 128, offset: 1344)
!917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !712, file: !713, line: 142, size: 128, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !917, file: !713, line: 143, baseType: !83, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !917, file: !713, line: 144, baseType: !630, size: 128, align: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !618, file: !14, line: 1013, baseType: !922, size: 256, offset: 960)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !923)
!923 = !{!924, !925, !926, !927, !928, !929}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !922, file: !14, line: 971, baseType: !82, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !922, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !922, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !922, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !922, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !922, file: !14, line: 976, baseType: !449, size: 64, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !618, file: !14, line: 1014, baseType: !931, size: 128, offset: 1216)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !932, line: 8, size: 128, elements: !933)
!932 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !931, file: !932, line: 9, baseType: !433, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !931, file: !932, line: 10, baseType: !323, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !618, file: !14, line: 1015, baseType: !288, size: 64, offset: 1344)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !618, file: !14, line: 1016, baseType: !938, size: 64, offset: 1408)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !618, file: !14, line: 1018, baseType: !361, size: 64, offset: 1472)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !618, file: !14, line: 1020, baseType: !79, size: 64, offset: 1536)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !618, file: !14, line: 1023, baseType: !79, size: 64, offset: 1600)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !618, file: !14, line: 1027, baseType: !943, size: 64, offset: 1664)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !618, file: !14, line: 1029, baseType: !284, size: 64, offset: 1728)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !618, file: !14, line: 1030, baseType: !946, size: 32, offset: 1792)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !947, line: 8, baseType: !357)
!947 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!948 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !618, file: !14, line: 1031, baseType: !946, size: 32, offset: 1824)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !561, file: !562, line: 29, baseType: !79, size: 64, offset: 896)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !503, file: !14, line: 2077, baseType: !557, size: 64, offset: 1088)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !503, file: !14, line: 2078, baseType: !557, size: 64, offset: 1152)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !503, file: !14, line: 2079, baseType: !557, size: 64, offset: 1216)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !503, file: !14, line: 2081, baseType: !954, size: 64, offset: 1280)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!242, !439, !83, !210, !256, !449}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !503, file: !14, line: 2082, baseType: !958, size: 64, offset: 1344)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!242, !439, !83, !130, !256, !449}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !503, file: !14, line: 2083, baseType: !962, size: 64, offset: 1408)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!965, !288}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !27, line: 296, size: 1664, elements: !968)
!968 = !{!969, !970, !971, !972, !973, !974, !975, !976, !977, !993, !994, !995}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !967, file: !27, line: 297, baseType: !483, size: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !967, file: !27, line: 298, baseType: !113, size: 128, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !967, file: !27, line: 299, baseType: !113, size: 128, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !967, file: !27, line: 300, baseType: !113, size: 128, offset: 384)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !967, file: !27, line: 301, baseType: !572, size: 256, offset: 512)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !967, file: !27, line: 302, baseType: !140, size: 32, offset: 768)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !967, file: !27, line: 303, baseType: !160, size: 32, offset: 800)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !967, file: !27, line: 304, baseType: !439, size: 64, offset: 832)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !967, file: !27, line: 305, baseType: !978, size: 64, offset: 896)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !27, line: 68, size: 64, elements: !979)
!979 = !{!980, !992}
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !27, line: 69, baseType: !981, size: 32)
!981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !978, file: !27, line: 69, size: 32, elements: !982)
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !981, file: !27, line: 70, baseType: !294, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !981, file: !27, line: 71, baseType: !303, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !981, file: !27, line: 72, baseType: !986, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !987, line: 24, baseType: !988)
!987 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !987, line: 22, size: 32, elements: !989)
!989 = !{!990}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !988, file: !987, line: 23, baseType: !991, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !987, line: 20, baseType: !300)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !978, file: !27, line: 74, baseType: !26, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !967, file: !27, line: 306, baseType: !449, size: 64, offset: 960)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !967, file: !27, line: 307, baseType: !82, size: 64, offset: 1024)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !967, file: !27, line: 308, baseType: !996, size: 576, offset: 1088)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !27, line: 205, size: 576, elements: !997)
!997 = !{!998, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !996, file: !27, line: 206, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !27, line: 66, baseType: !451)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !996, file: !27, line: 207, baseType: !999, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !996, file: !27, line: 208, baseType: !999, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !996, file: !27, line: 209, baseType: !999, size: 64, offset: 192)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !996, file: !27, line: 210, baseType: !999, size: 64, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !996, file: !27, line: 211, baseType: !999, size: 64, offset: 320)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !996, file: !27, line: 212, baseType: !999, size: 64, offset: 384)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !996, file: !27, line: 213, baseType: !776, size: 64, offset: 448)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !996, file: !27, line: 214, baseType: !776, size: 64, offset: 512)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !503, file: !14, line: 2085, baseType: !1009, size: 64, offset: 1472)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!84, !439, !1012}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1014, line: 15, size: 256, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1015 = !{!1016, !1017, !1018, !1019, !1020}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1013, file: !1014, line: 16, baseType: !80, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1013, file: !1014, line: 19, baseType: !83, size: 32, offset: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1013, file: !1014, line: 26, baseType: !82, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1013, file: !1014, line: 33, baseType: !82, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1013, file: !1014, line: 36, baseType: !1021, size: 64, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1014, line: 36, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !503, file: !14, line: 2087, baseType: !1009, size: 64, offset: 1536)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !503, file: !14, line: 2089, baseType: !473, size: 64, offset: 1600)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !440, file: !14, line: 1198, baseType: !1026, size: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !27, line: 324, size: 704, elements: !1029)
!1029 = !{!1030, !1034, !1038, !1042, !1043, !1044, !1045, !1046, !1051, !1056, !1060}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1028, file: !27, line: 325, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!83, !966}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1028, file: !27, line: 326, baseType: !1035, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!966, !439, !83}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1028, file: !27, line: 327, baseType: !1039, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !966}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1028, file: !27, line: 328, baseType: !1031, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1028, file: !27, line: 329, baseType: !1031, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1028, file: !27, line: 330, baseType: !1031, size: 64, offset: 320)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1028, file: !27, line: 331, baseType: !531, size: 64, offset: 384)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1028, file: !27, line: 334, baseType: !1047, size: 64, offset: 448)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!1050, !288}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1028, file: !27, line: 335, baseType: !1052, size: 64, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!83, !288, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1028, file: !27, line: 337, baseType: !1057, size: 64, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!83, !288, !1050}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1028, file: !27, line: 339, baseType: !1061, size: 64, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!83, !439, !1064}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !440, file: !14, line: 1199, baseType: !1066, size: 64, offset: 512)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !27, line: 430, size: 704, elements: !1069)
!1069 = !{!1070, !1076, !1077, !1081, !1082, !1083, !1098, !1121, !1125, !1126, !1149}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1068, file: !27, line: 431, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!83, !439, !83, !83, !1074}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !931)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1068, file: !27, line: 432, baseType: !531, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1068, file: !27, line: 433, baseType: !1078, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!83, !439, !7}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1068, file: !27, line: 434, baseType: !1078, size: 64, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1068, file: !27, line: 435, baseType: !531, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1068, file: !27, line: 436, baseType: !1084, size: 64, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!83, !439, !83, !1087}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !27, line: 417, size: 256, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1088, file: !27, line: 418, baseType: !83, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1088, file: !27, line: 419, baseType: !7, size: 32, offset: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1088, file: !27, line: 420, baseType: !7, size: 32, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1088, file: !27, line: 422, baseType: !7, size: 32, offset: 96)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1088, file: !27, line: 423, baseType: !7, size: 32, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1088, file: !27, line: 424, baseType: !7, size: 32, offset: 160)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1088, file: !27, line: 425, baseType: !7, size: 32, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1088, file: !27, line: 426, baseType: !7, size: 32, offset: 224)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1068, file: !27, line: 437, baseType: !1099, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!83, !439, !978, !1102}
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !27, line: 345, size: 960, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1103, file: !27, line: 346, baseType: !83, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1103, file: !27, line: 347, baseType: !361, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1103, file: !27, line: 348, baseType: !361, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1103, file: !27, line: 349, baseType: !361, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1103, file: !27, line: 350, baseType: !361, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1103, file: !27, line: 351, baseType: !361, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1103, file: !27, line: 352, baseType: !361, size: 64, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1103, file: !27, line: 353, baseType: !582, size: 64, offset: 448)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1103, file: !27, line: 355, baseType: !582, size: 64, offset: 512)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1103, file: !27, line: 356, baseType: !83, size: 32, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1103, file: !27, line: 357, baseType: !83, size: 32, offset: 608)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1103, file: !27, line: 358, baseType: !361, size: 64, offset: 640)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1103, file: !27, line: 359, baseType: !361, size: 64, offset: 704)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1103, file: !27, line: 360, baseType: !361, size: 64, offset: 768)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1103, file: !27, line: 361, baseType: !582, size: 64, offset: 832)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1103, file: !27, line: 362, baseType: !83, size: 32, offset: 896)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1068, file: !27, line: 438, baseType: !1122, size: 64, offset: 448)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!83, !439, !1064, !1102}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1068, file: !27, line: 440, baseType: !1099, size: 64, offset: 512)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1068, file: !27, line: 441, baseType: !1127, size: 64, offset: 576)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!83, !439, !1130}
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !27, line: 411, size: 1408, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1131, file: !27, line: 412, baseType: !7, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1131, file: !27, line: 413, baseType: !1135, size: 1344, offset: 64)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 1344, elements: !211)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !27, line: 397, size: 448, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1148}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1136, file: !27, line: 398, baseType: !7, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1136, file: !27, line: 399, baseType: !7, size: 32, offset: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1136, file: !27, line: 401, baseType: !7, size: 32, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1136, file: !27, line: 402, baseType: !7, size: 32, offset: 96)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1136, file: !27, line: 403, baseType: !7, size: 32, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1136, file: !27, line: 404, baseType: !7, size: 32, offset: 160)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1136, file: !27, line: 405, baseType: !7, size: 32, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1136, file: !27, line: 406, baseType: !363, size: 64, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1136, file: !27, line: 407, baseType: !1147, size: 64, offset: 320)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !81, line: 132, baseType: !361)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1136, file: !27, line: 408, baseType: !1147, size: 64, offset: 384)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1068, file: !27, line: 442, baseType: !1078, size: 64, offset: 640)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !440, file: !14, line: 1200, baseType: !1151, size: 64, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1153)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !440, file: !14, line: 1201, baseType: !82, size: 64, offset: 640)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !440, file: !14, line: 1202, baseType: !82, size: 64, offset: 704)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !440, file: !14, line: 1203, baseType: !82, size: 64, offset: 768)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !440, file: !14, line: 1204, baseType: !323, size: 64, offset: 832)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !440, file: !14, line: 1205, baseType: !760, size: 320, offset: 896)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !440, file: !14, line: 1206, baseType: !83, size: 32, offset: 1216)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !440, file: !14, line: 1207, baseType: !160, size: 32, offset: 1248)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !440, file: !14, line: 1209, baseType: !79, size: 64, offset: 1280)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !440, file: !14, line: 1211, baseType: !1163, size: 64, offset: 1344)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1166)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !440, file: !14, line: 1223, baseType: !1168, size: 64, offset: 1408)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !340, line: 34, size: 64, elements: !1169)
!1169 = !{!1170}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1168, file: !340, line: 35, baseType: !343, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !440, file: !14, line: 1224, baseType: !113, size: 128, offset: 1472)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !440, file: !14, line: 1225, baseType: !1173, size: 64, offset: 1600)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !440, file: !14, line: 1226, baseType: !1176, size: 64, offset: 1664)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !440, file: !14, line: 1227, baseType: !1179, size: 64, offset: 1728)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !440, file: !14, line: 1228, baseType: !1182, size: 64, offset: 1792)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !440, file: !14, line: 1229, baseType: !483, size: 128, offset: 1856)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !440, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !440, file: !14, line: 1231, baseType: !1187, size: 2496, offset: 2048)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !27, line: 521, size: 2496, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1193, !1225}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1187, file: !27, line: 522, baseType: !7, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1187, file: !27, line: 523, baseType: !760, size: 320, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1187, file: !27, line: 524, baseType: !1192, size: 192, offset: 384)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 192, elements: !211)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1187, file: !27, line: 525, baseType: !1194, size: 1728, offset: 576)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1195, size: 1728, elements: !211)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !27, line: 222, size: 576, elements: !1196)
!1196 = !{!1197, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1195, file: !27, line: 223, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !27, line: 445, size: 256, elements: !1200)
!1200 = !{!1201, !1202, !1215, !1216}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1199, file: !27, line: 446, baseType: !83, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1199, file: !27, line: 447, baseType: !1203, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !27, line: 312, size: 512, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1205, file: !27, line: 313, baseType: !531, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1205, file: !27, line: 314, baseType: !531, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1205, file: !27, line: 315, baseType: !531, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1205, file: !27, line: 316, baseType: !531, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1205, file: !27, line: 317, baseType: !1031, size: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1205, file: !27, line: 318, baseType: !1031, size: 64, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1205, file: !27, line: 319, baseType: !1031, size: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1205, file: !27, line: 320, baseType: !1061, size: 64, offset: 448)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1199, file: !27, line: 448, baseType: !108, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1199, file: !27, line: 449, baseType: !1198, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1195, file: !27, line: 224, baseType: !83, size: 32, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1195, file: !27, line: 226, baseType: !113, size: 128, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1195, file: !27, line: 227, baseType: !82, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1195, file: !27, line: 228, baseType: !7, size: 32, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1195, file: !27, line: 229, baseType: !7, size: 32, offset: 352)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1195, file: !27, line: 230, baseType: !999, size: 64, offset: 384)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1195, file: !27, line: 231, baseType: !999, size: 64, offset: 448)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1195, file: !27, line: 232, baseType: !79, size: 64, offset: 512)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1187, file: !27, line: 526, baseType: !1226, size: 192, offset: 2304)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1203, size: 192, elements: !211)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !440, file: !14, line: 1233, baseType: !1228, size: 2368, offset: 4544)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1229)
!1229 = !{!1230, !1231, !1232}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1228, file: !14, line: 1185, baseType: !180, size: 16)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1228, file: !14, line: 1186, baseType: !180, size: 16, offset: 16)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1228, file: !14, line: 1187, baseType: !1233, size: 2304, offset: 64)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1234, size: 2304, elements: !211)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1235, line: 12, size: 768, elements: !1236)
!1235 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1236 = !{!1237, !1245, !1247, !2696, !2697}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1234, file: !1235, line: 13, baseType: !1238, size: 384)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1239, line: 17, size: 384, elements: !1240)
!1239 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1240 = !{!1241, !1242, !1243, !1244}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1238, file: !1239, line: 18, baseType: !83, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1238, file: !1239, line: 19, baseType: !83, size: 32, offset: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1238, file: !1239, line: 20, baseType: !688, size: 192, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1238, file: !1239, line: 22, baseType: !630, size: 128, align: 64, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1234, file: !1235, line: 14, baseType: !1246, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1234, file: !1235, line: 15, baseType: !1248, size: 64, offset: 448)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1249, line: 16, size: 64, elements: !1250)
!1249 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1250 = !{!1251}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1248, file: !1249, line: 17, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1254, line: 746, size: 58368, elements: !1255)
!1254 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1255 = !{!1256, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1336, !1347, !1442, !1446, !1449, !1480, !1481, !1482, !1483, !1494, !1496, !1497, !1498, !1499, !1500, !1501, !1512, !1513, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1530, !1531, !1538, !1539, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1793, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1808, !1809, !1810, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1852, !1858, !1859, !1860, !1861, !1862, !1866, !1869, !1876, !1881, !1884, !1887, !1890, !1893, !2033, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2073, !2074, !2075, !2084, !2092, !2093, !2094, !2095, !2096, !2101, !2102, !2103, !2106, !2107, !2110, !2113, !2116, !2124, !2127, !2128, !2214, !2215, !2216, !2217, !2218, !2224, !2225, !2226, !2227, !2230, !2231, !2234, !2237, !2238, !2241, !2242, !2243, !2246, !2247, !2248, !2251, !2252, !2253, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2285, !2288, !2354, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2366, !2438, !2440, !2441, !2442, !2443, !2444, !2456, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2473, !2474, !2475}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1253, file: !1254, line: 752, baseType: !1257, size: 192)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1258, line: 56, size: 192, elements: !1259)
!1258 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1259 = !{!1260, !1261, !1262, !1263}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1257, file: !1258, line: 57, baseType: !82, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1257, file: !1258, line: 58, baseType: !82, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1257, file: !1258, line: 59, baseType: !357, size: 32, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1257, file: !1258, line: 61, baseType: !357, size: 32, offset: 160)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1253, file: !1254, line: 754, baseType: !7, size: 32, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1253, file: !1254, line: 767, baseType: !79, size: 64, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1253, file: !1254, line: 768, baseType: !675, size: 32, offset: 320)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1253, file: !1254, line: 770, baseType: !7, size: 32, offset: 352)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1253, file: !1254, line: 771, baseType: !7, size: 32, offset: 384)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1253, file: !1254, line: 774, baseType: !83, size: 32, offset: 416)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1253, file: !1254, line: 775, baseType: !1271, size: 128, offset: 448)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1272, line: 58, size: 128, elements: !1273)
!1272 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1273 = !{!1274, !1275, !1280, !1281}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1271, file: !1272, line: 59, baseType: !624, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !1272, line: 60, baseType: !1276, size: 32, offset: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1271, file: !1272, line: 60, size: 32, elements: !1277)
!1277 = !{!1278, !1279}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1276, file: !1272, line: 61, baseType: !7, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1276, file: !1272, line: 62, baseType: !160, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1271, file: !1272, line: 65, baseType: !178, size: 16, offset: 96)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1271, file: !1272, line: 65, baseType: !178, size: 16, offset: 112)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1253, file: !1254, line: 776, baseType: !7, size: 32, offset: 576)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1253, file: !1254, line: 777, baseType: !82, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1253, file: !1254, line: 778, baseType: !1252, size: 64, offset: 704)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1253, file: !1254, line: 787, baseType: !83, size: 32, offset: 768)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1253, file: !1254, line: 788, baseType: !83, size: 32, offset: 800)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1253, file: !1254, line: 790, baseType: !83, size: 32, offset: 832)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1253, file: !1254, line: 792, baseType: !83, size: 32, offset: 864)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1253, file: !1254, line: 793, baseType: !83, size: 32, offset: 896)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1253, file: !1254, line: 794, baseType: !83, size: 32, offset: 928)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1253, file: !1254, line: 795, baseType: !7, size: 32, offset: 960)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1253, file: !1254, line: 797, baseType: !1293, size: 2048, offset: 1024)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1254, line: 551, size: 2048, elements: !1294)
!1294 = !{!1295, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1315, !1318, !1319, !1320}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1293, file: !1254, line: 553, baseType: !1296, size: 128)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1254, line: 411, size: 128, elements: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1296, file: !1254, line: 412, baseType: !82, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1296, file: !1254, line: 413, baseType: !357, size: 32, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1293, file: !1254, line: 554, baseType: !752, size: 192, align: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1293, file: !1254, line: 555, baseType: !361, size: 64, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1293, file: !1254, line: 556, baseType: !361, size: 64, offset: 384)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1293, file: !1254, line: 558, baseType: !113, size: 128, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1293, file: !1254, line: 559, baseType: !7, size: 32, offset: 576)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1293, file: !1254, line: 561, baseType: !361, size: 64, offset: 640)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1293, file: !1254, line: 562, baseType: !361, size: 64, offset: 704)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1293, file: !1254, line: 563, baseType: !361, size: 64, offset: 768)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1293, file: !1254, line: 564, baseType: !361, size: 64, offset: 832)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1293, file: !1254, line: 565, baseType: !582, size: 64, offset: 896)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1293, file: !1254, line: 566, baseType: !361, size: 64, offset: 960)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1293, file: !1254, line: 568, baseType: !361, size: 64, offset: 1024)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1293, file: !1254, line: 571, baseType: !83, size: 32, offset: 1088)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1293, file: !1254, line: 572, baseType: !1314, size: 64, offset: 1152)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1293, file: !1254, line: 574, baseType: !1316, size: 64, offset: 1216)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1254, line: 49, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1293, file: !1254, line: 576, baseType: !1316, size: 64, offset: 1280)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1293, file: !1254, line: 578, baseType: !82, size: 64, offset: 1344)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1293, file: !1254, line: 588, baseType: !1321, size: 512, align: 512, offset: 1536)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1254, line: 497, size: 512, align: 512, elements: !1322)
!1322 = !{!1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1321, file: !1254, line: 498, baseType: !361, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1321, file: !1254, line: 499, baseType: !361, size: 64, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1321, file: !1254, line: 500, baseType: !361, size: 64, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1321, file: !1254, line: 501, baseType: !357, size: 32, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1321, file: !1254, line: 502, baseType: !357, size: 32, offset: 224)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1321, file: !1254, line: 503, baseType: !82, size: 64, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1321, file: !1254, line: 504, baseType: !82, size: 64, offset: 320)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1321, file: !1254, line: 505, baseType: !82, size: 64, offset: 384)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1321, file: !1254, line: 506, baseType: !1332, size: 64, align: 64, offset: 448)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1254, line: 445, size: 64, align: 64, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1332, file: !1254, line: 446, baseType: !7, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1332, file: !1254, line: 447, baseType: !7, size: 32, offset: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1253, file: !1254, line: 798, baseType: !1337, size: 384, offset: 3072)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1254, line: 592, size: 384, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344, !1345}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1337, file: !1254, line: 593, baseType: !113, size: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1337, file: !1254, line: 594, baseType: !82, size: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1337, file: !1254, line: 595, baseType: !82, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1337, file: !1254, line: 596, baseType: !7, size: 32, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1337, file: !1254, line: 597, baseType: !180, size: 16, offset: 288)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1337, file: !1254, line: 598, baseType: !180, size: 16, offset: 304)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1337, file: !1254, line: 600, baseType: !1346, size: 64, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1253, file: !1254, line: 799, baseType: !1348, size: 1792, offset: 3456)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1254, line: 610, size: 1792, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1439, !1440}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1348, file: !1254, line: 611, baseType: !752, size: 192, align: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1348, file: !1254, line: 618, baseType: !361, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1348, file: !1254, line: 619, baseType: !361, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1348, file: !1254, line: 620, baseType: !361, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1348, file: !1254, line: 621, baseType: !361, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1348, file: !1254, line: 622, baseType: !361, size: 64, offset: 448)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1348, file: !1254, line: 629, baseType: !582, size: 64, offset: 512)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1348, file: !1254, line: 630, baseType: !361, size: 64, offset: 576)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1348, file: !1254, line: 631, baseType: !7, size: 32, offset: 640)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1348, file: !1254, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1348, file: !1254, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1348, file: !1254, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1348, file: !1254, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1348, file: !1254, line: 662, baseType: !1364, size: 512, offset: 704)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1365)
!1365 = !{!1366, !1374, !1375, !1380, !1435, !1436, !1437, !1438}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1364, file: !33, line: 119, baseType: !1367, size: 256)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1368, line: 9, size: 256, elements: !1369)
!1368 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1367, file: !1368, line: 10, baseType: !752, size: 192, align: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1367, file: !1368, line: 11, baseType: !1372, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1373, line: 29, baseType: !582)
!1373 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1364, file: !33, line: 120, baseType: !1372, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1364, file: !33, line: 121, baseType: !1376, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!32, !1379}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1364, file: !33, line: 122, baseType: !1381, size: 64, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1383)
!1383 = !{!1384, !1409, !1410, !1413, !1418, !1419, !1430, !1434}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1382, file: !33, line: 160, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1386, file: !33, line: 216, baseType: !585, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1386, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1386, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1386, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1386, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1386, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1386, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1386, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1386, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1386, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1386, file: !33, line: 227, baseType: !180, size: 16, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1386, file: !33, line: 228, baseType: !180, size: 16, offset: 208)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1386, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1386, file: !33, line: 235, baseType: !1372, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1386, file: !33, line: 236, baseType: !1379, size: 64, offset: 320)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1386, file: !33, line: 237, baseType: !1372, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1386, file: !33, line: 238, baseType: !1379, size: 64, offset: 448)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1386, file: !33, line: 239, baseType: !1406, size: 4096, align: 512, offset: 512)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1382, size: 4096, align: 512, elements: !1407)
!1407 = !{!1408}
!1408 = !DISubrange(count: 8)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1382, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1382, file: !33, line: 162, baseType: !1411, size: 32, offset: 96)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !81, line: 32, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !244, line: 96, baseType: !83)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1382, file: !33, line: 163, baseType: !1414, size: 32, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !330, line: 274, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !330, line: 274, size: 32, elements: !1416)
!1416 = !{!1417}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1415, file: !330, line: 274, baseType: !334, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1382, file: !33, line: 164, baseType: !1379, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1382, file: !33, line: 165, baseType: !1420, size: 128, offset: 256)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1368, line: 14, size: 128, elements: !1421)
!1421 = !{!1422}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1420, file: !1368, line: 15, baseType: !1423, size: 128)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !753, line: 26, size: 128, elements: !1424)
!1424 = !{!1425, !1429}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1423, file: !753, line: 27, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !753, line: 12, size: 64, elements: !1427)
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1426, file: !753, line: 13, baseType: !757, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1423, file: !753, line: 28, baseType: !757, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1382, file: !33, line: 166, baseType: !1431, size: 64, offset: 384)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!1372}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1382, file: !33, line: 167, baseType: !1372, size: 64, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1364, file: !33, line: 123, baseType: !168, size: 8, offset: 448)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1364, file: !33, line: 124, baseType: !168, size: 8, offset: 456)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1364, file: !33, line: 125, baseType: !168, size: 8, offset: 464)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1364, file: !33, line: 126, baseType: !168, size: 8, offset: 472)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1348, file: !1254, line: 671, baseType: !1364, size: 512, offset: 1216)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1348, file: !1254, line: 679, baseType: !1441, size: 64, offset: 1728)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1253, file: !1254, line: 800, baseType: !1443, size: 64, offset: 5248)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1254, line: 800, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1253, file: !1254, line: 809, baseType: !1447, size: 64, offset: 5312)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1254, line: 70, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1253, file: !1254, line: 825, baseType: !1450, size: 2048, align: 512, offset: 5632)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1254, line: 509, size: 2048, align: 512, elements: !1451)
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1450, file: !1254, line: 511, baseType: !361, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1450, file: !1254, line: 512, baseType: !361, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1450, file: !1254, line: 513, baseType: !361, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1450, file: !1254, line: 514, baseType: !361, size: 64, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1450, file: !1254, line: 515, baseType: !361, size: 64, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1450, file: !1254, line: 516, baseType: !361, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1450, file: !1254, line: 518, baseType: !361, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1450, file: !1254, line: 519, baseType: !361, size: 64, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1450, file: !1254, line: 520, baseType: !582, size: 64, offset: 512)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1450, file: !1254, line: 522, baseType: !361, size: 64, offset: 576)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1450, file: !1254, line: 523, baseType: !361, size: 64, offset: 640)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1450, file: !1254, line: 524, baseType: !582, size: 64, offset: 704)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1450, file: !1254, line: 526, baseType: !582, size: 64, offset: 768)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1450, file: !1254, line: 527, baseType: !361, size: 64, offset: 832)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1450, file: !1254, line: 529, baseType: !361, size: 64, offset: 896)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1450, file: !1254, line: 530, baseType: !361, size: 64, offset: 960)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1450, file: !1254, line: 531, baseType: !361, size: 64, offset: 1024)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1450, file: !1254, line: 532, baseType: !361, size: 64, offset: 1088)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1450, file: !1254, line: 533, baseType: !361, size: 64, offset: 1152)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1450, file: !1254, line: 535, baseType: !361, size: 64, offset: 1216)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1450, file: !1254, line: 536, baseType: !361, size: 64, offset: 1280)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1450, file: !1254, line: 537, baseType: !361, size: 64, offset: 1344)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1450, file: !1254, line: 538, baseType: !361, size: 64, offset: 1408)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1450, file: !1254, line: 539, baseType: !361, size: 64, offset: 1472)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1450, file: !1254, line: 540, baseType: !361, size: 64, offset: 1536)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1450, file: !1254, line: 541, baseType: !361, size: 64, offset: 1600)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1450, file: !1254, line: 542, baseType: !361, size: 64, offset: 1664)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1450, file: !1254, line: 543, baseType: !361, size: 64, offset: 1728)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1253, file: !1254, line: 833, baseType: !7, size: 32, offset: 7680)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1253, file: !1254, line: 836, baseType: !7, size: 32, offset: 7712)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1253, file: !1254, line: 837, baseType: !83, size: 32, offset: 7744)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1253, file: !1254, line: 838, baseType: !1484, size: 64, offset: 7808)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1487, line: 19, baseType: !1488)
!1487 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1487, line: 19, size: 64, elements: !1489)
!1489 = !{!1490}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1488, file: !1487, line: 19, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 64, elements: !1492)
!1492 = !{!1493}
!1493 = !DISubrange(count: 1)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1253, file: !1254, line: 839, baseType: !1495, size: 64, offset: 7872)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1253, file: !1254, line: 840, baseType: !1486, size: 64, offset: 7936)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1253, file: !1254, line: 841, baseType: !79, size: 64, offset: 8000)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1253, file: !1254, line: 843, baseType: !180, size: 16, offset: 8064)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1253, file: !1254, line: 845, baseType: !180, size: 16, offset: 8080)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1253, file: !1254, line: 848, baseType: !83, size: 32, offset: 8096)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1253, file: !1254, line: 849, baseType: !1502, size: 32, offset: 8128)
!1502 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1254, line: 718, size: 32, elements: !1503)
!1503 = !{!1504, !1511}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1502, file: !1254, line: 724, baseType: !1505, size: 32)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1502, file: !1254, line: 719, size: 32, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1510}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1505, file: !1254, line: 720, baseType: !168, size: 8)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1505, file: !1254, line: 721, baseType: !168, size: 8, offset: 8)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1505, file: !1254, line: 722, baseType: !168, size: 8, offset: 16)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1505, file: !1254, line: 723, baseType: !168, size: 8, offset: 24)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1502, file: !1254, line: 725, baseType: !357, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1253, file: !1254, line: 850, baseType: !113, size: 128, offset: 8192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1253, file: !1254, line: 851, baseType: !1514, size: 64, offset: 8320)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1254, line: 60, flags: DIFlagFwdDecl)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1253, file: !1254, line: 855, baseType: !82, size: 64, offset: 8384)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1253, file: !1254, line: 856, baseType: !168, size: 8, offset: 8448)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1253, file: !1254, line: 857, baseType: !168, size: 8, offset: 8456)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1253, file: !1254, line: 858, baseType: !83, size: 32, offset: 8480)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1253, file: !1254, line: 859, baseType: !113, size: 128, offset: 8512)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1253, file: !1254, line: 860, baseType: !83, size: 32, offset: 8640)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1253, file: !1254, line: 861, baseType: !113, size: 128, offset: 8704)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1253, file: !1254, line: 873, baseType: !1524, size: 256, offset: 8832)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1254, line: 376, size: 256, elements: !1525)
!1525 = !{!1526, !1527, !1528, !1529}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1524, file: !1254, line: 381, baseType: !82, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1524, file: !1254, line: 384, baseType: !363, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1524, file: !1254, line: 389, baseType: !363, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1524, file: !1254, line: 392, baseType: !363, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1253, file: !1254, line: 875, baseType: !113, size: 128, offset: 9088)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1253, file: !1254, line: 877, baseType: !1532, size: 320, offset: 9216)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1533, line: 86, size: 320, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1534 = !{!1535, !1536, !1537}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1532, file: !1533, line: 87, baseType: !83, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1532, file: !1533, line: 88, baseType: !113, size: 128, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1532, file: !1533, line: 89, baseType: !113, size: 128, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1253, file: !1254, line: 878, baseType: !752, size: 192, align: 64, offset: 9536)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1253, file: !1254, line: 881, baseType: !1540, size: 64, offset: 9728)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1542, line: 733, size: 10240, elements: !1543)
!1542 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1543 = !{!1544, !1707}
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !1542, line: 734, baseType: !1545, size: 10240)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1541, file: !1542, line: 734, size: 10240, elements: !1546)
!1546 = !{!1547, !1551, !1564, !1569, !1570, !1571, !1572, !1573, !1574, !1583, !1584, !1585, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1624, !1626, !1629, !1676, !1677, !1678, !1681, !1682, !1683, !1686, !1687, !1688, !1694, !1695}
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1545, file: !1542, line: 739, baseType: !1548, size: 512, align: 512)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1545, file: !1542, line: 739, size: 512, align: 512, elements: !1549)
!1549 = !{!1550}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1548, file: !1542, line: 747, baseType: !160, size: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1545, file: !1542, line: 750, baseType: !1552, size: 128, offset: 512)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1553, line: 218, size: 128, elements: !1554)
!1553 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1554 = !{!1555, !1562, !1563}
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !1553, line: 219, baseType: !1556, size: 32)
!1556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1552, file: !1553, line: 219, size: 32, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1556, file: !1553, line: 220, baseType: !140, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1556, file: !1553, line: 221, baseType: !1560)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1553, line: 197, baseType: !1561)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1553, line: 197, elements: !491)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1552, file: !1553, line: 223, baseType: !7, size: 32, offset: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1552, file: !1553, line: 224, baseType: !79, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1545, file: !1542, line: 752, baseType: !1565, size: 64, offset: 640)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!82, !1568, !82, !82, !82, !82}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1545, file: !1542, line: 756, baseType: !82, size: 64, offset: 704)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1545, file: !1542, line: 757, baseType: !82, size: 64, offset: 768)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1545, file: !1542, line: 760, baseType: !82, size: 64, offset: 832)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1545, file: !1542, line: 761, baseType: !82, size: 64, offset: 896)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1545, file: !1542, line: 763, baseType: !82, size: 64, offset: 960)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1545, file: !1542, line: 764, baseType: !1575, size: 64, offset: 1024)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1577, line: 299, baseType: !1578)
!1577 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1577, line: 299, size: 64, elements: !1579)
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1578, file: !1577, line: 299, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1582, line: 18, baseType: !82)
!1582 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1545, file: !1542, line: 773, baseType: !160, size: 32, offset: 1088)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1545, file: !1542, line: 785, baseType: !160, size: 32, offset: 1120)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1545, file: !1542, line: 795, baseType: !1586, size: 64, offset: 1152)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1542, line: 726, size: 128, elements: !1588)
!1588 = !{!1589, !1590}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1587, file: !1542, line: 727, baseType: !361, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1587, file: !1542, line: 728, baseType: !83, size: 32, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1545, file: !1542, line: 801, baseType: !82, size: 64, offset: 1216)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1545, file: !1542, line: 804, baseType: !576, size: 64, offset: 1280)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1545, file: !1542, line: 806, baseType: !83, size: 32, offset: 1344)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1545, file: !1542, line: 808, baseType: !140, size: 32, offset: 1376)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1545, file: !1542, line: 823, baseType: !760, size: 320, offset: 1408)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1545, file: !1542, line: 825, baseType: !113, size: 128, offset: 1728)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1545, file: !1542, line: 845, baseType: !83, size: 32, offset: 1856)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1545, file: !1542, line: 849, baseType: !82, size: 64, offset: 1920)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1545, file: !1542, line: 850, baseType: !82, size: 64, offset: 1984)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1545, file: !1542, line: 852, baseType: !82, size: 64, offset: 2048)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1545, file: !1542, line: 853, baseType: !82, size: 64, offset: 2112)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1545, file: !1542, line: 854, baseType: !578, size: 64, offset: 2176)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1545, file: !1542, line: 855, baseType: !82, size: 64, offset: 2240)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1545, file: !1542, line: 856, baseType: !82, size: 64, offset: 2304)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1545, file: !1542, line: 857, baseType: !82, size: 64, offset: 2368)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1545, file: !1542, line: 858, baseType: !82, size: 64, offset: 2432)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1545, file: !1542, line: 865, baseType: !334, size: 32, offset: 2496)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1545, file: !1542, line: 867, baseType: !140, size: 32, offset: 2528)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1545, file: !1542, line: 869, baseType: !82, size: 64, offset: 2560)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1545, file: !1542, line: 869, baseType: !82, size: 64, offset: 2624)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1545, file: !1542, line: 869, baseType: !82, size: 64, offset: 2688)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1545, file: !1542, line: 869, baseType: !82, size: 64, offset: 2752)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1545, file: !1542, line: 870, baseType: !82, size: 64, offset: 2816)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1545, file: !1542, line: 870, baseType: !82, size: 64, offset: 2880)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1545, file: !1542, line: 870, baseType: !82, size: 64, offset: 2944)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1545, file: !1542, line: 871, baseType: !82, size: 64, offset: 3008)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1545, file: !1542, line: 871, baseType: !82, size: 64, offset: 3072)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1545, file: !1542, line: 871, baseType: !82, size: 64, offset: 3136)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1545, file: !1542, line: 871, baseType: !82, size: 64, offset: 3200)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1545, file: !1542, line: 873, baseType: !1621, size: 3328, offset: 3264)
!1621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 3328, elements: !1622)
!1622 = !{!1623}
!1623 = !DISubrange(count: 52)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1545, file: !1542, line: 875, baseType: !1625, size: 1280, offset: 6592)
!1625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !877, size: 1280, elements: !684)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1545, file: !1542, line: 877, baseType: !1627, size: 64, offset: 7872)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1542, line: 877, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1545, file: !1542, line: 880, baseType: !1630, size: 1088, offset: 7936)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1631, line: 72, baseType: !1632)
!1631 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1631, line: 23, size: 1088, elements: !1633)
!1633 = !{!1634, !1635, !1636, !1637, !1638, !1641, !1642, !1643, !1644, !1671, !1672, !1673}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1632, file: !1631, line: 28, baseType: !361, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1632, file: !1631, line: 38, baseType: !578, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1632, file: !1631, line: 40, baseType: !82, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1632, file: !1631, line: 43, baseType: !760, size: 320, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1632, file: !1631, line: 44, baseType: !1639, size: 64, offset: 512)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1631, line: 44, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1632, file: !1631, line: 48, baseType: !82, size: 64, offset: 576)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1632, file: !1631, line: 59, baseType: !572, size: 256, offset: 640)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1632, file: !1631, line: 60, baseType: !79, size: 64, offset: 896)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1632, file: !1631, line: 61, baseType: !1645, size: 64, offset: 960)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1647)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1648, line: 13, size: 1216, elements: !1649)
!1648 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1649 = !{!1650, !1651, !1652, !1653, !1654, !1655, !1656, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1647, file: !1648, line: 14, baseType: !79, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1647, file: !1648, line: 15, baseType: !82, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1647, file: !1648, line: 17, baseType: !82, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1647, file: !1648, line: 17, baseType: !82, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1647, file: !1648, line: 18, baseType: !82, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1647, file: !1648, line: 18, baseType: !82, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1647, file: !1648, line: 19, baseType: !1657, size: 64, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1647, file: !1648, line: 21, baseType: !84, size: 64, offset: 448)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1647, file: !1648, line: 23, baseType: !84, size: 64, offset: 512)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1647, file: !1648, line: 24, baseType: !84, size: 64, offset: 576)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1647, file: !1648, line: 25, baseType: !84, size: 64, offset: 640)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1647, file: !1648, line: 26, baseType: !84, size: 64, offset: 704)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1647, file: !1648, line: 27, baseType: !84, size: 64, offset: 768)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1647, file: !1648, line: 28, baseType: !84, size: 64, offset: 832)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1647, file: !1648, line: 29, baseType: !84, size: 64, offset: 896)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1647, file: !1648, line: 30, baseType: !84, size: 64, offset: 960)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1647, file: !1648, line: 31, baseType: !84, size: 64, offset: 1024)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1647, file: !1648, line: 32, baseType: !84, size: 64, offset: 1088)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1647, file: !1648, line: 33, baseType: !84, size: 64, offset: 1152)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1632, file: !1631, line: 63, baseType: !160, size: 32, offset: 1024)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1632, file: !1631, line: 69, baseType: !178, size: 16, offset: 1056)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1632, file: !1631, line: 70, baseType: !1674, size: 16, offset: 1072)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !169, line: 18, baseType: !1675)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !171, line: 23, baseType: !788)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1545, file: !1542, line: 882, baseType: !82, size: 64, offset: 9024)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1545, file: !1542, line: 885, baseType: !140, size: 32, offset: 9088)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1545, file: !1542, line: 886, baseType: !1679, size: 64, offset: 9152)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1542, line: 732, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1545, file: !1542, line: 901, baseType: !902, size: 64, offset: 9216)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1545, file: !1542, line: 904, baseType: !1568, size: 64, offset: 9280)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1545, file: !1542, line: 906, baseType: !1684, size: 64, offset: 9344)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1542, line: 906, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1545, file: !1542, line: 930, baseType: !160, size: 32, offset: 9408)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1545, file: !1542, line: 933, baseType: !160, size: 32, offset: 9440)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1545, file: !1542, line: 935, baseType: !1689, size: 64, offset: 9472)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1690)
!1690 = !{!1691}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1689, file: !44, line: 104, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1545, file: !1542, line: 940, baseType: !576, size: 64, offset: 9536)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1545, file: !1542, line: 942, baseType: !1696, size: 256, offset: 9600)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1697, line: 98, size: 256, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1698 = !{!1699, !1700, !1701}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1696, file: !1697, line: 99, baseType: !576, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1696, file: !1697, line: 100, baseType: !113, size: 128, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1696, file: !1697, line: 101, baseType: !1702, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1697, line: 21, baseType: !1703)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{null, !1706}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1541, file: !1542, line: 986, baseType: !1708, offset: 10240)
!1708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, elements: !703)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1253, file: !1254, line: 882, baseType: !1540, size: 64, offset: 9792)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1253, file: !1254, line: 884, baseType: !83, size: 32, offset: 9856)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1253, file: !1254, line: 885, baseType: !83, size: 32, offset: 9888)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1253, file: !1254, line: 886, baseType: !83, size: 32, offset: 9920)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1253, file: !1254, line: 888, baseType: !83, size: 32, offset: 9952)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1253, file: !1254, line: 890, baseType: !82, size: 64, offset: 9984)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1253, file: !1254, line: 893, baseType: !7, size: 32, offset: 10048)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1253, file: !1254, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1253, file: !1254, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1253, file: !1254, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1253, file: !1254, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1253, file: !1254, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1253, file: !1254, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1253, file: !1254, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1253, file: !1254, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1253, file: !1254, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1253, file: !1254, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1253, file: !1254, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1253, file: !1254, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1253, file: !1254, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1253, file: !1254, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1253, file: !1254, line: 969, baseType: !82, size: 64, offset: 10176)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1253, file: !1254, line: 971, baseType: !1732, size: 448, offset: 10240)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !1733)
!1733 = !{!1734, !1735, !1740}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1732, file: !38, line: 26, baseType: !82, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1732, file: !38, line: 27, baseType: !1736, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!84, !1739}
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !38, line: 28, baseType: !1741, size: 320, offset: 128)
!1741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1732, file: !38, line: 28, size: 320, elements: !1742)
!1742 = !{!1743, !1753, !1778}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1741, file: !38, line: 37, baseType: !1744, size: 320)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1741, file: !38, line: 30, size: 320, elements: !1745)
!1745 = !{!1746, !1748, !1749, !1750, !1751, !1752}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1744, file: !38, line: 31, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1744, file: !38, line: 32, baseType: !357, size: 32, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1744, file: !38, line: 33, baseType: !357, size: 32, offset: 96)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1744, file: !38, line: 34, baseType: !357, size: 32, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1744, file: !38, line: 35, baseType: !361, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1744, file: !38, line: 36, baseType: !1747, size: 64, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1741, file: !38, line: 47, baseType: !1754, size: 192)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1741, file: !38, line: 39, size: 192, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1777}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1754, file: !38, line: 40, baseType: !1411, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1754, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !38, line: 42, baseType: !1759, size: 64, offset: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1754, file: !38, line: 42, size: 64, elements: !1760)
!1760 = !{!1761, !1769}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1759, file: !38, line: 43, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1764, line: 7, size: 128, elements: !1765)
!1764 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1765 = !{!1766, !1768}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1763, file: !1764, line: 8, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !244, line: 93, baseType: !451)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1763, file: !1764, line: 9, baseType: !451, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1759, file: !38, line: 44, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1772, line: 7, size: 64, elements: !1773)
!1772 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1773 = !{!1774, !1776}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1771, file: !1772, line: 8, baseType: !1775, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1772, line: 5, baseType: !745)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1771, file: !1772, line: 9, baseType: !745, size: 32, offset: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1754, file: !38, line: 46, baseType: !361, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1741, file: !38, line: 55, baseType: !1779, size: 256)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1741, file: !38, line: 49, size: 256, elements: !1780)
!1780 = !{!1781, !1789, !1790, !1791, !1792}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1779, file: !38, line: 50, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1784, line: 36, size: 64, elements: !1785)
!1784 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1785 = !{!1786, !1787, !1788}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1783, file: !1784, line: 37, baseType: !83, size: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1783, file: !1784, line: 38, baseType: !788, size: 16, offset: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1783, file: !1784, line: 39, baseType: !788, size: 16, offset: 48)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1779, file: !38, line: 51, baseType: !83, size: 32, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1779, file: !38, line: 52, baseType: !83, size: 32, offset: 96)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1779, file: !38, line: 53, baseType: !82, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1779, file: !38, line: 54, baseType: !82, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1253, file: !1254, line: 973, baseType: !1794, size: 32, offset: 10688)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !81, line: 27, baseType: !1795)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !244, line: 28, baseType: !83)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1253, file: !1254, line: 974, baseType: !1794, size: 32, offset: 10720)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1253, file: !1254, line: 978, baseType: !82, size: 64, offset: 10752)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1253, file: !1254, line: 987, baseType: !1252, size: 64, offset: 10816)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1253, file: !1254, line: 990, baseType: !1252, size: 64, offset: 10880)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1253, file: !1254, line: 995, baseType: !113, size: 128, offset: 10944)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1253, file: !1254, line: 996, baseType: !113, size: 128, offset: 11072)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1253, file: !1254, line: 997, baseType: !1252, size: 64, offset: 11200)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1253, file: !1254, line: 1005, baseType: !113, size: 128, offset: 11264)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1253, file: !1254, line: 1006, baseType: !113, size: 128, offset: 11392)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1253, file: !1254, line: 1009, baseType: !671, size: 64, offset: 11520)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1253, file: !1254, line: 1010, baseType: !1807, size: 512, offset: 11584)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 512, elements: !684)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1253, file: !1254, line: 1011, baseType: !113, size: 128, offset: 12096)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1253, file: !1254, line: 1012, baseType: !113, size: 128, offset: 12224)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1253, file: !1254, line: 1014, baseType: !1811, size: 64, offset: 12352)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1813, line: 26, size: 256, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1812, file: !1813, line: 27, baseType: !7, size: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1812, file: !1813, line: 28, baseType: !1817, size: 192, offset: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1818, line: 43, size: 192, elements: !1819)
!1818 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1817, file: !1818, line: 44, baseType: !585, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1817, file: !1818, line: 45, baseType: !113, size: 128, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1253, file: !1254, line: 1017, baseType: !554, size: 64, offset: 12416)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1253, file: !1254, line: 1020, baseType: !554, size: 64, offset: 12480)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1253, file: !1254, line: 1023, baseType: !79, size: 64, offset: 12544)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1253, file: !1254, line: 1025, baseType: !361, size: 64, offset: 12608)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1253, file: !1254, line: 1026, baseType: !361, size: 64, offset: 12672)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1253, file: !1254, line: 1031, baseType: !361, size: 64, offset: 12736)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1253, file: !1254, line: 1032, baseType: !1829, size: 192, offset: 12800)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1254, line: 324, size: 192, elements: !1830)
!1830 = !{!1831, !1832, !1833}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1829, file: !1254, line: 326, baseType: !361, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1829, file: !1254, line: 327, baseType: !361, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1829, file: !1254, line: 328, baseType: !585, size: 32, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1253, file: !1254, line: 1041, baseType: !82, size: 64, offset: 12992)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1253, file: !1254, line: 1042, baseType: !82, size: 64, offset: 13056)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1253, file: !1254, line: 1045, baseType: !361, size: 64, offset: 13120)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1253, file: !1254, line: 1048, baseType: !361, size: 64, offset: 13184)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1253, file: !1254, line: 1051, baseType: !82, size: 64, offset: 13248)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1253, file: !1254, line: 1052, baseType: !82, size: 64, offset: 13312)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1253, file: !1254, line: 1055, baseType: !1841, size: 640, offset: 13376)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1842, line: 132, size: 640, elements: !1843)
!1842 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1843 = !{!1844, !1850, !1851}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1841, file: !1842, line: 133, baseType: !1845, size: 576)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1846, size: 576, elements: !211)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1842, line: 117, size: 192, elements: !1847)
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1846, file: !1842, line: 118, baseType: !361, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1846, file: !1842, line: 119, baseType: !1420, size: 128, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1841, file: !1842, line: 134, baseType: !7, size: 32, offset: 576)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1841, file: !1842, line: 135, baseType: !7, size: 32, offset: 608)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1253, file: !1254, line: 1058, baseType: !1853, size: 448, offset: 14016)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1842, line: 144, size: 448, elements: !1854)
!1854 = !{!1855, !1856, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1853, file: !1842, line: 145, baseType: !630, size: 128, align: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1853, file: !1842, line: 146, baseType: !572, size: 256, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1853, file: !1842, line: 147, baseType: !7, size: 32, offset: 384)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1253, file: !1254, line: 1064, baseType: !710, size: 64, offset: 14464)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1253, file: !1254, line: 1067, baseType: !710, size: 64, offset: 14528)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1253, file: !1254, line: 1070, baseType: !710, size: 64, offset: 14592)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1253, file: !1254, line: 1074, baseType: !737, size: 64, offset: 14656)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1253, file: !1254, line: 1084, baseType: !1863, size: 128, offset: 14720)
!1863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !1864)
!1864 = !{!1865}
!1865 = !DISubrange(count: 16)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1253, file: !1254, line: 1086, baseType: !1867, size: 64, offset: 14848)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1254, line: 55, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1253, file: !1254, line: 1089, baseType: !1870, size: 64, offset: 14912)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1871, line: 12, size: 64, elements: !1872)
!1871 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1872 = !{!1873}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1870, file: !1871, line: 13, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1871, line: 8, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1253, file: !1254, line: 1090, baseType: !1877, size: 128, offset: 14976)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1878, line: 13, size: 128, elements: !1879)
!1878 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1879 = !{!1880}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1877, file: !1878, line: 14, baseType: !113, size: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1253, file: !1254, line: 1097, baseType: !1882, size: 64, offset: 15104)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1254, line: 50, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1253, file: !1254, line: 1100, baseType: !1885, size: 64, offset: 15168)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1254, line: 1100, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1253, file: !1254, line: 1103, baseType: !1888, size: 64, offset: 15232)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1254, line: 53, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1253, file: !1254, line: 1107, baseType: !1891, size: 64, offset: 15296)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1254, line: 56, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1253, file: !1254, line: 1110, baseType: !1894, size: 64, offset: 15360)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1896, line: 93, size: 8768, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1947, !1956, !1957, !1959, !1960, !1961, !1964, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !2002, !2003, !2010, !2020, !2023, !2024, !2027, !2028, !2029, !2030, !2031, !2032}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1895, file: !1896, line: 94, baseType: !675, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1895, file: !1896, line: 95, baseType: !160, size: 32, offset: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1895, file: !1896, line: 96, baseType: !83, size: 32, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1895, file: !1896, line: 97, baseType: !83, size: 32, offset: 96)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1895, file: !1896, line: 98, baseType: !113, size: 128, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1895, file: !1896, line: 100, baseType: !688, size: 192, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1895, file: !1896, line: 103, baseType: !1252, size: 64, offset: 448)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1895, file: !1896, line: 106, baseType: !1906, size: 192, offset: 512)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !907, line: 32, size: 192, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1906, file: !907, line: 33, baseType: !113, size: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1906, file: !907, line: 34, baseType: !1910, size: 64, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1911, line: 25, baseType: !1912)
!1911 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1911, line: 23, size: 64, elements: !1913)
!1913 = !{!1914}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1912, file: !1911, line: 24, baseType: !1491, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1895, file: !1896, line: 109, baseType: !479, size: 64, offset: 704)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1895, file: !1896, line: 112, baseType: !83, size: 32, offset: 768)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1895, file: !1896, line: 114, baseType: !83, size: 32, offset: 800)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1895, file: !1896, line: 115, baseType: !1252, size: 64, offset: 832)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1895, file: !1896, line: 118, baseType: !83, size: 32, offset: 896)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1895, file: !1896, line: 119, baseType: !7, size: 32, offset: 928)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1895, file: !1896, line: 121, baseType: !1922, size: 64, offset: 960)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1896, line: 80, size: 448, elements: !1924)
!1924 = !{!1925, !1926, !1932}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1923, file: !1896, line: 81, baseType: !160, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1923, file: !1896, line: 82, baseType: !1927, size: 128, offset: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1896, line: 75, size: 128, elements: !1928)
!1928 = !{!1929, !1930}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1927, file: !1896, line: 76, baseType: !1252, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1927, file: !1896, line: 77, baseType: !1931, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1923, file: !1896, line: 83, baseType: !1812, size: 256, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1895, file: !1896, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1895, file: !1896, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1895, file: !1896, line: 138, baseType: !7, size: 32, offset: 1056)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1895, file: !1896, line: 139, baseType: !113, size: 128, offset: 1088)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1895, file: !1896, line: 142, baseType: !1364, size: 512, offset: 1216)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1895, file: !1896, line: 143, baseType: !1372, size: 64, offset: 1728)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1895, file: !1896, line: 150, baseType: !1940, size: 256, offset: 1792)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1941, size: 256, elements: !1945)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1896, line: 38, size: 128, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1941, file: !1896, line: 39, baseType: !361, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1941, file: !1896, line: 40, baseType: !361, size: 64, offset: 64)
!1945 = !{!1946}
!1946 = !DISubrange(count: 2)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1895, file: !1896, line: 156, baseType: !1948, size: 192, offset: 2048)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1896, line: 66, size: 192, elements: !1949)
!1949 = !{!1950}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1948, file: !1896, line: 67, baseType: !1951, size: 192)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1896, line: 47, size: 192, elements: !1952)
!1952 = !{!1953, !1954, !1955}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1951, file: !1896, line: 48, baseType: !578, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1951, file: !1896, line: 49, baseType: !578, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1951, file: !1896, line: 50, baseType: !578, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1895, file: !1896, line: 160, baseType: !1841, size: 640, offset: 2240)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1895, file: !1896, line: 163, baseType: !1958, size: 256, offset: 2880)
!1958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 256, elements: !684)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1895, file: !1896, line: 169, baseType: !671, size: 64, offset: 3136)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1895, file: !1896, line: 172, baseType: !83, size: 32, offset: 3200)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1895, file: !1896, line: 174, baseType: !1962, size: 64, offset: 3264)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1896, line: 174, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1895, file: !1896, line: 185, baseType: !1965, size: 64, offset: 3328)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !330, line: 860, baseType: !1966)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !330, line: 853, size: 64, elements: !1967)
!1967 = !{!1968, !1969}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1966, file: !330, line: 858, baseType: !329, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1966, file: !330, line: 859, baseType: !140, size: 32, offset: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1895, file: !1896, line: 186, baseType: !361, size: 64, offset: 3392)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1895, file: !1896, line: 186, baseType: !361, size: 64, offset: 3456)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1895, file: !1896, line: 186, baseType: !361, size: 64, offset: 3520)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1895, file: !1896, line: 186, baseType: !361, size: 64, offset: 3584)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1895, file: !1896, line: 187, baseType: !361, size: 64, offset: 3648)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1895, file: !1896, line: 188, baseType: !361, size: 64, offset: 3712)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1895, file: !1896, line: 189, baseType: !1829, size: 192, offset: 3776)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1895, file: !1896, line: 190, baseType: !82, size: 64, offset: 3968)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1895, file: !1896, line: 190, baseType: !82, size: 64, offset: 4032)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1895, file: !1896, line: 190, baseType: !82, size: 64, offset: 4096)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1895, file: !1896, line: 190, baseType: !82, size: 64, offset: 4160)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1895, file: !1896, line: 191, baseType: !82, size: 64, offset: 4224)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1895, file: !1896, line: 191, baseType: !82, size: 64, offset: 4288)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1895, file: !1896, line: 191, baseType: !82, size: 64, offset: 4352)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1895, file: !1896, line: 191, baseType: !82, size: 64, offset: 4416)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1895, file: !1896, line: 192, baseType: !82, size: 64, offset: 4480)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1895, file: !1896, line: 192, baseType: !82, size: 64, offset: 4544)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1895, file: !1896, line: 192, baseType: !82, size: 64, offset: 4608)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1895, file: !1896, line: 192, baseType: !82, size: 64, offset: 4672)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1895, file: !1896, line: 193, baseType: !82, size: 64, offset: 4736)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1895, file: !1896, line: 193, baseType: !82, size: 64, offset: 4800)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1895, file: !1896, line: 194, baseType: !1992, size: 448, offset: 4864)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1993, line: 12, size: 448, elements: !1994)
!1993 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1994 = !{!1995, !1996, !1997, !1998, !1999, !2000, !2001}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1992, file: !1993, line: 15, baseType: !361, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1992, file: !1993, line: 17, baseType: !361, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1992, file: !1993, line: 19, baseType: !361, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1992, file: !1993, line: 21, baseType: !361, size: 64, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1992, file: !1993, line: 29, baseType: !361, size: 64, offset: 256)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1992, file: !1993, line: 35, baseType: !361, size: 64, offset: 320)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1992, file: !1993, line: 44, baseType: !361, size: 64, offset: 384)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1895, file: !1896, line: 202, baseType: !363, size: 64, offset: 5312)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1895, file: !1896, line: 213, baseType: !2004, size: 2048, offset: 5376)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2005, size: 2048, elements: !1864)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2006, line: 43, size: 128, elements: !2007)
!2006 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2005, file: !2006, line: 44, baseType: !258, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2005, file: !2006, line: 45, baseType: !258, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1895, file: !1896, line: 216, baseType: !2011, size: 448, offset: 7424)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1896, line: 30, size: 448, elements: !2012)
!2012 = !{!2013, !2014, !2015, !2016, !2017, !2018, !2019}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2011, file: !1896, line: 31, baseType: !83, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2011, file: !1896, line: 32, baseType: !84, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2011, file: !1896, line: 33, baseType: !82, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2011, file: !1896, line: 34, baseType: !361, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2011, file: !1896, line: 34, baseType: !361, size: 64, offset: 256)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2011, file: !1896, line: 35, baseType: !82, size: 64, offset: 320)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2011, file: !1896, line: 35, baseType: !82, size: 64, offset: 384)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1895, file: !1896, line: 219, baseType: !2021, size: 64, offset: 7872)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1896, line: 219, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1895, file: !1896, line: 222, baseType: !7, size: 32, offset: 7936)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1895, file: !1896, line: 223, baseType: !2025, size: 64, offset: 8000)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1896, line: 223, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1895, file: !1896, line: 230, baseType: !819, size: 8, offset: 8064)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1895, file: !1896, line: 231, baseType: !788, size: 16, offset: 8080)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1895, file: !1896, line: 232, baseType: !788, size: 16, offset: 8096)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1895, file: !1896, line: 234, baseType: !1540, size: 64, offset: 8128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1895, file: !1896, line: 237, baseType: !572, size: 256, offset: 8192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1895, file: !1896, line: 243, baseType: !760, size: 320, offset: 8448)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1253, file: !1254, line: 1111, baseType: !2034, size: 64, offset: 15424)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1896, line: 20, size: 16640, elements: !2036)
!2036 = !{!2037, !2038, !2039, !2040}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2035, file: !1896, line: 21, baseType: !140, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2035, file: !1896, line: 22, baseType: !675, size: 32, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2035, file: !1896, line: 23, baseType: !688, size: 192, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2035, file: !1896, line: 24, baseType: !2041, size: 16384, offset: 256)
!2041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2042, size: 16384, elements: !215)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !907, line: 51, size: 256, elements: !2043)
!2043 = !{!2044}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2042, file: !907, line: 52, baseType: !2045, size: 256)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !907, line: 37, size: 256, elements: !2046)
!2046 = !{!2047, !2054, !2055, !2061}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2045, file: !907, line: 39, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2049, line: 83, baseType: !2050)
!2049 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2049, line: 82, baseType: !2052)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !83}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2045, file: !907, line: 40, baseType: !82, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2045, file: !907, line: 46, baseType: !2056, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2049, line: 86, baseType: !2057)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2049, line: 85, baseType: !2059)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{null}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2045, file: !907, line: 48, baseType: !1910, size: 64, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1253, file: !1254, line: 1112, baseType: !1910, size: 64, offset: 15488)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1253, file: !1254, line: 1113, baseType: !1910, size: 64, offset: 15552)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1253, file: !1254, line: 1115, baseType: !1910, size: 64, offset: 15616)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1253, file: !1254, line: 1116, baseType: !1906, size: 192, offset: 15680)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1253, file: !1254, line: 1117, baseType: !82, size: 64, offset: 15872)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1253, file: !1254, line: 1118, baseType: !256, size: 64, offset: 15936)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1253, file: !1254, line: 1119, baseType: !7, size: 32, offset: 16000)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1253, file: !1254, line: 1121, baseType: !633, size: 64, offset: 16064)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1253, file: !1254, line: 1125, baseType: !2071, size: 64, offset: 16128)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1254, line: 43, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1253, file: !1254, line: 1127, baseType: !294, size: 32, offset: 16192)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1253, file: !1254, line: 1128, baseType: !7, size: 32, offset: 16224)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1253, file: !1254, line: 1130, baseType: !2076, size: 128, offset: 16256)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2077, line: 37, size: 128, elements: !2078)
!2077 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2078 = !{!2079, !2080, !2081}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2076, file: !2077, line: 38, baseType: !83, size: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2076, file: !2077, line: 39, baseType: !160, size: 32, offset: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2076, file: !2077, line: 40, baseType: !2082, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2077, line: 24, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1253, file: !1254, line: 1131, baseType: !2085, size: 256, offset: 16384)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2086, line: 12, size: 256, elements: !2087)
!2086 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2087 = !{!2088, !2089, !2090, !2091}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2085, file: !2086, line: 13, baseType: !210, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2085, file: !2086, line: 14, baseType: !82, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2085, file: !2086, line: 15, baseType: !82, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2085, file: !2086, line: 16, baseType: !819, size: 8, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1253, file: !1254, line: 1134, baseType: !361, size: 64, offset: 16640)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1253, file: !1254, line: 1135, baseType: !361, size: 64, offset: 16704)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1253, file: !1254, line: 1138, baseType: !140, size: 32, offset: 16768)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1253, file: !1254, line: 1141, baseType: !585, size: 32, offset: 16800)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1253, file: !1254, line: 1143, baseType: !2097, size: 64, offset: 16832)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1254, line: 735, size: 64, elements: !2098)
!2098 = !{!2099}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2097, file: !1254, line: 736, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1253, file: !1254, line: 1147, baseType: !1423, size: 128, offset: 16896)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1253, file: !1254, line: 1149, baseType: !1252, size: 64, offset: 17024)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1253, file: !1254, line: 1151, baseType: !2104, size: 64, offset: 17088)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1254, line: 1151, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1253, file: !1254, line: 1188, baseType: !79, size: 64, offset: 17152)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1253, file: !1254, line: 1191, baseType: !2108, size: 64, offset: 17216)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1254, line: 44, flags: DIFlagFwdDecl)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1253, file: !1254, line: 1194, baseType: !2111, size: 64, offset: 17280)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1254, line: 45, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1253, file: !1254, line: 1197, baseType: !2114, size: 64, offset: 17344)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1254, line: 61, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1253, file: !1254, line: 1199, baseType: !2117, size: 64, offset: 17408)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2119, line: 99, size: 128, elements: !2120)
!2119 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2120 = !{!2121, !2122, !2123}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2118, file: !2119, line: 100, baseType: !576, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2118, file: !2119, line: 101, baseType: !160, size: 32, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2118, file: !2119, line: 103, baseType: !180, size: 16, offset: 96)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1253, file: !1254, line: 1202, baseType: !2125, size: 64, offset: 17472)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1254, line: 48, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1253, file: !1254, line: 1205, baseType: !82, size: 64, offset: 17536)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1253, file: !1254, line: 1206, baseType: !2129, size: 64, offset: 17600)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !907, line: 14, baseType: !2131)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !907, line: 12, size: 384, elements: !2132)
!2132 = !{!2133}
!2133 = !DIDerivedType(tag: DW_TAG_member, scope: !2131, file: !907, line: 13, baseType: !2134, size: 384)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2131, file: !907, line: 13, size: 384, elements: !2135)
!2135 = !{!2136, !2137, !2138, !2139}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2134, file: !907, line: 13, baseType: !83, size: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2134, file: !907, line: 13, baseType: !83, size: 32, offset: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2134, file: !907, line: 13, baseType: !83, size: 32, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2134, file: !907, line: 13, baseType: !2140, size: 256, offset: 128)
!2140 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2141, line: 37, size: 256, elements: !2142)
!2141 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2142 = !{!2143, !2148, !2161, !2167, !2176, !2203, !2208}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2140, file: !2141, line: 42, baseType: !2144, size: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2140, file: !2141, line: 39, size: 64, elements: !2145)
!2145 = !{!2146, !2147}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2144, file: !2141, line: 40, baseType: !1795, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2144, file: !2141, line: 41, baseType: !300, size: 32, offset: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2140, file: !2141, line: 50, baseType: !2149, size: 192)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2140, file: !2141, line: 45, size: 192, elements: !2150)
!2150 = !{!2151, !2153, !2154, !2160}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2149, file: !2141, line: 46, baseType: !2152, size: 32)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !244, line: 95, baseType: !83)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2149, file: !2141, line: 47, baseType: !83, size: 32, offset: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2149, file: !2141, line: 48, baseType: !2155, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2141, line: 11, baseType: !2156)
!2156 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2141, line: 8, size: 64, elements: !2157)
!2157 = !{!2158, !2159}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2156, file: !2141, line: 9, baseType: !83, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2156, file: !2141, line: 10, baseType: !79, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2149, file: !2141, line: 49, baseType: !83, size: 32, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2140, file: !2141, line: 57, baseType: !2162, size: 128)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2140, file: !2141, line: 53, size: 128, elements: !2163)
!2163 = !{!2164, !2165, !2166}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2162, file: !2141, line: 54, baseType: !1795, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2162, file: !2141, line: 55, baseType: !300, size: 32, offset: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2162, file: !2141, line: 56, baseType: !2155, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2140, file: !2141, line: 66, baseType: !2168, size: 256)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2140, file: !2141, line: 60, size: 256, elements: !2169)
!2169 = !{!2170, !2171, !2172, !2173, !2175}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2168, file: !2141, line: 61, baseType: !1795, size: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2168, file: !2141, line: 62, baseType: !300, size: 32, offset: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2168, file: !2141, line: 63, baseType: !83, size: 32, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2168, file: !2141, line: 64, baseType: !2174, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !244, line: 94, baseType: !245)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2168, file: !2141, line: 65, baseType: !2174, size: 64, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2140, file: !2141, line: 105, baseType: !2177, size: 256)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2140, file: !2141, line: 69, size: 256, elements: !2178)
!2178 = !{!2179, !2180}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2177, file: !2141, line: 70, baseType: !79, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, scope: !2177, file: !2141, line: 79, baseType: !2181, size: 192, offset: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2177, file: !2141, line: 79, size: 192, elements: !2182)
!2182 = !{!2183, !2184, !2185, !2192, !2197}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2181, file: !2141, line: 81, baseType: !83, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2181, file: !2141, line: 86, baseType: !788, size: 16)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2181, file: !2141, line: 92, baseType: !2186, size: 192)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2181, file: !2141, line: 88, size: 192, elements: !2187)
!2187 = !{!2188, !2190, !2191}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2186, file: !2141, line: 89, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 64, elements: !1407)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2186, file: !2141, line: 90, baseType: !79, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2186, file: !2141, line: 91, baseType: !79, size: 64, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2181, file: !2141, line: 97, baseType: !2193, size: 96)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2181, file: !2141, line: 94, size: 96, elements: !2194)
!2194 = !{!2195, !2196}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2193, file: !2141, line: 95, baseType: !2189, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2193, file: !2141, line: 96, baseType: !358, size: 32, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2181, file: !2141, line: 103, baseType: !2198, size: 128)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2181, file: !2141, line: 99, size: 128, elements: !2199)
!2199 = !{!2200, !2201, !2202}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2198, file: !2141, line: 100, baseType: !82, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2198, file: !2141, line: 101, baseType: !358, size: 32, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2198, file: !2141, line: 102, baseType: !358, size: 32, offset: 96)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2140, file: !2141, line: 111, baseType: !2204, size: 128)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2140, file: !2141, line: 108, size: 128, elements: !2205)
!2205 = !{!2206, !2207}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2204, file: !2141, line: 109, baseType: !84, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2204, file: !2141, line: 110, baseType: !83, size: 32, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2140, file: !2141, line: 118, baseType: !2209, size: 128)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2140, file: !2141, line: 114, size: 128, elements: !2210)
!2210 = !{!2211, !2212, !2213}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2209, file: !2141, line: 115, baseType: !79, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2209, file: !2141, line: 116, baseType: !83, size: 32, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2209, file: !2141, line: 117, baseType: !7, size: 32, offset: 96)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1253, file: !1254, line: 1208, baseType: !1992, size: 448, offset: 17664)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1253, file: !1254, line: 1215, baseType: !361, size: 64, offset: 18112)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1253, file: !1254, line: 1217, baseType: !361, size: 64, offset: 18176)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1253, file: !1254, line: 1219, baseType: !361, size: 64, offset: 18240)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1253, file: !1254, line: 1223, baseType: !2219, size: 64, offset: 18304)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2220, line: 99, baseType: !2221)
!2220 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2220, line: 99, size: 64, elements: !2222)
!2222 = !{!2223}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2221, file: !2220, line: 99, baseType: !1491, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1253, file: !1254, line: 1225, baseType: !329, size: 32, offset: 18368)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1253, file: !1254, line: 1226, baseType: !83, size: 32, offset: 18400)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1253, file: !1254, line: 1227, baseType: !83, size: 32, offset: 18432)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1253, file: !1254, line: 1231, baseType: !2228, size: 64, offset: 18496)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1254, line: 1231, flags: DIFlagFwdDecl)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1253, file: !1254, line: 1233, baseType: !113, size: 128, offset: 18560)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1253, file: !1254, line: 1240, baseType: !2232, size: 64, offset: 18688)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1254, line: 62, flags: DIFlagFwdDecl)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1253, file: !1254, line: 1242, baseType: !2235, size: 64, offset: 18752)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1254, line: 1242, flags: DIFlagFwdDecl)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1253, file: !1254, line: 1244, baseType: !113, size: 128, offset: 18816)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1253, file: !1254, line: 1245, baseType: !2239, size: 64, offset: 18944)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1254, line: 51, flags: DIFlagFwdDecl)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1253, file: !1254, line: 1246, baseType: !572, size: 256, offset: 19008)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1253, file: !1254, line: 1247, baseType: !7, size: 32, offset: 19264)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1253, file: !1254, line: 1250, baseType: !2244, size: 64, offset: 19328)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1254, line: 57, flags: DIFlagFwdDecl)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1253, file: !1254, line: 1251, baseType: !572, size: 256, offset: 19392)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1253, file: !1254, line: 1252, baseType: !113, size: 128, offset: 19648)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1253, file: !1254, line: 1259, baseType: !2249, size: 64, offset: 19776)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1542, line: 717, flags: DIFlagFwdDecl)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1253, file: !1254, line: 1260, baseType: !788, size: 16, offset: 19840)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1253, file: !1254, line: 1261, baseType: !788, size: 16, offset: 19856)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1253, file: !1254, line: 1314, baseType: !2254, size: 64, offset: 19904)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2256, line: 62, size: 256, align: 256, elements: !2257)
!2256 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2255, file: !2256, line: 75, baseType: !358, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2255, file: !2256, line: 90, baseType: !358, size: 32, offset: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2255, file: !2256, line: 112, baseType: !362, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2255, file: !2256, line: 132, baseType: !358, size: 32, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2255, file: !2256, line: 140, baseType: !358, size: 32, offset: 160)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2255, file: !2256, line: 149, baseType: !358, size: 32, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2255, file: !2256, line: 154, baseType: !2265, offset: 224)
!2265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, elements: !703)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1253, file: !1254, line: 1315, baseType: !357, size: 32, offset: 19968)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1253, file: !1254, line: 1316, baseType: !357, size: 32, offset: 20000)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1253, file: !1254, line: 1321, baseType: !82, size: 64, offset: 20032)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1253, file: !1254, line: 1325, baseType: !83, size: 32, offset: 20096)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1253, file: !1254, line: 1326, baseType: !83, size: 32, offset: 20128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1253, file: !1254, line: 1327, baseType: !83, size: 32, offset: 20160)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1253, file: !1254, line: 1328, baseType: !83, size: 32, offset: 20192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1253, file: !1254, line: 1329, baseType: !630, size: 128, align: 64, offset: 20224)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1253, file: !1254, line: 1332, baseType: !2275, size: 128, offset: 20352)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2276, line: 51, size: 128, elements: !2277)
!2276 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2277 = !{!2278, !2283, !2284}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2275, file: !2276, line: 60, baseType: !2279, size: 64)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2280, line: 7, size: 64, elements: !2281)
!2280 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2281 = !{!2282}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2279, file: !2280, line: 12, baseType: !1488, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2275, file: !2276, line: 63, baseType: !819, size: 8, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2275, file: !2276, line: 70, baseType: !819, size: 8, offset: 72)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1253, file: !1254, line: 1335, baseType: !2286, size: 64, offset: 20480)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1254, line: 59, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1253, file: !1254, line: 1337, baseType: !2289, size: 128, offset: 20544)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2276, line: 39, size: 128, elements: !2290)
!2290 = !{!2291, !2352, !2353}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2289, file: !2276, line: 40, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1542, line: 74, size: 512, align: 128, elements: !2294)
!2294 = !{!2295, !2296, !2346, !2351}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2293, file: !1542, line: 75, baseType: !82, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !1542, line: 83, baseType: !2297, size: 320, offset: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2293, file: !1542, line: 83, size: 320, elements: !2298)
!2298 = !{!2299, !2320, !2334, !2338, !2345}
!2299 = !DIDerivedType(tag: DW_TAG_member, scope: !2297, file: !1542, line: 84, baseType: !2300, size: 320)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2297, file: !1542, line: 84, size: 320, elements: !2301)
!2301 = !{!2302, !2313, !2314, !2319}
!2302 = !DIDerivedType(tag: DW_TAG_member, scope: !2300, file: !1542, line: 90, baseType: !2303, size: 128)
!2303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2300, file: !1542, line: 90, size: 128, elements: !2304)
!2304 = !{!2305, !2306, !2311, !2312}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2303, file: !1542, line: 91, baseType: !113, size: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, scope: !2303, file: !1542, line: 94, baseType: !2307, size: 128)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2303, file: !1542, line: 94, size: 128, elements: !2308)
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2307, file: !1542, line: 96, baseType: !79, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2307, file: !1542, line: 98, baseType: !7, size: 32, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2303, file: !1542, line: 102, baseType: !113, size: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2303, file: !1542, line: 103, baseType: !113, size: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2300, file: !1542, line: 106, baseType: !284, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, scope: !2300, file: !1542, line: 107, baseType: !2315, size: 64, offset: 192)
!2315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2300, file: !1542, line: 107, size: 64, elements: !2316)
!2316 = !{!2317, !2318}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2315, file: !1542, line: 108, baseType: !82, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2315, file: !1542, line: 109, baseType: !82, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2300, file: !1542, line: 117, baseType: !82, size: 64, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_member, scope: !2297, file: !1542, line: 119, baseType: !2321, size: 320)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2297, file: !1542, line: 119, size: 320, elements: !2322)
!2322 = !{!2323, !2324, !2327, !2328, !2329}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2321, file: !1542, line: 124, baseType: !82, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2321, file: !1542, line: 125, baseType: !2325, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1542, line: 125, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2321, file: !1542, line: 126, baseType: !82, size: 64, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2321, file: !1542, line: 127, baseType: !82, size: 64, offset: 192)
!2329 = !DIDerivedType(tag: DW_TAG_member, scope: !2321, file: !1542, line: 128, baseType: !2330, size: 64, offset: 256)
!2330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2321, file: !1542, line: 128, size: 64, elements: !2331)
!2331 = !{!2332, !2333}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2330, file: !1542, line: 133, baseType: !82, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2330, file: !1542, line: 138, baseType: !576, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, scope: !2297, file: !1542, line: 141, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2297, file: !1542, line: 141, size: 64, elements: !2336)
!2336 = !{!2337}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2335, file: !1542, line: 142, baseType: !82, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, scope: !2297, file: !1542, line: 144, baseType: !2339, size: 128)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2297, file: !1542, line: 144, size: 128, elements: !2340)
!2340 = !{!2341, !2344}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2339, file: !1542, line: 146, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1542, line: 146, flags: DIFlagFwdDecl)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2339, file: !1542, line: 147, baseType: !79, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2297, file: !1542, line: 161, baseType: !630, size: 128, align: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !1542, line: 164, baseType: !2347, size: 32, offset: 384)
!2347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2293, file: !1542, line: 164, size: 32, elements: !2348)
!2348 = !{!2349, !2350}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2347, file: !1542, line: 169, baseType: !160, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2347, file: !1542, line: 177, baseType: !7, size: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2293, file: !1542, line: 181, baseType: !160, size: 32, offset: 416)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2289, file: !2276, line: 42, baseType: !358, size: 32, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2289, file: !2276, line: 43, baseType: !358, size: 32, offset: 96)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1253, file: !1254, line: 1340, baseType: !2355, size: 64, offset: 20672)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1254, line: 69, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1253, file: !1254, line: 1351, baseType: !83, size: 32, offset: 20736)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1253, file: !1254, line: 1352, baseType: !83, size: 32, offset: 20768)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1253, file: !1254, line: 1354, baseType: !82, size: 64, offset: 20800)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1253, file: !1254, line: 1364, baseType: !361, size: 64, offset: 20864)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1253, file: !1254, line: 1365, baseType: !361, size: 64, offset: 20928)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1253, file: !1254, line: 1412, baseType: !82, size: 64, offset: 20992)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1253, file: !1254, line: 1453, baseType: !2364, size: 64, offset: 21056)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1254, line: 1453, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1253, file: !1254, line: 1457, baseType: !2367, size: 64, offset: 21120)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2369)
!2369 = !{!2370, !2371, !2390, !2393, !2394, !2427, !2437}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2368, file: !44, line: 62, baseType: !43, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, scope: !2368, file: !44, line: 64, baseType: !2372, size: 192, offset: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2368, file: !44, line: 64, size: 192, elements: !2373)
!2373 = !{!2374, !2385}
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !2372, file: !44, line: 65, baseType: !2375, size: 192)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2372, file: !44, line: 65, size: 192, elements: !2376)
!2376 = !{!2377, !2384}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2375, file: !44, line: 66, baseType: !2378, size: 128)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2379, line: 50, size: 128, elements: !2380)
!2379 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2380 = !{!2381, !2382, !2383}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2378, file: !2379, line: 52, baseType: !82, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2378, file: !2379, line: 54, baseType: !7, size: 32, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2378, file: !2379, line: 55, baseType: !7, size: 32, offset: 96)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2375, file: !44, line: 67, baseType: !82, size: 64, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, scope: !2372, file: !44, line: 70, baseType: !2386, size: 192)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2372, file: !44, line: 70, size: 192, elements: !2387)
!2387 = !{!2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2386, file: !44, line: 71, baseType: !630, size: 128, align: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2386, file: !44, line: 72, baseType: !82, size: 64, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2368, file: !44, line: 76, baseType: !2391, size: 64, offset: 256)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2368, file: !44, line: 77, baseType: !82, size: 64, offset: 320)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2368, file: !44, line: 79, baseType: !2395, size: 64, offset: 384)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2379, line: 25, size: 256, elements: !2397)
!2397 = !{!2398, !2404, !2408}
!2398 = !DIDerivedType(tag: DW_TAG_member, scope: !2396, file: !2379, line: 26, baseType: !2399, size: 128)
!2399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2396, file: !2379, line: 26, size: 128, elements: !2400)
!2400 = !{!2401, !2403}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2399, file: !2379, line: 27, baseType: !2402, size: 128)
!2402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 128, elements: !1864)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2399, file: !2379, line: 28, baseType: !2402, size: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2396, file: !2379, line: 31, baseType: !2405, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2407)
!2407 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2379, line: 23, flags: DIFlagFwdDecl)
!2408 = !DIDerivedType(tag: DW_TAG_member, scope: !2396, file: !2379, line: 33, baseType: !2409, size: 64, offset: 192)
!2409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2396, file: !2379, line: 33, size: 64, elements: !2410)
!2410 = !{!2411, !2417, !2422}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2409, file: !2379, line: 38, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2409, file: !2379, line: 34, size: 64, elements: !2413)
!2413 = !{!2414, !2415, !2416}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2412, file: !2379, line: 35, baseType: !745, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2412, file: !2379, line: 36, baseType: !168, size: 8, offset: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2412, file: !2379, line: 37, baseType: !168, size: 8, offset: 40)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2409, file: !2379, line: 42, baseType: !2418, size: 16)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2409, file: !2379, line: 39, size: 16, elements: !2419)
!2419 = !{!2420, !2421}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2418, file: !2379, line: 40, baseType: !168, size: 8)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2418, file: !2379, line: 41, baseType: !168, size: 8, offset: 8)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2409, file: !2379, line: 46, baseType: !2423, size: 16)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2409, file: !2379, line: 43, size: 16, elements: !2424)
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2423, file: !2379, line: 44, baseType: !168, size: 8)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2423, file: !2379, line: 45, baseType: !168, size: 8, offset: 8)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2368, file: !44, line: 81, baseType: !2428, size: 64, offset: 448)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2430)
!2430 = !{!2431, !2432, !2433, !2434, !2435, !2436}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2429, file: !44, line: 86, baseType: !2391, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2429, file: !44, line: 87, baseType: !82, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2429, file: !44, line: 88, baseType: !82, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2429, file: !44, line: 89, baseType: !82, size: 64, offset: 192)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2429, file: !44, line: 90, baseType: !819, size: 8, offset: 256)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2429, file: !44, line: 92, baseType: !2428, size: 64, offset: 320)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2368, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1253, file: !1254, line: 1463, baseType: !2439, offset: 21184)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1254, line: 739, elements: !491)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1253, file: !1254, line: 1470, baseType: !630, size: 128, align: 64, offset: 21184)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1253, file: !1254, line: 1471, baseType: !675, size: 32, offset: 21312)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1253, file: !1254, line: 1472, baseType: !83, size: 32, offset: 21344)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1253, file: !1254, line: 1474, baseType: !1252, size: 64, offset: 21376)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1253, file: !1254, line: 1475, baseType: !2445, size: 320, offset: 21440)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2446, line: 11, size: 320, elements: !2447)
!2446 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2447 = !{!2448, !2449, !2450, !2455}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2445, file: !2446, line: 16, baseType: !483, size: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2445, file: !2446, line: 17, baseType: !82, size: 64, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2445, file: !2446, line: 18, baseType: !2451, size: 64, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{null, !2454}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2445, file: !2446, line: 19, baseType: !357, size: 32, offset: 256)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1253, file: !1254, line: 1478, baseType: !2457, size: 64, offset: 21760)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1254, line: 1478, flags: DIFlagFwdDecl)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1253, file: !1254, line: 1482, baseType: !675, size: 32, offset: 21824)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1253, file: !1254, line: 1489, baseType: !79, size: 64, offset: 21888)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1253, file: !1254, line: 1504, baseType: !79, size: 64, offset: 21952)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1253, file: !1254, line: 1505, baseType: !362, size: 64, offset: 22016)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1253, file: !1254, line: 1506, baseType: !361, size: 64, offset: 22080)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1253, file: !1254, line: 1507, baseType: !362, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1253, file: !1254, line: 1508, baseType: !362, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1253, file: !1254, line: 1509, baseType: !362, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1253, file: !1254, line: 1510, baseType: !630, size: 128, align: 64, offset: 22208)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1253, file: !1254, line: 1511, baseType: !83, size: 32, offset: 22336)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1253, file: !1254, line: 1515, baseType: !2470, size: 64, offset: 22400)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !625, line: 56, size: 64, elements: !2471)
!2471 = !{!2472}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2470, file: !625, line: 57, baseType: !628, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1253, file: !1254, line: 1518, baseType: !2470, size: 64, offset: 22464)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1253, file: !1254, line: 1528, baseType: !630, size: 128, align: 64, offset: 22528)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1253, file: !1254, line: 1552, baseType: !2476, size: 35328, offset: 23040)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2477, line: 430, size: 35328, elements: !2478)
!2477 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2478 = !{!2479, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2508, !2509, !2510, !2511, !2512, !2513, !2516, !2517, !2518, !2519}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2476, file: !2477, line: 432, baseType: !2480, size: 192)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2481, size: 192, elements: !211)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2482, line: 16, size: 64, elements: !2483)
!2482 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2483 = !{!2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2481, file: !2482, line: 17, baseType: !178, size: 16)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2481, file: !2482, line: 18, baseType: !178, size: 16, offset: 16)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2481, file: !2482, line: 19, baseType: !178, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2481, file: !2482, line: 19, baseType: !178, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2481, file: !2482, line: 19, baseType: !178, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2481, file: !2482, line: 19, baseType: !178, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2481, file: !2482, line: 19, baseType: !178, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2481, file: !2482, line: 20, baseType: !178, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2481, file: !2482, line: 20, baseType: !178, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2481, file: !2482, line: 20, baseType: !178, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2481, file: !2482, line: 20, baseType: !178, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2481, file: !2482, line: 20, baseType: !178, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2481, file: !2482, line: 20, baseType: !178, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2476, file: !2477, line: 436, baseType: !82, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2476, file: !2477, line: 440, baseType: !180, size: 16, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2476, file: !2477, line: 441, baseType: !180, size: 16, offset: 272)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2476, file: !2477, line: 442, baseType: !180, size: 16, offset: 288)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2476, file: !2477, line: 443, baseType: !180, size: 16, offset: 304)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2476, file: !2477, line: 447, baseType: !82, size: 64, offset: 320)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2476, file: !2477, line: 448, baseType: !82, size: 64, offset: 384)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2476, file: !2477, line: 459, baseType: !2505, size: 256, offset: 448)
!2505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2506, size: 256, elements: !684)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2477, line: 428, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2476, file: !2477, line: 461, baseType: !82, size: 64, offset: 704)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2476, file: !2477, line: 463, baseType: !82, size: 64, offset: 768)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2476, file: !2477, line: 465, baseType: !82, size: 64, offset: 832)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2476, file: !2477, line: 466, baseType: !82, size: 64, offset: 896)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2476, file: !2477, line: 467, baseType: !82, size: 64, offset: 960)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2476, file: !2477, line: 473, baseType: !2514, size: 64, offset: 1024)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2477, line: 10, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2476, file: !2477, line: 480, baseType: !82, size: 64, offset: 1088)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2476, file: !2477, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2476, file: !2477, line: 491, baseType: !357, size: 32, offset: 1184)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2476, file: !2477, line: 501, baseType: !2520, size: 33792, offset: 1536)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2521, line: 448, size: 33792, elements: !2522)
!2521 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2522 = !{!2523, !2524, !2525, !2687, !2688, !2694, !2695}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2520, file: !2521, line: 461, baseType: !7, size: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2520, file: !2521, line: 468, baseType: !82, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2520, file: !2521, line: 476, baseType: !2526, size: 64, offset: 128)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2521, line: 356, size: 33280, align: 512, elements: !2528)
!2528 = !{!2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2527, file: !2521, line: 358, baseType: !7, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2527, file: !2521, line: 361, baseType: !7, size: 32, offset: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2527, file: !2521, line: 364, baseType: !361, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2527, file: !2521, line: 367, baseType: !361, size: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2527, file: !2521, line: 370, baseType: !361, size: 64, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2527, file: !2521, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2527, file: !2521, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2527, file: !2521, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2527, file: !2521, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2527, file: !2521, line: 397, baseType: !2539, size: 32768, offset: 512)
!2539 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2521, line: 348, size: 32768, elements: !2540)
!2540 = !{!2541, !2556, !2593, !2670, !2683}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2539, file: !2521, line: 349, baseType: !2542, size: 896)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2521, line: 12, size: 896, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2555}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2542, file: !2521, line: 13, baseType: !357, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2542, file: !2521, line: 14, baseType: !357, size: 32, offset: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2542, file: !2521, line: 15, baseType: !357, size: 32, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2542, file: !2521, line: 16, baseType: !357, size: 32, offset: 96)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2542, file: !2521, line: 17, baseType: !357, size: 32, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2542, file: !2521, line: 18, baseType: !357, size: 32, offset: 160)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2542, file: !2521, line: 19, baseType: !357, size: 32, offset: 192)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2542, file: !2521, line: 22, baseType: !2552, size: 640, offset: 224)
!2552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 640, elements: !2553)
!2553 = !{!2554}
!2554 = !DISubrange(count: 20)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2542, file: !2521, line: 25, baseType: !357, size: 32, offset: 864)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2539, file: !2521, line: 350, baseType: !2557, size: 4096, align: 128)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2521, line: 34, size: 4096, align: 128, elements: !2558)
!2558 = !{!2559, !2560, !2561, !2562, !2563, !2578, !2579, !2580, !2582, !2584, !2588}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2557, file: !2521, line: 35, baseType: !178, size: 16)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2557, file: !2521, line: 36, baseType: !178, size: 16, offset: 16)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2557, file: !2521, line: 37, baseType: !178, size: 16, offset: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2557, file: !2521, line: 38, baseType: !178, size: 16, offset: 48)
!2563 = !DIDerivedType(tag: DW_TAG_member, scope: !2557, file: !2521, line: 39, baseType: !2564, size: 128, offset: 64)
!2564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2557, file: !2521, line: 39, size: 128, elements: !2565)
!2565 = !{!2566, !2571}
!2566 = !DIDerivedType(tag: DW_TAG_member, scope: !2564, file: !2521, line: 40, baseType: !2567, size: 128)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2564, file: !2521, line: 40, size: 128, elements: !2568)
!2568 = !{!2569, !2570}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2567, file: !2521, line: 41, baseType: !361, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2567, file: !2521, line: 42, baseType: !361, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, scope: !2564, file: !2521, line: 44, baseType: !2572, size: 128)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2564, file: !2521, line: 44, size: 128, elements: !2573)
!2573 = !{!2574, !2575, !2576, !2577}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2572, file: !2521, line: 45, baseType: !357, size: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2572, file: !2521, line: 46, baseType: !357, size: 32, offset: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2572, file: !2521, line: 47, baseType: !357, size: 32, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2572, file: !2521, line: 48, baseType: !357, size: 32, offset: 96)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2557, file: !2521, line: 51, baseType: !357, size: 32, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2557, file: !2521, line: 52, baseType: !357, size: 32, offset: 224)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2557, file: !2521, line: 55, baseType: !2581, size: 1024, offset: 256)
!2581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 1024, elements: !370)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2557, file: !2521, line: 58, baseType: !2583, size: 2048, offset: 1280)
!2583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 2048, elements: !215)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2557, file: !2521, line: 60, baseType: !2585, size: 384, offset: 3328)
!2585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 384, elements: !2586)
!2586 = !{!2587}
!2587 = !DISubrange(count: 12)
!2588 = !DIDerivedType(tag: DW_TAG_member, scope: !2557, file: !2521, line: 62, baseType: !2589, size: 384, offset: 3712)
!2589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2557, file: !2521, line: 62, size: 384, elements: !2590)
!2590 = !{!2591, !2592}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2589, file: !2521, line: 63, baseType: !2585, size: 384)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2589, file: !2521, line: 64, baseType: !2585, size: 384)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2539, file: !2521, line: 351, baseType: !2594, size: 1088)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2521, line: 79, size: 1088, elements: !2595)
!2595 = !{!2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2669}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2594, file: !2521, line: 80, baseType: !357, size: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2594, file: !2521, line: 81, baseType: !357, size: 32, offset: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2594, file: !2521, line: 82, baseType: !357, size: 32, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2594, file: !2521, line: 83, baseType: !357, size: 32, offset: 96)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2594, file: !2521, line: 84, baseType: !357, size: 32, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2594, file: !2521, line: 85, baseType: !357, size: 32, offset: 160)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2594, file: !2521, line: 86, baseType: !357, size: 32, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2594, file: !2521, line: 88, baseType: !2552, size: 640, offset: 224)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2594, file: !2521, line: 89, baseType: !168, size: 8, offset: 864)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2594, file: !2521, line: 90, baseType: !168, size: 8, offset: 872)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2594, file: !2521, line: 91, baseType: !168, size: 8, offset: 880)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2594, file: !2521, line: 92, baseType: !168, size: 8, offset: 888)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2594, file: !2521, line: 93, baseType: !168, size: 8, offset: 896)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2594, file: !2521, line: 94, baseType: !168, size: 8, offset: 904)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2594, file: !2521, line: 95, baseType: !2611, size: 64, offset: 960)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2613, line: 11, size: 128, elements: !2614)
!2613 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2614 = !{!2615, !2616}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2612, file: !2613, line: 12, baseType: !84, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2612, file: !2613, line: 13, baseType: !2617, size: 64, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2619, line: 103, size: 1344, elements: !2620)
!2619 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2620 = !{!2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2649, !2650, !2651}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2618, file: !2619, line: 109, baseType: !82, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2618, file: !2619, line: 110, baseType: !82, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2618, file: !2619, line: 111, baseType: !82, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2618, file: !2619, line: 112, baseType: !82, size: 64, offset: 192)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2618, file: !2619, line: 113, baseType: !82, size: 64, offset: 256)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2618, file: !2619, line: 114, baseType: !82, size: 64, offset: 320)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2618, file: !2619, line: 117, baseType: !82, size: 64, offset: 384)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2618, file: !2619, line: 118, baseType: !82, size: 64, offset: 448)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2618, file: !2619, line: 119, baseType: !82, size: 64, offset: 512)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2618, file: !2619, line: 120, baseType: !82, size: 64, offset: 576)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2618, file: !2619, line: 121, baseType: !82, size: 64, offset: 640)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2618, file: !2619, line: 122, baseType: !82, size: 64, offset: 704)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2618, file: !2619, line: 123, baseType: !82, size: 64, offset: 768)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2618, file: !2619, line: 124, baseType: !82, size: 64, offset: 832)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2618, file: !2619, line: 125, baseType: !82, size: 64, offset: 896)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2618, file: !2619, line: 139, baseType: !82, size: 64, offset: 960)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2618, file: !2619, line: 142, baseType: !82, size: 64, offset: 1024)
!2638 = !DIDerivedType(tag: DW_TAG_member, scope: !2618, file: !2619, line: 144, baseType: !2639, size: 64, offset: 1088)
!2639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2618, file: !2619, line: 144, size: 64, elements: !2640)
!2640 = !{!2641, !2642, !2643}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2639, file: !2619, line: 146, baseType: !178, size: 16)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2639, file: !2619, line: 148, baseType: !361, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2639, file: !2619, line: 150, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2619, line: 59, size: 64, elements: !2645)
!2645 = !{!2646, !2647, !2648}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2644, file: !2619, line: 61, baseType: !361, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2644, file: !2619, line: 63, baseType: !361, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2644, file: !2619, line: 65, baseType: !361, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2618, file: !2619, line: 153, baseType: !82, size: 64, offset: 1152)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2618, file: !2619, line: 154, baseType: !82, size: 64, offset: 1216)
!2651 = !DIDerivedType(tag: DW_TAG_member, scope: !2618, file: !2619, line: 156, baseType: !2652, size: 64, offset: 1280)
!2652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2618, file: !2619, line: 156, size: 64, elements: !2653)
!2653 = !{!2654, !2655, !2656}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2652, file: !2619, line: 158, baseType: !178, size: 16)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2652, file: !2619, line: 160, baseType: !361, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2652, file: !2619, line: 162, baseType: !2657, size: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2619, line: 69, size: 64, elements: !2658)
!2658 = !{!2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2657, file: !2619, line: 71, baseType: !361, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2657, file: !2619, line: 73, baseType: !361, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2657, file: !2619, line: 75, baseType: !361, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2657, file: !2619, line: 77, baseType: !361, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2657, file: !2619, line: 80, baseType: !361, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2657, file: !2619, line: 83, baseType: !361, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2657, file: !2619, line: 86, baseType: !361, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2657, file: !2619, line: 88, baseType: !361, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2657, file: !2619, line: 93, baseType: !361, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2657, file: !2619, line: 100, baseType: !361, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2594, file: !2521, line: 96, baseType: !357, size: 32, offset: 1024)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2539, file: !2521, line: 352, baseType: !2671, size: 4608, align: 512)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2521, line: 333, size: 4608, align: 512, elements: !2672)
!2672 = !{!2673, !2674, !2681}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2671, file: !2521, line: 334, baseType: !2557, size: 4096, align: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2671, file: !2521, line: 335, baseType: !2675, size: 512, offset: 4096)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2521, line: 312, size: 512, elements: !2676)
!2676 = !{!2677, !2678, !2679}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2675, file: !2521, line: 313, baseType: !361, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2675, file: !2521, line: 314, baseType: !361, size: 64, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2675, file: !2521, line: 315, baseType: !2680, size: 384, offset: 128)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 384, elements: !806)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2671, file: !2521, line: 336, baseType: !2682, offset: 4608)
!2682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, elements: !703)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2539, file: !2521, line: 353, baseType: !2684, size: 32768)
!2684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 32768, elements: !2685)
!2685 = !{!2686}
!2686 = !DISubrange(count: 4096)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2520, file: !2521, line: 484, baseType: !2526, size: 64, offset: 192)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2520, file: !2521, line: 491, baseType: !2689, size: 128, offset: 256)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2521, line: 404, size: 128, elements: !2690)
!2690 = !{!2691, !2692, !2693}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2689, file: !2521, line: 424, baseType: !361, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2689, file: !2521, line: 432, baseType: !7, size: 32, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2689, file: !2521, line: 440, baseType: !7, size: 32, offset: 96)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2520, file: !2521, line: 498, baseType: !2689, size: 128, offset: 384)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2520, file: !2521, line: 508, baseType: !2527, size: 33280, align: 512, offset: 512)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1234, file: !1235, line: 16, baseType: !688, size: 192, offset: 512)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1234, file: !1235, line: 17, baseType: !160, size: 32, offset: 704)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !440, file: !14, line: 1240, baseType: !79, size: 64, offset: 6912)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !440, file: !14, line: 1243, baseType: !357, size: 32, offset: 6976)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !440, file: !14, line: 1245, baseType: !776, size: 64, offset: 7040)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !440, file: !14, line: 1246, baseType: !776, size: 64, offset: 7104)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !440, file: !14, line: 1248, baseType: !358, size: 32, offset: 7168)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !440, file: !14, line: 1249, baseType: !2704, size: 64, offset: 7232)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !440, file: !14, line: 1252, baseType: !2707, size: 256, offset: 7296)
!2707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !370)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !440, file: !14, line: 1253, baseType: !2709, size: 128, offset: 7552)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2710, line: 21, baseType: !2711)
!2710 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2710, line: 19, size: 128, elements: !2712)
!2712 = !{!2713}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2711, file: !2710, line: 20, baseType: !2714, size: 128)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 128, elements: !1864)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !440, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !440, file: !14, line: 1261, baseType: !572, size: 256, offset: 7744)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !440, file: !14, line: 1267, baseType: !130, size: 64, offset: 8000)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !440, file: !14, line: 1269, baseType: !386, size: 64, offset: 8064)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !440, file: !14, line: 1271, baseType: !2720, size: 448, offset: 8128)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1014, line: 63, size: 448, elements: !2721)
!2721 = !{!2722, !2727, !2728, !2729, !2730, !2731, !2732}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2720, file: !1014, line: 64, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!82, !2726, !1012}
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2720, file: !1014, line: 66, baseType: !2723, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2720, file: !1014, line: 69, baseType: !84, size: 64, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2720, file: !1014, line: 70, baseType: !83, size: 32, offset: 192)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2720, file: !1014, line: 71, baseType: !7, size: 32, offset: 224)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2720, file: !1014, line: 74, baseType: !113, size: 128, offset: 256)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2720, file: !1014, line: 85, baseType: !2733, size: 64, offset: 384)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !440, file: !14, line: 1274, baseType: !576, size: 64, offset: 8576)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !440, file: !14, line: 1280, baseType: !576, size: 64, offset: 8640)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !440, file: !14, line: 1283, baseType: !83, size: 32, offset: 8704)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !440, file: !14, line: 1286, baseType: !946, size: 32, offset: 8736)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !440, file: !14, line: 1289, baseType: !2739, size: 64, offset: 8768)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1697, line: 18, flags: DIFlagFwdDecl)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !440, file: !14, line: 1290, baseType: !479, size: 64, offset: 8832)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !440, file: !14, line: 1297, baseType: !902, size: 64, offset: 8896)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !440, file: !14, line: 1304, baseType: !2744, size: 64, offset: 8960)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2745, line: 49, size: 64, elements: !2746)
!2745 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2746 = !{!2747}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2744, file: !2745, line: 50, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2745, line: 41, size: 512, align: 512, elements: !2750)
!2750 = !{!2751, !2752, !2757}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2749, file: !2745, line: 43, baseType: !140, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2749, file: !2745, line: 45, baseType: !2753, size: 192, offset: 64)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2745, line: 29, size: 192, elements: !2754)
!2754 = !{!2755, !2756}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2753, file: !2745, line: 30, baseType: !113, size: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2753, file: !2745, line: 32, baseType: !84, size: 64, offset: 128)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2749, file: !2745, line: 46, baseType: !84, size: 64, offset: 256)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !440, file: !14, line: 1305, baseType: !2744, size: 64, offset: 9024)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !440, file: !14, line: 1306, baseType: !630, size: 128, align: 64, offset: 9088)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !440, file: !14, line: 1307, baseType: !1696, size: 256, offset: 9216)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !440, file: !14, line: 1309, baseType: !572, size: 256, offset: 9472)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !440, file: !14, line: 1314, baseType: !83, size: 32, offset: 9728)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !440, file: !14, line: 1317, baseType: !140, size: 32, align: 512, offset: 10240)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !440, file: !14, line: 1318, baseType: !113, size: 128, offset: 10304)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !440, file: !14, line: 1320, baseType: !140, size: 32, offset: 10432)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !440, file: !14, line: 1321, baseType: !113, size: 128, offset: 10496)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !434, file: !435, line: 73, baseType: !83, size: 32, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !434, file: !435, line: 74, baseType: !2769, size: 64, offset: 192)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !727, line: 42, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !388, file: !325, line: 141, baseType: !2773, size: 64, offset: 704)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!83, !1074, !819}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !388, file: !325, line: 142, baseType: !2777, size: 64, offset: 768)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!323, !323, !2780}
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !324, file: !325, line: 96, baseType: !439, size: 64, offset: 832)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !324, file: !325, line: 97, baseType: !82, size: 64, offset: 896)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !324, file: !325, line: 98, baseType: !79, size: 64, offset: 960)
!2785 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !325, line: 100, baseType: !2786, size: 128, offset: 1024)
!2786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !325, line: 100, size: 128, elements: !2787)
!2787 = !{!2788, !2789}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2786, file: !325, line: 101, baseType: !113, size: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2786, file: !325, line: 102, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !324, file: !325, line: 104, baseType: !113, size: 128, offset: 1152)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !324, file: !325, line: 105, baseType: !113, size: 128, offset: 1280)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !324, file: !325, line: 113, baseType: !2794, size: 128, offset: 1408)
!2794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !325, line: 109, size: 128, elements: !2795)
!2795 = !{!2796, !2797, !2798}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2794, file: !325, line: 110, baseType: !483, size: 128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2794, file: !325, line: 111, baseType: !339, size: 128)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2794, file: !325, line: 112, baseType: !630, size: 128, align: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !317, file: !14, line: 1968, baseType: !2800, size: 64, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!130, !323, !288, !2803}
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2805, line: 10, size: 128, elements: !2806)
!2805 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!2806 = !{!2807, !2811}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2804, file: !2805, line: 11, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !79}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2804, file: !2805, line: 12, baseType: !79, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !317, file: !14, line: 1969, baseType: !2813, size: 64, offset: 128)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!83, !2769, !288, !83}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !317, file: !14, line: 1970, baseType: !2817, size: 64, offset: 192)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!311, !288, !83, !819}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !317, file: !14, line: 1972, baseType: !2821, size: 64, offset: 256)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!83, !323, !210, !83}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !317, file: !14, line: 1974, baseType: !2825, size: 64, offset: 320)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!83, !2769, !288, !323, !251, !819}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !317, file: !14, line: 1976, baseType: !2829, size: 64, offset: 384)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!83, !323, !288, !323}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !317, file: !14, line: 1977, baseType: !2833, size: 64, offset: 448)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!83, !288, !323}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !317, file: !14, line: 1978, baseType: !2837, size: 64, offset: 512)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!83, !2769, !288, !323, !130}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !317, file: !14, line: 1980, baseType: !2841, size: 64, offset: 576)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!83, !2769, !288, !323, !251}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !317, file: !14, line: 1982, baseType: !2833, size: 64, offset: 640)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !317, file: !14, line: 1983, baseType: !2846, size: 64, offset: 704)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!83, !2769, !288, !323, !251, !444}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !317, file: !14, line: 1985, baseType: !2850, size: 64, offset: 768)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!83, !2769, !288, !323, !288, !323, !7}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !317, file: !14, line: 1987, baseType: !2854, size: 64, offset: 832)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!83, !2769, !323, !2857}
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !2859)
!2859 = !{!2860, !2861, !2862, !2872, !2881, !2882, !2887, !2888, !2889}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2858, file: !14, line: 227, baseType: !7, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2858, file: !14, line: 228, baseType: !251, size: 16, offset: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, scope: !2858, file: !14, line: 241, baseType: !2863, size: 32, offset: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2858, file: !14, line: 241, size: 32, elements: !2864)
!2864 = !{!2865, !2866}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2863, file: !14, line: 242, baseType: !294, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !2863, file: !14, line: 243, baseType: !2867, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !2868, line: 16, baseType: !2869)
!2868 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2868, line: 14, size: 32, elements: !2870)
!2870 = !{!2871}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2869, file: !2868, line: 15, baseType: !299, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, scope: !2858, file: !14, line: 245, baseType: !2873, size: 32, offset: 96)
!2873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2858, file: !14, line: 245, size: 32, elements: !2874)
!2874 = !{!2875, !2876}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2873, file: !14, line: 246, baseType: !303, size: 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !2873, file: !14, line: 247, baseType: !2877, size: 32)
!2877 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !2868, line: 20, baseType: !2878)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2868, line: 18, size: 32, elements: !2879)
!2879 = !{!2880}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2878, file: !2868, line: 19, baseType: !307, size: 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2858, file: !14, line: 249, baseType: !449, size: 64, offset: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2858, file: !14, line: 250, baseType: !2883, size: 128, offset: 192)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !777, line: 13, size: 128, elements: !2884)
!2884 = !{!2885, !2886}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2883, file: !777, line: 14, baseType: !776, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2883, file: !777, line: 15, baseType: !84, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2858, file: !14, line: 251, baseType: !2883, size: 128, offset: 320)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2858, file: !14, line: 252, baseType: !2883, size: 128, offset: 448)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2858, file: !14, line: 259, baseType: !1568, size: 64, offset: 576)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !317, file: !14, line: 1988, baseType: !2891, size: 64, offset: 896)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!83, !2769, !1074, !2894, !357, !7}
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2896, line: 22, size: 1280, elements: !2897)
!2896 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2895, file: !2896, line: 23, baseType: !357, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2895, file: !2896, line: 24, baseType: !251, size: 16, offset: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2895, file: !2896, line: 25, baseType: !7, size: 32, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2895, file: !2896, line: 26, baseType: !784, size: 32, offset: 96)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2895, file: !2896, line: 27, baseType: !361, size: 64, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2895, file: !2896, line: 28, baseType: !361, size: 64, offset: 192)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2895, file: !2896, line: 41, baseType: !361, size: 64, offset: 256)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2895, file: !2896, line: 42, baseType: !444, size: 32, offset: 320)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2895, file: !2896, line: 43, baseType: !444, size: 32, offset: 352)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2895, file: !2896, line: 44, baseType: !294, size: 32, offset: 384)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2895, file: !2896, line: 45, baseType: !303, size: 32, offset: 416)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2895, file: !2896, line: 46, baseType: !449, size: 64, offset: 448)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2895, file: !2896, line: 47, baseType: !2883, size: 128, offset: 512)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2895, file: !2896, line: 48, baseType: !2883, size: 128, offset: 640)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2895, file: !2896, line: 49, baseType: !2883, size: 128, offset: 768)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2895, file: !2896, line: 50, baseType: !2883, size: 128, offset: 896)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2895, file: !2896, line: 51, baseType: !361, size: 64, offset: 1024)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2895, file: !2896, line: 52, baseType: !361, size: 64, offset: 1088)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !2895, file: !2896, line: 53, baseType: !357, size: 32, offset: 1152)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !2895, file: !2896, line: 54, baseType: !357, size: 32, offset: 1184)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !2895, file: !2896, line: 55, baseType: !361, size: 64, offset: 1216)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !317, file: !14, line: 1990, baseType: !2920, size: 64, offset: 960)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!242, !323, !210, !256}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !317, file: !14, line: 1991, baseType: !2924, size: 64, offset: 1024)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!83, !288, !2927, !361, !361}
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !317, file: !14, line: 1993, baseType: !2930, size: 64, offset: 1088)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!83, !288, !83}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !317, file: !14, line: 1994, baseType: !2934, size: 64, offset: 1152)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!83, !288, !323, !1568, !7, !251}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !317, file: !14, line: 1997, baseType: !2938, size: 64, offset: 1216)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!83, !2769, !288, !1568, !251}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !317, file: !14, line: 1999, baseType: !2942, size: 64, offset: 1280)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!311, !2769, !323, !83}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !317, file: !14, line: 2001, baseType: !2946, size: 64, offset: 1344)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!83, !2769, !323, !311, !83}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !317, file: !14, line: 2003, baseType: !2950, size: 64, offset: 1408)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!83, !2769, !323, !2953}
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !317, file: !14, line: 2005, baseType: !2956, size: 64, offset: 1472)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!83, !323, !2953}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !317, file: !14, line: 2006, baseType: !2960, size: 64, offset: 1536)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!2963, !288}
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !2965)
!2965 = !{!2966, !2973}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2964, file: !14, line: 3193, baseType: !2967, size: 128)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2968, line: 296, size: 128, elements: !2969)
!2968 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2969 = !{!2970, !2971, !2972}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2967, file: !2968, line: 297, baseType: !140, size: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2967, file: !2968, line: 299, baseType: !80, size: 32, offset: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2967, file: !2968, line: 300, baseType: !79, size: 64, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !2964, file: !14, line: 3194, baseType: !357, size: 32, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !289, file: !14, line: 655, baseType: !439, size: 64, offset: 448)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !289, file: !14, line: 656, baseType: !284, size: 64, offset: 512)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !289, file: !14, line: 659, baseType: !79, size: 64, offset: 576)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !289, file: !14, line: 663, baseType: !82, size: 64, offset: 640)
!2978 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !14, line: 671, baseType: !2979, size: 32, offset: 704)
!2979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !14, line: 671, size: 32, elements: !2980)
!2980 = !{!2981, !2983}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2979, file: !14, line: 672, baseType: !2982, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2979, file: !14, line: 673, baseType: !7, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !289, file: !14, line: 675, baseType: !444, size: 32, offset: 736)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !289, file: !14, line: 676, baseType: !449, size: 64, offset: 768)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !289, file: !14, line: 677, baseType: !2883, size: 128, offset: 832)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !289, file: !14, line: 678, baseType: !2883, size: 128, offset: 960)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !289, file: !14, line: 679, baseType: !2883, size: 128, offset: 1088)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !289, file: !14, line: 680, baseType: !140, size: 32, offset: 1216)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !289, file: !14, line: 681, baseType: !180, size: 16, offset: 1248)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !289, file: !14, line: 682, baseType: !168, size: 8, offset: 1264)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !289, file: !14, line: 683, baseType: !168, size: 8, offset: 1272)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !289, file: !14, line: 684, baseType: !1147, size: 64, offset: 1280)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !289, file: !14, line: 691, baseType: !82, size: 64, offset: 1344)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !289, file: !14, line: 692, baseType: !760, size: 320, offset: 1408)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !289, file: !14, line: 694, baseType: !82, size: 64, offset: 1728)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !289, file: !14, line: 695, baseType: !82, size: 64, offset: 1792)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !289, file: !14, line: 697, baseType: !483, size: 128, offset: 1856)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !289, file: !14, line: 698, baseType: !113, size: 128, offset: 1984)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !289, file: !14, line: 707, baseType: !113, size: 128, offset: 2112)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !289, file: !14, line: 708, baseType: !113, size: 128, offset: 2240)
!3002 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !14, line: 709, baseType: !3003, size: 128, offset: 2368)
!3003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !14, line: 709, size: 128, elements: !3004)
!3004 = !{!3005, !3006}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3003, file: !14, line: 710, baseType: !479, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3003, file: !14, line: 711, baseType: !630, size: 128, align: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !289, file: !14, line: 713, baseType: !578, size: 64, offset: 2496)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !289, file: !14, line: 714, baseType: !578, size: 64, offset: 2560)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !289, file: !14, line: 715, baseType: !160, size: 32, offset: 2624)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !289, file: !14, line: 716, baseType: !160, size: 32, offset: 2656)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !289, file: !14, line: 717, baseType: !160, size: 32, offset: 2688)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !289, file: !14, line: 719, baseType: !160, size: 32, offset: 2720)
!3013 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !14, line: 721, baseType: !3014, size: 64, offset: 2752)
!3014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !14, line: 721, size: 64, elements: !3015)
!3015 = !{!3016, !3017}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3014, file: !14, line: 722, baseType: !938, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3014, file: !14, line: 723, baseType: !510, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !289, file: !14, line: 725, baseType: !3019, size: 64, offset: 2816)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !289, file: !14, line: 726, baseType: !285, size: 1536, align: 64, offset: 2880)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !289, file: !14, line: 727, baseType: !113, size: 128, offset: 4416)
!3023 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !14, line: 728, baseType: !3024, size: 64, offset: 4544)
!3024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !14, line: 728, size: 64, elements: !3025)
!3025 = !{!3026, !3027, !3038, !3039}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3024, file: !14, line: 729, baseType: !2286, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3024, file: !14, line: 730, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3030, line: 14, size: 832, elements: !3031)
!3030 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3031 = !{!3032, !3033, !3034, !3035, !3036, !3037}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3029, file: !3030, line: 15, baseType: !126, size: 512)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3029, file: !3030, line: 16, baseType: !108, size: 64, offset: 512)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3029, file: !3030, line: 17, baseType: !938, size: 64, offset: 576)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3029, file: !3030, line: 18, baseType: !113, size: 128, offset: 640)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3029, file: !3030, line: 19, baseType: !444, size: 32, offset: 768)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3029, file: !3030, line: 20, baseType: !7, size: 32, offset: 800)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3024, file: !14, line: 731, baseType: !210, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3024, file: !14, line: 732, baseType: !7, size: 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !289, file: !14, line: 735, baseType: !358, size: 32, offset: 4608)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !289, file: !14, line: 738, baseType: !358, size: 32, offset: 4640)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !289, file: !14, line: 739, baseType: !2704, size: 64, offset: 4672)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !289, file: !14, line: 750, baseType: !79, size: 64, offset: 4736)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !285, file: !14, line: 474, baseType: !2967, size: 128, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !285, file: !14, line: 475, baseType: !760, size: 320, offset: 192)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !285, file: !14, line: 476, baseType: !80, size: 32, offset: 512)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !285, file: !14, line: 477, baseType: !160, size: 32, offset: 544)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !285, file: !14, line: 482, baseType: !1423, size: 128, offset: 576)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !285, file: !14, line: 483, baseType: !82, size: 64, offset: 704)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !285, file: !14, line: 484, baseType: !82, size: 64, offset: 768)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !285, file: !14, line: 485, baseType: !3052, size: 64, offset: 832)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3054)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3055)
!3055 = !{!3056, !3060, !3130, !3134, !3138, !3144, !3150, !3154, !3159, !3163, !3167, !3171, !3199, !3203, !3207, !3211, !3216, !3220, !3227, !3231}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3054, file: !14, line: 405, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!83, !2292, !522}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3054, file: !14, line: 406, baseType: !3061, size: 64, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!83, !1568, !3064}
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1542, line: 293, size: 1536, elements: !3066)
!3066 = !{!3067, !3097, !3111}
!3067 = !DIDerivedType(tag: DW_TAG_member, scope: !3065, file: !1542, line: 295, baseType: !3068, size: 512)
!3068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3065, file: !1542, line: 295, size: 512, elements: !3069)
!3069 = !{!3070, !3096}
!3070 = !DIDerivedType(tag: DW_TAG_member, scope: !3068, file: !1542, line: 296, baseType: !3071, size: 448)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3068, file: !1542, line: 296, size: 448, elements: !3072)
!3072 = !{!3073, !3074, !3083, !3084, !3085, !3094, !3095}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3071, file: !1542, line: 298, baseType: !82, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, scope: !3071, file: !1542, line: 299, baseType: !3075, size: 128, offset: 64)
!3075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3071, file: !1542, line: 299, size: 128, elements: !3076)
!3076 = !{!3077, !3078}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3075, file: !1542, line: 300, baseType: !113, size: 128)
!3078 = !DIDerivedType(tag: DW_TAG_member, scope: !3075, file: !1542, line: 302, baseType: !3079, size: 128)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3075, file: !1542, line: 302, size: 128, elements: !3080)
!3080 = !{!3081, !3082}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3079, file: !1542, line: 303, baseType: !79, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3079, file: !1542, line: 305, baseType: !7, size: 32, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3071, file: !1542, line: 310, baseType: !284, size: 64, offset: 192)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3071, file: !1542, line: 311, baseType: !82, size: 64, offset: 256)
!3085 = !DIDerivedType(tag: DW_TAG_member, scope: !3071, file: !1542, line: 312, baseType: !3086, size: 64, offset: 320)
!3086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3071, file: !1542, line: 312, size: 64, elements: !3087)
!3087 = !{!3088, !3089}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3086, file: !1542, line: 313, baseType: !79, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3086, file: !1542, line: 314, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1542, line: 257, baseType: !3091)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1542, line: 255, size: 64, elements: !3092)
!3092 = !{!3093}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3091, file: !1542, line: 256, baseType: !82, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3071, file: !1542, line: 316, baseType: !160, size: 32, offset: 384)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3071, file: !1542, line: 317, baseType: !160, size: 32, offset: 416)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3068, file: !1542, line: 323, baseType: !2293, size: 512, align: 128)
!3097 = !DIDerivedType(tag: DW_TAG_member, scope: !3065, file: !1542, line: 325, baseType: !3098, size: 512, offset: 512)
!3098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3065, file: !1542, line: 325, size: 512, elements: !3099)
!3099 = !{!3100, !3110}
!3100 = !DIDerivedType(tag: DW_TAG_member, scope: !3098, file: !1542, line: 326, baseType: !3101, size: 320)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3098, file: !1542, line: 326, size: 320, elements: !3102)
!3102 = !{!3103, !3104, !3105, !3106, !3107, !3108, !3109}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3101, file: !1542, line: 327, baseType: !82, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3101, file: !1542, line: 328, baseType: !82, size: 64, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3101, file: !1542, line: 329, baseType: !82, size: 64, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3101, file: !1542, line: 331, baseType: !160, size: 32, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3101, file: !1542, line: 332, baseType: !160, size: 32, offset: 224)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3101, file: !1542, line: 333, baseType: !160, size: 32, offset: 256)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3101, file: !1542, line: 335, baseType: !7, size: 32, offset: 288)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3098, file: !1542, line: 339, baseType: !2293, size: 512, align: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, scope: !3065, file: !1542, line: 341, baseType: !3112, size: 512, offset: 1024)
!3112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3065, file: !1542, line: 341, size: 512, elements: !3113)
!3113 = !{!3114, !3123, !3129}
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !3112, file: !1542, line: 342, baseType: !3115, size: 384)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !1542, line: 342, size: 384, elements: !3116)
!3116 = !{!3117, !3118, !3119, !3120, !3121, !3122}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3115, file: !1542, line: 343, baseType: !82, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3115, file: !1542, line: 344, baseType: !82, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3115, file: !1542, line: 346, baseType: !79, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3115, file: !1542, line: 347, baseType: !79, size: 64, offset: 192)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3115, file: !1542, line: 348, baseType: !79, size: 64, offset: 256)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3115, file: !1542, line: 349, baseType: !79, size: 64, offset: 320)
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !3112, file: !1542, line: 352, baseType: !3124, size: 256)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !1542, line: 352, size: 256, elements: !3125)
!3125 = !{!3126, !3127, !3128}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3124, file: !1542, line: 353, baseType: !82, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3124, file: !1542, line: 354, baseType: !82, size: 64, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3124, file: !1542, line: 356, baseType: !113, size: 128, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3112, file: !1542, line: 359, baseType: !2293, size: 512, align: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3054, file: !14, line: 409, baseType: !3131, size: 64, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!83, !284, !522}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3054, file: !14, line: 412, baseType: !3135, size: 64, offset: 192)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!819, !284, !3064}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3054, file: !14, line: 414, baseType: !3139, size: 64, offset: 256)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{null, !3142}
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3054, file: !14, line: 416, baseType: !3145, size: 64, offset: 320)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!83, !1568, !284, !449, !7, !3148, !3149}
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3054, file: !14, line: 419, baseType: !3151, size: 64, offset: 384)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!83, !1568, !284, !449, !7, !7, !2292, !79}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3054, file: !14, line: 424, baseType: !3155, size: 64, offset: 448)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!3158, !284, !3158}
!3158 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !81, line: 131, baseType: !361)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3054, file: !14, line: 425, baseType: !3160, size: 64, offset: 512)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{null, !3064, !256, !256}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3054, file: !14, line: 426, baseType: !3164, size: 64, offset: 576)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!819, !3064, !80}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3054, file: !14, line: 427, baseType: !3168, size: 64, offset: 640)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{null, !3064}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3054, file: !14, line: 428, baseType: !3172, size: 64, offset: 704)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!242, !3175, !3197}
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !3177)
!3177 = !{!3178, !3179, !3180, !3184, !3185, !3186, !3187}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3176, file: !14, line: 374, baseType: !1568, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3176, file: !14, line: 375, baseType: !449, size: 64, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3176, file: !14, line: 376, baseType: !3181, size: 64, offset: 128)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{null, !3175, !84}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3176, file: !14, line: 377, baseType: !79, size: 64, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3176, file: !14, line: 378, baseType: !83, size: 32, offset: 256)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3176, file: !14, line: 379, baseType: !178, size: 16, offset: 288)
!3187 = !DIDerivedType(tag: DW_TAG_member, scope: !3176, file: !14, line: 380, baseType: !3188, size: 64, offset: 320)
!3188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3176, file: !14, line: 380, size: 64, elements: !3189)
!3189 = !{!3190, !3193}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3188, file: !14, line: 386, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3188, file: !14, line: 395, baseType: !3194, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!242, !79}
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3054, file: !14, line: 433, baseType: !3200, size: 64, offset: 768)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!83, !284, !3064, !3064, !50}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3054, file: !14, line: 435, baseType: !3204, size: 64, offset: 832)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!83, !3064}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3054, file: !14, line: 436, baseType: !3208, size: 64, offset: 896)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!819, !3064, !256, !256}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3054, file: !14, line: 438, baseType: !3212, size: 64, offset: 960)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{null, !3064, !3215, !3215}
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3054, file: !14, line: 439, baseType: !3217, size: 64, offset: 1024)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!83, !284, !2292}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3054, file: !14, line: 442, baseType: !3221, size: 64, offset: 1088)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!83, !3224, !1568, !3226}
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3054, file: !14, line: 444, baseType: !3228, size: 64, offset: 1152)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{null, !1568}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3054, file: !14, line: 445, baseType: !3232, size: 64, offset: 1216)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!83, !3175, !3197}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !285, file: !14, line: 486, baseType: !82, size: 64, offset: 896)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !285, file: !14, line: 487, baseType: !760, size: 320, offset: 960)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !285, file: !14, line: 488, baseType: !946, size: 32, offset: 1280)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !285, file: !14, line: 489, baseType: !140, size: 32, offset: 1312)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !285, file: !14, line: 490, baseType: !113, size: 128, offset: 1344)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !285, file: !14, line: 491, baseType: !79, size: 64, offset: 1472)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !275, file: !236, line: 180, baseType: !3242, size: 64, offset: 320)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!242, !1568, !133, !274, !210, !449, !256}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !275, file: !236, line: 182, baseType: !3242, size: 64, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !275, file: !236, line: 184, baseType: !3247, size: 64, offset: 448)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!83, !1568, !133, !274, !3250}
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1542, line: 625, size: 1344, elements: !3252)
!3252 = !{!3253, !3262, !3263, !3269, !3276, !3277, !3282, !3283, !3288, !3289, !3292, !3296, !3297, !3298, !3299, !3300, !3301}
!3253 = !DIDerivedType(tag: DW_TAG_member, scope: !3251, file: !1542, line: 628, baseType: !3254, size: 128)
!3254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3251, file: !1542, line: 628, size: 128, elements: !3255)
!3255 = !{!3256, !3261}
!3256 = !DIDerivedType(tag: DW_TAG_member, scope: !3254, file: !1542, line: 629, baseType: !3257, size: 128)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3254, file: !1542, line: 629, size: 128, elements: !3258)
!3258 = !{!3259, !3260}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3257, file: !1542, line: 631, baseType: !82, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3257, file: !1542, line: 632, baseType: !82, size: 64, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3254, file: !1542, line: 635, baseType: !630, size: 128, align: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3251, file: !1542, line: 639, baseType: !1540, size: 64, offset: 128)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3251, file: !1542, line: 640, baseType: !3264, size: 64, offset: 192)
!3264 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1577, line: 297, baseType: !3265)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1577, line: 297, size: 64, elements: !3266)
!3266 = !{!3267}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3265, file: !1577, line: 297, baseType: !3268, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1582, line: 19, baseType: !82)
!3269 = !DIDerivedType(tag: DW_TAG_member, scope: !3251, file: !1542, line: 646, baseType: !3270, size: 64, offset: 256)
!3270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3251, file: !1542, line: 646, size: 64, elements: !3271)
!3271 = !{!3272, !3275}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3270, file: !1542, line: 647, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3274)
!3274 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1542, line: 542, baseType: !82)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3270, file: !1542, line: 648, baseType: !3274, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3251, file: !1542, line: 666, baseType: !83, size: 32, offset: 320)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3251, file: !1542, line: 667, baseType: !3278, size: 64, offset: 384)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1542, line: 579, size: 320, elements: !3280)
!3280 = !{!3281}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3279, file: !1542, line: 580, baseType: !760, size: 320)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3251, file: !1542, line: 670, baseType: !819, size: 8, offset: 448)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3251, file: !1542, line: 681, baseType: !3284, size: 256, offset: 512)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3251, file: !1542, line: 678, size: 256, elements: !3285)
!3285 = !{!3286, !3287}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3284, file: !1542, line: 679, baseType: !752, size: 192, align: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3284, file: !1542, line: 680, baseType: !82, size: 64, offset: 192)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3251, file: !1542, line: 689, baseType: !113, size: 128, offset: 768)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3251, file: !1542, line: 691, baseType: !3290, size: 64, offset: 896)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1542, line: 691, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3251, file: !1542, line: 694, baseType: !3293, size: 64, offset: 960)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3295)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1542, line: 694, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3251, file: !1542, line: 697, baseType: !82, size: 64, offset: 1024)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3251, file: !1542, line: 699, baseType: !1568, size: 64, offset: 1088)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3251, file: !1542, line: 700, baseType: !79, size: 64, offset: 1152)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3251, file: !1542, line: 711, baseType: !576, size: 64, offset: 1216)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3251, file: !1542, line: 717, baseType: !2249, size: 64, offset: 1280)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3251, file: !1542, line: 722, baseType: !3302, offset: 1344)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1542, line: 570, elements: !491)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !263, file: !236, line: 90, baseType: !3304, size: 64, offset: 192)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !263, file: !236, line: 91, baseType: !3306, size: 64, offset: 256)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !226, file: !127, line: 120, baseType: !3308, size: 64, offset: 192)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!3311, !193}
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3313)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !3314)
!3314 = !{!3315, !3316, !3320, !3324, !3330, !3334}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3313, file: !58, line: 40, baseType: !57, size: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3313, file: !58, line: 41, baseType: !3317, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!819}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3313, file: !58, line: 42, baseType: !3321, size: 64, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!79}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3313, file: !58, line: 43, baseType: !3325, size: 64, offset: 192)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!1657, !3328}
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3313, file: !58, line: 44, baseType: !3331, size: 64, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!1657}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3313, file: !58, line: 45, baseType: !2808, size: 64, offset: 320)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !226, file: !127, line: 121, baseType: !3336, size: 64, offset: 256)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!1657, !193}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !226, file: !127, line: 122, baseType: !3340, size: 64, offset: 320)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{null, !193, !3343, !3344}
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !126, file: !127, line: 70, baseType: !3346, size: 64, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3348, line: 190, size: 1152, elements: !3349)
!3348 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3349 = !{!3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3441, !3442, !3443, !3444, !3445, !3448}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3347, file: !3348, line: 191, baseType: !160, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3347, file: !3348, line: 192, baseType: !160, size: 32, offset: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3347, file: !3348, line: 202, baseType: !3346, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3347, file: !3348, line: 203, baseType: !130, size: 64, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3347, file: !3348, line: 205, baseType: !752, size: 192, align: 64, offset: 192)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3347, file: !3348, line: 207, baseType: !1657, size: 64, offset: 384)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3347, file: !3348, line: 208, baseType: !7, size: 32, offset: 448)
!3357 = !DIDerivedType(tag: DW_TAG_member, scope: !3347, file: !3348, line: 209, baseType: !3358, size: 256, offset: 512)
!3358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3347, file: !3348, line: 209, size: 256, elements: !3359)
!3359 = !{!3360, !3369, !3373}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3358, file: !3348, line: 210, baseType: !3361, size: 256)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3348, line: 153, size: 256, elements: !3362)
!3362 = !{!3363, !3364, !3365, !3368}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3361, file: !3348, line: 154, baseType: !82, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3361, file: !3348, line: 156, baseType: !1426, size: 64, offset: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3361, file: !3348, line: 162, baseType: !3366, size: 64, offset: 128)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3348, line: 162, flags: DIFlagFwdDecl)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3361, file: !3348, line: 167, baseType: !82, size: 64, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3358, file: !3348, line: 211, baseType: !3370, size: 64)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3348, line: 170, size: 64, elements: !3371)
!3371 = !{!3372}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3370, file: !3348, line: 171, baseType: !3346, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3358, file: !3348, line: 212, baseType: !3374, size: 256)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3348, line: 174, size: 256, elements: !3375)
!3375 = !{!3376, !3436, !3439, !3440}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3374, file: !3348, line: 175, baseType: !3377, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3379)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3348, line: 271, size: 768, elements: !3380)
!3380 = !{!3381, !3401, !3405, !3406, !3407, !3408, !3409, !3413, !3414, !3415, !3416, !3432}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3379, file: !3348, line: 276, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!83, !3385}
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3348, line: 251, size: 1216, elements: !3387)
!3387 = !{!3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3386, file: !3348, line: 253, baseType: !3346, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3386, file: !3348, line: 254, baseType: !1568, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3386, file: !3348, line: 255, baseType: !560, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3386, file: !3348, line: 256, baseType: !79, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3386, file: !3348, line: 259, baseType: !572, size: 256, offset: 256)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3386, file: !3348, line: 260, baseType: !572, size: 256, offset: 512)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3386, file: !3348, line: 261, baseType: !83, size: 32, offset: 768)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3386, file: !3348, line: 262, baseType: !113, size: 128, offset: 832)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3386, file: !3348, line: 263, baseType: !210, size: 64, offset: 960)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3386, file: !3348, line: 265, baseType: !256, size: 64, offset: 1024)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3386, file: !3348, line: 266, baseType: !819, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3386, file: !3348, line: 267, baseType: !819, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3386, file: !3348, line: 268, baseType: !3293, size: 64, offset: 1152)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3379, file: !3348, line: 277, baseType: !3402, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{null, !3385}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3379, file: !3348, line: 290, baseType: !611, size: 64, offset: 128)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3379, file: !3348, line: 292, baseType: !598, size: 64, offset: 192)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3379, file: !3348, line: 293, baseType: !607, size: 64, offset: 256)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3379, file: !3348, line: 294, baseType: !603, size: 64, offset: 320)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3379, file: !3348, line: 296, baseType: !3410, size: 64, offset: 384)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!242, !3385, !210, !256, !449}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3379, file: !3348, line: 306, baseType: !256, size: 64, offset: 448)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3379, file: !3348, line: 313, baseType: !819, size: 8, offset: 512)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3379, file: !3348, line: 314, baseType: !3410, size: 64, offset: 576)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3379, file: !3348, line: 317, baseType: !3417, size: 64, offset: 640)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!3420, !3385, !3422}
!3420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3421, line: 59, baseType: !7)
!3421 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3424, line: 37, size: 128, elements: !3425)
!3424 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!3425 = !{!3426, !3431}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3423, file: !3424, line: 38, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3424, line: 31, baseType: !3428)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{null, !1568, !2790, !3422}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3423, file: !3424, line: 39, baseType: !3420, size: 32, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3379, file: !3348, line: 320, baseType: !3433, size: 64, offset: 704)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!83, !3385, !3250}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3374, file: !3348, line: 176, baseType: !3437, size: 64, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3348, line: 35, flags: DIFlagFwdDecl)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3374, file: !3348, line: 177, baseType: !449, size: 64, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3374, file: !3348, line: 178, baseType: !3346, size: 64, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3347, file: !3348, line: 215, baseType: !79, size: 64, offset: 768)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3347, file: !3348, line: 221, baseType: !361, size: 64, offset: 832)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3347, file: !3348, line: 223, baseType: !180, size: 16, offset: 896)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3347, file: !3348, line: 224, baseType: !251, size: 16, offset: 912)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3347, file: !3348, line: 225, baseType: !3446, size: 64, offset: 960)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3348, line: 36, flags: DIFlagFwdDecl)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3347, file: !3348, line: 227, baseType: !630, size: 128, align: 64, offset: 1024)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !126, file: !127, line: 71, baseType: !3450, size: 32, offset: 448)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3451, line: 19, size: 32, elements: !3452)
!3451 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3452 = !{!3453}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3450, file: !3451, line: 20, baseType: !675, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !126, file: !127, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !126, file: !127, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !126, file: !127, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !126, file: !127, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !126, file: !127, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !123, file: !6, line: 47, baseType: !108, size: 64, offset: 512)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !123, file: !6, line: 48, baseType: !133, size: 64, offset: 576)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !123, file: !6, line: 49, baseType: !3462, size: 64, offset: 640)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !123, file: !6, line: 50, baseType: !1811, size: 64, offset: 704)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !109, file: !6, line: 418, baseType: !3466, size: 64, offset: 1408)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3468)
!3468 = !{!3469, !3470, !3475, !3479, !3483, !3487}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3467, file: !6, line: 54, baseType: !247, size: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3467, file: !6, line: 55, baseType: !3471, size: 64, offset: 128)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!242, !3466, !3474, !210}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3467, file: !6, line: 57, baseType: !3476, size: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!242, !3466, !3474, !130, !256}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3467, file: !6, line: 59, baseType: !3480, size: 64, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{null, !108, !130}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3467, file: !6, line: 60, baseType: !3484, size: 64, offset: 320)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!83, !108}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3467, file: !6, line: 61, baseType: !3488, size: 64, offset: 384)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{null, !108}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !109, file: !6, line: 419, baseType: !130, size: 64, offset: 1472)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !109, file: !6, line: 420, baseType: !130, size: 64, offset: 1536)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !109, file: !6, line: 421, baseType: !133, size: 64, offset: 1600)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !109, file: !6, line: 424, baseType: !3495, size: 64, offset: 1664)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3497)
!3497 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !109, file: !6, line: 425, baseType: !3499, size: 64, offset: 1728)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !745)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !109, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !109, file: !6, line: 435, baseType: !572, size: 256, offset: 1856)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !109, file: !6, line: 437, baseType: !3504, size: 64, offset: 2112)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3506, line: 69, size: 320, elements: !3507)
!3506 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3507 = !{!3508, !3509, !3510, !3527, !3529, !3533, !3534}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3505, file: !3506, line: 70, baseType: !130, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3505, file: !3506, line: 71, baseType: !108, size: 64, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3505, file: !3506, line: 72, baseType: !3511, size: 64, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3513)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3506, line: 47, size: 256, elements: !3514)
!3514 = !{!3515, !3516, !3522, !3526}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3513, file: !3506, line: 49, baseType: !7, size: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3513, file: !3506, line: 51, baseType: !3517, size: 64, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!83, !130, !3520}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3505)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3513, file: !3506, line: 53, baseType: !3523, size: 64, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!83, !210, !3520}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3513, file: !3506, line: 55, baseType: !2808, size: 64, offset: 192)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3505, file: !3506, line: 73, baseType: !3528, size: 16, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3505, file: !3506, line: 74, baseType: !3530, size: 8, offset: 208)
!3530 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !169, line: 16, baseType: !3531)
!3531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !171, line: 20, baseType: !3532)
!3532 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3505, file: !3506, line: 75, baseType: !168, size: 8, offset: 216)
!3534 = !DIDerivedType(tag: DW_TAG_member, scope: !3505, file: !3506, line: 76, baseType: !3535, size: 64, offset: 256)
!3535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3505, file: !3506, line: 76, size: 64, elements: !3536)
!3536 = !{!3537, !3538, !3545}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3535, file: !3506, line: 77, baseType: !79, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3535, file: !3506, line: 78, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3541)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3506, line: 86, size: 128, elements: !3542)
!3542 = !{!3543, !3544}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3541, file: !3506, line: 87, baseType: !7, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3541, file: !3506, line: 88, baseType: !210, size: 64, offset: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3535, file: !3506, line: 79, baseType: !3546, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3548)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3506, line: 92, size: 256, elements: !3549)
!3549 = !{!3550, !3551, !3552, !3553, !3554}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3548, file: !3506, line: 94, baseType: !7, size: 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3548, file: !3506, line: 95, baseType: !7, size: 32, offset: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3548, file: !3506, line: 96, baseType: !1246, size: 64, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3548, file: !3506, line: 97, baseType: !3511, size: 64, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3548, file: !3506, line: 98, baseType: !79, size: 64, offset: 192)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !109, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !109, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !109, file: !6, line: 442, baseType: !3495, size: 64, offset: 2240)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !109, file: !6, line: 443, baseType: !3499, size: 64, offset: 2304)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !109, file: !6, line: 444, baseType: !819, size: 8, offset: 2368)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !109, file: !6, line: 451, baseType: !819, size: 8, offset: 2376)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !109, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !109, file: !6, line: 455, baseType: !3563, size: 64, offset: 2432)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3565, line: 23, size: 96, elements: !3566)
!3565 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3566 = !{!3567, !3568, !3569}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3564, file: !3565, line: 24, baseType: !83, size: 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3564, file: !3565, line: 24, baseType: !83, size: 32, offset: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3564, file: !3565, line: 24, baseType: !83, size: 32, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !109, file: !6, line: 458, baseType: !3571, size: 64, offset: 2496)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!83}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !109, file: !6, line: 460, baseType: !3575, size: 4032, align: 512, offset: 2560)
!3575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3576, size: 4032, elements: !3590)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3577)
!3577 = !{!3578, !3579, !3580}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3576, file: !6, line: 363, baseType: !79, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3576, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3576, file: !6, line: 367, baseType: !3581, size: 448, offset: 128)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3582)
!3582 = !{!3583, !3584}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3581, file: !6, line: 320, baseType: !108, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3581, file: !6, line: 321, baseType: !3585, size: 384, offset: 64)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3586, line: 40, size: 384, elements: !3587)
!3586 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3587 = !{!3588}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3585, file: !3586, line: 41, baseType: !3589, size: 384, align: 64)
!3589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 384, align: 64, elements: !1945)
!3590 = !{!3591}
!3591 = !DISubrange(count: 7)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !109, file: !6, line: 463, baseType: !3593, size: 192, offset: 6592)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3594, line: 8, size: 192, elements: !3595)
!3594 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3595 = !{!3596, !3597, !3598}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3593, file: !3594, line: 10, baseType: !7, size: 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3593, file: !3594, line: 11, baseType: !554, size: 64, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3593, file: !3594, line: 12, baseType: !3599, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3601, line: 59, size: 48, elements: !3602)
!3601 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3602 = !{!3603, !3604, !3605, !3606, !3607, !3608}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3600, file: !3601, line: 60, baseType: !1674, size: 16)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3600, file: !3601, line: 61, baseType: !1674, size: 16, offset: 16)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3600, file: !3601, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3600, file: !3601, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3600, file: !3601, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3600, file: !3601, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !109, file: !6, line: 465, baseType: !82, size: 64, offset: 6784)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !109, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !109, file: !6, line: 470, baseType: !113, size: 128, offset: 6912)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !109, file: !6, line: 471, baseType: !3613, size: 64, offset: 7040)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3615, line: 33, size: 96, elements: !3616)
!3615 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3616 = !{!3617, !3618, !3619, !3620}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3614, file: !3615, line: 37, baseType: !83, size: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3614, file: !3615, line: 43, baseType: !83, size: 32, offset: 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3614, file: !3615, line: 45, baseType: !180, size: 16, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3614, file: !3615, line: 47, baseType: !180, size: 16, offset: 80)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !109, file: !6, line: 476, baseType: !3622, size: 64, offset: 7104)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3624)
!3624 = !{!3625, !3641, !3642, !3643}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3623, file: !6, line: 379, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3628, line: 204, baseType: !3629)
!3628 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3628, line: 197, size: 192, elements: !3630)
!3630 = !{!3631, !3633, !3634, !3635, !3637, !3639}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3629, file: !3628, line: 198, baseType: !3632, size: 32)
!3632 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3628, line: 21, baseType: !358)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3629, file: !3628, line: 199, baseType: !172, size: 8, offset: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3629, file: !3628, line: 200, baseType: !172, size: 8, offset: 40)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3629, file: !3628, line: 201, baseType: !3636, size: 16, offset: 48)
!3636 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3628, line: 17, baseType: !179)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3629, file: !3628, line: 202, baseType: !3638, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3628, line: 16, baseType: !362)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3629, file: !3628, line: 203, baseType: !3640, size: 64, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3628, line: 22, baseType: !362)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3623, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3623, file: !6, line: 381, baseType: !210, size: 64, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3623, file: !6, line: 382, baseType: !210, size: 64, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !109, file: !6, line: 477, baseType: !3623, size: 256, offset: 7168)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !109, file: !6, line: 480, baseType: !3646, size: 64, offset: 7424)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !109, file: !6, line: 483, baseType: !3649, size: 64, offset: 7488)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !109, file: !6, line: 488, baseType: !210, size: 64, offset: 7552)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !109, file: !6, line: 492, baseType: !79, size: 64, offset: 7616)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !109, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !109, file: !6, line: 495, baseType: !79, size: 64, offset: 7744)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !109, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !109, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !109, file: !6, line: 500, baseType: !3658, size: 64, offset: 7872)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3660, line: 45, baseType: !3661)
!3660 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !109, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !109, file: !6, line: 504, baseType: !3664, size: 64, offset: 8000)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3667, line: 96, size: 192, elements: !3668)
!3667 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3668 = !{!3669, !3670, !3713, !3715}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3666, file: !3667, line: 97, baseType: !7, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3666, file: !3667, line: 98, baseType: !3671, size: 64, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3667, line: 24, size: 3072, elements: !3673)
!3673 = !{!3674, !3676, !3677, !3678, !3679, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3710, !3711, !3712}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3672, file: !3667, line: 26, baseType: !3675, size: 128)
!3675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 128, elements: !1945)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3672, file: !3667, line: 27, baseType: !3675, size: 128, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3672, file: !3667, line: 28, baseType: !83, size: 32, offset: 256)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3672, file: !3667, line: 31, baseType: !140, size: 32, align: 512, offset: 512)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3672, file: !3667, line: 32, baseType: !3680, size: 960, offset: 576)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3681, line: 206, size: 960, elements: !3682)
!3681 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3682 = !{!3683, !3684, !3687, !3689, !3690, !3692}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3680, file: !3681, line: 207, baseType: !633, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3680, file: !3681, line: 208, baseType: !3685, size: 256, offset: 64)
!3685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3686, size: 256, elements: !684)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3680, file: !3681, line: 209, baseType: !3688, size: 256, offset: 320)
!3688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 256, elements: !684)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3680, file: !3681, line: 213, baseType: !84, size: 64, offset: 576)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3680, file: !3681, line: 215, baseType: !3691, size: 256, offset: 640)
!3691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !684)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3680, file: !3681, line: 216, baseType: !168, size: 8, offset: 896)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3672, file: !3667, line: 33, baseType: !82, size: 64, offset: 1536)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3672, file: !3667, line: 34, baseType: !82, size: 64, offset: 1600)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3672, file: !3667, line: 35, baseType: !819, size: 8, offset: 1664)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3672, file: !3667, line: 36, baseType: !2445, size: 320, offset: 1728)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3672, file: !3667, line: 37, baseType: !1696, size: 256, offset: 2048)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3672, file: !3667, line: 38, baseType: !630, size: 128, align: 64, offset: 2304)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3672, file: !3667, line: 39, baseType: !3700, size: 64, offset: 2432)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3667, line: 49, size: 768, elements: !3702)
!3702 = !{!3703, !3704, !3705, !3706, !3707, !3708, !3709}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3701, file: !3667, line: 50, baseType: !140, size: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3701, file: !3667, line: 51, baseType: !3688, size: 256, offset: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3701, file: !3667, line: 53, baseType: !3688, size: 256, offset: 320)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3701, file: !3667, line: 54, baseType: !82, size: 64, offset: 576)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3701, file: !3667, line: 55, baseType: !3700, size: 64, offset: 640)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3701, file: !3667, line: 56, baseType: !83, size: 32, offset: 704)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3701, file: !3667, line: 57, baseType: !83, size: 32, offset: 736)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3672, file: !3667, line: 40, baseType: !82, size: 64, offset: 2496)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3672, file: !3667, line: 42, baseType: !83, size: 32, offset: 2560)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3672, file: !3667, line: 43, baseType: !3665, size: 64, offset: 2624)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3666, file: !3667, line: 99, baseType: !3714, offset: 128)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !490, line: 211, elements: !491)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3666, file: !3667, line: 100, baseType: !3716, size: 64, offset: 128)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3667, line: 63, size: 3008, elements: !3718)
!3718 = !{!3719, !3720, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3748}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3717, file: !3667, line: 64, baseType: !3700, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3717, file: !3667, line: 65, baseType: !3721, size: 192, offset: 64)
!3721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3700, size: 192, elements: !211)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3717, file: !3667, line: 67, baseType: !83, size: 32, offset: 256)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3717, file: !3667, line: 68, baseType: !572, size: 256, offset: 320)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3717, file: !3667, line: 69, baseType: !140, size: 32, offset: 576)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3717, file: !3667, line: 70, baseType: !572, size: 256, offset: 640)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3717, file: !3667, line: 71, baseType: !82, size: 64, offset: 896)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3717, file: !3667, line: 72, baseType: !82, size: 64, offset: 960)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3717, file: !3667, line: 73, baseType: !82, size: 64, offset: 1024)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3717, file: !3667, line: 74, baseType: !82, size: 64, offset: 1088)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3717, file: !3667, line: 75, baseType: !82, size: 64, offset: 1152)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3717, file: !3667, line: 76, baseType: !82, size: 64, offset: 1216)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3717, file: !3667, line: 77, baseType: !82, size: 64, offset: 1280)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3717, file: !3667, line: 78, baseType: !82, size: 64, offset: 1344)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3717, file: !3667, line: 79, baseType: !819, size: 8, offset: 1408)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3717, file: !3667, line: 80, baseType: !82, size: 64, offset: 1472)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3717, file: !3667, line: 81, baseType: !572, size: 256, offset: 1536)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3717, file: !3667, line: 82, baseType: !1812, size: 256, offset: 1792)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3717, file: !3667, line: 84, baseType: !160, size: 32, offset: 2048)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3717, file: !3667, line: 87, baseType: !82, size: 64, offset: 2112)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3717, file: !3667, line: 88, baseType: !82, size: 64, offset: 2176)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3717, file: !3667, line: 89, baseType: !3742, size: 704, offset: 2240)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1697, line: 111, size: 704, elements: !3743)
!3743 = !{!3744, !3745, !3746, !3747}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3742, file: !1697, line: 112, baseType: !1696, size: 256)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3742, file: !1697, line: 113, baseType: !2445, size: 320, offset: 256)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3742, file: !1697, line: 116, baseType: !2739, size: 64, offset: 576)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3742, file: !1697, line: 117, baseType: !83, size: 32, offset: 640)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3717, file: !3667, line: 90, baseType: !3665, size: 64, offset: 2944)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !109, file: !6, line: 515, baseType: !3750, size: 64, offset: 8064)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3752, line: 117, size: 128, elements: !3753)
!3752 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3753 = !{!3754, !3755, !3756}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3751, file: !3752, line: 118, baseType: !745, size: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3751, file: !3752, line: 119, baseType: !745, size: 32, offset: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3751, file: !3752, line: 120, baseType: !84, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !109, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !109, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !109, file: !6, line: 520, baseType: !3760, size: 64, offset: 8192)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !109, file: !6, line: 523, baseType: !3762, size: 64, offset: 8256)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !109, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !109, file: !6, line: 525, baseType: !3767, size: 64, offset: 8384)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !109, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !109, file: !6, line: 533, baseType: !79, size: 64, offset: 8512)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !109, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !109, file: !6, line: 535, baseType: !3774, size: 64, offset: 8640)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !109, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !109, file: !6, line: 539, baseType: !83, size: 32, offset: 8736)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !109, file: !6, line: 540, baseType: !3778, size: 64, offset: 8768)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3780, line: 32, size: 64, elements: !3781)
!3780 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3781 = !{!3782, !3783}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3779, file: !3780, line: 33, baseType: !745, size: 32)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3779, file: !3780, line: 34, baseType: !745, size: 32, offset: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !109, file: !6, line: 563, baseType: !113, size: 128, offset: 8832)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !109, file: !6, line: 565, baseType: !113, size: 128, offset: 8960)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !109, file: !6, line: 568, baseType: !3787, size: 64, offset: 9088)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !109, file: !6, line: 570, baseType: !160, size: 32, offset: 9152)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !105, file: !14, line: 1916, baseType: !3790, size: 64, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!449, !1568, !449, !83}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !105, file: !14, line: 1917, baseType: !3794, size: 64, offset: 128)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!242, !1568, !210, !256, !601}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !105, file: !14, line: 1918, baseType: !3798, size: 64, offset: 192)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!242, !1568, !130, !256, !601}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !105, file: !14, line: 1919, baseType: !3172, size: 64, offset: 256)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !105, file: !14, line: 1920, baseType: !3172, size: 64, offset: 320)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !105, file: !14, line: 1921, baseType: !3804, size: 64, offset: 384)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!83, !3175, !3807, !7}
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !105, file: !14, line: 1923, baseType: !3810, size: 64, offset: 448)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!83, !1568, !3813}
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !3815)
!3815 = !{!3816, !3821}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3814, file: !14, line: 1859, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !3818)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!819, !3813, !130, !83, !449, !361, !7}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3814, file: !14, line: 1860, baseType: !449, size: 64, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !105, file: !14, line: 1924, baseType: !3823, size: 64, offset: 512)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!3420, !1568, !3422}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !105, file: !14, line: 1925, baseType: !3827, size: 64, offset: 576)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!84, !1568, !7, !82}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !105, file: !14, line: 1926, baseType: !3827, size: 64, offset: 640)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !105, file: !14, line: 1927, baseType: !3832, size: 64, offset: 704)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!83, !1568, !3250}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !105, file: !14, line: 1928, baseType: !82, size: 64, offset: 768)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !105, file: !14, line: 1929, baseType: !3837, size: 64, offset: 832)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!83, !288, !1568}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !105, file: !14, line: 1930, baseType: !3841, size: 64, offset: 896)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!83, !1568, !3844}
!3844 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !79)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !105, file: !14, line: 1931, baseType: !3837, size: 64, offset: 960)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !105, file: !14, line: 1932, baseType: !3847, size: 64, offset: 1024)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!83, !1568, !449, !449, !83}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !105, file: !14, line: 1933, baseType: !3851, size: 64, offset: 1088)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!83, !83, !1568, !83}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !105, file: !14, line: 1934, baseType: !3855, size: 64, offset: 1152)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!83, !1568, !83, !3858}
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !105, file: !14, line: 1935, baseType: !1565, size: 64, offset: 1216)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !105, file: !14, line: 1936, baseType: !3862, size: 64, offset: 1280)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!83, !83}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !105, file: !14, line: 1937, baseType: !3855, size: 64, offset: 1344)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !105, file: !14, line: 1938, baseType: !3867, size: 64, offset: 1408)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!242, !2286, !1568, !601, !256, !7}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !105, file: !14, line: 1939, baseType: !3871, size: 64, offset: 1472)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!242, !1568, !601, !2286, !256, !7}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !105, file: !14, line: 1940, baseType: !3228, size: 64, offset: 1536)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !105, file: !14, line: 1941, baseType: !3876, size: 64, offset: 1600)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!83, !1568, !83, !3879, !3149}
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !105, file: !14, line: 1942, baseType: !3881, size: 64, offset: 1664)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!84, !1568, !83, !449, !449}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !105, file: !14, line: 1944, baseType: !3885, size: 64, offset: 1728)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{null, !560, !1568}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !105, file: !14, line: 1948, baseType: !3889, size: 64, offset: 1792)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!242, !1568, !449, !1568, !449, !256, !7}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !105, file: !14, line: 1950, baseType: !3893, size: 64, offset: 1856)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!449, !1568, !449, !1568, !449, !449, !7}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !105, file: !14, line: 1953, baseType: !3847, size: 64, offset: 1920)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !105, file: !14, line: 1954, baseType: !3898, size: 64, offset: 1984)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!83, !3901, !7}
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !105, file: !14, line: 1955, baseType: !3904, size: 64, offset: 2048)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!83, !3901, !3807, !7}
!3907 = !{i32 7, !"Dwarf Version", i32 5}
!3908 = !{i32 2, !"Debug Info Version", i32 3}
!3909 = !{i32 1, !"wchar_size", i32 2}
!3910 = !{i32 8, !"cf-protection-branch", i32 1}
!3911 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3912 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3913 = !{i32 1, !"Code Model", i32 2}
!3914 = !{i32 1, !"override-stack-alignment", i32 8}
!3915 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3916 = distinct !DISubprogram(name: "efivarfs_file_read", scope: !3, file: !3, line: 66, type: !3795, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3917)
!3917 = !{!3918, !3919, !3920, !3921, !3922, !3952, !3953, !3954, !3955, !3956, !3957}
!3918 = !DILocalVariable(name: "file", arg: 1, scope: !3916, file: !3, line: 66, type: !1568)
!3919 = !DILocalVariable(name: "userbuf", arg: 2, scope: !3916, file: !3, line: 66, type: !210)
!3920 = !DILocalVariable(name: "count", arg: 3, scope: !3916, file: !3, line: 67, type: !256)
!3921 = !DILocalVariable(name: "ppos", arg: 4, scope: !3916, file: !3, line: 67, type: !601)
!3922 = !DILocalVariable(name: "var", scope: !3916, file: !3, line: 69, type: !3923)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efivar_entry", file: !3925, line: 21, size: 17344, elements: !3926)
!3925 = !DIFile(filename: "fs/efivarfs/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd82167b09c718742058efff5d1b8f12")
!3926 = !{!3927, !3950, !3951}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !3924, file: !3925, line: 22, baseType: !3928, size: 16672)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "efi_variable", file: !3925, line: 12, size: 16672, elements: !3929)
!3929 = !{!3930, !3936, !3942, !3943, !3947, !3949}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "VariableName", scope: !3928, file: !3925, line: 13, baseType: !3931, size: 8192)
!3931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3932, size: 8192, elements: !3934)
!3932 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_char16_t", file: !3933, line: 49, baseType: !178)
!3933 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!3934 = !{!3935}
!3935 = !DISubrange(count: 512)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "VendorGuid", scope: !3928, file: !3925, line: 14, baseType: !3937, size: 128, align: 32, offset: 8192)
!3937 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_guid_t", file: !3933, line: 74, baseType: !3938, align: 32)
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !2710, line: 17, baseType: !3939)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2710, line: 15, size: 128, elements: !3940)
!3940 = !{!3941}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3939, file: !2710, line: 16, baseType: !2714, size: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "DataSize", scope: !3928, file: !3925, line: 15, baseType: !82, size: 64, offset: 8320)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !3928, file: !3925, line: 16, baseType: !3944, size: 8192, offset: 8384)
!3944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 8192, elements: !3945)
!3945 = !{!3946}
!3946 = !DISubrange(count: 1024)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "Status", scope: !3928, file: !3925, line: 17, baseType: !3948, size: 64, offset: 16576)
!3948 = !DIDerivedType(tag: DW_TAG_typedef, name: "efi_status_t", file: !3933, line: 47, baseType: !82)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "Attributes", scope: !3928, file: !3925, line: 18, baseType: !358, size: 32, offset: 16640)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3924, file: !3925, line: 23, baseType: !113, size: 128, offset: 16704)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3924, file: !3925, line: 24, baseType: !126, size: 512, offset: 16832)
!3952 = !DILocalVariable(name: "datasize", scope: !3916, file: !3, line: 70, type: !82)
!3953 = !DILocalVariable(name: "attributes", scope: !3916, file: !3, line: 71, type: !357)
!3954 = !DILocalVariable(name: "data", scope: !3916, file: !3, line: 72, type: !79)
!3955 = !DILocalVariable(name: "size", scope: !3916, file: !3, line: 73, type: !242)
!3956 = !DILocalVariable(name: "err", scope: !3916, file: !3, line: 74, type: !83)
!3957 = !DILabel(scope: !3916, name: "out_free", file: !3, line: 103)
!3958 = !DILocation(line: 66, column: 48, scope: !3916)
!3959 = !DILocation(line: 66, column: 67, scope: !3916)
!3960 = !DILocation(line: 67, column: 10, scope: !3916)
!3961 = !DILocation(line: 67, column: 25, scope: !3916)
!3962 = !DILocation(line: 69, column: 2, scope: !3916)
!3963 = !DILocation(line: 69, column: 23, scope: !3916)
!3964 = !DILocation(line: 69, column: 29, scope: !3916)
!3965 = !DILocation(line: 69, column: 35, scope: !3916)
!3966 = !DILocation(line: 70, column: 2, scope: !3916)
!3967 = !DILocation(line: 70, column: 16, scope: !3916)
!3968 = !DILocation(line: 71, column: 2, scope: !3916)
!3969 = !DILocation(line: 71, column: 6, scope: !3916)
!3970 = !DILocation(line: 72, column: 2, scope: !3916)
!3971 = !DILocation(line: 72, column: 8, scope: !3916)
!3972 = !DILocation(line: 73, column: 2, scope: !3916)
!3973 = !DILocation(line: 73, column: 10, scope: !3916)
!3974 = !DILocation(line: 74, column: 2, scope: !3916)
!3975 = !DILocation(line: 74, column: 6, scope: !3916)
!3976 = !DILocation(line: 76, column: 2, scope: !3916)
!3977 = !DILocation(line: 76, column: 10, scope: !3916)
!3978 = !DILocation(line: 76, column: 9, scope: !3916)
!3979 = !DILocation(line: 77, column: 3, scope: !3916)
!3980 = distinct !{!3980, !3976, !3981, !3982, !3983}
!3981 = !DILocation(line: 77, column: 12, scope: !3916)
!3982 = !{!"llvm.loop.mustprogress"}
!3983 = !{!"llvm.loop.unroll.disable"}
!3984 = !DILocation(line: 79, column: 26, scope: !3916)
!3985 = !DILocation(line: 79, column: 8, scope: !3916)
!3986 = !DILocation(line: 79, column: 6, scope: !3916)
!3987 = !DILocation(line: 85, column: 6, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 85, column: 6)
!3989 = !DILocation(line: 85, column: 10, scope: !3988)
!3990 = !DILocation(line: 85, column: 6, scope: !3916)
!3991 = !DILocation(line: 86, column: 3, scope: !3988)
!3992 = !DILocation(line: 87, column: 11, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 87, column: 11)
!3994 = !DILocation(line: 87, column: 11, scope: !3988)
!3995 = !DILocation(line: 88, column: 10, scope: !3993)
!3996 = !DILocation(line: 88, column: 3, scope: !3993)
!3997 = !DILocation(line: 90, column: 17, scope: !3916)
!3998 = !DILocation(line: 90, column: 26, scope: !3916)
!3999 = !DILocation(line: 90, column: 9, scope: !3916)
!4000 = !DILocation(line: 90, column: 7, scope: !3916)
!4001 = !DILocation(line: 92, column: 7, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 92, column: 6)
!4003 = !DILocation(line: 92, column: 6, scope: !3916)
!4004 = !DILocation(line: 93, column: 3, scope: !4002)
!4005 = !DILocation(line: 95, column: 26, scope: !3916)
!4006 = !DILocation(line: 96, column: 5, scope: !3916)
!4007 = !DILocation(line: 96, column: 10, scope: !3916)
!4008 = !DILocation(line: 95, column: 9, scope: !3916)
!4009 = !DILocation(line: 95, column: 7, scope: !3916)
!4010 = !DILocation(line: 97, column: 6, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 97, column: 6)
!4012 = !DILocation(line: 97, column: 6, scope: !3916)
!4013 = !DILocation(line: 98, column: 3, scope: !4011)
!4014 = !DILocation(line: 100, column: 9, scope: !3916)
!4015 = !DILocation(line: 100, column: 2, scope: !3916)
!4016 = !DILocation(line: 101, column: 33, scope: !3916)
!4017 = !DILocation(line: 101, column: 42, scope: !3916)
!4018 = !DILocation(line: 101, column: 49, scope: !3916)
!4019 = !DILocation(line: 102, column: 12, scope: !3916)
!4020 = !DILocation(line: 102, column: 18, scope: !3916)
!4021 = !DILocation(line: 102, column: 27, scope: !3916)
!4022 = !DILocation(line: 101, column: 9, scope: !3916)
!4023 = !DILocation(line: 101, column: 7, scope: !3916)
!4024 = !DILocation(line: 101, column: 2, scope: !3916)
!4025 = !DILocation(line: 103, column: 1, scope: !3916)
!4026 = !DILocation(line: 104, column: 8, scope: !3916)
!4027 = !DILocation(line: 104, column: 2, scope: !3916)
!4028 = !DILocation(line: 106, column: 9, scope: !3916)
!4029 = !DILocation(line: 106, column: 2, scope: !3916)
!4030 = !DILocation(line: 107, column: 1, scope: !3916)
!4031 = distinct !DISubprogram(name: "efivarfs_file_write", scope: !3, file: !3, line: 15, type: !3799, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4032)
!4032 = !{!4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044}
!4033 = !DILocalVariable(name: "file", arg: 1, scope: !4031, file: !3, line: 15, type: !1568)
!4034 = !DILocalVariable(name: "userbuf", arg: 2, scope: !4031, file: !3, line: 16, type: !130)
!4035 = !DILocalVariable(name: "count", arg: 3, scope: !4031, file: !3, line: 16, type: !256)
!4036 = !DILocalVariable(name: "ppos", arg: 4, scope: !4031, file: !3, line: 16, type: !601)
!4037 = !DILocalVariable(name: "var", scope: !4031, file: !3, line: 18, type: !3923)
!4038 = !DILocalVariable(name: "data", scope: !4031, file: !3, line: 19, type: !79)
!4039 = !DILocalVariable(name: "attributes", scope: !4031, file: !3, line: 20, type: !357)
!4040 = !DILocalVariable(name: "inode", scope: !4031, file: !3, line: 21, type: !288)
!4041 = !DILocalVariable(name: "datasize", scope: !4031, file: !3, line: 22, type: !82)
!4042 = !DILocalVariable(name: "bytes", scope: !4031, file: !3, line: 23, type: !242)
!4043 = !DILocalVariable(name: "set", scope: !4031, file: !3, line: 24, type: !819)
!4044 = !DILabel(scope: !4031, name: "out", file: !3, line: 60)
!4045 = !DILocation(line: 15, column: 49, scope: !4031)
!4046 = !DILocation(line: 16, column: 22, scope: !4031)
!4047 = !DILocation(line: 16, column: 38, scope: !4031)
!4048 = !DILocation(line: 16, column: 53, scope: !4031)
!4049 = !DILocation(line: 18, column: 2, scope: !4031)
!4050 = !DILocation(line: 18, column: 23, scope: !4031)
!4051 = !DILocation(line: 18, column: 29, scope: !4031)
!4052 = !DILocation(line: 18, column: 35, scope: !4031)
!4053 = !DILocation(line: 19, column: 2, scope: !4031)
!4054 = !DILocation(line: 19, column: 8, scope: !4031)
!4055 = !DILocation(line: 20, column: 2, scope: !4031)
!4056 = !DILocation(line: 20, column: 6, scope: !4031)
!4057 = !DILocation(line: 21, column: 2, scope: !4031)
!4058 = !DILocation(line: 21, column: 16, scope: !4031)
!4059 = !DILocation(line: 21, column: 24, scope: !4031)
!4060 = !DILocation(line: 21, column: 30, scope: !4031)
!4061 = !DILocation(line: 21, column: 41, scope: !4031)
!4062 = !DILocation(line: 22, column: 2, scope: !4031)
!4063 = !DILocation(line: 22, column: 16, scope: !4031)
!4064 = !DILocation(line: 22, column: 27, scope: !4031)
!4065 = !DILocation(line: 22, column: 33, scope: !4031)
!4066 = !DILocation(line: 23, column: 2, scope: !4031)
!4067 = !DILocation(line: 23, column: 10, scope: !4031)
!4068 = !DILocation(line: 24, column: 2, scope: !4031)
!4069 = !DILocation(line: 24, column: 7, scope: !4031)
!4070 = !DILocation(line: 26, column: 6, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 26, column: 6)
!4072 = !DILocation(line: 26, column: 12, scope: !4071)
!4073 = !DILocation(line: 26, column: 6, scope: !4031)
!4074 = !DILocation(line: 27, column: 3, scope: !4071)
!4075 = !DILocation(line: 29, column: 34, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 29, column: 6)
!4077 = !DILocation(line: 29, column: 6, scope: !4076)
!4078 = !DILocation(line: 29, column: 6, scope: !4031)
!4079 = !DILocation(line: 30, column: 3, scope: !4076)
!4080 = !DILocation(line: 32, column: 6, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 32, column: 6)
!4082 = !DILocation(line: 32, column: 17, scope: !4081)
!4083 = !DILocation(line: 32, column: 6, scope: !4031)
!4084 = !DILocation(line: 33, column: 3, scope: !4081)
!4085 = !DILocation(line: 35, column: 21, scope: !4031)
!4086 = !DILocation(line: 35, column: 29, scope: !4031)
!4087 = !DILocation(line: 35, column: 51, scope: !4031)
!4088 = !DILocation(line: 35, column: 9, scope: !4031)
!4089 = !DILocation(line: 35, column: 7, scope: !4031)
!4090 = !DILocation(line: 36, column: 13, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 36, column: 6)
!4092 = !DILocation(line: 36, column: 6, scope: !4091)
!4093 = !DILocation(line: 36, column: 6, scope: !4031)
!4094 = !DILocation(line: 37, column: 18, scope: !4091)
!4095 = !DILocation(line: 37, column: 10, scope: !4091)
!4096 = !DILocation(line: 37, column: 3, scope: !4091)
!4097 = !DILocation(line: 39, column: 36, scope: !4031)
!4098 = !DILocation(line: 39, column: 41, scope: !4031)
!4099 = !DILocation(line: 40, column: 8, scope: !4031)
!4100 = !DILocation(line: 39, column: 10, scope: !4031)
!4101 = !DILocation(line: 39, column: 8, scope: !4031)
!4102 = !DILocation(line: 41, column: 7, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 41, column: 6)
!4104 = !{i8 0, i8 2}
!4105 = !DILocation(line: 41, column: 11, scope: !4103)
!4106 = !DILocation(line: 41, column: 14, scope: !4103)
!4107 = !DILocation(line: 41, column: 6, scope: !4031)
!4108 = !DILocation(line: 42, column: 7, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 42, column: 7)
!4110 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 41, column: 21)
!4111 = !DILocation(line: 42, column: 13, scope: !4109)
!4112 = !DILocation(line: 42, column: 7, scope: !4110)
!4113 = !DILocation(line: 43, column: 10, scope: !4109)
!4114 = !DILocation(line: 43, column: 4, scope: !4109)
!4115 = !DILocation(line: 44, column: 3, scope: !4110)
!4116 = !DILocation(line: 47, column: 6, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 47, column: 6)
!4118 = !DILocation(line: 47, column: 12, scope: !4117)
!4119 = !DILocation(line: 47, column: 6, scope: !4031)
!4120 = !DILocation(line: 48, column: 14, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 47, column: 24)
!4122 = !DILocation(line: 48, column: 3, scope: !4121)
!4123 = !DILocation(line: 49, column: 12, scope: !4121)
!4124 = !DILocation(line: 49, column: 18, scope: !4121)
!4125 = !DILocation(line: 49, column: 25, scope: !4121)
!4126 = !DILocation(line: 49, column: 3, scope: !4121)
!4127 = !DILocation(line: 50, column: 8, scope: !4121)
!4128 = !DILocation(line: 50, column: 14, scope: !4121)
!4129 = !DILocation(line: 50, column: 21, scope: !4121)
!4130 = !DILocation(line: 50, column: 3, scope: !4121)
!4131 = !DILocation(line: 51, column: 2, scope: !4121)
!4132 = !DILocation(line: 52, column: 14, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 51, column: 9)
!4134 = !DILocation(line: 52, column: 3, scope: !4133)
!4135 = !DILocation(line: 53, column: 16, scope: !4133)
!4136 = !DILocation(line: 53, column: 23, scope: !4133)
!4137 = !DILocation(line: 53, column: 32, scope: !4133)
!4138 = !DILocation(line: 53, column: 3, scope: !4133)
!4139 = !DILocation(line: 54, column: 3, scope: !4133)
!4140 = !DILocation(line: 54, column: 10, scope: !4133)
!4141 = !DILocation(line: 54, column: 20, scope: !4133)
!4142 = !DILocation(line: 54, column: 44, scope: !4133)
!4143 = !DILocation(line: 55, column: 16, scope: !4133)
!4144 = !DILocation(line: 55, column: 3, scope: !4133)
!4145 = !DILocation(line: 58, column: 10, scope: !4031)
!4146 = !DILocation(line: 58, column: 8, scope: !4031)
!4147 = !DILocation(line: 58, column: 2, scope: !4031)
!4148 = !DILocation(line: 60, column: 1, scope: !4031)
!4149 = !DILocation(line: 61, column: 8, scope: !4031)
!4150 = !DILocation(line: 61, column: 2, scope: !4031)
!4151 = !DILocation(line: 63, column: 9, scope: !4031)
!4152 = !DILocation(line: 63, column: 2, scope: !4031)
!4153 = !DILocation(line: 64, column: 1, scope: !4031)
!4154 = !DISubprogram(name: "___ratelimit", scope: !892, file: !892, line: 44, type: !4155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!83, !4157, !130}
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!4158 = !DISubprogram(name: "msleep", scope: !4159, file: !4159, line: 61, type: !4160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4159 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!4160 = !DISubroutineType(types: !4161)
!4161 = !{null, !7}
!4162 = !DISubprogram(name: "efivar_entry_size", scope: !3925, file: !3925, line: 35, type: !4163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!83, !3923, !3774}
!4165 = distinct !DISubprogram(name: "kmalloc", scope: !69, file: !69, line: 591, type: !4166, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4168)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!79, !256, !80}
!4168 = !{!4169, !4170, !4171}
!4169 = !DILocalVariable(name: "size", arg: 1, scope: !4165, file: !69, line: 591, type: !256)
!4170 = !DILocalVariable(name: "flags", arg: 2, scope: !4165, file: !69, line: 591, type: !80)
!4171 = !DILocalVariable(name: "index", scope: !4172, file: !69, line: 594, type: !7)
!4172 = distinct !DILexicalBlock(scope: !4173, file: !69, line: 593, column: 42)
!4173 = distinct !DILexicalBlock(scope: !4165, file: !69, line: 593, column: 6)
!4174 = !DILocation(line: 591, column: 61, scope: !4165)
!4175 = !DILocation(line: 591, column: 73, scope: !4165)
!4176 = !DILocation(line: 593, column: 27, scope: !4173)
!4177 = !DILocation(line: 593, column: 6, scope: !4173)
!4178 = !DILocation(line: 593, column: 33, scope: !4173)
!4179 = !DILocation(line: 593, column: 36, scope: !4173)
!4180 = !DILocation(line: 593, column: 6, scope: !4165)
!4181 = !DILocation(line: 594, column: 3, scope: !4172)
!4182 = !DILocation(line: 594, column: 16, scope: !4172)
!4183 = !DILocation(line: 596, column: 7, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4172, file: !69, line: 596, column: 7)
!4185 = !DILocation(line: 596, column: 12, scope: !4184)
!4186 = !DILocation(line: 596, column: 7, scope: !4172)
!4187 = !DILocation(line: 597, column: 25, scope: !4184)
!4188 = !DILocation(line: 597, column: 31, scope: !4184)
!4189 = !DILocation(line: 597, column: 11, scope: !4184)
!4190 = !DILocation(line: 597, column: 4, scope: !4184)
!4191 = !DILocation(line: 599, column: 11, scope: !4172)
!4192 = !DILocation(line: 599, column: 9, scope: !4172)
!4193 = !DILocation(line: 601, column: 33, scope: !4172)
!4194 = !DILocation(line: 601, column: 40, scope: !4172)
!4195 = !DILocation(line: 601, column: 20, scope: !4172)
!4196 = !DILocation(line: 601, column: 5, scope: !4172)
!4197 = !DILocation(line: 601, column: 51, scope: !4172)
!4198 = !DILocation(line: 602, column: 5, scope: !4172)
!4199 = !DILocation(line: 602, column: 12, scope: !4172)
!4200 = !DILocation(line: 600, column: 10, scope: !4172)
!4201 = !DILocation(line: 600, column: 3, scope: !4172)
!4202 = !DILocation(line: 603, column: 2, scope: !4173)
!4203 = !DILocation(line: 604, column: 19, scope: !4165)
!4204 = !DILocation(line: 604, column: 25, scope: !4165)
!4205 = !DILocation(line: 604, column: 9, scope: !4165)
!4206 = !DILocation(line: 604, column: 2, scope: !4165)
!4207 = !DILocation(line: 605, column: 1, scope: !4165)
!4208 = !DISubprogram(name: "efivar_entry_get", scope: !3925, file: !3925, line: 38, type: !4209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!83, !3923, !1747, !3774, !79}
!4211 = !DISubprogram(name: "simple_read_from_buffer", scope: !14, file: !14, line: 3187, type: !4212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!242, !79, !256, !601, !1657, !256}
!4214 = !DISubprogram(name: "kfree", scope: !69, file: !69, line: 227, type: !4215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !1657}
!4217 = !DISubprogram(name: "kmalloc_large", scope: !69, file: !69, line: 531, type: !4166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4218 = distinct !DISubprogram(name: "__kmalloc_index", scope: !69, file: !69, line: 444, type: !4219, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4221)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!7, !256, !819}
!4221 = !{!4222, !4223}
!4222 = !DILocalVariable(name: "size", arg: 1, scope: !4218, file: !69, line: 444, type: !256)
!4223 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4218, file: !69, line: 445, type: !819)
!4224 = !DILocation(line: 444, column: 60, scope: !4218)
!4225 = !DILocation(line: 445, column: 16, scope: !4218)
!4226 = !DILocation(line: 447, column: 7, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 447, column: 6)
!4228 = !DILocation(line: 447, column: 6, scope: !4218)
!4229 = !DILocation(line: 448, column: 3, scope: !4227)
!4230 = !DILocation(line: 450, column: 6, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 450, column: 6)
!4232 = !DILocation(line: 450, column: 11, scope: !4231)
!4233 = !DILocation(line: 450, column: 6, scope: !4218)
!4234 = !DILocation(line: 451, column: 3, scope: !4231)
!4235 = !DILocation(line: 453, column: 32, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 453, column: 6)
!4237 = !DILocation(line: 453, column: 37, scope: !4236)
!4238 = !DILocation(line: 453, column: 42, scope: !4236)
!4239 = !DILocation(line: 453, column: 45, scope: !4236)
!4240 = !DILocation(line: 453, column: 50, scope: !4236)
!4241 = !DILocation(line: 453, column: 6, scope: !4218)
!4242 = !DILocation(line: 454, column: 3, scope: !4236)
!4243 = !DILocation(line: 455, column: 32, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 455, column: 6)
!4245 = !DILocation(line: 455, column: 37, scope: !4244)
!4246 = !DILocation(line: 455, column: 43, scope: !4244)
!4247 = !DILocation(line: 455, column: 46, scope: !4244)
!4248 = !DILocation(line: 455, column: 51, scope: !4244)
!4249 = !DILocation(line: 455, column: 6, scope: !4218)
!4250 = !DILocation(line: 456, column: 3, scope: !4244)
!4251 = !DILocation(line: 457, column: 6, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 457, column: 6)
!4253 = !DILocation(line: 457, column: 11, scope: !4252)
!4254 = !DILocation(line: 457, column: 6, scope: !4218)
!4255 = !DILocation(line: 457, column: 26, scope: !4252)
!4256 = !DILocation(line: 458, column: 6, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 458, column: 6)
!4258 = !DILocation(line: 458, column: 11, scope: !4257)
!4259 = !DILocation(line: 458, column: 6, scope: !4218)
!4260 = !DILocation(line: 458, column: 26, scope: !4257)
!4261 = !DILocation(line: 459, column: 6, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 459, column: 6)
!4263 = !DILocation(line: 459, column: 11, scope: !4262)
!4264 = !DILocation(line: 459, column: 6, scope: !4218)
!4265 = !DILocation(line: 459, column: 26, scope: !4262)
!4266 = !DILocation(line: 460, column: 6, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 460, column: 6)
!4268 = !DILocation(line: 460, column: 11, scope: !4267)
!4269 = !DILocation(line: 460, column: 6, scope: !4218)
!4270 = !DILocation(line: 460, column: 26, scope: !4267)
!4271 = !DILocation(line: 461, column: 6, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 461, column: 6)
!4273 = !DILocation(line: 461, column: 11, scope: !4272)
!4274 = !DILocation(line: 461, column: 6, scope: !4218)
!4275 = !DILocation(line: 461, column: 26, scope: !4272)
!4276 = !DILocation(line: 462, column: 6, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 462, column: 6)
!4278 = !DILocation(line: 462, column: 11, scope: !4277)
!4279 = !DILocation(line: 462, column: 6, scope: !4218)
!4280 = !DILocation(line: 462, column: 26, scope: !4277)
!4281 = !DILocation(line: 463, column: 6, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 463, column: 6)
!4283 = !DILocation(line: 463, column: 11, scope: !4282)
!4284 = !DILocation(line: 463, column: 6, scope: !4218)
!4285 = !DILocation(line: 463, column: 26, scope: !4282)
!4286 = !DILocation(line: 464, column: 6, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 464, column: 6)
!4288 = !DILocation(line: 464, column: 11, scope: !4287)
!4289 = !DILocation(line: 464, column: 6, scope: !4218)
!4290 = !DILocation(line: 464, column: 26, scope: !4287)
!4291 = !DILocation(line: 465, column: 6, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 465, column: 6)
!4293 = !DILocation(line: 465, column: 11, scope: !4292)
!4294 = !DILocation(line: 465, column: 6, scope: !4218)
!4295 = !DILocation(line: 465, column: 26, scope: !4292)
!4296 = !DILocation(line: 466, column: 6, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 466, column: 6)
!4298 = !DILocation(line: 466, column: 11, scope: !4297)
!4299 = !DILocation(line: 466, column: 6, scope: !4218)
!4300 = !DILocation(line: 466, column: 26, scope: !4297)
!4301 = !DILocation(line: 467, column: 6, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 467, column: 6)
!4303 = !DILocation(line: 467, column: 11, scope: !4302)
!4304 = !DILocation(line: 467, column: 6, scope: !4218)
!4305 = !DILocation(line: 467, column: 26, scope: !4302)
!4306 = !DILocation(line: 468, column: 6, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 468, column: 6)
!4308 = !DILocation(line: 468, column: 11, scope: !4307)
!4309 = !DILocation(line: 468, column: 6, scope: !4218)
!4310 = !DILocation(line: 468, column: 26, scope: !4307)
!4311 = !DILocation(line: 469, column: 6, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 469, column: 6)
!4313 = !DILocation(line: 469, column: 11, scope: !4312)
!4314 = !DILocation(line: 469, column: 6, scope: !4218)
!4315 = !DILocation(line: 469, column: 26, scope: !4312)
!4316 = !DILocation(line: 470, column: 6, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 470, column: 6)
!4318 = !DILocation(line: 470, column: 11, scope: !4317)
!4319 = !DILocation(line: 470, column: 6, scope: !4218)
!4320 = !DILocation(line: 470, column: 26, scope: !4317)
!4321 = !DILocation(line: 471, column: 6, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 471, column: 6)
!4323 = !DILocation(line: 471, column: 11, scope: !4322)
!4324 = !DILocation(line: 471, column: 6, scope: !4218)
!4325 = !DILocation(line: 471, column: 26, scope: !4322)
!4326 = !DILocation(line: 472, column: 6, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 472, column: 6)
!4328 = !DILocation(line: 472, column: 11, scope: !4327)
!4329 = !DILocation(line: 472, column: 6, scope: !4218)
!4330 = !DILocation(line: 472, column: 26, scope: !4327)
!4331 = !DILocation(line: 473, column: 6, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 473, column: 6)
!4333 = !DILocation(line: 473, column: 11, scope: !4332)
!4334 = !DILocation(line: 473, column: 6, scope: !4218)
!4335 = !DILocation(line: 473, column: 26, scope: !4332)
!4336 = !DILocation(line: 474, column: 6, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 474, column: 6)
!4338 = !DILocation(line: 474, column: 11, scope: !4337)
!4339 = !DILocation(line: 474, column: 6, scope: !4218)
!4340 = !DILocation(line: 474, column: 27, scope: !4337)
!4341 = !DILocation(line: 475, column: 6, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 475, column: 6)
!4343 = !DILocation(line: 475, column: 11, scope: !4342)
!4344 = !DILocation(line: 475, column: 6, scope: !4218)
!4345 = !DILocation(line: 475, column: 32, scope: !4342)
!4346 = !DILocation(line: 477, column: 50, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4218, file: !69, line: 477, column: 6)
!4348 = !DILocation(line: 477, column: 6, scope: !4218)
!4349 = !DILocation(line: 478, column: 3, scope: !4347)
!4350 = !DILocation(line: 478, column: 3, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4352, file: !69, line: 478, column: 3)
!4352 = distinct !DILexicalBlock(scope: !4347, file: !69, line: 478, column: 3)
!4353 = !{i32 -2141726873}
!4354 = !DILocation(line: 478, column: 3, scope: !4352)
!4355 = !DILocation(line: 480, column: 3, scope: !4347)
!4356 = !DILocation(line: 480, column: 3, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4347, file: !69, line: 480, column: 3)
!4358 = !DILocation(line: 480, column: 3, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4357, file: !69, line: 480, column: 3)
!4360 = !DILocation(line: 480, column: 3, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4357, file: !69, line: 480, column: 3)
!4362 = !{i64 2153240626, i64 2153240655, i64 2153240701, i64 2153240759, i64 2153240813, i64 2153240867, i64 2153240922, i64 2153240953}
!4363 = !DILocation(line: 483, column: 2, scope: !4218)
!4364 = !DILocation(line: 484, column: 1, scope: !4218)
!4365 = !DISubprogram(name: "kmalloc_trace", scope: !69, file: !69, line: 525, type: !4366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!79, !4368, !80, !256}
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4370, line: 325, flags: DIFlagFwdDecl)
!4370 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4371 = distinct !DISubprogram(name: "kmalloc_type", scope: !69, file: !69, line: 401, type: !4372, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4374)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!68, !80, !82}
!4374 = !{!4375, !4376}
!4375 = !DILocalVariable(name: "flags", arg: 1, scope: !4371, file: !69, line: 401, type: !80)
!4376 = !DILocalVariable(name: "caller", arg: 2, scope: !4371, file: !69, line: 401, type: !82)
!4377 = !DILocation(line: 401, column: 67, scope: !4371)
!4378 = !DILocation(line: 401, column: 88, scope: !4371)
!4379 = !DILocation(line: 407, column: 6, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4371, file: !69, line: 407, column: 6)
!4381 = !DILocation(line: 407, column: 6, scope: !4371)
!4382 = !DILocation(line: 413, column: 3, scope: !4380)
!4383 = !DILocation(line: 423, column: 38, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4371, file: !69, line: 423, column: 6)
!4385 = !DILocation(line: 423, column: 44, scope: !4384)
!4386 = !DILocation(line: 423, column: 6, scope: !4371)
!4387 = !DILocation(line: 424, column: 3, scope: !4384)
!4388 = !DILocation(line: 426, column: 3, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4371, file: !69, line: 425, column: 6)
!4390 = !DILocation(line: 429, column: 1, scope: !4371)
!4391 = !DISubprogram(name: "__kmalloc", scope: !69, file: !69, line: 488, type: !4166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4392 = !DISubprogram(name: "__compiletime_assert_212", scope: !69, file: !69, line: 478, type: !2059, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4393 = distinct !DISubprogram(name: "copy_from_user", scope: !4394, file: !4394, line: 180, type: !4395, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4397)
!4394 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!82, !79, !1657, !82}
!4397 = !{!4398, !4399, !4400}
!4398 = !DILocalVariable(name: "to", arg: 1, scope: !4393, file: !4394, line: 180, type: !79)
!4399 = !DILocalVariable(name: "from", arg: 2, scope: !4393, file: !4394, line: 180, type: !1657)
!4400 = !DILocalVariable(name: "n", arg: 3, scope: !4393, file: !4394, line: 180, type: !82)
!4401 = !DILocation(line: 180, column: 22, scope: !4393)
!4402 = !DILocation(line: 180, column: 45, scope: !4393)
!4403 = !DILocation(line: 180, column: 65, scope: !4393)
!4404 = !DILocation(line: 182, column: 22, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4393, file: !4394, line: 182, column: 6)
!4406 = !DILocation(line: 182, column: 26, scope: !4405)
!4407 = !DILocation(line: 182, column: 6, scope: !4405)
!4408 = !DILocation(line: 182, column: 6, scope: !4393)
!4409 = !DILocation(line: 183, column: 23, scope: !4405)
!4410 = !DILocation(line: 183, column: 27, scope: !4405)
!4411 = !DILocation(line: 183, column: 33, scope: !4405)
!4412 = !DILocation(line: 183, column: 7, scope: !4405)
!4413 = !DILocation(line: 183, column: 5, scope: !4405)
!4414 = !DILocation(line: 183, column: 3, scope: !4405)
!4415 = !DILocation(line: 184, column: 9, scope: !4393)
!4416 = !DILocation(line: 184, column: 2, scope: !4393)
!4417 = !DISubprogram(name: "memdup_user", scope: !4418, file: !4418, line: 15, type: !4419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4418 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!79, !1657, !256}
!4421 = distinct !DISubprogram(name: "IS_ERR", scope: !4422, file: !4422, line: 59, type: !4423, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4425)
!4422 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!819, !1657}
!4425 = !{!4426}
!4426 = !DILocalVariable(name: "ptr", arg: 1, scope: !4421, file: !4422, line: 59, type: !1657)
!4427 = !DILocation(line: 59, column: 60, scope: !4421)
!4428 = !DILocation(line: 61, column: 9, scope: !4421)
!4429 = !DILocation(line: 61, column: 2, scope: !4421)
!4430 = distinct !DISubprogram(name: "PTR_ERR", scope: !4422, file: !4422, line: 49, type: !4431, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4433)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!84, !1657}
!4433 = !{!4434}
!4434 = !DILocalVariable(name: "ptr", arg: 1, scope: !4430, file: !4422, line: 49, type: !1657)
!4435 = !DILocation(line: 49, column: 61, scope: !4430)
!4436 = !DILocation(line: 51, column: 16, scope: !4430)
!4437 = !DILocation(line: 51, column: 9, scope: !4430)
!4438 = !DILocation(line: 51, column: 2, scope: !4430)
!4439 = !DISubprogram(name: "efivar_entry_set_get_size", scope: !3925, file: !3925, line: 40, type: !4440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!83, !3923, !357, !3774, !79, !3215}
!4442 = !DISubprogram(name: "drop_nlink", scope: !14, file: !14, line: 2328, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4443 = !DISubprogram(name: "d_delete", scope: !325, file: !325, line: 227, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4444 = !DISubprogram(name: "dput", scope: !325, file: !325, line: 368, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4445 = distinct !DISubprogram(name: "inode_lock", scope: !14, file: !14, line: 802, type: !511, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4446)
!4446 = !{!4447}
!4447 = !DILocalVariable(name: "inode", arg: 1, scope: !4445, file: !14, line: 802, type: !288)
!4448 = !DILocation(line: 802, column: 45, scope: !4445)
!4449 = !DILocation(line: 804, column: 14, scope: !4445)
!4450 = !DILocation(line: 804, column: 21, scope: !4445)
!4451 = !DILocation(line: 804, column: 2, scope: !4445)
!4452 = !DILocation(line: 805, column: 1, scope: !4445)
!4453 = distinct !DISubprogram(name: "i_size_write", scope: !14, file: !14, line: 921, type: !4454, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4456)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{null, !288, !449}
!4456 = !{!4457, !4458}
!4457 = !DILocalVariable(name: "inode", arg: 1, scope: !4453, file: !14, line: 921, type: !288)
!4458 = !DILocalVariable(name: "i_size", arg: 2, scope: !4453, file: !14, line: 921, type: !449)
!4459 = !DILocation(line: 921, column: 47, scope: !4453)
!4460 = !DILocation(line: 921, column: 61, scope: !4453)
!4461 = !DILocation(line: 934, column: 18, scope: !4453)
!4462 = !DILocation(line: 934, column: 2, scope: !4453)
!4463 = !DILocation(line: 934, column: 9, scope: !4453)
!4464 = !DILocation(line: 934, column: 16, scope: !4453)
!4465 = !DILocation(line: 936, column: 1, scope: !4453)
!4466 = !DISubprogram(name: "inode_set_ctime_current", scope: !14, file: !14, line: 1515, type: !4467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!2883, !288}
!4469 = distinct !DISubprogram(name: "inode_unlock", scope: !14, file: !14, line: 807, type: !511, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4470)
!4470 = !{!4471}
!4471 = !DILocalVariable(name: "inode", arg: 1, scope: !4469, file: !14, line: 807, type: !288)
!4472 = !DILocation(line: 807, column: 47, scope: !4469)
!4473 = !DILocation(line: 809, column: 12, scope: !4469)
!4474 = !DILocation(line: 809, column: 19, scope: !4469)
!4475 = !DILocation(line: 809, column: 2, scope: !4469)
!4476 = !DILocation(line: 810, column: 1, scope: !4469)
!4477 = distinct !DISubprogram(name: "check_copy_size", scope: !100, file: !100, line: 237, type: !4478, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4480)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!819, !1657, !256, !819}
!4480 = !{!4481, !4482, !4483, !4484, !4485, !4488}
!4481 = !DILocalVariable(name: "addr", arg: 1, scope: !4477, file: !100, line: 237, type: !1657)
!4482 = !DILocalVariable(name: "bytes", arg: 2, scope: !4477, file: !100, line: 237, type: !256)
!4483 = !DILocalVariable(name: "is_source", arg: 3, scope: !4477, file: !100, line: 237, type: !819)
!4484 = !DILocalVariable(name: "sz", scope: !4477, file: !100, line: 239, type: !83)
!4485 = !DILocalVariable(name: "__ret_warn_on", scope: !4486, file: !100, line: 249, type: !83)
!4486 = distinct !DILexicalBlock(scope: !4487, file: !100, line: 249, column: 6)
!4487 = distinct !DILexicalBlock(scope: !4477, file: !100, line: 249, column: 6)
!4488 = !DILocalVariable(name: "__flags", scope: !4489, file: !100, line: 249, type: !83)
!4489 = distinct !DILexicalBlock(scope: !4490, file: !100, line: 249, column: 6)
!4490 = distinct !DILexicalBlock(scope: !4486, file: !100, line: 249, column: 6)
!4491 = !DILocation(line: 237, column: 29, scope: !4477)
!4492 = !DILocation(line: 237, column: 42, scope: !4477)
!4493 = !DILocation(line: 237, column: 54, scope: !4477)
!4494 = !DILocation(line: 239, column: 2, scope: !4477)
!4495 = !DILocation(line: 239, column: 6, scope: !4477)
!4496 = !DILocation(line: 239, column: 33, scope: !4477)
!4497 = !DILocation(line: 239, column: 11, scope: !4477)
!4498 = !DILocation(line: 240, column: 6, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4477, file: !100, line: 240, column: 6)
!4500 = !DILocation(line: 0, scope: !4499)
!4501 = !DILocation(line: 240, column: 6, scope: !4477)
!4502 = !DILocation(line: 241, column: 29, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !100, line: 241, column: 7)
!4504 = distinct !DILexicalBlock(scope: !4499, file: !100, line: 240, column: 39)
!4505 = !DILocation(line: 241, column: 8, scope: !4503)
!4506 = !DILocation(line: 241, column: 7, scope: !4504)
!4507 = !DILocation(line: 242, column: 18, scope: !4503)
!4508 = !DILocation(line: 242, column: 22, scope: !4503)
!4509 = !DILocation(line: 242, column: 4, scope: !4503)
!4510 = !DILocation(line: 243, column: 12, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4503, file: !100, line: 243, column: 12)
!4512 = !DILocation(line: 243, column: 12, scope: !4503)
!4513 = !DILocation(line: 244, column: 4, scope: !4511)
!4514 = !{i32 2228993}
!4515 = !DILocation(line: 246, column: 4, scope: !4511)
!4516 = !{i32 2229022}
!4517 = !DILocation(line: 247, column: 3, scope: !4504)
!4518 = !DILocation(line: 249, column: 6, scope: !4486)
!4519 = !DILocation(line: 249, column: 6, scope: !4490)
!4520 = !DILocation(line: 249, column: 6, scope: !4489)
!4521 = !DILocation(line: 249, column: 6, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4489, file: !100, line: 249, column: 6)
!4523 = !DILocation(line: 249, column: 6, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4489, file: !100, line: 249, column: 6)
!4525 = !{i64 2149729455, i64 2149729484, i64 2149729530, i64 2149729588, i64 2149729642, i64 2149729696, i64 2149729751, i64 2149729782, i64 2149730090, i64 2149730096, i64 2149730143, i64 2149730166, i64 2149730192}
!4526 = !DILocation(line: 249, column: 6, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4489, file: !100, line: 249, column: 6)
!4528 = !DILocation(line: 249, column: 6, scope: !4487)
!4529 = !DILocation(line: 249, column: 6, scope: !4477)
!4530 = !DILocation(line: 250, column: 3, scope: !4487)
!4531 = !DILocation(line: 251, column: 20, scope: !4477)
!4532 = !DILocation(line: 251, column: 26, scope: !4477)
!4533 = !DILocation(line: 251, column: 33, scope: !4477)
!4534 = !DILocation(line: 251, column: 2, scope: !4477)
!4535 = !DILocation(line: 252, column: 2, scope: !4477)
!4536 = !DILocation(line: 253, column: 1, scope: !4477)
!4537 = !DISubprogram(name: "_copy_from_user", scope: !4394, file: !4394, line: 158, type: !4395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4538 = distinct !DISubprogram(name: "copy_overflow", scope: !100, file: !100, line: 230, type: !4539, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4541)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{null, !83, !82}
!4541 = !{!4542, !4543}
!4542 = !DILocalVariable(name: "size", arg: 1, scope: !4538, file: !100, line: 230, type: !83)
!4543 = !DILocalVariable(name: "count", arg: 2, scope: !4538, file: !100, line: 230, type: !82)
!4544 = !DILocation(line: 230, column: 38, scope: !4538)
!4545 = !DILocation(line: 230, column: 58, scope: !4538)
!4546 = !DILocation(line: 233, column: 19, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4538, file: !100, line: 232, column: 6)
!4548 = !DILocation(line: 233, column: 25, scope: !4547)
!4549 = !DILocation(line: 233, column: 3, scope: !4547)
!4550 = !DILocation(line: 234, column: 1, scope: !4538)
!4551 = !DISubprogram(name: "__bad_copy_from", scope: !100, file: !100, line: 224, type: !2059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4552 = !DISubprogram(name: "__bad_copy_to", scope: !100, file: !100, line: 226, type: !2059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4553 = distinct !DISubprogram(name: "check_object_size", scope: !100, file: !100, line: 218, type: !4554, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4556)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{null, !1657, !82, !819}
!4556 = !{!4557, !4558, !4559}
!4557 = !DILocalVariable(name: "ptr", arg: 1, scope: !4553, file: !100, line: 218, type: !1657)
!4558 = !DILocalVariable(name: "n", arg: 2, scope: !4553, file: !100, line: 218, type: !82)
!4559 = !DILocalVariable(name: "to_user", arg: 3, scope: !4553, file: !100, line: 219, type: !819)
!4560 = !DILocation(line: 218, column: 50, scope: !4553)
!4561 = !DILocation(line: 218, column: 69, scope: !4553)
!4562 = !DILocation(line: 219, column: 15, scope: !4553)
!4563 = !DILocation(line: 220, column: 3, scope: !4553)
!4564 = !DISubprogram(name: "__copy_overflow", scope: !100, file: !100, line: 228, type: !4539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4565 = !DISubprogram(name: "down_write", scope: !761, file: !761, line: 187, type: !4566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{null, !4568}
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!4569 = !DISubprogram(name: "up_write", scope: !761, file: !761, line: 203, type: !4566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
