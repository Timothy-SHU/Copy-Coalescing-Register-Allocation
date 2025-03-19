; ModuleID = 'kernel/cgroup/misc.c'
source_filename = "kernel/cgroup/misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_misc_cg_res_total_usage: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad misc_cg_res_total_usage ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_misc_cg_set_capacity: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad misc_cg_set_capacity ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_misc_cg_try_charge: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad misc_cg_try_charge ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_misc_cg_uncharge: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad misc_cg_uncharge ; .previous"

%struct.misc_cg = type { %struct.cgroup_subsys_state, %struct.cgroup_file, [0 x %struct.misc_res] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i64, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cgroup_file = type { ptr, i64, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.misc_res = type { i64, %struct.atomic64_t, %struct.atomic64_t }
%struct.cftype = type { [64 x i8], i64, i64, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@root_cg = internal global %struct.misc_cg zeroinitializer, align 8, !dbg !0
@__UNIQUE_ID___addressable_misc_cg_res_total_usage264 = internal global ptr @misc_cg_res_total_usage, section ".discard.addressable", align 8, !dbg !3874
@misc_res_capacity = internal global [0 x i64] zeroinitializer, align 8, !dbg !3884
@__UNIQUE_ID___addressable_misc_cg_set_capacity266 = internal global ptr @misc_cg_set_capacity, section ".discard.addressable", align 8, !dbg !3876
@__UNIQUE_ID___addressable_misc_cg_try_charge270 = internal global ptr @misc_cg_try_charge, section ".discard.addressable", align 8, !dbg !3878
@__UNIQUE_ID___addressable_misc_cg_uncharge271 = internal global ptr @misc_cg_uncharge, section ".discard.addressable", align 8, !dbg !3880
@misc_cg_files = internal global [5 x %struct.cftype] [%struct.cftype { [64 x i8] c"max\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @misc_cg_max_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @misc_cg_max_write, ptr null }, %struct.cftype { [64 x i8] c"current\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @misc_cg_current_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.cftype { [64 x i8] c"capacity\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 1, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @misc_cg_capacity_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.cftype { [64 x i8] c"events\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 2, i32 200, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @misc_events_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.cftype zeroinitializer], align 16, !dbg !3924
@misc_cgrp_subsys = hidden global %struct.cgroup_subsys { ptr @misc_cg_alloc, ptr null, ptr null, ptr null, ptr @misc_cg_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, %struct.idr zeroinitializer, %struct.list_head zeroinitializer, ptr @misc_cg_files, ptr @misc_cg_files, i32 0 }, align 8, !dbg !3882
@misc_cg_cancel_charge.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !3887
@.str = private unnamed_addr constant [43 x i8] c"misc cgroup resource %s became less than 0\00", align 1, !dbg !3908
@misc_res_name = internal constant [0 x ptr] zeroinitializer, align 8, !dbg !3918
@.str.1 = private unnamed_addr constant [21 x i8] c"kernel/cgroup/misc.c\00", align 1, !dbg !3913
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3922
@.str.3 = private unnamed_addr constant [8 x i8] c"%s max\0A\00", align 1, !dbg !3927
@.str.4 = private unnamed_addr constant [9 x i8] c"%s %llu\0A\00", align 1, !dbg !3929
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !3934
@.str.6 = private unnamed_addr constant [4 x i8] c"max\00", align 1, !dbg !3937
@.str.7 = private unnamed_addr constant [13 x i8] c"%s.max %llu\0A\00", align 1, !dbg !3940
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_misc_cg_res_total_usage264, ptr @__UNIQUE_ID___addressable_misc_cg_set_capacity266, ptr @__UNIQUE_ID___addressable_misc_cg_try_charge270, ptr @__UNIQUE_ID___addressable_misc_cg_uncharge271], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @misc_cg_res_total_usage(i32 noundef %type) #0 align 16 !dbg !3954 {
entry:
  %retval = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3958, metadata !DIExpression()), !dbg !3959
  %0 = load i32, ptr %type.addr, align 4, !dbg !3960
  %call = call zeroext i1 @valid_type(i32 noundef %0) #14, !dbg !3962
  br i1 %call, label %if.then, label %if.end, !dbg !3963

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !3964
  %idxprom = zext i32 %1 to i64, !dbg !3965
  %arrayidx = getelementptr [0 x %struct.misc_res], ptr getelementptr inbounds (%struct.misc_cg, ptr @root_cg, i32 0, i32 2), i64 0, i64 %idxprom, !dbg !3965
  %usage = getelementptr inbounds %struct.misc_res, ptr %arrayidx, i32 0, i32 1, !dbg !3966
  %call1 = call i64 @atomic64_read(ptr noundef %usage) #14, !dbg !3967
  store i64 %call1, ptr %retval, align 8, !dbg !3968
  br label %return, !dbg !3968

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !3969
  br label %return, !dbg !3969

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, ptr %retval, align 8, !dbg !3970
  ret i64 %2, !dbg !3970
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @valid_type(i32 noundef %type) #2 align 16 !dbg !3971 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3975, metadata !DIExpression()), !dbg !3976
  %0 = load i32, ptr %type.addr, align 4, !dbg !3977
  %cmp = icmp uge i32 %0, 0, !dbg !3978
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3979

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !3980
  %cmp1 = icmp ult i32 %1, 0, !dbg !3981
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !3982
  ret i1 %2, !dbg !3983
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic64_read(ptr noundef %v) #3 align 16 !dbg !3984 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3991, metadata !DIExpression()), !dbg !3992
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3993
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #14, !dbg !3994
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3995
  %call = call i64 @raw_atomic64_read(ptr noundef %1) #14, !dbg !3996
  ret i64 %call, !dbg !3997
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @misc_cg_set_capacity(i32 noundef %type, i64 noundef %capacity) #0 align 16 !dbg !3998 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %capacity.addr = alloca i64, align 8
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4002, metadata !DIExpression()), !dbg !4004
  store i64 %capacity, ptr %capacity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %capacity.addr, metadata !4003, metadata !DIExpression()), !dbg !4005
  %0 = load i32, ptr %type.addr, align 4, !dbg !4006
  %call = call zeroext i1 @valid_type(i32 noundef %0) #14, !dbg !4008
  br i1 %call, label %if.end, label %if.then, !dbg !4009

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4010
  br label %return, !dbg !4010

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4011

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !4012

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4014

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4012

do.body2:                                         ; preds = %do.end
  %1 = load i64, ptr %capacity.addr, align 8, !dbg !4016
  %2 = load i32, ptr %type.addr, align 4, !dbg !4016
  %idxprom = zext i32 %2 to i64, !dbg !4016
  %arrayidx = getelementptr [0 x i64], ptr @misc_res_capacity, i64 0, i64 %idxprom, !dbg !4016
  store volatile i64 %1, ptr %arrayidx, align 8, !dbg !4016
  br label %do.end3, !dbg !4016

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4012

do.end4:                                          ; preds = %do.end3
  store i32 0, ptr %retval, align 4, !dbg !4018
  br label %return, !dbg !4018

return:                                           ; preds = %do.end4, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !4019
  ret i32 %3, !dbg !4019
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @misc_cg_try_charge(i32 noundef %type, ptr noundef %cg, i64 noundef %amount) #0 align 16 !dbg !4020 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %cg.addr = alloca ptr, align 8
  %amount.addr = alloca i64, align 8
  %i = alloca ptr, align 8
  %j = alloca ptr, align 8
  %ret = alloca i32, align 4
  %res = alloca ptr, align 8
  %new_usage = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp14 = alloca i64, align 8
  %tmp18 = alloca i64, align 8
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4024, metadata !DIExpression()), !dbg !4034
  store ptr %cg, ptr %cg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cg.addr, metadata !4025, metadata !DIExpression()), !dbg !4035
  store i64 %amount, ptr %amount.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %amount.addr, metadata !4026, metadata !DIExpression()), !dbg !4036
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15, !dbg !4037
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4027, metadata !DIExpression()), !dbg !4038
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #15, !dbg !4037
  call void @llvm.dbg.declare(metadata ptr %j, metadata !4028, metadata !DIExpression()), !dbg !4039
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !4040
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4029, metadata !DIExpression()), !dbg !4041
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #15, !dbg !4042
  call void @llvm.dbg.declare(metadata ptr %res, metadata !4030, metadata !DIExpression()), !dbg !4043
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_usage) #15, !dbg !4044
  call void @llvm.dbg.declare(metadata ptr %new_usage, metadata !4032, metadata !DIExpression()), !dbg !4045
  %0 = load i32, ptr %type.addr, align 4, !dbg !4046
  %call = call zeroext i1 @valid_type(i32 noundef %0) #14, !dbg !4048
  br i1 %call, label %land.lhs.true, label %if.then, !dbg !4049

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %cg.addr, align 8, !dbg !4050
  %tobool = icmp ne ptr %1, null, !dbg !4050
  br i1 %tobool, label %land.lhs.true1, label %if.then, !dbg !4051

land.lhs.true1:                                   ; preds = %land.lhs.true
  br label %do.body, !dbg !4052

do.body:                                          ; preds = %land.lhs.true1
  br label %do.cond, !dbg !4054

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4054

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %type.addr, align 4, !dbg !4052
  %idxprom = zext i32 %2 to i64, !dbg !4052
  %arrayidx = getelementptr [0 x i64], ptr @misc_res_capacity, i64 0, i64 %idxprom, !dbg !4052
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4052
  store i64 %3, ptr %tmp, align 8, !dbg !4054
  %4 = load i64, ptr %tmp, align 8, !dbg !4052
  %tobool2 = icmp ne i64 %4, 0, !dbg !4056
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4057

if.then:                                          ; preds = %do.end, %land.lhs.true, %entry
  store i32 -22, ptr %retval, align 4, !dbg !4058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4058

if.end:                                           ; preds = %do.end
  %5 = load i64, ptr %amount.addr, align 8, !dbg !4059
  %tobool3 = icmp ne i64 %5, 0, !dbg !4059
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4061

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4062

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %cg.addr, align 8, !dbg !4063
  store ptr %6, ptr %i, align 8, !dbg !4065
  br label %for.cond, !dbg !4066

for.cond:                                         ; preds = %for.inc, %if.end5
  %7 = load ptr, ptr %i, align 8, !dbg !4067
  %tobool6 = icmp ne ptr %7, null, !dbg !4069
  br i1 %tobool6, label %for.body, label %for.end, !dbg !4069

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %i, align 8, !dbg !4070
  %res7 = getelementptr inbounds %struct.misc_cg, ptr %8, i32 0, i32 2, !dbg !4072
  %9 = load i32, ptr %type.addr, align 4, !dbg !4073
  %idxprom8 = zext i32 %9 to i64, !dbg !4070
  %arrayidx9 = getelementptr [0 x %struct.misc_res], ptr %res7, i64 0, i64 %idxprom8, !dbg !4070
  store ptr %arrayidx9, ptr %res, align 8, !dbg !4074
  %10 = load i64, ptr %amount.addr, align 8, !dbg !4075
  %11 = load ptr, ptr %res, align 8, !dbg !4076
  %usage = getelementptr inbounds %struct.misc_res, ptr %11, i32 0, i32 1, !dbg !4077
  %call10 = call i64 @atomic64_add_return(i64 noundef %10, ptr noundef %usage) #14, !dbg !4078
  store i64 %call10, ptr %new_usage, align 8, !dbg !4079
  %12 = load i64, ptr %new_usage, align 8, !dbg !4080
  br label %do.body11, !dbg !4082

do.body11:                                        ; preds = %for.body
  br label %do.cond12, !dbg !4084

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4084

do.end13:                                         ; preds = %do.cond12
  %13 = load ptr, ptr %res, align 8, !dbg !4082
  %max = getelementptr inbounds %struct.misc_res, ptr %13, i32 0, i32 0, !dbg !4082
  %14 = load volatile i64, ptr %max, align 8, !dbg !4082
  store i64 %14, ptr %tmp14, align 8, !dbg !4084
  %15 = load i64, ptr %tmp14, align 8, !dbg !4082
  %cmp = icmp ugt i64 %12, %15, !dbg !4086
  br i1 %cmp, label %if.then22, label %lor.lhs.false, !dbg !4087

lor.lhs.false:                                    ; preds = %do.end13
  %16 = load i64, ptr %new_usage, align 8, !dbg !4088
  br label %do.body15, !dbg !4089

do.body15:                                        ; preds = %lor.lhs.false
  br label %do.cond16, !dbg !4091

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4091

do.end17:                                         ; preds = %do.cond16
  %17 = load i32, ptr %type.addr, align 4, !dbg !4089
  %idxprom19 = zext i32 %17 to i64, !dbg !4089
  %arrayidx20 = getelementptr [0 x i64], ptr @misc_res_capacity, i64 0, i64 %idxprom19, !dbg !4089
  %18 = load volatile i64, ptr %arrayidx20, align 8, !dbg !4089
  store i64 %18, ptr %tmp18, align 8, !dbg !4091
  %19 = load i64, ptr %tmp18, align 8, !dbg !4089
  %cmp21 = icmp ugt i64 %16, %19, !dbg !4093
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4094

if.then22:                                        ; preds = %do.end17, %do.end13
  store i32 -16, ptr %ret, align 4, !dbg !4095
  br label %err_charge, !dbg !4097

if.end23:                                         ; preds = %do.end17
  br label %for.inc, !dbg !4098

for.inc:                                          ; preds = %if.end23
  %20 = load ptr, ptr %i, align 8, !dbg !4099
  %call24 = call ptr @parent_misc(ptr noundef %20) #14, !dbg !4100
  store ptr %call24, ptr %i, align 8, !dbg !4101
  br label %for.cond, !dbg !4102, !llvm.loop !4103

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4107

err_charge:                                       ; preds = %if.then22
  call void @llvm.dbg.label(metadata !4033), !dbg !4108
  %21 = load ptr, ptr %i, align 8, !dbg !4109
  store ptr %21, ptr %j, align 8, !dbg !4111
  br label %for.cond25, !dbg !4112

for.cond25:                                       ; preds = %for.inc31, %err_charge
  %22 = load ptr, ptr %j, align 8, !dbg !4113
  %tobool26 = icmp ne ptr %22, null, !dbg !4115
  br i1 %tobool26, label %for.body27, label %for.end33, !dbg !4115

for.body27:                                       ; preds = %for.cond25
  %23 = load ptr, ptr %j, align 8, !dbg !4116
  %res28 = getelementptr inbounds %struct.misc_cg, ptr %23, i32 0, i32 2, !dbg !4118
  %24 = load i32, ptr %type.addr, align 4, !dbg !4119
  %idxprom29 = zext i32 %24 to i64, !dbg !4116
  %arrayidx30 = getelementptr [0 x %struct.misc_res], ptr %res28, i64 0, i64 %idxprom29, !dbg !4116
  %events = getelementptr inbounds %struct.misc_res, ptr %arrayidx30, i32 0, i32 2, !dbg !4120
  call void @atomic64_inc(ptr noundef %events) #14, !dbg !4121
  %25 = load ptr, ptr %j, align 8, !dbg !4122
  %events_file = getelementptr inbounds %struct.misc_cg, ptr %25, i32 0, i32 1, !dbg !4123
  call void @cgroup_file_notify(ptr noundef %events_file) #14, !dbg !4124
  br label %for.inc31, !dbg !4125

for.inc31:                                        ; preds = %for.body27
  %26 = load ptr, ptr %j, align 8, !dbg !4126
  %call32 = call ptr @parent_misc(ptr noundef %26) #14, !dbg !4127
  store ptr %call32, ptr %j, align 8, !dbg !4128
  br label %for.cond25, !dbg !4129, !llvm.loop !4130

for.end33:                                        ; preds = %for.cond25
  %27 = load ptr, ptr %cg.addr, align 8, !dbg !4132
  store ptr %27, ptr %j, align 8, !dbg !4134
  br label %for.cond34, !dbg !4135

for.cond34:                                       ; preds = %for.inc37, %for.end33
  %28 = load ptr, ptr %j, align 8, !dbg !4136
  %29 = load ptr, ptr %i, align 8, !dbg !4138
  %cmp35 = icmp ne ptr %28, %29, !dbg !4139
  br i1 %cmp35, label %for.body36, label %for.end39, !dbg !4140

for.body36:                                       ; preds = %for.cond34
  %30 = load i32, ptr %type.addr, align 4, !dbg !4141
  %31 = load ptr, ptr %j, align 8, !dbg !4142
  %32 = load i64, ptr %amount.addr, align 8, !dbg !4143
  call void @misc_cg_cancel_charge(i32 noundef %30, ptr noundef %31, i64 noundef %32) #14, !dbg !4144
  br label %for.inc37, !dbg !4144

for.inc37:                                        ; preds = %for.body36
  %33 = load ptr, ptr %j, align 8, !dbg !4145
  %call38 = call ptr @parent_misc(ptr noundef %33) #14, !dbg !4146
  store ptr %call38, ptr %j, align 8, !dbg !4147
  br label %for.cond34, !dbg !4148, !llvm.loop !4149

for.end39:                                        ; preds = %for.cond34
  %34 = load i32, ptr %type.addr, align 4, !dbg !4151
  %35 = load ptr, ptr %i, align 8, !dbg !4152
  %36 = load i64, ptr %amount.addr, align 8, !dbg !4153
  call void @misc_cg_cancel_charge(i32 noundef %34, ptr noundef %35, i64 noundef %36) #14, !dbg !4154
  %37 = load i32, ptr %ret, align 4, !dbg !4155
  store i32 %37, ptr %retval, align 4, !dbg !4156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4156

cleanup:                                          ; preds = %for.end39, %for.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_usage) #15, !dbg !4157
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #15, !dbg !4157
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !4157
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #15, !dbg !4157
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15, !dbg !4157
  %38 = load i32, ptr %retval, align 4, !dbg !4157
  ret i32 %38, !dbg !4157
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic64_add_return(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !4158 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4163, metadata !DIExpression()), !dbg !4165
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4164, metadata !DIExpression()), !dbg !4166
  br label %do.body, !dbg !4167

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4168

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4170
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #14, !dbg !4171
  %1 = load i64, ptr %i.addr, align 8, !dbg !4172
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4173
  %call = call i64 @raw_atomic64_add_return(i64 noundef %1, ptr noundef %2) #14, !dbg !4174
  ret i64 %call, !dbg !4175
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @parent_misc(ptr noundef %cgroup) #0 align 16 !dbg !4176 {
entry:
  %cgroup.addr = alloca ptr, align 8
  store ptr %cgroup, ptr %cgroup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgroup.addr, metadata !4180, metadata !DIExpression()), !dbg !4181
  %0 = load ptr, ptr %cgroup.addr, align 8, !dbg !4182
  %tobool = icmp ne ptr %0, null, !dbg !4182
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4182

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %cgroup.addr, align 8, !dbg !4183
  %css = getelementptr inbounds %struct.misc_cg, ptr %1, i32 0, i32 0, !dbg !4184
  %parent = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 12, !dbg !4185
  %2 = load ptr, ptr %parent, align 8, !dbg !4185
  %call = call ptr @css_misc(ptr noundef %2) #14, !dbg !4186
  br label %cond.end, !dbg !4182

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4182

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ null, %cond.false ], !dbg !4182
  ret ptr %cond, !dbg !4187
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic64_inc(ptr noundef %v) #3 align 16 !dbg !4188 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4192, metadata !DIExpression()), !dbg !4193
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4194
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #14, !dbg !4195
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4196
  call void @raw_atomic64_inc(ptr noundef %1) #14, !dbg !4197
  ret void, !dbg !4198
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4199 dso_local void @cgroup_file_notify(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @misc_cg_cancel_charge(i32 noundef %type, ptr noundef %cg, i64 noundef %amount) #0 align 16 !dbg !3889 {
entry:
  %type.addr = alloca i32, align 4
  %cg.addr = alloca ptr, align 8
  %amount.addr = alloca i64, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp50 = alloca i64, align 8
  %tmp59 = alloca i64, align 8
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3893, metadata !DIExpression()), !dbg !4203
  store ptr %cg, ptr %cg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cg.addr, metadata !3894, metadata !DIExpression()), !dbg !4204
  store i64 %amount, ptr %amount.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %amount.addr, metadata !3895, metadata !DIExpression()), !dbg !4205
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #15, !dbg !4206
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !3896, metadata !DIExpression()), !dbg !4206
  %0 = load i64, ptr %amount.addr, align 8, !dbg !4206
  %sub = sub i64 0, %0, !dbg !4206
  %1 = load ptr, ptr %cg.addr, align 8, !dbg !4206
  %res = getelementptr inbounds %struct.misc_cg, ptr %1, i32 0, i32 2, !dbg !4206
  %2 = load i32, ptr %type.addr, align 4, !dbg !4206
  %idxprom = zext i32 %2 to i64, !dbg !4206
  %arrayidx = getelementptr [0 x %struct.misc_res], ptr %res, i64 0, i64 %idxprom, !dbg !4206
  %usage = getelementptr inbounds %struct.misc_res, ptr %arrayidx, i32 0, i32 1, !dbg !4206
  %call = call zeroext i1 @atomic64_add_negative(i64 noundef %sub, ptr noundef %usage) #14, !dbg !4206
  %lnot = xor i1 %call, true, !dbg !4206
  %lnot1 = xor i1 %lnot, true, !dbg !4206
  %frombool = zext i1 %lnot1 to i8, !dbg !4206
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !4206
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #15, !dbg !4207
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !3898, metadata !DIExpression()), !dbg !4207
  %3 = load i8, ptr %__ret_do_once, align 1, !dbg !4207, !range !4208, !noundef !1048
  %tobool = trunc i8 %3 to i1, !dbg !4207
  %lnot2 = xor i1 %tobool, true, !dbg !4207
  %lnot3 = xor i1 %lnot2, true, !dbg !4207
  %frombool4 = zext i1 %lnot3 to i8, !dbg !4207
  store i8 %frombool4, ptr %__ret_cond, align 1, !dbg !4207
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #15, !dbg !4207
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !3901, metadata !DIExpression()), !dbg !4207
  store i8 0, ptr %__ret_once, align 1, !dbg !4207
  %4 = load i8, ptr %__ret_cond, align 1, !dbg !4209, !range !4208, !noundef !1048
  %tobool5 = trunc i8 %4 to i1, !dbg !4209
  br i1 %tobool5, label %land.rhs, label %land.end, !dbg !4209

land.rhs:                                         ; preds = %entry
  %5 = load i8, ptr @misc_cg_cancel_charge.__already_done, align 1, !dbg !4209, !range !4208, !noundef !1048
  %tobool6 = trunc i8 %5 to i1, !dbg !4209
  %lnot7 = xor i1 %tobool6, true, !dbg !4209
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %lnot7, %land.rhs ], !dbg !4211
  %lnot8 = xor i1 %6, true, !dbg !4209
  %lnot9 = xor i1 %lnot8, true, !dbg !4209
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !4209
  %conv = sext i32 %lnot.ext to i64, !dbg !4209
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4209
  %tobool10 = icmp ne i64 %expval, 0, !dbg !4209
  br i1 %tobool10, label %if.then, label %if.end, !dbg !4207

if.then:                                          ; preds = %land.end
  store i8 1, ptr @misc_cg_cancel_charge.__already_done, align 1, !dbg !4212
  store i8 1, ptr %__ret_once, align 1, !dbg !4212
  br label %if.end, !dbg !4212

if.end:                                           ; preds = %if.then, %land.end
  %7 = load i8, ptr %__ret_once, align 1, !dbg !4207, !range !4208, !noundef !1048
  %tobool11 = trunc i8 %7 to i1, !dbg !4207
  %lnot12 = xor i1 %tobool11, true, !dbg !4207
  %lnot14 = xor i1 %lnot12, true, !dbg !4207
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !4207
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !4207
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !4207
  store i64 %expval17, ptr %tmp, align 8, !dbg !4209
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #15, !dbg !4214
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #15, !dbg !4214
  %8 = load i64, ptr %tmp, align 8, !dbg !4207
  %tobool18 = icmp ne i64 %8, 0, !dbg !4214
  br i1 %tobool18, label %if.then19, label %if.end58, !dbg !4206

if.then19:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4215
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3902, metadata !DIExpression()), !dbg !4215
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !4215
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !4216
  %tobool20 = icmp ne i32 %9, 0, !dbg !4216
  %lnot21 = xor i1 %tobool20, true, !dbg !4216
  %lnot23 = xor i1 %lnot21, true, !dbg !4216
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !4216
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !4216
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !4216
  %tobool27 = icmp ne i64 %expval26, 0, !dbg !4216
  br i1 %tobool27, label %if.then28, label %if.end49, !dbg !4215

if.then28:                                        ; preds = %if.then19
  br label %do.body, !dbg !4216

do.body:                                          ; preds = %if.then28
  br label %do.body29, !dbg !4217

do.body29:                                        ; preds = %do.body
  br label %do.cond, !dbg !4218

do.cond:                                          ; preds = %do.body29
  br label %do.end, !dbg !4218

do.end:                                           ; preds = %do.cond
  %10 = load i32, ptr %type.addr, align 4, !dbg !4217
  %idxprom30 = zext i32 %10 to i64, !dbg !4217
  %arrayidx31 = getelementptr [0 x ptr], ptr @misc_res_name, i64 0, i64 %idxprom30, !dbg !4217
  %11 = load ptr, ptr %arrayidx31, align 8, !dbg !4217
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, ptr noundef %11) #14, !dbg !4217
  br label %do.body32, !dbg !4217

do.body32:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !4220
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3904, metadata !DIExpression()), !dbg !4220
  store i32 2313, ptr %__flags, align 4, !dbg !4220
  br label %do.body33, !dbg !4220

do.body33:                                        ; preds = %do.body32
  br label %do.cond34, !dbg !4221

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !4221

do.end35:                                         ; preds = %do.cond34
  br label %do.body36, !dbg !4220

do.body36:                                        ; preds = %do.end35
  %12 = load i32, ptr %__flags, align 4, !dbg !4223
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 121, i32 %12, i64 12) #15, !dbg !4223, !srcloc !4225
  br label %do.cond37, !dbg !4223

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !4223

do.end38:                                         ; preds = %do.cond37
  br label %do.body39, !dbg !4220

do.body39:                                        ; preds = %do.end38
  br label %do.cond40, !dbg !4226

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !4226

do.end41:                                         ; preds = %do.cond40
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !4217
  br label %do.cond42, !dbg !4220

do.cond42:                                        ; preds = %do.end41
  br label %do.end43, !dbg !4220

do.end43:                                         ; preds = %do.cond42
  br label %do.body44, !dbg !4217

do.body44:                                        ; preds = %do.end43
  br label %do.cond45, !dbg !4228

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !4228

do.end46:                                         ; preds = %do.cond45
  br label %do.cond47, !dbg !4217

do.cond47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !4217

do.end48:                                         ; preds = %do.cond47
  br label %if.end49, !dbg !4217

if.end49:                                         ; preds = %do.end48, %if.then19
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !4215
  %tobool51 = icmp ne i32 %13, 0, !dbg !4215
  %lnot52 = xor i1 %tobool51, true, !dbg !4215
  %lnot54 = xor i1 %lnot52, true, !dbg !4215
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !4215
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !4215
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !4215
  store i64 %expval57, ptr %tmp50, align 8, !dbg !4216
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4214
  %14 = load i64, ptr %tmp50, align 8, !dbg !4215
  br label %if.end58, !dbg !4214

if.end58:                                         ; preds = %if.end49, %if.end
  %15 = load i8, ptr %__ret_do_once, align 1, !dbg !4206, !range !4208, !noundef !1048
  %tobool60 = trunc i8 %15 to i1, !dbg !4206
  %lnot61 = xor i1 %tobool60, true, !dbg !4206
  %lnot63 = xor i1 %lnot61, true, !dbg !4206
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !4206
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !4206
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0), !dbg !4206
  store i64 %expval66, ptr %tmp59, align 8, !dbg !4214
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #15, !dbg !4230
  %16 = load i64, ptr %tmp59, align 8, !dbg !4206
  ret void, !dbg !4231
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @misc_cg_uncharge(i32 noundef %type, ptr noundef %cg, i64 noundef %amount) #0 align 16 !dbg !4232 {
entry:
  %type.addr = alloca i32, align 4
  %cg.addr = alloca ptr, align 8
  %amount.addr = alloca i64, align 8
  %i = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4234, metadata !DIExpression()), !dbg !4238
  store ptr %cg, ptr %cg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cg.addr, metadata !4235, metadata !DIExpression()), !dbg !4239
  store i64 %amount, ptr %amount.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %amount.addr, metadata !4236, metadata !DIExpression()), !dbg !4240
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15, !dbg !4241
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4237, metadata !DIExpression()), !dbg !4242
  %0 = load i64, ptr %amount.addr, align 8, !dbg !4243
  %tobool = icmp ne i64 %0, 0, !dbg !4243
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !4245

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !4246
  %call = call zeroext i1 @valid_type(i32 noundef %1) #14, !dbg !4247
  br i1 %call, label %land.lhs.true1, label %if.then, !dbg !4248

land.lhs.true1:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %cg.addr, align 8, !dbg !4249
  %tobool2 = icmp ne ptr %2, null, !dbg !4249
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4250

if.then:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4251

if.end:                                           ; preds = %land.lhs.true1
  %3 = load ptr, ptr %cg.addr, align 8, !dbg !4252
  store ptr %3, ptr %i, align 8, !dbg !4254
  br label %for.cond, !dbg !4255

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %i, align 8, !dbg !4256
  %tobool3 = icmp ne ptr %4, null, !dbg !4258
  br i1 %tobool3, label %for.body, label %for.end, !dbg !4258

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %type.addr, align 4, !dbg !4259
  %6 = load ptr, ptr %i, align 8, !dbg !4260
  %7 = load i64, ptr %amount.addr, align 8, !dbg !4261
  call void @misc_cg_cancel_charge(i32 noundef %5, ptr noundef %6, i64 noundef %7) #14, !dbg !4262
  br label %for.inc, !dbg !4262

for.inc:                                          ; preds = %for.body
  %8 = load ptr, ptr %i, align 8, !dbg !4263
  %call4 = call ptr @parent_misc(ptr noundef %8) #14, !dbg !4264
  store ptr %call4, ptr %i, align 8, !dbg !4265
  br label %for.cond, !dbg !4266, !llvm.loop !4267

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4269
  br label %cleanup, !dbg !4269

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15, !dbg !4269
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4269

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @misc_cg_alloc(ptr noundef %parent_css) #0 align 16 !dbg !4270 {
entry:
  %retval = alloca ptr, align 8
  %parent_css.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent_css, ptr %parent_css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_css.addr, metadata !4272, metadata !DIExpression()), !dbg !4275
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4276
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4273, metadata !DIExpression()), !dbg !4277
  call void @llvm.lifetime.start.p0(i64 8, ptr %cg) #15, !dbg !4278
  call void @llvm.dbg.declare(metadata ptr %cg, metadata !4274, metadata !DIExpression()), !dbg !4279
  %0 = load ptr, ptr %parent_css.addr, align 8, !dbg !4280
  %tobool = icmp ne ptr %0, null, !dbg !4280
  br i1 %tobool, label %if.else, label %if.then, !dbg !4282

if.then:                                          ; preds = %entry
  store ptr @root_cg, ptr %cg, align 8, !dbg !4283
  br label %if.end4, !dbg !4285

if.else:                                          ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 256, i32 noundef 3264) #16, !dbg !4286
  store ptr %call, ptr %cg, align 8, !dbg !4288
  %1 = load ptr, ptr %cg, align 8, !dbg !4289
  %tobool1 = icmp ne ptr %1, null, !dbg !4289
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !4291

if.then2:                                         ; preds = %if.else
  %call3 = call ptr @ERR_PTR(i64 noundef -12) #14, !dbg !4292
  store ptr %call3, ptr %retval, align 8, !dbg !4293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4293

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  store i32 0, ptr %i, align 4, !dbg !4294
  br label %for.cond, !dbg !4296

for.cond:                                         ; preds = %for.inc, %if.end4
  %2 = load i32, ptr %i, align 4, !dbg !4297
  %cmp = icmp ult i32 %2, 0, !dbg !4299
  br i1 %cmp, label %for.body, label %for.end, !dbg !4300

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !4301

do.body:                                          ; preds = %for.body
  br label %do.body5, !dbg !4303

do.body5:                                         ; preds = %do.body
  br label %do.cond, !dbg !4305

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !4305

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !4303

do.body6:                                         ; preds = %do.end
  %3 = load ptr, ptr %cg, align 8, !dbg !4307
  %res = getelementptr inbounds %struct.misc_cg, ptr %3, i32 0, i32 2, !dbg !4307
  %4 = load i32, ptr %i, align 4, !dbg !4307
  %idxprom = zext i32 %4 to i64, !dbg !4307
  %arrayidx = getelementptr [0 x %struct.misc_res], ptr %res, i64 0, i64 %idxprom, !dbg !4307
  %max = getelementptr inbounds %struct.misc_res, ptr %arrayidx, i32 0, i32 0, !dbg !4307
  store volatile i64 -1, ptr %max, align 8, !dbg !4307
  br label %do.cond7, !dbg !4307

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !4307

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !4303

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !4303

do.end10:                                         ; preds = %do.cond9
  %5 = load ptr, ptr %cg, align 8, !dbg !4309
  %res11 = getelementptr inbounds %struct.misc_cg, ptr %5, i32 0, i32 2, !dbg !4310
  %6 = load i32, ptr %i, align 4, !dbg !4311
  %idxprom12 = zext i32 %6 to i64, !dbg !4309
  %arrayidx13 = getelementptr [0 x %struct.misc_res], ptr %res11, i64 0, i64 %idxprom12, !dbg !4309
  %usage = getelementptr inbounds %struct.misc_res, ptr %arrayidx13, i32 0, i32 1, !dbg !4312
  call void @atomic64_set(ptr noundef %usage, i64 noundef 0) #14, !dbg !4313
  br label %for.inc, !dbg !4314

for.inc:                                          ; preds = %do.end10
  %7 = load i32, ptr %i, align 4, !dbg !4315
  %inc = add i32 %7, 1, !dbg !4315
  store i32 %inc, ptr %i, align 4, !dbg !4315
  br label %for.cond, !dbg !4316, !llvm.loop !4317

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %cg, align 8, !dbg !4319
  %css = getelementptr inbounds %struct.misc_cg, ptr %8, i32 0, i32 0, !dbg !4320
  store ptr %css, ptr %retval, align 8, !dbg !4321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4321

cleanup:                                          ; preds = %for.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %cg) #15, !dbg !4322
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4322
  %9 = load ptr, ptr %retval, align 8, !dbg !4322
  ret ptr %9, !dbg !4322
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @misc_cg_free(ptr noundef %css) #0 align 16 !dbg !4323 {
entry:
  %css.addr = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !4325, metadata !DIExpression()), !dbg !4326
  %0 = load ptr, ptr %css.addr, align 8, !dbg !4327
  %call = call ptr @css_misc(ptr noundef %0) #14, !dbg !4328
  call void @kfree(ptr noundef %call) #14, !dbg !4329
  ret void, !dbg !4330
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !4331 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4339, metadata !DIExpression()), !dbg !4341
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4340, metadata !DIExpression()), !dbg !4342
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4343
  %1 = load i64, ptr %size.addr, align 8, !dbg !4344
  %conv = trunc i64 %1 to i32, !dbg !4344
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !4345
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4346
  %3 = load i64, ptr %size.addr, align 8, !dbg !4346
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !4346
  ret void, !dbg !4347
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #3 align 16 !dbg !4348 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4351, metadata !DIExpression()), !dbg !4352
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4353
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #14, !dbg !4354
  ret i64 %call, !dbg !4355
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !4356 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4361, metadata !DIExpression()), !dbg !4363
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4362, metadata !DIExpression()), !dbg !4364
  ret i1 true, !dbg !4365
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !4366 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4371, metadata !DIExpression()), !dbg !4374
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4372, metadata !DIExpression()), !dbg !4375
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4373, metadata !DIExpression()), !dbg !4376
  ret void, !dbg !4377
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #3 align 16 !dbg !4378 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4381, metadata !DIExpression()), !dbg !4382
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4383
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !4383
  %1 = load volatile i64, ptr %counter, align 8, !dbg !4383
  ret i64 %1, !dbg !4384
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !4385 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4387, metadata !DIExpression()), !dbg !4389
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4388, metadata !DIExpression()), !dbg !4390
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4391
  %1 = load i64, ptr %size.addr, align 8, !dbg !4392
  %conv = trunc i64 %1 to i32, !dbg !4392
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !4393
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4394
  %3 = load i64, ptr %size.addr, align 8, !dbg !4394
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !4394
  ret void, !dbg !4395
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_add_return(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !4396 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4398, metadata !DIExpression()), !dbg !4400
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4399, metadata !DIExpression()), !dbg !4401
  %0 = load i64, ptr %i.addr, align 8, !dbg !4402
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4403
  %call = call i64 @arch_atomic64_add_return(i64 noundef %0, ptr noundef %1) #14, !dbg !4404
  ret i64 %call, !dbg !4405
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !4406 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4408, metadata !DIExpression()), !dbg !4410
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4409, metadata !DIExpression()), !dbg !4411
  ret i1 true, !dbg !4412
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_add_return(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !4413 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %__ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4415, metadata !DIExpression()), !dbg !4419
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4416, metadata !DIExpression()), !dbg !4420
  %0 = load i64, ptr %i.addr, align 8, !dbg !4421
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #15, !dbg !4422
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4417, metadata !DIExpression()), !dbg !4422
  %1 = load i64, ptr %i.addr, align 8, !dbg !4422
  store i64 %1, ptr %__ret, align 8, !dbg !4422
  %2 = load i64, ptr %__ret, align 8, !dbg !4422
  %3 = load ptr, ptr %v.addr, align 8, !dbg !4422
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %3, i32 0, i32 0, !dbg !4422
  %4 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %2, ptr elementtype(i64) %counter) #15, !dbg !4422, !srcloc !4423
  store i64 %4, ptr %__ret, align 8, !dbg !4422
  %5 = load i64, ptr %__ret, align 8, !dbg !4422
  store i64 %5, ptr %tmp, align 8, !dbg !4422
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #15, !dbg !4424
  %6 = load i64, ptr %tmp, align 8, !dbg !4422
  %add = add i64 %0, %6, !dbg !4425
  ret i64 %add, !dbg !4426
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @css_misc(ptr noundef %css) #2 align 16 !dbg !4427 {
entry:
  %css.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %css, ptr %css.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %css.addr, metadata !4431, metadata !DIExpression()), !dbg !4434
  %0 = load ptr, ptr %css.addr, align 8, !dbg !4435
  %tobool = icmp ne ptr %0, null, !dbg !4435
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4435

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4436
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4432, metadata !DIExpression()), !dbg !4436
  %1 = load ptr, ptr %css.addr, align 8, !dbg !4436
  store ptr %1, ptr %__mptr, align 8, !dbg !4436
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4436
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !4436
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4436
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4437
  %3 = load ptr, ptr %tmp, align 8, !dbg !4436
  br label %cond.end, !dbg !4435

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4435

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false ], !dbg !4435
  ret ptr %cond, !dbg !4438
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_inc(ptr noundef %v) #3 align 16 !dbg !4439 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4441, metadata !DIExpression()), !dbg !4442
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4443
  call void @arch_atomic64_inc(ptr noundef %0) #14, !dbg !4444
  ret void, !dbg !4445
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_inc(ptr noundef %v) #3 align 16 !dbg !4446 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4448, metadata !DIExpression()), !dbg !4449
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4450
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !4451
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4452
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !4453
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, ptr elementtype(i64) %counter1) #15, !dbg !4454, !srcloc !4455
  ret void, !dbg !4456
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic64_add_negative(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !4457 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4461, metadata !DIExpression()), !dbg !4463
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4462, metadata !DIExpression()), !dbg !4464
  br label %do.body, !dbg !4465

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4466

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4468
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #14, !dbg !4469
  %1 = load i64, ptr %i.addr, align 8, !dbg !4470
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4471
  %call = call zeroext i1 @raw_atomic64_add_negative(i64 noundef %1, ptr noundef %2) #14, !dbg !4472
  ret i1 %call, !dbg !4473
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4474 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_add_negative(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !4478 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4480, metadata !DIExpression()), !dbg !4482
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4481, metadata !DIExpression()), !dbg !4483
  %0 = load i64, ptr %i.addr, align 8, !dbg !4484
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4485
  %call = call zeroext i1 @arch_atomic64_add_negative(i64 noundef %0, ptr noundef %1) #14, !dbg !4486
  ret i1 %call, !dbg !4487
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_add_negative(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !4488 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4490, metadata !DIExpression()), !dbg !4494
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4491, metadata !DIExpression()), !dbg !4495
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !4496
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4492, metadata !DIExpression()), !dbg !4496
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4496
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !4496
  %1 = load i64, ptr %i.addr, align 8, !dbg !4496
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; addq $2, $0\0A\09/* output condition code s*/\0A", "=*m,={@ccs},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter) #15, !dbg !4496, !srcloc !4497
  %3 = icmp ult i8 %2, 2, !dbg !4496
  call void @llvm.assume(i1 %3), !dbg !4496
  store i8 %2, ptr %c, align 1, !dbg !4496
  %4 = load i8, ptr %c, align 1, !dbg !4496, !range !4208, !noundef !1048
  %tobool = trunc i8 %4 to i1, !dbg !4496
  %frombool = zext i1 %tobool to i8, !dbg !4496
  store i8 %frombool, ptr %tmp, align 1, !dbg !4496
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !4498
  %5 = load i8, ptr %tmp, align 1, !dbg !4496, !range !4208, !noundef !1048
  %tobool1 = trunc i8 %5 to i1, !dbg !4496
  ret i1 %tobool1, !dbg !4499
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !4500 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4504, metadata !DIExpression()), !dbg !4506
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4505, metadata !DIExpression()), !dbg !4507
  %0 = load i64, ptr %size.addr, align 8, !dbg !4508
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4509
  %or = or i32 %1, 256, !dbg !4510
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !4511
  ret ptr %call, !dbg !4512
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #2 align 16 !dbg !4513 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  %0 = load i64, ptr %error.addr, align 8, !dbg !4520
  %1 = inttoptr i64 %0 to ptr, !dbg !4521
  ret ptr %1, !dbg !4522
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic64_set(ptr noundef %v, i64 noundef %i) #3 align 16 !dbg !4523 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4527, metadata !DIExpression()), !dbg !4529
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4528, metadata !DIExpression()), !dbg !4530
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4531
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #14, !dbg !4532
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4533
  %2 = load i64, ptr %i.addr, align 8, !dbg !4534
  call void @raw_atomic64_set(ptr noundef %1, i64 noundef %2) #14, !dbg !4535
  ret void, !dbg !4536
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !4537 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4539, metadata !DIExpression()), !dbg !4544
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4540, metadata !DIExpression()), !dbg !4545
  %0 = load i64, ptr %size.addr, align 8, !dbg !4546
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4547
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4548

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4549
  %tobool = icmp ne i64 %2, 0, !dbg !4549
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4550

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !4551
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4541, metadata !DIExpression()), !dbg !4552
  %3 = load i64, ptr %size.addr, align 8, !dbg !4553
  %cmp = icmp ugt i64 %3, 8192, !dbg !4555
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4556

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4557
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4558
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !4559
  store ptr %call, ptr %retval, align 8, !dbg !4560
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4560

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4561
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !4561
  store i32 %call2, ptr %index, align 4, !dbg !4562
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4563
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4564
  %9 = ptrtoint ptr %8 to i64, !dbg !4564
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !4565
  %idxprom = zext i32 %call3 to i64, !dbg !4566
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4566
  %10 = load i32, ptr %index, align 4, !dbg !4567
  %idxprom4 = zext i32 %10 to i64, !dbg !4566
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4566
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4566
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4568
  %13 = load i64, ptr %size.addr, align 8, !dbg !4569
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !4570
  store ptr %call6, ptr %retval, align 8, !dbg !4571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4571

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !4572
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4573
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4574
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !4575
  store ptr %call8, ptr %retval, align 8, !dbg !4576
  br label %return, !dbg !4576

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4577
  ret ptr %16, !dbg !4577
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4578 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !4579 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4583, metadata !DIExpression()), !dbg !4585
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4584, metadata !DIExpression()), !dbg !4586
  %0 = load i64, ptr %size.addr, align 8, !dbg !4587
  %tobool = icmp ne i64 %0, 0, !dbg !4587
  br i1 %tobool, label %if.end, label %if.then, !dbg !4589

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4590
  br label %return, !dbg !4590

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4591
  %cmp = icmp ule i64 %1, 8, !dbg !4593
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4594

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4595
  br label %return, !dbg !4595

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4596
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4598
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4599

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4600
  %cmp4 = icmp ule i64 %3, 96, !dbg !4601
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4602

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4603
  br label %return, !dbg !4603

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4604
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4606
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4607

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4608
  %cmp9 = icmp ule i64 %5, 192, !dbg !4609
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4610

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4611
  br label %return, !dbg !4611

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4612
  %cmp12 = icmp ule i64 %6, 8, !dbg !4614
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4615

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4616
  br label %return, !dbg !4616

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4617
  %cmp15 = icmp ule i64 %7, 16, !dbg !4619
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4620

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4621
  br label %return, !dbg !4621

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4622
  %cmp18 = icmp ule i64 %8, 32, !dbg !4624
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4625

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4626
  br label %return, !dbg !4626

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4627
  %cmp21 = icmp ule i64 %9, 64, !dbg !4629
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4630

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4631
  br label %return, !dbg !4631

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4632
  %cmp24 = icmp ule i64 %10, 128, !dbg !4634
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4635

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4636
  br label %return, !dbg !4636

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4637
  %cmp27 = icmp ule i64 %11, 256, !dbg !4639
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4640

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4641
  br label %return, !dbg !4641

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4642
  %cmp30 = icmp ule i64 %12, 512, !dbg !4644
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4645

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4646
  br label %return, !dbg !4646

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4647
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4649
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4650

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4651
  br label %return, !dbg !4651

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4652
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4654
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4655

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4656
  br label %return, !dbg !4656

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4657
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4659
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4660

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4661
  br label %return, !dbg !4661

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4662
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4664
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4665

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4666
  br label %return, !dbg !4666

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4667
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4669
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4670

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4671
  br label %return, !dbg !4671

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4672
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4674
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4675

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4676
  br label %return, !dbg !4676

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4677
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4679
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4680

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4681
  br label %return, !dbg !4681

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4682
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4684
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4685

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4686
  br label %return, !dbg !4686

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4687
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4689
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4690

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4691
  br label %return, !dbg !4691

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4692
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4694
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4695

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4696
  br label %return, !dbg !4696

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4697
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4699
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4700

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4701
  br label %return, !dbg !4701

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4702
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4704
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4705

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4706
  br label %return, !dbg !4706

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4707, !range !4208, !noundef !1048
  %tobool69 = trunc i8 %25 to i1, !dbg !4707
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4709

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4710

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #18, !dbg !4711, !srcloc !4714
  unreachable, !dbg !4711

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4715

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4716

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4717

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4719

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4717

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #15, !dbg !4721, !srcloc !4723
  br label %do.end75, !dbg !4721

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4717

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4724
  br label %return, !dbg !4724

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4725
  ret i32 %26, !dbg !4725
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4726 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !4732 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4736, metadata !DIExpression()), !dbg !4738
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4737, metadata !DIExpression()), !dbg !4739
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4740
  %and = and i32 %0, 17, !dbg !4740
  %cmp = icmp eq i32 %and, 0, !dbg !4740
  %lnot = xor i1 %cmp, true, !dbg !4740
  %lnot1 = xor i1 %lnot, true, !dbg !4740
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4740
  %conv = sext i32 %lnot.ext to i64, !dbg !4740
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4740
  %tobool = icmp ne i64 %expval, 0, !dbg !4740
  br i1 %tobool, label %if.then, label %if.end, !dbg !4742

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4743
  br label %return, !dbg !4743

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4744
  %and2 = and i32 %1, 1, !dbg !4746
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4746
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4747

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4748
  br label %return, !dbg !4748

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4749
  br label %return, !dbg !4749

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4751
  ret i32 %2, !dbg !4751
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4752 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4753 dso_local void @__compiletime_assert_245() #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !4754 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4756, metadata !DIExpression()), !dbg !4758
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4757, metadata !DIExpression()), !dbg !4759
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4760
  %1 = load i64, ptr %size.addr, align 8, !dbg !4761
  %conv = trunc i64 %1 to i32, !dbg !4761
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !4762
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4763
  %3 = load i64, ptr %size.addr, align 8, !dbg !4763
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #14, !dbg !4763
  ret void, !dbg !4764
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #3 align 16 !dbg !4765 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4767, metadata !DIExpression()), !dbg !4769
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4768, metadata !DIExpression()), !dbg !4770
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4771
  %1 = load i64, ptr %i.addr, align 8, !dbg !4772
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #14, !dbg !4773
  ret void, !dbg !4774
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #3 align 16 !dbg !4775 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4777, metadata !DIExpression()), !dbg !4779
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4778, metadata !DIExpression()), !dbg !4780
  br label %do.body, !dbg !4781

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !4782
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4782
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !4782
  store volatile i64 %0, ptr %counter, align 8, !dbg !4782
  br label %do.end, !dbg !4782

do.end:                                           ; preds = %do.body
  ret void, !dbg !4784
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4785 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @misc_cg_max_show(ptr noundef %sf, ptr noundef %v) #0 align 16 !dbg !4788 {
entry:
  %sf.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cg = alloca ptr, align 8
  %max = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  store ptr %sf, ptr %sf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sf.addr, metadata !4790, metadata !DIExpression()), !dbg !4795
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4791, metadata !DIExpression()), !dbg !4796
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4797
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4792, metadata !DIExpression()), !dbg !4798
  call void @llvm.lifetime.start.p0(i64 8, ptr %cg) #15, !dbg !4799
  call void @llvm.dbg.declare(metadata ptr %cg, metadata !4793, metadata !DIExpression()), !dbg !4800
  %0 = load ptr, ptr %sf.addr, align 8, !dbg !4801
  %call = call ptr @seq_css(ptr noundef %0) #14, !dbg !4802
  %call1 = call ptr @css_misc(ptr noundef %call) #14, !dbg !4803
  store ptr %call1, ptr %cg, align 8, !dbg !4800
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #15, !dbg !4804
  call void @llvm.dbg.declare(metadata ptr %max, metadata !4794, metadata !DIExpression()), !dbg !4805
  store i32 0, ptr %i, align 4, !dbg !4806
  br label %for.cond, !dbg !4808

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !4809
  %cmp = icmp slt i32 %1, 0, !dbg !4811
  br i1 %cmp, label %for.body, label %for.end, !dbg !4812

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !4813

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !4817

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4817

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %i, align 4, !dbg !4813
  %idxprom = sext i32 %2 to i64, !dbg !4813
  %arrayidx = getelementptr [0 x i64], ptr @misc_res_capacity, i64 0, i64 %idxprom, !dbg !4813
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4813
  store i64 %3, ptr %tmp, align 8, !dbg !4817
  %4 = load i64, ptr %tmp, align 8, !dbg !4813
  %tobool = icmp ne i64 %4, 0, !dbg !4819
  br i1 %tobool, label %if.then, label %if.end15, !dbg !4820

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !4821

do.body2:                                         ; preds = %if.then
  br label %do.cond3, !dbg !4824

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4824

do.end4:                                          ; preds = %do.cond3
  %5 = load ptr, ptr %cg, align 8, !dbg !4821
  %res = getelementptr inbounds %struct.misc_cg, ptr %5, i32 0, i32 2, !dbg !4821
  %6 = load i32, ptr %i, align 4, !dbg !4821
  %idxprom6 = sext i32 %6 to i64, !dbg !4821
  %arrayidx7 = getelementptr [0 x %struct.misc_res], ptr %res, i64 0, i64 %idxprom6, !dbg !4821
  %max8 = getelementptr inbounds %struct.misc_res, ptr %arrayidx7, i32 0, i32 0, !dbg !4821
  %7 = load volatile i64, ptr %max8, align 8, !dbg !4821
  store i64 %7, ptr %tmp5, align 8, !dbg !4824
  %8 = load i64, ptr %tmp5, align 8, !dbg !4821
  store i64 %8, ptr %max, align 8, !dbg !4826
  %9 = load i64, ptr %max, align 8, !dbg !4827
  %cmp9 = icmp eq i64 %9, -1, !dbg !4829
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !4830

if.then10:                                        ; preds = %do.end4
  %10 = load ptr, ptr %sf.addr, align 8, !dbg !4831
  %11 = load i32, ptr %i, align 4, !dbg !4832
  %idxprom11 = sext i32 %11 to i64, !dbg !4833
  %arrayidx12 = getelementptr [0 x ptr], ptr @misc_res_name, i64 0, i64 %idxprom11, !dbg !4833
  %12 = load ptr, ptr %arrayidx12, align 8, !dbg !4833
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef @.str.3, ptr noundef %12) #14, !dbg !4834
  br label %if.end, !dbg !4834

if.else:                                          ; preds = %do.end4
  %13 = load ptr, ptr %sf.addr, align 8, !dbg !4835
  %14 = load i32, ptr %i, align 4, !dbg !4836
  %idxprom13 = sext i32 %14 to i64, !dbg !4837
  %arrayidx14 = getelementptr [0 x ptr], ptr @misc_res_name, i64 0, i64 %idxprom13, !dbg !4837
  %15 = load ptr, ptr %arrayidx14, align 8, !dbg !4837
  %16 = load i64, ptr %max, align 8, !dbg !4838
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef @.str.4, ptr noundef %15, i64 noundef %16) #14, !dbg !4839
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then10
  br label %if.end15, !dbg !4840

if.end15:                                         ; preds = %if.end, %do.end
  br label %for.inc, !dbg !4841

for.inc:                                          ; preds = %if.end15
  %17 = load i32, ptr %i, align 4, !dbg !4842
  %inc = add i32 %17, 1, !dbg !4842
  store i32 %inc, ptr %i, align 4, !dbg !4842
  br label %for.cond, !dbg !4843, !llvm.loop !4844

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #15, !dbg !4846
  call void @llvm.lifetime.end.p0(i64 8, ptr %cg) #15, !dbg !4846
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4846
  ret i32 0, !dbg !4847
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @misc_cg_max_write(ptr noundef %of, ptr noundef %buf, i64 noundef %nbytes, i64 noundef %off) #0 align 16 !dbg !4848 {
entry:
  %retval = alloca i64, align 8
  %of.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %nbytes.addr = alloca i64, align 8
  %off.addr = alloca i64, align 8
  %cg = alloca ptr, align 8
  %max = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %type = alloca i32, align 4
  %token = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %of, ptr %of.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %of.addr, metadata !4850, metadata !DIExpression()), !dbg !4860
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4851, metadata !DIExpression()), !dbg !4861
  store i64 %nbytes, ptr %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbytes.addr, metadata !4852, metadata !DIExpression()), !dbg !4862
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !4853, metadata !DIExpression()), !dbg !4863
  call void @llvm.lifetime.start.p0(i64 8, ptr %cg) #15, !dbg !4864
  call void @llvm.dbg.declare(metadata ptr %cg, metadata !4854, metadata !DIExpression()), !dbg !4865
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #15, !dbg !4866
  call void @llvm.dbg.declare(metadata ptr %max, metadata !4855, metadata !DIExpression()), !dbg !4867
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !4868
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4856, metadata !DIExpression()), !dbg !4869
  store i32 0, ptr %ret, align 4, !dbg !4869
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4868
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4857, metadata !DIExpression()), !dbg !4870
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #15, !dbg !4871
  call void @llvm.dbg.declare(metadata ptr %type, metadata !4858, metadata !DIExpression()), !dbg !4872
  store i32 0, ptr %type, align 4, !dbg !4872
  call void @llvm.lifetime.start.p0(i64 8, ptr %token) #15, !dbg !4873
  call void @llvm.dbg.declare(metadata ptr %token, metadata !4859, metadata !DIExpression()), !dbg !4874
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4875
  %call = call ptr @strstrip(ptr noundef %0) #14, !dbg !4876
  store ptr %call, ptr %buf.addr, align 8, !dbg !4877
  %call1 = call ptr @strsep(ptr noundef %buf.addr, ptr noundef @.str.5) #14, !dbg !4878
  store ptr %call1, ptr %token, align 8, !dbg !4879
  %1 = load ptr, ptr %token, align 8, !dbg !4880
  %tobool = icmp ne ptr %1, null, !dbg !4880
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4882

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !4883
  %tobool2 = icmp ne ptr %2, null, !dbg !4883
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4884

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -22, ptr %retval, align 8, !dbg !4885
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4885

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !dbg !4886
  br label %for.cond, !dbg !4888

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !4889
  %cmp = icmp slt i32 %3, 0, !dbg !4891
  br i1 %cmp, label %for.body, label %for.end, !dbg !4892

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !dbg !4893
  %idxprom = sext i32 %4 to i64, !dbg !4896
  %arrayidx = getelementptr [0 x ptr], ptr @misc_res_name, i64 0, i64 %idxprom, !dbg !4896
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !4896
  %6 = load ptr, ptr %token, align 8, !dbg !4897
  %call3 = call i32 @strcmp(ptr noundef %5, ptr noundef %6) #14, !dbg !4898
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4898
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4899

if.then5:                                         ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !4900
  store i32 %7, ptr %type, align 4, !dbg !4902
  br label %for.end, !dbg !4903

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !4904

for.inc:                                          ; preds = %if.end6
  %8 = load i32, ptr %i, align 4, !dbg !4905
  %inc = add i32 %8, 1, !dbg !4905
  store i32 %inc, ptr %i, align 4, !dbg !4905
  br label %for.cond, !dbg !4906, !llvm.loop !4907

for.end:                                          ; preds = %if.then5, %for.cond
  %9 = load i32, ptr %type, align 4, !dbg !4909
  %cmp7 = icmp eq i32 %9, 0, !dbg !4911
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !4912

if.then8:                                         ; preds = %for.end
  store i64 -22, ptr %retval, align 8, !dbg !4913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4913

if.end9:                                          ; preds = %for.end
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !4914
  %call10 = call i32 @strcmp(ptr noundef @.str.6, ptr noundef %10) #14, !dbg !4916
  %tobool11 = icmp ne i32 %call10, 0, !dbg !4916
  br i1 %tobool11, label %if.else, label %if.then12, !dbg !4917

if.then12:                                        ; preds = %if.end9
  store i64 -1, ptr %max, align 8, !dbg !4918
  br label %if.end17, !dbg !4920

if.else:                                          ; preds = %if.end9
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !4921
  %call13 = call i32 @kstrtou64(ptr noundef %11, i32 noundef 0, ptr noundef %max) #14, !dbg !4923
  store i32 %call13, ptr %ret, align 4, !dbg !4924
  %12 = load i32, ptr %ret, align 4, !dbg !4925
  %tobool14 = icmp ne i32 %12, 0, !dbg !4925
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4927

if.then15:                                        ; preds = %if.else
  %13 = load i32, ptr %ret, align 4, !dbg !4928
  %conv = sext i32 %13 to i64, !dbg !4928
  store i64 %conv, ptr %retval, align 8, !dbg !4929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4929

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then12
  %14 = load ptr, ptr %of.addr, align 8, !dbg !4930
  %call18 = call ptr @of_css(ptr noundef %14) #14, !dbg !4931
  %call19 = call ptr @css_misc(ptr noundef %call18) #14, !dbg !4932
  store ptr %call19, ptr %cg, align 8, !dbg !4933
  br label %do.body, !dbg !4934

do.body:                                          ; preds = %if.end17
  br label %do.cond, !dbg !4937

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4937

do.end:                                           ; preds = %do.cond
  %15 = load i32, ptr %type, align 4, !dbg !4934
  %idxprom20 = zext i32 %15 to i64, !dbg !4934
  %arrayidx21 = getelementptr [0 x i64], ptr @misc_res_capacity, i64 0, i64 %idxprom20, !dbg !4934
  %16 = load volatile i64, ptr %arrayidx21, align 8, !dbg !4934
  store i64 %16, ptr %tmp, align 8, !dbg !4937
  %17 = load i64, ptr %tmp, align 8, !dbg !4934
  %tobool22 = icmp ne i64 %17, 0, !dbg !4939
  br i1 %tobool22, label %if.then23, label %if.else36, !dbg !4940

if.then23:                                        ; preds = %do.end
  br label %do.body24, !dbg !4941

do.body24:                                        ; preds = %if.then23
  br label %do.body25, !dbg !4942

do.body25:                                        ; preds = %do.body24
  br label %do.cond26, !dbg !4944

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !4944

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !4942

do.body28:                                        ; preds = %do.end27
  %18 = load i64, ptr %max, align 8, !dbg !4946
  %19 = load ptr, ptr %cg, align 8, !dbg !4946
  %res = getelementptr inbounds %struct.misc_cg, ptr %19, i32 0, i32 2, !dbg !4946
  %20 = load i32, ptr %type, align 4, !dbg !4946
  %idxprom29 = zext i32 %20 to i64, !dbg !4946
  %arrayidx30 = getelementptr [0 x %struct.misc_res], ptr %res, i64 0, i64 %idxprom29, !dbg !4946
  %max31 = getelementptr inbounds %struct.misc_res, ptr %arrayidx30, i32 0, i32 0, !dbg !4946
  store volatile i64 %18, ptr %max31, align 8, !dbg !4946
  br label %do.cond32, !dbg !4946

do.cond32:                                        ; preds = %do.body28
  br label %do.end33, !dbg !4946

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !4942

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !4942

do.end35:                                         ; preds = %do.cond34
  br label %if.end37, !dbg !4942

if.else36:                                        ; preds = %do.end
  store i32 -22, ptr %ret, align 4, !dbg !4948
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %do.end35
  %21 = load i32, ptr %ret, align 4, !dbg !4949
  %tobool38 = icmp ne i32 %21, 0, !dbg !4949
  br i1 %tobool38, label %cond.true, label %cond.false, !dbg !4949

cond.true:                                        ; preds = %if.end37
  %22 = load i32, ptr %ret, align 4, !dbg !4950
  %conv39 = sext i32 %22 to i64, !dbg !4950
  br label %cond.end, !dbg !4949

cond.false:                                       ; preds = %if.end37
  %23 = load i64, ptr %nbytes.addr, align 8, !dbg !4951
  br label %cond.end, !dbg !4949

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv39, %cond.true ], [ %23, %cond.false ], !dbg !4949
  store i64 %cond, ptr %retval, align 8, !dbg !4952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4952

cleanup:                                          ; preds = %cond.end, %if.then15, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %token) #15, !dbg !4953
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #15, !dbg !4953
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4953
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !4953
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #15, !dbg !4953
  call void @llvm.lifetime.end.p0(i64 8, ptr %cg) #15, !dbg !4953
  %24 = load i64, ptr %retval, align 8, !dbg !4953
  ret i64 %24, !dbg !4953
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @misc_cg_current_show(ptr noundef %sf, ptr noundef %v) #0 align 16 !dbg !4954 {
entry:
  %sf.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %usage = alloca i64, align 8
  %cg = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %sf, ptr %sf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sf.addr, metadata !4956, metadata !DIExpression()), !dbg !4961
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4957, metadata !DIExpression()), !dbg !4962
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4963
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4958, metadata !DIExpression()), !dbg !4964
  call void @llvm.lifetime.start.p0(i64 8, ptr %usage) #15, !dbg !4965
  call void @llvm.dbg.declare(metadata ptr %usage, metadata !4959, metadata !DIExpression()), !dbg !4966
  call void @llvm.lifetime.start.p0(i64 8, ptr %cg) #15, !dbg !4967
  call void @llvm.dbg.declare(metadata ptr %cg, metadata !4960, metadata !DIExpression()), !dbg !4968
  %0 = load ptr, ptr %sf.addr, align 8, !dbg !4969
  %call = call ptr @seq_css(ptr noundef %0) #14, !dbg !4970
  %call1 = call ptr @css_misc(ptr noundef %call) #14, !dbg !4971
  store ptr %call1, ptr %cg, align 8, !dbg !4968
  store i32 0, ptr %i, align 4, !dbg !4972
  br label %for.cond, !dbg !4974

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !4975
  %cmp = icmp slt i32 %1, 0, !dbg !4977
  br i1 %cmp, label %for.body, label %for.end, !dbg !4978

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %cg, align 8, !dbg !4979
  %res = getelementptr inbounds %struct.misc_cg, ptr %2, i32 0, i32 2, !dbg !4981
  %3 = load i32, ptr %i, align 4, !dbg !4982
  %idxprom = sext i32 %3 to i64, !dbg !4979
  %arrayidx = getelementptr [0 x %struct.misc_res], ptr %res, i64 0, i64 %idxprom, !dbg !4979
  %usage2 = getelementptr inbounds %struct.misc_res, ptr %arrayidx, i32 0, i32 1, !dbg !4983
  %call3 = call i64 @atomic64_read(ptr noundef %usage2) #14, !dbg !4984
  store i64 %call3, ptr %usage, align 8, !dbg !4985
  br label %do.body, !dbg !4986

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !4989

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4989

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %i, align 4, !dbg !4986
  %idxprom4 = sext i32 %4 to i64, !dbg !4986
  %arrayidx5 = getelementptr [0 x i64], ptr @misc_res_capacity, i64 0, i64 %idxprom4, !dbg !4986
  %5 = load volatile i64, ptr %arrayidx5, align 8, !dbg !4986
  store i64 %5, ptr %tmp, align 8, !dbg !4989
  %6 = load i64, ptr %tmp, align 8, !dbg !4986
  %tobool = icmp ne i64 %6, 0, !dbg !4991
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4992

lor.lhs.false:                                    ; preds = %do.end
  %7 = load i64, ptr %usage, align 8, !dbg !4993
  %tobool6 = icmp ne i64 %7, 0, !dbg !4993
  br i1 %tobool6, label %if.then, label %if.end, !dbg !4994

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %8 = load ptr, ptr %sf.addr, align 8, !dbg !4995
  %9 = load i32, ptr %i, align 4, !dbg !4996
  %idxprom7 = sext i32 %9 to i64, !dbg !4997
  %arrayidx8 = getelementptr [0 x ptr], ptr @misc_res_name, i64 0, i64 %idxprom7, !dbg !4997
  %10 = load ptr, ptr %arrayidx8, align 8, !dbg !4997
  %11 = load i64, ptr %usage, align 8, !dbg !4998
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef @.str.4, ptr noundef %10, i64 noundef %11) #14, !dbg !4999
  br label %if.end, !dbg !4999

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc, !dbg !5000

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !dbg !5001
  %inc = add i32 %12, 1, !dbg !5001
  store i32 %inc, ptr %i, align 4, !dbg !5001
  br label %for.cond, !dbg !5002, !llvm.loop !5003

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %cg) #15, !dbg !5005
  call void @llvm.lifetime.end.p0(i64 8, ptr %usage) #15, !dbg !5005
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5005
  ret i32 0, !dbg !5006
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @misc_cg_capacity_show(ptr noundef %sf, ptr noundef %v) #0 align 16 !dbg !5007 {
entry:
  %sf.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cap = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %sf, ptr %sf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sf.addr, metadata !5009, metadata !DIExpression()), !dbg !5013
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5010, metadata !DIExpression()), !dbg !5014
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5015
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5011, metadata !DIExpression()), !dbg !5016
  call void @llvm.lifetime.start.p0(i64 8, ptr %cap) #15, !dbg !5017
  call void @llvm.dbg.declare(metadata ptr %cap, metadata !5012, metadata !DIExpression()), !dbg !5018
  store i32 0, ptr %i, align 4, !dbg !5019
  br label %for.cond, !dbg !5021

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5022
  %cmp = icmp slt i32 %0, 0, !dbg !5024
  br i1 %cmp, label %for.body, label %for.end, !dbg !5025

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !5026

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !5029

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5029

do.end:                                           ; preds = %do.cond
  %1 = load i32, ptr %i, align 4, !dbg !5026
  %idxprom = sext i32 %1 to i64, !dbg !5026
  %arrayidx = getelementptr [0 x i64], ptr @misc_res_capacity, i64 0, i64 %idxprom, !dbg !5026
  %2 = load volatile i64, ptr %arrayidx, align 8, !dbg !5026
  store i64 %2, ptr %tmp, align 8, !dbg !5029
  %3 = load i64, ptr %tmp, align 8, !dbg !5026
  store i64 %3, ptr %cap, align 8, !dbg !5031
  %4 = load i64, ptr %cap, align 8, !dbg !5032
  %tobool = icmp ne i64 %4, 0, !dbg !5032
  br i1 %tobool, label %if.then, label %if.end, !dbg !5034

if.then:                                          ; preds = %do.end
  %5 = load ptr, ptr %sf.addr, align 8, !dbg !5035
  %6 = load i32, ptr %i, align 4, !dbg !5036
  %idxprom1 = sext i32 %6 to i64, !dbg !5037
  %arrayidx2 = getelementptr [0 x ptr], ptr @misc_res_name, i64 0, i64 %idxprom1, !dbg !5037
  %7 = load ptr, ptr %arrayidx2, align 8, !dbg !5037
  %8 = load i64, ptr %cap, align 8, !dbg !5038
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef @.str.4, ptr noundef %7, i64 noundef %8) #14, !dbg !5039
  br label %if.end, !dbg !5039

if.end:                                           ; preds = %if.then, %do.end
  br label %for.inc, !dbg !5040

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !dbg !5041
  %inc = add i32 %9, 1, !dbg !5041
  store i32 %inc, ptr %i, align 4, !dbg !5041
  br label %for.cond, !dbg !5042, !llvm.loop !5043

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %cap) #15, !dbg !5045
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5045
  ret i32 0, !dbg !5046
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @misc_events_show(ptr noundef %sf, ptr noundef %v) #0 align 16 !dbg !5047 {
entry:
  %sf.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %cg = alloca ptr, align 8
  %events = alloca i64, align 8
  %i = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %sf, ptr %sf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sf.addr, metadata !5049, metadata !DIExpression()), !dbg !5054
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5050, metadata !DIExpression()), !dbg !5055
  call void @llvm.lifetime.start.p0(i64 8, ptr %cg) #15, !dbg !5056
  call void @llvm.dbg.declare(metadata ptr %cg, metadata !5051, metadata !DIExpression()), !dbg !5057
  %0 = load ptr, ptr %sf.addr, align 8, !dbg !5058
  %call = call ptr @seq_css(ptr noundef %0) #14, !dbg !5059
  %call1 = call ptr @css_misc(ptr noundef %call) #14, !dbg !5060
  store ptr %call1, ptr %cg, align 8, !dbg !5057
  call void @llvm.lifetime.start.p0(i64 8, ptr %events) #15, !dbg !5061
  call void @llvm.dbg.declare(metadata ptr %events, metadata !5052, metadata !DIExpression()), !dbg !5062
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5063
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5053, metadata !DIExpression()), !dbg !5064
  store i32 0, ptr %i, align 4, !dbg !5065
  br label %for.cond, !dbg !5067

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !5068
  %cmp = icmp slt i32 %1, 0, !dbg !5070
  br i1 %cmp, label %for.body, label %for.end, !dbg !5071

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %cg, align 8, !dbg !5072
  %res = getelementptr inbounds %struct.misc_cg, ptr %2, i32 0, i32 2, !dbg !5074
  %3 = load i32, ptr %i, align 4, !dbg !5075
  %idxprom = sext i32 %3 to i64, !dbg !5072
  %arrayidx = getelementptr [0 x %struct.misc_res], ptr %res, i64 0, i64 %idxprom, !dbg !5072
  %events2 = getelementptr inbounds %struct.misc_res, ptr %arrayidx, i32 0, i32 2, !dbg !5076
  %call3 = call i64 @atomic64_read(ptr noundef %events2) #14, !dbg !5077
  store i64 %call3, ptr %events, align 8, !dbg !5078
  br label %do.body, !dbg !5079

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !5082

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5082

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %i, align 4, !dbg !5079
  %idxprom4 = sext i32 %4 to i64, !dbg !5079
  %arrayidx5 = getelementptr [0 x i64], ptr @misc_res_capacity, i64 0, i64 %idxprom4, !dbg !5079
  %5 = load volatile i64, ptr %arrayidx5, align 8, !dbg !5079
  store i64 %5, ptr %tmp, align 8, !dbg !5082
  %6 = load i64, ptr %tmp, align 8, !dbg !5079
  %tobool = icmp ne i64 %6, 0, !dbg !5084
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5085

lor.lhs.false:                                    ; preds = %do.end
  %7 = load i64, ptr %events, align 8, !dbg !5086
  %tobool6 = icmp ne i64 %7, 0, !dbg !5086
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5087

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %8 = load ptr, ptr %sf.addr, align 8, !dbg !5088
  %9 = load i32, ptr %i, align 4, !dbg !5089
  %idxprom7 = sext i32 %9 to i64, !dbg !5090
  %arrayidx8 = getelementptr [0 x ptr], ptr @misc_res_name, i64 0, i64 %idxprom7, !dbg !5090
  %10 = load ptr, ptr %arrayidx8, align 8, !dbg !5090
  %11 = load i64, ptr %events, align 8, !dbg !5091
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef @.str.7, ptr noundef %10, i64 noundef %11) #14, !dbg !5092
  br label %if.end, !dbg !5092

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc, !dbg !5093

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !dbg !5094
  %inc = add i32 %12, 1, !dbg !5094
  store i32 %inc, ptr %i, align 4, !dbg !5094
  br label %for.cond, !dbg !5095, !llvm.loop !5096

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5098
  call void @llvm.lifetime.end.p0(i64 8, ptr %events) #15, !dbg !5098
  call void @llvm.lifetime.end.p0(i64 8, ptr %cg) #15, !dbg !5098
  ret i32 0, !dbg !5099
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @seq_css(ptr noundef %seq) #2 align 16 !dbg !5100 {
entry:
  %seq.addr = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !5104, metadata !DIExpression()), !dbg !5105
  %0 = load ptr, ptr %seq.addr, align 8, !dbg !5106
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !5107
  %1 = load ptr, ptr %private, align 8, !dbg !5107
  %call = call ptr @of_css(ptr noundef %1) #14, !dbg !5108
  ret ptr %call, !dbg !5109
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5110 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5113 dso_local ptr @of_css(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @strstrip(ptr noundef %str) #2 align 16 !dbg !5116 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5121, metadata !DIExpression()), !dbg !5122
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5123
  %call = call ptr @strim(ptr noundef %0) #14, !dbg !5124
  ret ptr %call, !dbg !5125
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5126 dso_local ptr @strsep(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5130 dso_local i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtou64(ptr noundef %s, i32 noundef %base, ptr noundef %res) #2 align 16 !dbg !5133 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5139, metadata !DIExpression()), !dbg !5142
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5140, metadata !DIExpression()), !dbg !5143
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5141, metadata !DIExpression()), !dbg !5144
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5145
  %1 = load i32, ptr %base.addr, align 4, !dbg !5146
  %2 = load ptr, ptr %res.addr, align 8, !dbg !5147
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %2) #14, !dbg !5148
  ret i32 %call, !dbg !5149
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5150 dso_local ptr @strim(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5151 dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952}
!llvm.ident = !{!3953}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "root_cg", scope: !2, file: !3, line: 30, type: !178, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/cgroup/.misc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/cgroup/misc\22 -D KBUILD_BASENAME=\22misc\22 -D KBUILD_MODNAME=\22misc\22 -D __KBUILD_MODNAME=kmod_misc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/cgroup/misc.ll kernel/cgroup/misc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !165, globals: !3873, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/cgroup/misc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3e433086b5ad93c161201bed4a022dc")
!4 = !{!5, !10, !18, !114, !119, !125, !130, !136, !143, !150, !155}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "misc_res_type", file: !6, line: 14, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/misc_cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27dccc98c02e429a5d37ab348259abeb")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9}
!9 = !DIEnumerator(name: "MISC_CG_RES_TYPES", value: 0)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !11, line: 9, baseType: !7, size: 32, elements: !12)
!11 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!12 = !{!13, !14, !15, !16, !17}
!13 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!14 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!15 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!16 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!17 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !20, file: !19, line: 147, baseType: !7, size: 32, elements: !111)
!19 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !19, line: 135, size: 512, elements: !21)
!21 = !{!22, !26, !28, !30, !34, !35, !51, !109, !110}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !20, file: !19, line: 136, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !20, file: !19, line: 137, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !20, file: !19, line: 138, baseType: !29, size: 32, offset: 128)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !20, file: !19, line: 139, baseType: !31, size: 16, offset: 160)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !32, line: 24, baseType: !33)
!32 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !20, file: !19, line: 150, baseType: !18, size: 32, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !20, file: !19, line: 151, baseType: !36, size: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !19, line: 64, baseType: !38)
!38 = !DISubroutineType(types: !39)
!39 = !{!29, !40, !29, !27, !41, !47}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 61, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !44, line: 72, baseType: !45)
!44 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !44, line: 16, baseType: !46)
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !32, line: 52, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !44, line: 88, baseType: !50)
!50 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !20, file: !19, line: 152, baseType: !52, size: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !19, line: 117, size: 256, elements: !54)
!54 = !{!55, !60}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !53, file: !19, line: 118, baseType: !56, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !32, line: 174, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 172, size: 32, elements: !58)
!58 = !{!59}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !57, file: !32, line: 173, baseType: !29, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !53, file: !19, line: 119, baseType: !61, size: 192, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !62, line: 41, baseType: !63)
!62 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !62, line: 37, size: 192, elements: !64)
!64 = !{!65, !103}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !63, file: !62, line: 38, baseType: !66, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !67, line: 29, baseType: !68)
!67 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !67, line: 17, size: 32, elements: !69)
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, scope: !68, file: !67, line: 18, baseType: !71, size: 32)
!71 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !68, file: !67, line: 18, size: 32, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !71, file: !67, line: 19, baseType: !74, size: 32)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !75, line: 14, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !74, file: !75, line: 15, baseType: !78, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !79, line: 44, baseType: !80)
!79 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !79, line: 14, size: 32, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, scope: !80, file: !79, line: 15, baseType: !83, size: 32)
!83 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !80, file: !79, line: 15, size: 32, elements: !84)
!84 = !{!85, !86, !96}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !83, file: !79, line: 16, baseType: !56, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !79, line: 24, baseType: !87, size: 16)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !83, file: !79, line: 24, size: 16, elements: !88)
!88 = !{!89, !95}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !87, file: !79, line: 25, baseType: !90, size: 8)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !91, line: 17, baseType: !92)
!91 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !93, line: 21, baseType: !94)
!93 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!94 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !87, file: !79, line: 26, baseType: !90, size: 8, offset: 8)
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !79, line: 28, baseType: !97, size: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !83, file: !79, line: 28, size: 32, elements: !98)
!98 = !{!99, !102}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !97, file: !79, line: 29, baseType: !100, size: 16)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !91, line: 19, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !93, line: 24, baseType: !33)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !97, file: !79, line: 30, baseType: !100, size: 16, offset: 16)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !63, file: !62, line: 39, baseType: !104, size: 128, offset: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !32, line: 190, size: 128, elements: !105)
!105 = !{!106, !108}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !32, line: 191, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !104, file: !32, line: 191, baseType: !107, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !20, file: !19, line: 153, baseType: !27, size: 64, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !20, file: !19, line: 154, baseType: !27, size: 64, offset: 448)
!111 = !{!112, !113}
!112 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!113 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !115, line: 2052, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!116 = !{!117, !118}
!117 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!118 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !120, line: 54, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!121 = !{!122, !123, !124}
!122 = !DIEnumerator(name: "USRQUOTA", value: 0)
!123 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!124 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !126, line: 65, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!127 = !{!128, !129}
!128 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!129 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !131, line: 16, baseType: !7, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "TT_NONE", value: 0)
!134 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!135 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !137, line: 15, baseType: !7, size: 32, elements: !138)
!137 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!138 = !{!139, !140, !141, !142}
!139 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!140 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!141 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!142 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !144, line: 51, baseType: !7, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!145 = !{!146, !147, !148, !149}
!146 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!147 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!148 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!149 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !151, line: 10, baseType: !7, size: 32, elements: !152)
!151 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!152 = !{!153, !154}
!153 = !DIEnumerator(name: "false", value: 0)
!154 = !DIEnumerator(name: "true", value: 1)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !156, line: 364, baseType: !7, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!157 = !{!158, !159, !160, !161, !162, !163, !164}
!158 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!159 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!160 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!161 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!162 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!163 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!164 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!165 = !{!27, !166, !171, !174, !177, !1003, !168, !46, !3871}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !91, line: 23, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !93, line: 31, baseType: !170)
!170 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !170)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "misc_cg", file: !6, line: 48, size: 2048, elements: !179)
!179 = !{!180, !3863, !3864}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !178, file: !6, line: 49, baseType: !181, size: 1600)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !182, line: 152, size: 1600, elements: !183)
!182 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!183 = !{!184, !3717, !3827, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3862}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !181, file: !182, line: 154, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !182, line: 389, size: 7872, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !3633, !3639, !3640, !3644, !3645, !3646, !3647, !3648, !3649, !3666, !3667, !3668, !3669, !3670, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3704, !3707, !3708, !3715}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !186, file: !182, line: 391, baseType: !181, size: 1600)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !182, line: 393, baseType: !46, size: 64, offset: 1600)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !186, file: !182, line: 401, baseType: !29, size: 32, offset: 1664)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !186, file: !182, line: 404, baseType: !29, size: 32, offset: 1696)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !186, file: !182, line: 417, baseType: !29, size: 32, offset: 1728)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !186, file: !182, line: 418, baseType: !29, size: 32, offset: 1760)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !186, file: !182, line: 419, baseType: !29, size: 32, offset: 1792)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !186, file: !182, line: 432, baseType: !29, size: 32, offset: 1824)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !186, file: !182, line: 433, baseType: !29, size: 32, offset: 1856)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !186, file: !182, line: 434, baseType: !29, size: 32, offset: 1888)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !186, file: !182, line: 436, baseType: !29, size: 32, offset: 1920)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !186, file: !182, line: 439, baseType: !7, size: 32, offset: 1952)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !186, file: !182, line: 441, baseType: !201, size: 64, offset: 1984)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !203, line: 190, size: 1152, elements: !204)
!203 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!204 = !{!205, !206, !207, !208, !209, !217, !220, !221, !3625, !3626, !3627, !3628, !3629, !3632}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !202, file: !203, line: 191, baseType: !56, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !202, file: !203, line: 192, baseType: !56, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !202, file: !203, line: 202, baseType: !201, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !203, line: 203, baseType: !23, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !202, file: !203, line: 205, baseType: !210, size: 192, align: 64, offset: 192)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !211, line: 5, size: 192, align: 64, elements: !212)
!211 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!212 = !{!213, !214, !216}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !210, file: !211, line: 6, baseType: !46, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !210, file: !211, line: 7, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !210, file: !211, line: 8, baseType: !215, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !202, file: !203, line: 207, baseType: !218, size: 64, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !202, file: !203, line: 208, baseType: !7, size: 32, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !203, line: 209, baseType: !222, size: 256, offset: 512)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !203, line: 209, size: 256, elements: !223)
!223 = !{!224, !236, !240}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !222, file: !203, line: 210, baseType: !225, size: 256)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !203, line: 153, size: 256, elements: !226)
!226 = !{!227, !228, !232, !235}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !225, file: !203, line: 154, baseType: !46, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !225, file: !203, line: 156, baseType: !229, size: 64, offset: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !211, line: 12, size: 64, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !229, file: !211, line: 13, baseType: !215, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !225, file: !203, line: 162, baseType: !233, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !203, line: 162, flags: DIFlagFwdDecl)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !225, file: !203, line: 167, baseType: !46, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !222, file: !203, line: 211, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !203, line: 170, size: 64, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !237, file: !203, line: 171, baseType: !201, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !222, file: !203, line: 212, baseType: !241, size: 256)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !203, line: 174, size: 256, elements: !242)
!242 = !{!243, !3620, !3623, !3624}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !241, file: !203, line: 175, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !203, line: 271, size: 768, elements: !247)
!247 = !{!248, !3597, !3601, !3602, !3603, !3604, !3605, !3609, !3610, !3611, !3612, !3616}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !246, file: !203, line: 276, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!29, !252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !203, line: 251, size: 1216, elements: !254)
!254 = !{!255, !256, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !253, file: !203, line: 253, baseType: !201, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !253, file: !203, line: 254, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !115, line: 994, size: 1856, align: 64, elements: !259)
!259 = !{!260, !279, !280, !282, !291, !304, !305, !306, !381, !740, !749, !3576, !3577, !3578, !3579, !3580, !3581, !3583, !3584, !3585}
!260 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !115, line: 995, baseType: !261, size: 128)
!261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !258, file: !115, line: 995, size: 128, elements: !262)
!262 = !{!263, !269, !278}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !261, file: !115, line: 996, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !265, line: 60, size: 64, elements: !266)
!265 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !265, line: 61, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !261, file: !115, line: 997, baseType: !270, size: 128, align: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !32, line: 232, size: 128, align: 64, elements: !271)
!271 = !{!272, !274}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !32, line: 233, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !270, file: !32, line: 234, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !273}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !261, file: !115, line: 998, baseType: !7, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !258, file: !115, line: 1005, baseType: !66, size: 32, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !258, file: !115, line: 1006, baseType: !281, size: 32, offset: 160)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !32, line: 156, baseType: !7)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !258, file: !115, line: 1007, baseType: !283, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !284, line: 13, baseType: !285)
!284 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !32, line: 181, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 179, size: 64, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !286, file: !32, line: 180, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !91, line: 22, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !93, line: 30, baseType: !50)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !258, file: !115, line: 1008, baseType: !292, size: 256, offset: 256)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !293, line: 66, size: 256, elements: !294)
!293 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!294 = !{!295, !296, !298, !303}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !292, file: !293, line: 67, baseType: !283, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !292, file: !293, line: 68, baseType: !297, size: 32, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !75, line: 23, baseType: !74)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !292, file: !293, line: 70, baseType: !299, size: 32, offset: 96)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !300, line: 15, size: 32, elements: !301)
!300 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !299, file: !300, line: 20, baseType: !56, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !292, file: !293, line: 72, baseType: !104, size: 128, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !258, file: !115, line: 1009, baseType: !48, size: 64, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !258, file: !115, line: 1010, baseType: !7, size: 32, offset: 576)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !258, file: !115, line: 1011, baseType: !307, size: 256, offset: 640)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !115, line: 948, size: 256, elements: !308)
!308 = !{!309, !332, !370, !371, !379, !380}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !307, file: !115, line: 949, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !311, line: 34, baseType: !312)
!311 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !311, line: 25, size: 64, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !312, file: !311, line: 26, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !316, line: 27, baseType: !317)
!316 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !316, line: 13, size: 64, elements: !318)
!318 = !{!319, !331}
!319 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !316, line: 14, baseType: !320, size: 32)
!320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !316, line: 14, size: 32, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !320, file: !316, line: 15, baseType: !56, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !316, line: 16, baseType: !324, size: 32)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !316, line: 16, size: 32, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !324, file: !316, line: 18, baseType: !90, size: 8)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !324, file: !316, line: 19, baseType: !328, size: 24, offset: 8)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 24, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 3)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !317, file: !316, line: 26, baseType: !78, size: 32, offset: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !307, file: !115, line: 950, baseType: !333, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !11, line: 59, size: 768, elements: !335)
!335 = !{!336, !342, !343, !344, !357, !358, !359, !360}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !334, file: !11, line: 61, baseType: !337, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !338, line: 113, baseType: !339)
!338 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !338, line: 111, size: 32, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !339, file: !338, line: 112, baseType: !56, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !334, file: !11, line: 62, baseType: !7, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !334, file: !11, line: 63, baseType: !66, size: 32, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !334, file: !11, line: 65, baseType: !345, size: 256, offset: 128)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 256, elements: !355)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !32, line: 194, size: 64, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !346, file: !32, line: 195, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !32, line: 198, size: 128, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !32, line: 199, baseType: !349, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !350, file: !32, line: 199, baseType: !354, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!355 = !{!356}
!356 = !DISubrange(count: 4)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !334, file: !11, line: 66, baseType: !346, size: 64, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !334, file: !11, line: 68, baseType: !61, size: 192, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !334, file: !11, line: 69, baseType: !270, size: 128, align: 64, offset: 640)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !334, file: !11, line: 70, baseType: !361, offset: 768)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, elements: !368)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !11, line: 54, size: 128, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !362, file: !11, line: 55, baseType: !29, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !362, file: !11, line: 56, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !11, line: 56, flags: DIFlagFwdDecl)
!368 = !{!369}
!369 = !DISubrange(count: -1)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !307, file: !115, line: 951, baseType: !10, size: 32, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !307, file: !115, line: 952, baseType: !372, size: 32, offset: 160)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !373, line: 23, baseType: !374)
!373 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 21, size: 32, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !374, file: !373, line: 22, baseType: !377, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !32, line: 37, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !44, line: 49, baseType: !7)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !307, file: !115, line: 952, baseType: !372, size: 32, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !307, file: !115, line: 953, baseType: !29, size: 32, offset: 224)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !258, file: !115, line: 1012, baseType: !382, size: 64, offset: 896)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !385, line: 110, size: 1472, elements: !386)
!385 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!386 = !{!387, !388, !389, !396, !397, !398, !399, !400, !401, !402, !403, !409, !410, !411, !412, !413, !414, !540, !541, !542, !543, !544, !575, !726, !727, !735}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !384, file: !385, line: 111, baseType: !283, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !384, file: !385, line: 112, baseType: !372, size: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !384, file: !385, line: 113, baseType: !390, size: 32, offset: 96)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !373, line: 28, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 26, size: 32, elements: !392)
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !391, file: !373, line: 27, baseType: !394, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !32, line: 38, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !44, line: 50, baseType: !7)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !384, file: !385, line: 114, baseType: !372, size: 32, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !384, file: !385, line: 115, baseType: !390, size: 32, offset: 160)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !384, file: !385, line: 116, baseType: !372, size: 32, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !384, file: !385, line: 117, baseType: !390, size: 32, offset: 224)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !384, file: !385, line: 118, baseType: !372, size: 32, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !384, file: !385, line: 119, baseType: !390, size: 32, offset: 288)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !384, file: !385, line: 120, baseType: !7, size: 32, offset: 320)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !384, file: !385, line: 121, baseType: !404, size: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !405, line: 24, baseType: !406)
!405 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 24, size: 64, elements: !407)
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !406, file: !405, line: 24, baseType: !168, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !384, file: !385, line: 122, baseType: !404, size: 64, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !384, file: !385, line: 123, baseType: !404, size: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !384, file: !385, line: 124, baseType: !404, size: 64, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !384, file: !385, line: 125, baseType: !404, size: 64, offset: 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !384, file: !385, line: 127, baseType: !94, size: 8, offset: 704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !384, file: !385, line: 129, baseType: !415, size: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !417, line: 195, size: 1728, elements: !418)
!417 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!418 = !{!419, !420, !425, !430, !439, !442, !443, !450, !451, !452, !453, !458, !459, !460, !462, !463, !504, !525}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !416, file: !417, line: 196, baseType: !337, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !416, file: !417, line: 197, baseType: !421, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !417, line: 28, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !32, line: 104, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !91, line: 20, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !93, line: 26, baseType: !29)
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !417, line: 198, baseType: !426, size: 192, offset: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !417, line: 198, size: 192, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !426, file: !417, line: 199, baseType: !104, size: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !426, file: !417, line: 200, baseType: !210, size: 192, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !416, file: !417, line: 205, baseType: !431, size: 320, offset: 256)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !432, line: 48, size: 320, elements: !433)
!432 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!433 = !{!434, !435, !436, !437, !438}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !431, file: !432, line: 49, baseType: !283, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !431, file: !432, line: 55, baseType: !283, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !431, file: !432, line: 57, baseType: !299, size: 32, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !431, file: !432, line: 59, baseType: !297, size: 32, offset: 160)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !431, file: !432, line: 60, baseType: !104, size: 128, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !416, file: !417, line: 206, baseType: !440, size: 64, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !417, line: 206, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !416, file: !417, line: 207, baseType: !27, size: 64, offset: 640)
!443 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !417, line: 208, baseType: !444, size: 64, offset: 704)
!444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !417, line: 208, size: 64, elements: !445)
!445 = !{!446, !449}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !444, file: !417, line: 209, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !448, line: 8, baseType: !290)
!448 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!449 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !444, file: !417, line: 210, baseType: !447, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !416, file: !417, line: 212, baseType: !447, size: 64, offset: 768)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !416, file: !417, line: 213, baseType: !372, size: 32, offset: 832)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !416, file: !417, line: 214, baseType: !390, size: 32, offset: 864)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !416, file: !417, line: 215, baseType: !454, size: 32, offset: 896)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !417, line: 31, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !32, line: 110, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !91, line: 21, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !93, line: 27, baseType: !7)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !416, file: !417, line: 216, baseType: !33, size: 16, offset: 928)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !416, file: !417, line: 217, baseType: !33, size: 16, offset: 944)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !416, file: !417, line: 221, baseType: !461, size: 16, offset: 960)
!461 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !416, file: !417, line: 228, baseType: !46, size: 64, offset: 1024)
!463 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !417, line: 245, baseType: !464, size: 320, offset: 1088)
!464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !417, line: 245, size: 320, elements: !465)
!465 = !{!466, !495}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !464, file: !417, line: 246, baseType: !467, size: 320)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !417, line: 114, size: 320, elements: !468)
!468 = !{!469, !470, !482, !485, !494}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !467, file: !417, line: 116, baseType: !46, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !417, line: 117, baseType: !471, size: 64, offset: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !467, file: !417, line: 117, size: 64, elements: !472)
!472 = !{!473, !481}
!473 = !DIDerivedType(tag: DW_TAG_member, scope: !471, file: !417, line: 118, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !471, file: !417, line: 118, size: 64, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !474, file: !417, line: 120, baseType: !100, size: 16)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !474, file: !417, line: 121, baseType: !478, size: 48, offset: 16)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 48, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 6)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !471, file: !417, line: 127, baseType: !46, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !467, file: !417, line: 129, baseType: !483, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !417, line: 102, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !467, file: !417, line: 130, baseType: !486, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !417, line: 108, size: 192, elements: !488)
!488 = !{!489, !490, !491}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !487, file: !417, line: 109, baseType: !270, size: 128, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !487, file: !417, line: 110, baseType: !337, size: 32, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !487, file: !417, line: 111, baseType: !492, size: 8, offset: 160)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !32, line: 35, baseType: !493)
!493 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !467, file: !417, line: 131, baseType: !23, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !417, line: 247, baseType: !496, size: 320)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !464, file: !417, line: 247, size: 320, elements: !497)
!497 = !{!498, !499, !500, !501, !502}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !496, file: !417, line: 248, baseType: !46, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !496, file: !417, line: 249, baseType: !46, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !496, file: !417, line: 250, baseType: !483, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !496, file: !417, line: 251, baseType: !486, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !496, file: !417, line: 252, baseType: !503, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !417, line: 260, baseType: !505, size: 256, offset: 1408)
!505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !417, line: 260, size: 256, elements: !506)
!506 = !{!507, !513}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !505, file: !417, line: 261, baseType: !508, size: 256)
!508 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !417, line: 134, size: 256, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !508, file: !417, line: 135, baseType: !27, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !508, file: !417, line: 136, baseType: !512, size: 256)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 256, elements: !355)
!513 = !DIDerivedType(tag: DW_TAG_member, scope: !505, file: !417, line: 262, baseType: !514, size: 256)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !505, file: !417, line: 262, size: 256, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !514, file: !417, line: 264, baseType: !104, size: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !514, file: !417, line: 265, baseType: !518, size: 128, offset: 128)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !519, line: 22, size: 128, elements: !520)
!519 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!520 = !{!521, !524}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !518, file: !519, line: 23, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !519, line: 23, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !518, file: !519, line: 24, baseType: !46, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !416, file: !417, line: 280, baseType: !526, size: 64, offset: 1664)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !417, line: 176, size: 192, elements: !528)
!528 = !{!529, !538, !539}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !527, file: !417, line: 177, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !417, line: 171, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!29, !415, !534, !536, !415}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !527, file: !417, line: 178, baseType: !415, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !527, file: !417, line: 179, baseType: !483, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !384, file: !385, line: 130, baseType: !415, size: 64, offset: 832)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !384, file: !385, line: 131, baseType: !415, size: 64, offset: 896)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !384, file: !385, line: 132, baseType: !415, size: 64, offset: 960)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !384, file: !385, line: 135, baseType: !27, size: 64, offset: 1024)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !384, file: !385, line: 137, baseType: !545, size: 64, offset: 1088)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !547, line: 14, size: 1088, elements: !548)
!547 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!548 = !{!549, !550, !559, !560, !561, !562, !563, !564}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !546, file: !547, line: 15, baseType: !337, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !546, file: !547, line: 17, baseType: !551, size: 320, offset: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !552, line: 22, size: 320, elements: !553)
!552 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!553 = !{!554, !555, !556, !557}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !551, file: !552, line: 23, baseType: !297, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !551, file: !552, line: 24, baseType: !289, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !551, file: !552, line: 26, baseType: !104, size: 128, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !551, file: !552, line: 28, baseType: !558, size: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !546, file: !547, line: 19, baseType: !46, size: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !546, file: !547, line: 20, baseType: !283, size: 64, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !546, file: !547, line: 23, baseType: !350, size: 128, offset: 512)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !546, file: !547, line: 24, baseType: !372, size: 32, offset: 640)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !546, file: !547, line: 29, baseType: !283, size: 64, offset: 704)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !546, file: !547, line: 36, baseType: !565, size: 320, offset: 768)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !566, line: 15, size: 320, elements: !567)
!566 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!567 = !{!568, !569, !570, !571, !572, !573, !574}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !565, file: !566, line: 16, baseType: !297, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !565, file: !566, line: 18, baseType: !29, size: 32, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !565, file: !566, line: 19, baseType: !29, size: 32, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !565, file: !566, line: 20, baseType: !29, size: 32, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !565, file: !566, line: 21, baseType: !29, size: 32, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !565, file: !566, line: 22, baseType: !46, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !566, line: 23, baseType: !46, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !384, file: !385, line: 138, baseType: !576, size: 64, offset: 1152)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !578, line: 68, size: 4800, elements: !579)
!578 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!579 = !{!580, !602, !603, !604, !605, !606, !607, !608, !619, !620, !621, !622, !623, !624, !636, !706, !707, !721, !724}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !577, file: !578, line: 69, baseType: !581, size: 576)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !578, line: 23, size: 576, elements: !582)
!582 = !{!583, !584}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !581, file: !578, line: 24, baseType: !456, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, scope: !581, file: !578, line: 25, baseType: !585, size: 512, offset: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !581, file: !578, line: 25, size: 512, elements: !586)
!586 = !{!587, !596}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !585, file: !578, line: 26, baseType: !588, size: 480)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 480, elements: !594)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !578, line: 17, size: 96, elements: !590)
!590 = !{!591, !592, !593}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !589, file: !578, line: 18, baseType: !456, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !589, file: !578, line: 19, baseType: !456, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !589, file: !578, line: 20, baseType: !456, size: 32, offset: 64)
!594 = !{!595}
!595 = !DISubrange(count: 5)
!596 = !DIDerivedType(tag: DW_TAG_member, scope: !585, file: !578, line: 27, baseType: !597, size: 128)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !585, file: !578, line: 27, size: 128, elements: !598)
!598 = !{!599, !601}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !597, file: !578, line: 28, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !597, file: !578, line: 29, baseType: !600, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !577, file: !578, line: 70, baseType: !581, size: 576, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !577, file: !578, line: 71, baseType: !581, size: 576, offset: 1152)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !577, file: !578, line: 72, baseType: !576, size: 64, offset: 1728)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !577, file: !578, line: 73, baseType: !29, size: 32, offset: 1792)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !577, file: !578, line: 74, baseType: !372, size: 32, offset: 1824)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !577, file: !578, line: 75, baseType: !390, size: 32, offset: 1856)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !577, file: !578, line: 76, baseType: !609, size: 192, offset: 1920)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !610, line: 9, size: 192, elements: !611)
!610 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!611 = !{!612, !613, !617, !618}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !609, file: !610, line: 10, baseType: !283, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !609, file: !610, line: 11, baseType: !614, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !610, line: 7, flags: DIFlagFwdDecl)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !609, file: !610, line: 12, baseType: !7, size: 32, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !609, file: !610, line: 13, baseType: !337, size: 32, offset: 160)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !578, line: 77, baseType: !46, size: 64, offset: 2112)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !577, file: !578, line: 80, baseType: !492, size: 8, offset: 2176)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !577, file: !578, line: 88, baseType: !104, size: 128, offset: 2240)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !577, file: !578, line: 89, baseType: !415, size: 64, offset: 2368)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !577, file: !578, line: 90, baseType: !431, size: 320, offset: 2432)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !577, file: !578, line: 97, baseType: !625, size: 256, offset: 2752)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !626, line: 98, size: 256, elements: !627)
!626 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!627 = !{!628, !629, !630}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !625, file: !626, line: 99, baseType: !283, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !625, file: !626, line: 100, baseType: !104, size: 128, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !625, file: !626, line: 101, baseType: !631, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !626, line: 21, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !577, file: !578, line: 99, baseType: !637, size: 768, offset: 3008)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !19, line: 199, size: 768, elements: !638)
!638 = !{!639, !644}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !637, file: !19, line: 200, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!29, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !637, file: !19, line: 201, baseType: !645, size: 704, offset: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !19, line: 193, size: 704, elements: !646)
!646 = !{!647, !705}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !645, file: !19, line: 195, baseType: !648, size: 640)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !19, line: 173, size: 640, elements: !649)
!649 = !{!650, !662, !674, !675, !695, !696, !698, !704}
!650 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !19, line: 174, baseType: !651, size: 192)
!651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !19, line: 174, size: 192, elements: !652)
!652 = !{!653, !661}
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !19, line: 175, baseType: !654, size: 192)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !651, file: !19, line: 175, size: 192, elements: !655)
!655 = !{!656, !657, !658, !659, !660}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !654, file: !19, line: 176, baseType: !40, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !654, file: !19, line: 177, baseType: !29, size: 32, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !654, file: !19, line: 178, baseType: !29, size: 32, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !654, file: !19, line: 179, baseType: !29, size: 32, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !654, file: !19, line: 180, baseType: !29, size: 32, offset: 160)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !651, file: !19, line: 182, baseType: !270, size: 128, align: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !648, file: !19, line: 184, baseType: !663, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !665, line: 26, size: 256, elements: !666)
!665 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !664, file: !665, line: 27, baseType: !7, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !664, file: !665, line: 28, baseType: !669, size: 192, offset: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !670, line: 43, size: 192, elements: !671)
!670 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !669, file: !670, line: 44, baseType: !297, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !669, file: !670, line: 45, baseType: !104, size: 128, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !648, file: !19, line: 185, baseType: !40, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !648, file: !19, line: 186, baseType: !676, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !19, line: 204, size: 960, elements: !678)
!678 = !{!679, !680, !684, !691}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !677, file: !19, line: 205, baseType: !637, size: 768)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !677, file: !19, line: 206, baseType: !681, size: 64, offset: 768)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!643, !676}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !677, file: !19, line: 207, baseType: !685, size: 64, offset: 832)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !688, !689, !690}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !677, file: !19, line: 209, baseType: !692, size: 64, offset: 896)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!29, !688, !40}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !648, file: !19, line: 187, baseType: !643, size: 64, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !648, file: !19, line: 188, baseType: !697, size: 64, offset: 448)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !648, file: !19, line: 189, baseType: !699, size: 64, offset: 512)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !19, line: 157, size: 256, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !700, file: !19, line: 158, baseType: !210, size: 192, align: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !700, file: !19, line: 159, baseType: !688, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !648, file: !19, line: 190, baseType: !346, size: 64, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !645, file: !19, line: 196, baseType: !229, size: 64, offset: 640)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !577, file: !578, line: 100, baseType: !688, size: 64, offset: 3776)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !577, file: !578, line: 102, baseType: !708, size: 64, offset: 3840)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !578, line: 107, size: 1152, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !719}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !578, line: 108, baseType: !350, size: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !709, file: !578, line: 109, baseType: !576, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !709, file: !578, line: 110, baseType: !372, size: 32, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !709, file: !578, line: 111, baseType: !56, size: 32, offset: 224)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !709, file: !578, line: 112, baseType: !716, size: 640, offset: 256)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 640, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 10)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !709, file: !578, line: 113, baseType: !720, size: 256, offset: 896)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 256, elements: !355)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !577, file: !578, line: 103, baseType: !722, size: 640, offset: 3904)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 640, elements: !717)
!723 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !577, file: !578, line: 104, baseType: !725, size: 256, offset: 4544)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 256, elements: !355)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !384, file: !385, line: 139, baseType: !708, size: 64, offset: 1216)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !384, file: !385, line: 140, baseType: !728, size: 64, offset: 1280)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !385, line: 25, size: 64, elements: !730)
!730 = !{!731, !732, !733}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !729, file: !385, line: 26, baseType: !56, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !729, file: !385, line: 27, baseType: !29, size: 32, offset: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !729, file: !385, line: 28, baseType: !734, offset: 64)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, elements: !368)
!735 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !385, line: 142, baseType: !736, size: 128, offset: 1344)
!736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !385, line: 142, size: 128, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !736, file: !385, line: 143, baseType: !29, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !736, file: !385, line: 144, baseType: !270, size: 128, align: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !258, file: !115, line: 1013, baseType: !741, size: 256, offset: 960)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !115, line: 970, size: 256, elements: !742)
!742 = !{!743, !744, !745, !746, !747, !748}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !741, file: !115, line: 971, baseType: !46, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !741, file: !115, line: 972, baseType: !7, size: 32, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !741, file: !115, line: 973, baseType: !7, size: 32, offset: 96)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !741, file: !115, line: 974, baseType: !7, size: 32, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !741, file: !115, line: 975, baseType: !7, size: 32, offset: 160)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !741, file: !115, line: 976, baseType: !48, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !258, file: !115, line: 1014, baseType: !750, size: 128, offset: 1216)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !751, line: 8, size: 128, elements: !752)
!751 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!752 = !{!753, !3575}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !750, file: !751, line: 9, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !756, line: 70, size: 256, elements: !757)
!756 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!757 = !{!758, !3572, !3573, !3574}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !755, file: !756, line: 71, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !761, line: 82, size: 1536, elements: !762)
!761 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!762 = !{!763, !764, !774, !782, !783, !798, !3539, !3541, !3554, !3555, !3556, !3557, !3558, !3564, !3565, !3566}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !760, file: !761, line: 84, baseType: !7, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !760, file: !761, line: 85, baseType: !765, size: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !766, line: 275, baseType: !767)
!766 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !766, line: 275, size: 32, elements: !768)
!768 = !{!769}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !767, file: !766, line: 275, baseType: !770, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !766, line: 69, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !766, line: 64, size: 32, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !771, file: !766, line: 65, baseType: !7, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !760, file: !761, line: 86, baseType: !775, size: 128, offset: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !776, line: 38, size: 128, elements: !777)
!776 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!777 = !{!778, !780}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !775, file: !776, line: 39, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !775, file: !776, line: 39, baseType: !781, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !760, file: !761, line: 87, baseType: !759, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !760, file: !761, line: 88, baseType: !784, size: 128, offset: 256)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !761, line: 49, size: 128, elements: !785)
!785 = !{!786, !795}
!786 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !761, line: 50, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !784, file: !761, line: 50, size: 64, elements: !788)
!788 = !{!789, !794}
!789 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !761, line: 51, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !761, line: 51, size: 64, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !790, file: !761, line: 52, baseType: !456, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !790, file: !761, line: 52, baseType: !456, size: 32, offset: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !787, file: !761, line: 54, baseType: !168, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !784, file: !761, line: 56, baseType: !796, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !760, file: !761, line: 89, baseType: !799, size: 64, offset: 384)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !115, line: 641, size: 4800, elements: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !811, !812, !1006, !3298, !3299, !3300, !3301, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3521, !3524, !3525, !3526, !3535, !3536, !3537, !3538}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !800, file: !115, line: 642, baseType: !31, size: 16)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !800, file: !115, line: 643, baseType: !33, size: 16, offset: 16)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !800, file: !115, line: 644, baseType: !372, size: 32, offset: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !800, file: !115, line: 645, baseType: !104, size: 128, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !800, file: !115, line: 646, baseType: !390, size: 32, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !800, file: !115, line: 647, baseType: !7, size: 32, offset: 224)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !800, file: !115, line: 650, baseType: !809, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !115, line: 607, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !800, file: !115, line: 651, baseType: !809, size: 64, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !800, file: !115, line: 654, baseType: !813, size: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !115, line: 1966, size: 2048, align: 512, elements: !816)
!816 = !{!817, !821, !834, !840, !844, !848, !852, !856, !860, !864, !868, !869, !875, !879, !916, !947, !954, !960, !964, !968, !972, !976, !980, !986, !990}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !815, file: !115, line: 1967, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!759, !799, !759, !7}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !815, file: !115, line: 1968, baseType: !822, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!23, !759, !799, !825}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !827, line: 10, size: 128, elements: !828)
!827 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!828 = !{!829, !833}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !826, file: !827, line: 11, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !27}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !826, file: !827, line: 12, baseType: !27, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !815, file: !115, line: 1969, baseType: !835, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!29, !838, !799, !29}
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !405, line: 42, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !815, file: !115, line: 1970, baseType: !841, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!809, !799, !29, !492}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !815, file: !115, line: 1972, baseType: !845, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!29, !759, !503, !29}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !815, file: !115, line: 1974, baseType: !849, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!29, !838, !799, !759, !31, !492}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !815, file: !115, line: 1976, baseType: !853, size: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!29, !759, !799, !759}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !815, file: !115, line: 1977, baseType: !857, size: 64, offset: 448)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!29, !799, !759}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !815, file: !115, line: 1978, baseType: !861, size: 64, offset: 512)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!29, !838, !799, !759, !23}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !815, file: !115, line: 1980, baseType: !865, size: 64, offset: 576)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!29, !838, !799, !759, !31}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !815, file: !115, line: 1982, baseType: !857, size: 64, offset: 640)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !815, file: !115, line: 1983, baseType: !870, size: 64, offset: 704)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!29, !838, !799, !759, !31, !873}
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !32, line: 21, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !32, line: 18, baseType: !456)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !815, file: !115, line: 1985, baseType: !876, size: 64, offset: 768)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!29, !838, !799, !759, !799, !759, !7}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !815, file: !115, line: 1987, baseType: !880, size: 64, offset: 832)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!29, !838, !759, !883}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !115, line: 226, size: 640, elements: !885)
!885 = !{!886, !887, !888, !898, !907, !908, !913, !914, !915}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !884, file: !115, line: 227, baseType: !7, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !884, file: !115, line: 228, baseType: !31, size: 16, offset: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !115, line: 241, baseType: !889, size: 32, offset: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !884, file: !115, line: 241, size: 32, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !889, file: !115, line: 242, baseType: !372, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !889, file: !115, line: 243, baseType: !893, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !894, line: 16, baseType: !895)
!894 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !894, line: 14, size: 32, elements: !896)
!896 = !{!897}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !895, file: !894, line: 15, baseType: !377, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !115, line: 245, baseType: !899, size: 32, offset: 96)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !884, file: !115, line: 245, size: 32, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !899, file: !115, line: 246, baseType: !390, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !899, file: !115, line: 247, baseType: !903, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !894, line: 20, baseType: !904)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !894, line: 18, size: 32, elements: !905)
!905 = !{!906}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !904, file: !894, line: 19, baseType: !394, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !884, file: !115, line: 249, baseType: !48, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !884, file: !115, line: 250, baseType: !909, size: 128, offset: 192)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !448, line: 13, size: 128, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !909, file: !448, line: 14, baseType: !447, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !909, file: !448, line: 15, baseType: !723, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !884, file: !115, line: 251, baseType: !909, size: 128, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !884, file: !115, line: 252, baseType: !909, size: 128, offset: 448)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !884, file: !115, line: 259, baseType: !257, size: 64, offset: 576)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !815, file: !115, line: 1988, baseType: !917, size: 64, offset: 896)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!29, !838, !920, !922, !456, !7}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !750)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !924, line: 22, size: 1280, elements: !925)
!924 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!925 = !{!926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !923, file: !924, line: 23, baseType: !456, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !923, file: !924, line: 24, baseType: !31, size: 16, offset: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !923, file: !924, line: 25, baseType: !7, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !923, file: !924, line: 26, baseType: !455, size: 32, offset: 96)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !923, file: !924, line: 27, baseType: !168, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !923, file: !924, line: 28, baseType: !168, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !923, file: !924, line: 41, baseType: !168, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !923, file: !924, line: 42, baseType: !873, size: 32, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !923, file: !924, line: 43, baseType: !873, size: 32, offset: 352)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !923, file: !924, line: 44, baseType: !372, size: 32, offset: 384)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !923, file: !924, line: 45, baseType: !390, size: 32, offset: 416)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !923, file: !924, line: 46, baseType: !48, size: 64, offset: 448)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !923, file: !924, line: 47, baseType: !909, size: 128, offset: 512)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !923, file: !924, line: 48, baseType: !909, size: 128, offset: 640)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !923, file: !924, line: 49, baseType: !909, size: 128, offset: 768)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !923, file: !924, line: 50, baseType: !909, size: 128, offset: 896)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !923, file: !924, line: 51, baseType: !168, size: 64, offset: 1024)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !923, file: !924, line: 52, baseType: !168, size: 64, offset: 1088)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !923, file: !924, line: 53, baseType: !456, size: 32, offset: 1152)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !923, file: !924, line: 54, baseType: !456, size: 32, offset: 1184)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !923, file: !924, line: 55, baseType: !168, size: 64, offset: 1216)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !815, file: !115, line: 1990, baseType: !948, size: 64, offset: 960)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!951, !759, !503, !42}
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !32, line: 66, baseType: !952)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !44, line: 73, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !44, line: 15, baseType: !723)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !815, file: !115, line: 1991, baseType: !955, size: 64, offset: 1024)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!29, !799, !958, !168, !168}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !115, line: 55, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !815, file: !115, line: 1993, baseType: !961, size: 64, offset: 1088)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!29, !799, !29}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !815, file: !115, line: 1994, baseType: !965, size: 64, offset: 1152)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!29, !799, !759, !257, !7, !31}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !815, file: !115, line: 1997, baseType: !969, size: 64, offset: 1216)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!29, !838, !799, !257, !31}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !815, file: !115, line: 1999, baseType: !973, size: 64, offset: 1280)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!809, !838, !759, !29}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !815, file: !115, line: 2001, baseType: !977, size: 64, offset: 1344)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!29, !838, !759, !809, !29}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !815, file: !115, line: 2003, baseType: !981, size: 64, offset: 1408)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!29, !838, !759, !984}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !115, line: 76, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !815, file: !115, line: 2005, baseType: !987, size: 64, offset: 1472)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!29, !759, !984}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !815, file: !115, line: 2006, baseType: !991, size: 64, offset: 1536)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!994, !799}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !115, line: 3192, size: 192, elements: !996)
!996 = !{!997, !1005}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !995, file: !115, line: 3193, baseType: !998, size: 128)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !999, line: 296, size: 128, elements: !1000)
!999 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1000 = !{!1001, !1002, !1004}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !998, file: !999, line: 297, baseType: !66, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !998, file: !999, line: 299, baseType: !1003, size: 32, offset: 32)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !32, line: 154, baseType: !7)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !998, file: !999, line: 300, baseType: !27, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !995, file: !115, line: 3194, baseType: !456, size: 32, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !800, file: !115, line: 655, baseType: !1007, size: 64, offset: 448)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !115, line: 1190, size: 10752, elements: !1009)
!1009 = !{!1010, !1011, !1012, !1013, !1014, !1015, !1057, !1230, !1270, !1353, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1370, !1374, !1375, !1378, !1381, !1384, !1387, !1388, !1389, !1430, !3172, !3173, !3174, !3175, !3176, !3177, !3180, !3181, !3188, !3189, !3190, !3191, !3250, !3265, !3266, !3267, !3268, !3269, !3272, !3273, !3274, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1008, file: !115, line: 1191, baseType: !104, size: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1008, file: !115, line: 1192, baseType: !873, size: 32, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1008, file: !115, line: 1193, baseType: !94, size: 8, offset: 160)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1008, file: !115, line: 1194, baseType: !46, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1008, file: !115, line: 1195, baseType: !48, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1008, file: !115, line: 1196, baseType: !1016, size: 64, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !115, line: 2366, size: 576, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1027, !1031, !1035, !1039, !1043, !1044, !1045, !1049, !1050, !1051, !1053, !1054, !1055, !1056}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1017, file: !115, line: 2367, baseType: !23, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1017, file: !115, line: 2368, baseType: !29, size: 32, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1017, file: !115, line: 2376, baseType: !1022, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!29, !1025}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !756, line: 21, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1017, file: !115, line: 2377, baseType: !1028, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1030)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !115, line: 75, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1017, file: !115, line: 2378, baseType: !1032, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!759, !1016, !29, !23, !27}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1017, file: !115, line: 2380, baseType: !1036, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !1007}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1017, file: !115, line: 2381, baseType: !1040, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1042, line: 103, flags: DIFlagFwdDecl)
!1042 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1017, file: !115, line: 2382, baseType: !1016, size: 64, offset: 448)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1017, file: !115, line: 2383, baseType: !346, size: 64, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1017, file: !115, line: 2385, baseType: !1046, offset: 576)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1047, line: 206, elements: !1048)
!1047 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1048 = !{}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1017, file: !115, line: 2386, baseType: !1046, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1017, file: !115, line: 2387, baseType: !1046, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1017, file: !115, line: 2388, baseType: !1052, offset: 576)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1046, elements: !329)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1017, file: !115, line: 2390, baseType: !1046, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1017, file: !115, line: 2391, baseType: !1046, offset: 576)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1017, file: !115, line: 2392, baseType: !1046, offset: 576)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1017, file: !115, line: 2393, baseType: !1046, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1008, file: !115, line: 1197, baseType: !1058, size: 64, offset: 384)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !115, line: 2057, size: 1664, elements: !1061)
!1061 = !{!1062, !1066, !1070, !1071, !1075, !1081, !1085, !1086, !1087, !1091, !1095, !1099, !1100, !1101, !1107, !1112, !1113, !1155, !1156, !1157, !1158, !1162, !1166, !1213, !1228, !1229}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1060, file: !115, line: 2058, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!799, !1007}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1060, file: !115, line: 2059, baseType: !1067, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !799}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1060, file: !115, line: 2060, baseType: !1067, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1060, file: !115, line: 2062, baseType: !1072, size: 64, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !799, !29}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1060, file: !115, line: 2063, baseType: !1076, size: 64, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!29, !799, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !115, line: 309, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1060, file: !115, line: 2064, baseType: !1082, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!29, !799}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1060, file: !115, line: 2065, baseType: !1067, size: 64, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1060, file: !115, line: 2066, baseType: !1036, size: 64, offset: 448)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1060, file: !115, line: 2067, baseType: !1088, size: 64, offset: 512)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!29, !1007, !29}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1060, file: !115, line: 2068, baseType: !1092, size: 64, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!29, !1007, !114}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1060, file: !115, line: 2069, baseType: !1096, size: 64, offset: 640)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!29, !1007}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1060, file: !115, line: 2070, baseType: !1092, size: 64, offset: 704)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1060, file: !115, line: 2071, baseType: !1096, size: 64, offset: 768)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1060, file: !115, line: 2072, baseType: !1102, size: 64, offset: 832)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!29, !759, !1105}
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !115, line: 62, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1060, file: !115, line: 2073, baseType: !1108, size: 64, offset: 896)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!29, !1007, !1111, !503}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1060, file: !115, line: 2074, baseType: !1036, size: 64, offset: 960)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1060, file: !115, line: 2076, baseType: !1114, size: 64, offset: 1024)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!29, !1117, !759}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1119, line: 17, size: 960, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1150, !1151, !1154}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1118, file: !1119, line: 18, baseType: !503, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1118, file: !1119, line: 19, baseType: !42, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1118, file: !1119, line: 20, baseType: !42, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1118, file: !1119, line: 21, baseType: !42, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1118, file: !1119, line: 22, baseType: !42, size: 64, offset: 256)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1118, file: !1119, line: 23, baseType: !48, size: 64, offset: 320)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1118, file: !1119, line: 24, baseType: !48, size: 64, offset: 384)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1118, file: !1119, line: 25, baseType: !292, size: 256, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1118, file: !1119, line: 26, baseType: !1130, size: 64, offset: 704)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1132)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1119, line: 32, size: 256, elements: !1133)
!1133 = !{!1134, !1138, !1142, !1146}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1132, file: !1119, line: 33, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!27, !1117, !47}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1132, file: !1119, line: 34, baseType: !1139, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !1117, !27}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1132, file: !1119, line: 35, baseType: !1143, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!27, !1117, !27, !47}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1132, file: !1119, line: 36, baseType: !1147, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!29, !1117, !27}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1118, file: !1119, line: 27, baseType: !29, size: 32, offset: 768)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1118, file: !1119, line: 28, baseType: !1152, size: 64, offset: 832)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1118, file: !1119, line: 29, baseType: !27, size: 64, offset: 896)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1060, file: !115, line: 2077, baseType: !1114, size: 64, offset: 1088)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1060, file: !115, line: 2078, baseType: !1114, size: 64, offset: 1152)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1060, file: !115, line: 2079, baseType: !1114, size: 64, offset: 1216)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1060, file: !115, line: 2081, baseType: !1159, size: 64, offset: 1280)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!951, !1007, !29, !503, !42, !48}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1060, file: !115, line: 2082, baseType: !1163, size: 64, offset: 1344)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!951, !1007, !29, !23, !42, !48}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1060, file: !115, line: 2083, baseType: !1167, size: 64, offset: 1408)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!1170, !799}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !120, line: 296, size: 1664, elements: !1173)
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1198, !1199, !1200}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1172, file: !120, line: 297, baseType: !350, size: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1172, file: !120, line: 298, baseType: !104, size: 128, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1172, file: !120, line: 299, baseType: !104, size: 128, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1172, file: !120, line: 300, baseType: !104, size: 128, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1172, file: !120, line: 301, baseType: !292, size: 256, offset: 512)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1172, file: !120, line: 302, baseType: !66, size: 32, offset: 768)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1172, file: !120, line: 303, baseType: !56, size: 32, offset: 800)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1172, file: !120, line: 304, baseType: !1007, size: 64, offset: 832)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1172, file: !120, line: 305, baseType: !1183, size: 64, offset: 896)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !120, line: 68, size: 64, elements: !1184)
!1184 = !{!1185, !1197}
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !1183, file: !120, line: 69, baseType: !1186, size: 32)
!1186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1183, file: !120, line: 69, size: 32, elements: !1187)
!1187 = !{!1188, !1189, !1190}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1186, file: !120, line: 70, baseType: !372, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1186, file: !120, line: 71, baseType: !390, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1186, file: !120, line: 72, baseType: !1191, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1192, line: 24, baseType: !1193)
!1192 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1192, line: 22, size: 32, elements: !1194)
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1193, file: !1192, line: 23, baseType: !1196, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1192, line: 20, baseType: !378)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1183, file: !120, line: 74, baseType: !119, size: 32, offset: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1172, file: !120, line: 306, baseType: !48, size: 64, offset: 960)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1172, file: !120, line: 307, baseType: !46, size: 64, offset: 1024)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1172, file: !120, line: 308, baseType: !1201, size: 576, offset: 1088)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !120, line: 205, size: 576, elements: !1202)
!1202 = !{!1203, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1201, file: !120, line: 206, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !120, line: 66, baseType: !50)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1201, file: !120, line: 207, baseType: !1204, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1201, file: !120, line: 208, baseType: !1204, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1201, file: !120, line: 209, baseType: !1204, size: 64, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1201, file: !120, line: 210, baseType: !1204, size: 64, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1201, file: !120, line: 211, baseType: !1204, size: 64, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1201, file: !120, line: 212, baseType: !1204, size: 64, offset: 384)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1201, file: !120, line: 213, baseType: !447, size: 64, offset: 448)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1201, file: !120, line: 214, baseType: !447, size: 64, offset: 512)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1060, file: !115, line: 2085, baseType: !1214, size: 64, offset: 1472)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!723, !1007, !1217}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1219, line: 15, size: 256, elements: !1220)
!1219 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1220 = !{!1221, !1222, !1223, !1224, !1225}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1218, file: !1219, line: 16, baseType: !1003, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1218, file: !1219, line: 19, baseType: !29, size: 32, offset: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1218, file: !1219, line: 26, baseType: !46, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1218, file: !1219, line: 33, baseType: !46, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1218, file: !1219, line: 36, baseType: !1226, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1219, line: 36, flags: DIFlagFwdDecl)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1060, file: !115, line: 2087, baseType: !1214, size: 64, offset: 1536)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1060, file: !115, line: 2089, baseType: !1036, size: 64, offset: 1600)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1008, file: !115, line: 1198, baseType: !1231, size: 64, offset: 448)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1233)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !120, line: 324, size: 704, elements: !1234)
!1234 = !{!1235, !1239, !1243, !1247, !1248, !1249, !1250, !1251, !1256, !1261, !1265}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1233, file: !120, line: 325, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!29, !1171}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1233, file: !120, line: 326, baseType: !1240, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!1171, !1007, !29}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1233, file: !120, line: 327, baseType: !1244, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !1171}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1233, file: !120, line: 328, baseType: !1236, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1233, file: !120, line: 329, baseType: !1236, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1233, file: !120, line: 330, baseType: !1236, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1233, file: !120, line: 331, baseType: !1088, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1233, file: !120, line: 334, baseType: !1252, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!1255, !799}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1233, file: !120, line: 335, baseType: !1257, size: 64, offset: 512)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!29, !799, !1260}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1233, file: !120, line: 337, baseType: !1262, size: 64, offset: 576)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!29, !799, !1255}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1233, file: !120, line: 339, baseType: !1266, size: 64, offset: 640)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!29, !1007, !1269}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1008, file: !115, line: 1199, baseType: !1271, size: 64, offset: 512)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !120, line: 430, size: 704, elements: !1274)
!1274 = !{!1275, !1279, !1280, !1284, !1285, !1286, !1301, !1324, !1328, !1329, !1352}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1273, file: !120, line: 431, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!29, !1007, !29, !29, !920}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1273, file: !120, line: 432, baseType: !1088, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1273, file: !120, line: 433, baseType: !1281, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!29, !1007, !7}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1273, file: !120, line: 434, baseType: !1281, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1273, file: !120, line: 435, baseType: !1088, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1273, file: !120, line: 436, baseType: !1287, size: 64, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!29, !1007, !29, !1290}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !120, line: 417, size: 256, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1291, file: !120, line: 418, baseType: !29, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1291, file: !120, line: 419, baseType: !7, size: 32, offset: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1291, file: !120, line: 420, baseType: !7, size: 32, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1291, file: !120, line: 422, baseType: !7, size: 32, offset: 96)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1291, file: !120, line: 423, baseType: !7, size: 32, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1291, file: !120, line: 424, baseType: !7, size: 32, offset: 160)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1291, file: !120, line: 425, baseType: !7, size: 32, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1291, file: !120, line: 426, baseType: !7, size: 32, offset: 224)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1273, file: !120, line: 437, baseType: !1302, size: 64, offset: 384)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!29, !1007, !1183, !1305}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !120, line: 345, size: 960, elements: !1307)
!1307 = !{!1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1306, file: !120, line: 346, baseType: !29, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1306, file: !120, line: 347, baseType: !168, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1306, file: !120, line: 348, baseType: !168, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1306, file: !120, line: 349, baseType: !168, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1306, file: !120, line: 350, baseType: !168, size: 64, offset: 256)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1306, file: !120, line: 351, baseType: !168, size: 64, offset: 320)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1306, file: !120, line: 352, baseType: !168, size: 64, offset: 384)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1306, file: !120, line: 353, baseType: !289, size: 64, offset: 448)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1306, file: !120, line: 355, baseType: !289, size: 64, offset: 512)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1306, file: !120, line: 356, baseType: !29, size: 32, offset: 576)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1306, file: !120, line: 357, baseType: !29, size: 32, offset: 608)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1306, file: !120, line: 358, baseType: !168, size: 64, offset: 640)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1306, file: !120, line: 359, baseType: !168, size: 64, offset: 704)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1306, file: !120, line: 360, baseType: !168, size: 64, offset: 768)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1306, file: !120, line: 361, baseType: !289, size: 64, offset: 832)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1306, file: !120, line: 362, baseType: !29, size: 32, offset: 896)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1273, file: !120, line: 438, baseType: !1325, size: 64, offset: 448)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!29, !1007, !1269, !1305}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1273, file: !120, line: 440, baseType: !1302, size: 64, offset: 512)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1273, file: !120, line: 441, baseType: !1330, size: 64, offset: 576)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!29, !1007, !1333}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !120, line: 411, size: 1408, elements: !1335)
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1334, file: !120, line: 412, baseType: !7, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1334, file: !120, line: 413, baseType: !1338, size: 1344, offset: 64)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1339, size: 1344, elements: !329)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !120, line: 397, size: 448, elements: !1340)
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1351}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1339, file: !120, line: 398, baseType: !7, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1339, file: !120, line: 399, baseType: !7, size: 32, offset: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1339, file: !120, line: 401, baseType: !7, size: 32, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1339, file: !120, line: 402, baseType: !7, size: 32, offset: 96)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1339, file: !120, line: 403, baseType: !7, size: 32, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1339, file: !120, line: 404, baseType: !7, size: 32, offset: 160)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1339, file: !120, line: 405, baseType: !7, size: 32, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1339, file: !120, line: 406, baseType: !170, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1339, file: !120, line: 407, baseType: !1350, size: 64, offset: 320)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !32, line: 132, baseType: !168)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1339, file: !120, line: 408, baseType: !1350, size: 64, offset: 384)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1273, file: !120, line: 442, baseType: !1281, size: 64, offset: 640)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1008, file: !115, line: 1200, baseType: !1354, size: 64, offset: 576)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !115, line: 54, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1008, file: !115, line: 1201, baseType: !46, size: 64, offset: 640)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1008, file: !115, line: 1202, baseType: !46, size: 64, offset: 704)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1008, file: !115, line: 1203, baseType: !46, size: 64, offset: 768)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1008, file: !115, line: 1204, baseType: !759, size: 64, offset: 832)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1008, file: !115, line: 1205, baseType: !431, size: 320, offset: 896)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1008, file: !115, line: 1206, baseType: !29, size: 32, offset: 1216)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1008, file: !115, line: 1207, baseType: !56, size: 32, offset: 1248)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1008, file: !115, line: 1209, baseType: !27, size: 64, offset: 1280)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1008, file: !115, line: 1211, baseType: !1366, size: 64, offset: 1344)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1369)
!1369 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !115, line: 1211, flags: DIFlagFwdDecl)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1008, file: !115, line: 1223, baseType: !1371, size: 64, offset: 1408)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !776, line: 34, size: 64, elements: !1372)
!1372 = !{!1373}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1371, file: !776, line: 35, baseType: !779, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1008, file: !115, line: 1224, baseType: !104, size: 128, offset: 1472)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1008, file: !115, line: 1225, baseType: !1376, size: 64, offset: 1600)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !115, line: 1225, flags: DIFlagFwdDecl)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1008, file: !115, line: 1226, baseType: !1379, size: 64, offset: 1664)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !115, line: 1226, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1008, file: !115, line: 1227, baseType: !1382, size: 64, offset: 1728)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !115, line: 50, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1008, file: !115, line: 1228, baseType: !1385, size: 64, offset: 1792)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !115, line: 1228, flags: DIFlagFwdDecl)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1008, file: !115, line: 1229, baseType: !350, size: 128, offset: 1856)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1008, file: !115, line: 1230, baseType: !7, size: 32, offset: 1984)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1008, file: !115, line: 1231, baseType: !1390, size: 2496, offset: 2048)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !120, line: 521, size: 2496, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1396, !1428}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1390, file: !120, line: 522, baseType: !7, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1390, file: !120, line: 523, baseType: !431, size: 320, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1390, file: !120, line: 524, baseType: !1395, size: 192, offset: 384)
!1395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !799, size: 192, elements: !329)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1390, file: !120, line: 525, baseType: !1397, size: 1728, offset: 576)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1398, size: 1728, elements: !329)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !120, line: 222, size: 576, elements: !1399)
!1399 = !{!1400, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1398, file: !120, line: 223, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !120, line: 445, size: 256, elements: !1403)
!1403 = !{!1404, !1405, !1418, !1419}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1402, file: !120, line: 446, baseType: !29, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1402, file: !120, line: 447, baseType: !1406, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !120, line: 312, size: 512, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1408, file: !120, line: 313, baseType: !1088, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1408, file: !120, line: 314, baseType: !1088, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1408, file: !120, line: 315, baseType: !1088, size: 64, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1408, file: !120, line: 316, baseType: !1088, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1408, file: !120, line: 317, baseType: !1236, size: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1408, file: !120, line: 318, baseType: !1236, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1408, file: !120, line: 319, baseType: !1236, size: 64, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1408, file: !120, line: 320, baseType: !1266, size: 64, offset: 448)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1402, file: !120, line: 448, baseType: !1040, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1402, file: !120, line: 449, baseType: !1401, size: 64, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1398, file: !120, line: 224, baseType: !29, size: 32, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1398, file: !120, line: 226, baseType: !104, size: 128, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1398, file: !120, line: 227, baseType: !46, size: 64, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1398, file: !120, line: 228, baseType: !7, size: 32, offset: 320)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1398, file: !120, line: 229, baseType: !7, size: 32, offset: 352)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1398, file: !120, line: 230, baseType: !1204, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1398, file: !120, line: 231, baseType: !1204, size: 64, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1398, file: !120, line: 232, baseType: !27, size: 64, offset: 512)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1390, file: !120, line: 526, baseType: !1429, size: 192, offset: 2304)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1406, size: 192, elements: !329)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1008, file: !115, line: 1233, baseType: !1431, size: 2368, offset: 4544)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !115, line: 1184, size: 2368, elements: !1432)
!1432 = !{!1433, !1434, !1435}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1431, file: !115, line: 1185, baseType: !33, size: 16)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1431, file: !115, line: 1186, baseType: !33, size: 16, offset: 16)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1431, file: !115, line: 1187, baseType: !1436, size: 2304, offset: 64)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1437, size: 2304, elements: !329)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1438, line: 12, size: 768, elements: !1439)
!1438 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1439 = !{!1440, !1448, !1450, !3170, !3171}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1437, file: !1438, line: 13, baseType: !1441, size: 384)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1442, line: 17, size: 384, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1443 = !{!1444, !1445, !1446, !1447}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1441, file: !1442, line: 18, baseType: !29, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1441, file: !1442, line: 19, baseType: !29, size: 32, offset: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1441, file: !1442, line: 20, baseType: !61, size: 192, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1441, file: !1442, line: 22, baseType: !270, size: 128, align: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1437, file: !1438, line: 14, baseType: !1449, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1437, file: !1438, line: 15, baseType: !1451, size: 64, offset: 448)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1452, line: 16, size: 64, elements: !1453)
!1452 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1453 = !{!1454}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1451, file: !1452, line: 17, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1457, line: 746, size: 58368, elements: !1458)
!1457 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1458 = !{!1459, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1539, !1550, !1642, !1646, !1649, !1680, !1681, !1682, !1683, !1694, !1696, !1697, !1698, !1699, !1700, !1701, !1712, !1713, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1730, !1731, !1738, !1739, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1953, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !2001, !2007, !2008, !2009, !2010, !2011, !2015, !2018, !2025, !2030, !2033, !2036, !2039, !2101, !2304, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2346, !2347, !2348, !2357, !2365, !2366, !2367, !2368, !2369, !2374, !2375, !2376, !2379, !2380, !2383, !2386, !2389, !2397, !2400, !2401, !2487, !2488, !2489, !2490, !2491, !2497, !2498, !2499, !2500, !2501, !2502, !2505, !2508, !2509, !2512, !2513, !2514, !2517, !2518, !2519, !2522, !2523, !2524, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2556, !2559, !2828, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2840, !2912, !2914, !2915, !2916, !2917, !2918, !2930, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2947, !2948, !2949}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1456, file: !1457, line: 752, baseType: !1460, size: 192)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1461, line: 56, size: 192, elements: !1462)
!1461 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1462 = !{!1463, !1464, !1465, !1466}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1460, file: !1461, line: 57, baseType: !46, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1460, file: !1461, line: 58, baseType: !46, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1460, file: !1461, line: 59, baseType: !456, size: 32, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1460, file: !1461, line: 61, baseType: !456, size: 32, offset: 160)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1456, file: !1457, line: 754, baseType: !7, size: 32, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1456, file: !1457, line: 767, baseType: !27, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1456, file: !1457, line: 768, baseType: !337, size: 32, offset: 320)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1456, file: !1457, line: 770, baseType: !7, size: 32, offset: 352)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1456, file: !1457, line: 771, baseType: !7, size: 32, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1456, file: !1457, line: 774, baseType: !29, size: 32, offset: 416)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1456, file: !1457, line: 775, baseType: !1474, size: 128, offset: 448)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1475, line: 58, size: 128, elements: !1476)
!1475 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1476 = !{!1477, !1478, !1483, !1484}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1474, file: !1475, line: 59, baseType: !264, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !1475, line: 60, baseType: !1479, size: 32, offset: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1474, file: !1475, line: 60, size: 32, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1479, file: !1475, line: 61, baseType: !7, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1479, file: !1475, line: 62, baseType: !56, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1474, file: !1475, line: 65, baseType: !100, size: 16, offset: 96)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1474, file: !1475, line: 65, baseType: !100, size: 16, offset: 112)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1456, file: !1457, line: 776, baseType: !7, size: 32, offset: 576)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1456, file: !1457, line: 777, baseType: !46, size: 64, offset: 640)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1456, file: !1457, line: 778, baseType: !1455, size: 64, offset: 704)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1456, file: !1457, line: 787, baseType: !29, size: 32, offset: 768)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1456, file: !1457, line: 788, baseType: !29, size: 32, offset: 800)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1456, file: !1457, line: 790, baseType: !29, size: 32, offset: 832)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1456, file: !1457, line: 792, baseType: !29, size: 32, offset: 864)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1456, file: !1457, line: 793, baseType: !29, size: 32, offset: 896)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1456, file: !1457, line: 794, baseType: !29, size: 32, offset: 928)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1456, file: !1457, line: 795, baseType: !7, size: 32, offset: 960)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1456, file: !1457, line: 797, baseType: !1496, size: 2048, offset: 1024)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1457, line: 551, size: 2048, elements: !1497)
!1497 = !{!1498, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1518, !1521, !1522, !1523}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1496, file: !1457, line: 553, baseType: !1499, size: 128)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1457, line: 411, size: 128, elements: !1500)
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1499, file: !1457, line: 412, baseType: !46, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1499, file: !1457, line: 413, baseType: !456, size: 32, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1496, file: !1457, line: 554, baseType: !210, size: 192, align: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1496, file: !1457, line: 555, baseType: !168, size: 64, offset: 320)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1496, file: !1457, line: 556, baseType: !168, size: 64, offset: 384)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1496, file: !1457, line: 558, baseType: !104, size: 128, offset: 448)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1496, file: !1457, line: 559, baseType: !7, size: 32, offset: 576)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1496, file: !1457, line: 561, baseType: !168, size: 64, offset: 640)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1496, file: !1457, line: 562, baseType: !168, size: 64, offset: 704)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1496, file: !1457, line: 563, baseType: !168, size: 64, offset: 768)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1496, file: !1457, line: 564, baseType: !168, size: 64, offset: 832)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1496, file: !1457, line: 565, baseType: !289, size: 64, offset: 896)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1496, file: !1457, line: 566, baseType: !168, size: 64, offset: 960)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1496, file: !1457, line: 568, baseType: !168, size: 64, offset: 1024)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1496, file: !1457, line: 571, baseType: !29, size: 32, offset: 1088)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1496, file: !1457, line: 572, baseType: !1517, size: 64, offset: 1152)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1496, file: !1457, line: 574, baseType: !1519, size: 64, offset: 1216)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1457, line: 49, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1496, file: !1457, line: 576, baseType: !1519, size: 64, offset: 1280)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1496, file: !1457, line: 578, baseType: !46, size: 64, offset: 1344)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1496, file: !1457, line: 588, baseType: !1524, size: 512, align: 512, offset: 1536)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1457, line: 497, size: 512, align: 512, elements: !1525)
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1524, file: !1457, line: 498, baseType: !168, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1524, file: !1457, line: 499, baseType: !168, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1524, file: !1457, line: 500, baseType: !168, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1524, file: !1457, line: 501, baseType: !456, size: 32, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1524, file: !1457, line: 502, baseType: !456, size: 32, offset: 224)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1524, file: !1457, line: 503, baseType: !46, size: 64, offset: 256)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1524, file: !1457, line: 504, baseType: !46, size: 64, offset: 320)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1524, file: !1457, line: 505, baseType: !46, size: 64, offset: 384)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1524, file: !1457, line: 506, baseType: !1535, size: 64, align: 64, offset: 448)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1457, line: 445, size: 64, align: 64, elements: !1536)
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1535, file: !1457, line: 446, baseType: !7, size: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1535, file: !1457, line: 447, baseType: !7, size: 32, offset: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1456, file: !1457, line: 798, baseType: !1540, size: 384, offset: 3072)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1457, line: 592, size: 384, elements: !1541)
!1541 = !{!1542, !1543, !1544, !1545, !1546, !1547, !1548}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1540, file: !1457, line: 593, baseType: !104, size: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1540, file: !1457, line: 594, baseType: !46, size: 64, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1540, file: !1457, line: 595, baseType: !46, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1540, file: !1457, line: 596, baseType: !7, size: 32, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1540, file: !1457, line: 597, baseType: !33, size: 16, offset: 288)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1540, file: !1457, line: 598, baseType: !33, size: 16, offset: 304)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1540, file: !1457, line: 600, baseType: !1549, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1456, file: !1457, line: 799, baseType: !1551, size: 1792, offset: 3456)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1457, line: 610, size: 1792, elements: !1552)
!1552 = !{!1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1639, !1640}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1551, file: !1457, line: 611, baseType: !210, size: 192, align: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1551, file: !1457, line: 618, baseType: !168, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1551, file: !1457, line: 619, baseType: !168, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1551, file: !1457, line: 620, baseType: !168, size: 64, offset: 320)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1551, file: !1457, line: 621, baseType: !168, size: 64, offset: 384)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1551, file: !1457, line: 622, baseType: !168, size: 64, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1551, file: !1457, line: 629, baseType: !289, size: 64, offset: 512)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1551, file: !1457, line: 630, baseType: !168, size: 64, offset: 576)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1551, file: !1457, line: 631, baseType: !7, size: 32, offset: 640)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1551, file: !1457, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1551, file: !1457, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1551, file: !1457, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1551, file: !1457, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1551, file: !1457, line: 662, baseType: !1567, size: 512, offset: 704)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !126, line: 118, size: 512, elements: !1568)
!1568 = !{!1569, !1577, !1578, !1583, !1635, !1636, !1637, !1638}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1567, file: !126, line: 119, baseType: !1570, size: 256)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1571, line: 9, size: 256, elements: !1572)
!1571 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1570, file: !1571, line: 10, baseType: !210, size: 192, align: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1570, file: !1571, line: 11, baseType: !1575, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1576, line: 29, baseType: !289)
!1576 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1567, file: !126, line: 120, baseType: !1575, size: 64, offset: 256)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1567, file: !126, line: 121, baseType: !1579, size: 64, offset: 320)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!125, !1582}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1567, file: !126, line: 122, baseType: !1584, size: 64, offset: 384)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !126, line: 159, size: 512, align: 512, elements: !1586)
!1586 = !{!1587, !1612, !1613, !1616, !1621, !1622, !1630, !1634}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1585, file: !126, line: 160, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !126, line: 215, size: 4608, align: 512, elements: !1590)
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1589, file: !126, line: 216, baseType: !297, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1589, file: !126, line: 217, baseType: !7, size: 32, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1589, file: !126, line: 218, baseType: !7, size: 32, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1589, file: !126, line: 219, baseType: !7, size: 32, offset: 96)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1589, file: !126, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1589, file: !126, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1589, file: !126, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1589, file: !126, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1589, file: !126, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1589, file: !126, line: 226, baseType: !7, size: 32, offset: 160)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1589, file: !126, line: 227, baseType: !33, size: 16, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1589, file: !126, line: 228, baseType: !33, size: 16, offset: 208)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1589, file: !126, line: 229, baseType: !7, size: 32, offset: 224)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1589, file: !126, line: 235, baseType: !1575, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1589, file: !126, line: 236, baseType: !1582, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1589, file: !126, line: 237, baseType: !1575, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1589, file: !126, line: 238, baseType: !1582, size: 64, offset: 448)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1589, file: !126, line: 239, baseType: !1609, size: 4096, align: 512, offset: 512)
!1609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1585, size: 4096, align: 512, elements: !1610)
!1610 = !{!1611}
!1611 = !DISubrange(count: 8)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1585, file: !126, line: 161, baseType: !7, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1585, file: !126, line: 162, baseType: !1614, size: 32, offset: 96)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !32, line: 32, baseType: !1615)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !44, line: 96, baseType: !29)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1585, file: !126, line: 163, baseType: !1617, size: 32, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !766, line: 274, baseType: !1618)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !766, line: 274, size: 32, elements: !1619)
!1619 = !{!1620}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1618, file: !766, line: 274, baseType: !770, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1585, file: !126, line: 164, baseType: !1582, size: 64, offset: 192)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1585, file: !126, line: 165, baseType: !1623, size: 128, offset: 256)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1571, line: 14, size: 128, elements: !1624)
!1624 = !{!1625}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1623, file: !1571, line: 15, baseType: !1626, size: 128)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !211, line: 26, size: 128, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1626, file: !211, line: 27, baseType: !229, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1626, file: !211, line: 28, baseType: !215, size: 64, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1585, file: !126, line: 166, baseType: !1631, size: 64, offset: 384)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!1575}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1585, file: !126, line: 167, baseType: !1575, size: 64, offset: 448)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1567, file: !126, line: 123, baseType: !90, size: 8, offset: 448)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1567, file: !126, line: 124, baseType: !90, size: 8, offset: 456)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1567, file: !126, line: 125, baseType: !90, size: 8, offset: 464)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1567, file: !126, line: 126, baseType: !90, size: 8, offset: 472)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1551, file: !1457, line: 671, baseType: !1567, size: 512, offset: 1216)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1551, file: !1457, line: 679, baseType: !1641, size: 64, offset: 1728)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1456, file: !1457, line: 800, baseType: !1643, size: 64, offset: 5248)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1645)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1457, line: 800, flags: DIFlagFwdDecl)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1456, file: !1457, line: 809, baseType: !1647, size: 64, offset: 5312)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1457, line: 70, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1456, file: !1457, line: 825, baseType: !1650, size: 2048, align: 512, offset: 5632)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1457, line: 509, size: 2048, align: 512, elements: !1651)
!1651 = !{!1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1650, file: !1457, line: 511, baseType: !168, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1650, file: !1457, line: 512, baseType: !168, size: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1650, file: !1457, line: 513, baseType: !168, size: 64, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1650, file: !1457, line: 514, baseType: !168, size: 64, offset: 192)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1650, file: !1457, line: 515, baseType: !168, size: 64, offset: 256)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1650, file: !1457, line: 516, baseType: !168, size: 64, offset: 320)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1650, file: !1457, line: 518, baseType: !168, size: 64, offset: 384)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1650, file: !1457, line: 519, baseType: !168, size: 64, offset: 448)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1650, file: !1457, line: 520, baseType: !289, size: 64, offset: 512)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1650, file: !1457, line: 522, baseType: !168, size: 64, offset: 576)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1650, file: !1457, line: 523, baseType: !168, size: 64, offset: 640)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1650, file: !1457, line: 524, baseType: !289, size: 64, offset: 704)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1650, file: !1457, line: 526, baseType: !289, size: 64, offset: 768)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1650, file: !1457, line: 527, baseType: !168, size: 64, offset: 832)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1650, file: !1457, line: 529, baseType: !168, size: 64, offset: 896)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1650, file: !1457, line: 530, baseType: !168, size: 64, offset: 960)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1650, file: !1457, line: 531, baseType: !168, size: 64, offset: 1024)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1650, file: !1457, line: 532, baseType: !168, size: 64, offset: 1088)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1650, file: !1457, line: 533, baseType: !168, size: 64, offset: 1152)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1650, file: !1457, line: 535, baseType: !168, size: 64, offset: 1216)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1650, file: !1457, line: 536, baseType: !168, size: 64, offset: 1280)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1650, file: !1457, line: 537, baseType: !168, size: 64, offset: 1344)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1650, file: !1457, line: 538, baseType: !168, size: 64, offset: 1408)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1650, file: !1457, line: 539, baseType: !168, size: 64, offset: 1472)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1650, file: !1457, line: 540, baseType: !168, size: 64, offset: 1536)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1650, file: !1457, line: 541, baseType: !168, size: 64, offset: 1600)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1650, file: !1457, line: 542, baseType: !168, size: 64, offset: 1664)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1650, file: !1457, line: 543, baseType: !168, size: 64, offset: 1728)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1456, file: !1457, line: 833, baseType: !7, size: 32, offset: 7680)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1456, file: !1457, line: 836, baseType: !7, size: 32, offset: 7712)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1456, file: !1457, line: 837, baseType: !29, size: 32, offset: 7744)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1456, file: !1457, line: 838, baseType: !1684, size: 64, offset: 7808)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1686)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1687, line: 19, baseType: !1688)
!1687 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1687, line: 19, size: 64, elements: !1689)
!1689 = !{!1690}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1688, file: !1687, line: 19, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !1692)
!1692 = !{!1693}
!1693 = !DISubrange(count: 1)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1456, file: !1457, line: 839, baseType: !1695, size: 64, offset: 7872)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1456, file: !1457, line: 840, baseType: !1686, size: 64, offset: 7936)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1456, file: !1457, line: 841, baseType: !27, size: 64, offset: 8000)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1456, file: !1457, line: 843, baseType: !33, size: 16, offset: 8064)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1456, file: !1457, line: 845, baseType: !33, size: 16, offset: 8080)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1456, file: !1457, line: 848, baseType: !29, size: 32, offset: 8096)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1456, file: !1457, line: 849, baseType: !1702, size: 32, offset: 8128)
!1702 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1457, line: 718, size: 32, elements: !1703)
!1703 = !{!1704, !1711}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1702, file: !1457, line: 724, baseType: !1705, size: 32)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1702, file: !1457, line: 719, size: 32, elements: !1706)
!1706 = !{!1707, !1708, !1709, !1710}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1705, file: !1457, line: 720, baseType: !90, size: 8)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1705, file: !1457, line: 721, baseType: !90, size: 8, offset: 8)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1705, file: !1457, line: 722, baseType: !90, size: 8, offset: 16)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1705, file: !1457, line: 723, baseType: !90, size: 8, offset: 24)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1702, file: !1457, line: 725, baseType: !456, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1456, file: !1457, line: 850, baseType: !104, size: 128, offset: 8192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1456, file: !1457, line: 851, baseType: !1714, size: 64, offset: 8320)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1457, line: 60, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1456, file: !1457, line: 855, baseType: !46, size: 64, offset: 8384)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1456, file: !1457, line: 856, baseType: !90, size: 8, offset: 8448)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1456, file: !1457, line: 857, baseType: !90, size: 8, offset: 8456)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1456, file: !1457, line: 858, baseType: !29, size: 32, offset: 8480)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1456, file: !1457, line: 859, baseType: !104, size: 128, offset: 8512)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1456, file: !1457, line: 860, baseType: !29, size: 32, offset: 8640)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1456, file: !1457, line: 861, baseType: !104, size: 128, offset: 8704)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1456, file: !1457, line: 873, baseType: !1724, size: 256, offset: 8832)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1457, line: 376, size: 256, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1729}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1724, file: !1457, line: 381, baseType: !46, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1724, file: !1457, line: 384, baseType: !170, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1724, file: !1457, line: 389, baseType: !170, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1724, file: !1457, line: 392, baseType: !170, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1456, file: !1457, line: 875, baseType: !104, size: 128, offset: 9088)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1456, file: !1457, line: 877, baseType: !1732, size: 320, offset: 9216)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1733, line: 86, size: 320, elements: !1734)
!1733 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1734 = !{!1735, !1736, !1737}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1732, file: !1733, line: 87, baseType: !29, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1732, file: !1733, line: 88, baseType: !104, size: 128, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1732, file: !1733, line: 89, baseType: !104, size: 128, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1456, file: !1457, line: 878, baseType: !210, size: 192, align: 64, offset: 9536)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1456, file: !1457, line: 881, baseType: !1740, size: 64, offset: 9728)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1742, line: 733, size: 10240, elements: !1743)
!1742 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1743 = !{!1744, !1872}
!1744 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !1742, line: 734, baseType: !1745, size: 10240)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1741, file: !1742, line: 734, size: 10240, elements: !1746)
!1746 = !{!1747, !1751, !1764, !1768, !1769, !1770, !1771, !1772, !1773, !1782, !1783, !1784, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1823, !1825, !1828, !1852, !1853, !1854, !1857, !1858, !1859, !1862, !1863, !1864, !1870, !1871}
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1745, file: !1742, line: 739, baseType: !1748, size: 512, align: 512)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1745, file: !1742, line: 739, size: 512, align: 512, elements: !1749)
!1749 = !{!1750}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1748, file: !1742, line: 747, baseType: !56, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1745, file: !1742, line: 750, baseType: !1752, size: 128, offset: 512)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1753, line: 218, size: 128, elements: !1754)
!1753 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1754 = !{!1755, !1762, !1763}
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1752, file: !1753, line: 219, baseType: !1756, size: 32)
!1756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1752, file: !1753, line: 219, size: 32, elements: !1757)
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1756, file: !1753, line: 220, baseType: !66, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1756, file: !1753, line: 221, baseType: !1760)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1753, line: 197, baseType: !1761)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1753, line: 197, elements: !1048)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1752, file: !1753, line: 223, baseType: !7, size: 32, offset: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1752, file: !1753, line: 224, baseType: !27, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1745, file: !1742, line: 752, baseType: !1765, size: 64, offset: 640)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!46, !257, !46, !46, !46, !46}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1745, file: !1742, line: 756, baseType: !46, size: 64, offset: 704)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1745, file: !1742, line: 757, baseType: !46, size: 64, offset: 768)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1745, file: !1742, line: 760, baseType: !46, size: 64, offset: 832)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1745, file: !1742, line: 761, baseType: !46, size: 64, offset: 896)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1745, file: !1742, line: 763, baseType: !46, size: 64, offset: 960)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1745, file: !1742, line: 764, baseType: !1774, size: 64, offset: 1024)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1776, line: 299, baseType: !1777)
!1776 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1776, line: 299, size: 64, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1777, file: !1776, line: 299, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1781, line: 18, baseType: !46)
!1781 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1745, file: !1742, line: 773, baseType: !56, size: 32, offset: 1088)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1745, file: !1742, line: 785, baseType: !56, size: 32, offset: 1120)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1745, file: !1742, line: 795, baseType: !1785, size: 64, offset: 1152)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1742, line: 726, size: 128, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1786, file: !1742, line: 727, baseType: !168, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1786, file: !1742, line: 728, baseType: !29, size: 32, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1745, file: !1742, line: 801, baseType: !46, size: 64, offset: 1216)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1745, file: !1742, line: 804, baseType: !283, size: 64, offset: 1280)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1745, file: !1742, line: 806, baseType: !29, size: 32, offset: 1344)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1745, file: !1742, line: 808, baseType: !66, size: 32, offset: 1376)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1745, file: !1742, line: 823, baseType: !431, size: 320, offset: 1408)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1745, file: !1742, line: 825, baseType: !104, size: 128, offset: 1728)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1745, file: !1742, line: 845, baseType: !29, size: 32, offset: 1856)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1745, file: !1742, line: 849, baseType: !46, size: 64, offset: 1920)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1745, file: !1742, line: 850, baseType: !46, size: 64, offset: 1984)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1745, file: !1742, line: 852, baseType: !46, size: 64, offset: 2048)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1745, file: !1742, line: 853, baseType: !46, size: 64, offset: 2112)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1745, file: !1742, line: 854, baseType: !285, size: 64, offset: 2176)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1745, file: !1742, line: 855, baseType: !46, size: 64, offset: 2240)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1745, file: !1742, line: 856, baseType: !46, size: 64, offset: 2304)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1745, file: !1742, line: 857, baseType: !46, size: 64, offset: 2368)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1745, file: !1742, line: 858, baseType: !46, size: 64, offset: 2432)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1745, file: !1742, line: 865, baseType: !770, size: 32, offset: 2496)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1745, file: !1742, line: 867, baseType: !66, size: 32, offset: 2528)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1745, file: !1742, line: 869, baseType: !46, size: 64, offset: 2560)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1745, file: !1742, line: 869, baseType: !46, size: 64, offset: 2624)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1745, file: !1742, line: 869, baseType: !46, size: 64, offset: 2688)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1745, file: !1742, line: 869, baseType: !46, size: 64, offset: 2752)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1745, file: !1742, line: 870, baseType: !46, size: 64, offset: 2816)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1745, file: !1742, line: 870, baseType: !46, size: 64, offset: 2880)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1745, file: !1742, line: 870, baseType: !46, size: 64, offset: 2944)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1745, file: !1742, line: 871, baseType: !46, size: 64, offset: 3008)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1745, file: !1742, line: 871, baseType: !46, size: 64, offset: 3072)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1745, file: !1742, line: 871, baseType: !46, size: 64, offset: 3136)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1745, file: !1742, line: 871, baseType: !46, size: 64, offset: 3200)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1745, file: !1742, line: 873, baseType: !1820, size: 3328, offset: 3264)
!1820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 3328, elements: !1821)
!1821 = !{!1822}
!1822 = !DISubrange(count: 52)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1745, file: !1742, line: 875, baseType: !1824, size: 1280, offset: 6592)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 1280, elements: !355)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1745, file: !1742, line: 877, baseType: !1826, size: 64, offset: 7872)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1742, line: 877, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1745, file: !1742, line: 880, baseType: !1829, size: 1088, offset: 7936)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1830, line: 72, baseType: !1831)
!1830 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1830, line: 23, size: 1088, elements: !1832)
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1840, !1841, !1842, !1843, !1847, !1848, !1849}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1831, file: !1830, line: 28, baseType: !168, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1831, file: !1830, line: 38, baseType: !285, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1831, file: !1830, line: 40, baseType: !46, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1831, file: !1830, line: 43, baseType: !431, size: 320, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1831, file: !1830, line: 44, baseType: !1838, size: 64, offset: 512)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1830, line: 44, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1831, file: !1830, line: 48, baseType: !46, size: 64, offset: 576)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1831, file: !1830, line: 59, baseType: !292, size: 256, offset: 640)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1831, file: !1830, line: 60, baseType: !27, size: 64, offset: 896)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1831, file: !1830, line: 61, baseType: !1844, size: 64, offset: 960)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1846)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1830, line: 61, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1831, file: !1830, line: 63, baseType: !56, size: 32, offset: 1024)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1831, file: !1830, line: 69, baseType: !100, size: 16, offset: 1056)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1831, file: !1830, line: 70, baseType: !1850, size: 16, offset: 1072)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !91, line: 18, baseType: !1851)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !93, line: 23, baseType: !461)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1745, file: !1742, line: 882, baseType: !46, size: 64, offset: 9024)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1745, file: !1742, line: 885, baseType: !66, size: 32, offset: 9088)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1745, file: !1742, line: 886, baseType: !1855, size: 64, offset: 9152)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1742, line: 732, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1745, file: !1742, line: 901, baseType: !576, size: 64, offset: 9216)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1745, file: !1742, line: 904, baseType: !257, size: 64, offset: 9280)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1745, file: !1742, line: 906, baseType: !1860, size: 64, offset: 9344)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1742, line: 906, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1745, file: !1742, line: 930, baseType: !56, size: 32, offset: 9408)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1745, file: !1742, line: 933, baseType: !56, size: 32, offset: 9440)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1745, file: !1742, line: 935, baseType: !1865, size: 64, offset: 9472)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !144, line: 103, size: 64, elements: !1866)
!1866 = !{!1867}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1865, file: !144, line: 104, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !144, line: 101, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1745, file: !1742, line: 940, baseType: !283, size: 64, offset: 9536)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1745, file: !1742, line: 942, baseType: !625, size: 256, offset: 9600)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1741, file: !1742, line: 986, baseType: !1873, offset: 10240)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, elements: !368)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1456, file: !1457, line: 882, baseType: !1740, size: 64, offset: 9792)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1456, file: !1457, line: 884, baseType: !29, size: 32, offset: 9856)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1456, file: !1457, line: 885, baseType: !29, size: 32, offset: 9888)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1456, file: !1457, line: 886, baseType: !29, size: 32, offset: 9920)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1456, file: !1457, line: 888, baseType: !29, size: 32, offset: 9952)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1456, file: !1457, line: 890, baseType: !46, size: 64, offset: 9984)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1456, file: !1457, line: 893, baseType: !7, size: 32, offset: 10048)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1456, file: !1457, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1456, file: !1457, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1456, file: !1457, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1456, file: !1457, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1456, file: !1457, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1456, file: !1457, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1456, file: !1457, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1456, file: !1457, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1456, file: !1457, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1456, file: !1457, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1456, file: !1457, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1456, file: !1457, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1456, file: !1457, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1456, file: !1457, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1456, file: !1457, line: 969, baseType: !46, size: 64, offset: 10176)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1456, file: !1457, line: 971, baseType: !1897, size: 448, offset: 10240)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !131, line: 25, size: 448, elements: !1898)
!1898 = !{!1899, !1900, !1905}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1897, file: !131, line: 26, baseType: !46, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1897, file: !131, line: 27, baseType: !1901, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!723, !1904}
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1897, file: !131, line: 28, baseType: !1906, size: 320, offset: 128)
!1906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1897, file: !131, line: 28, size: 320, elements: !1907)
!1907 = !{!1908, !1918, !1943}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1906, file: !131, line: 37, baseType: !1909, size: 320)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1906, file: !131, line: 30, size: 320, elements: !1910)
!1910 = !{!1911, !1913, !1914, !1915, !1916, !1917}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1909, file: !131, line: 31, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1909, file: !131, line: 32, baseType: !456, size: 32, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1909, file: !131, line: 33, baseType: !456, size: 32, offset: 96)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1909, file: !131, line: 34, baseType: !456, size: 32, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1909, file: !131, line: 35, baseType: !168, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1909, file: !131, line: 36, baseType: !1912, size: 64, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1906, file: !131, line: 47, baseType: !1919, size: 192)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1906, file: !131, line: 39, size: 192, elements: !1920)
!1920 = !{!1921, !1922, !1923, !1942}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1919, file: !131, line: 40, baseType: !1614, size: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1919, file: !131, line: 41, baseType: !130, size: 32, offset: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1919, file: !131, line: 42, baseType: !1924, size: 64, offset: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1919, file: !131, line: 42, size: 64, elements: !1925)
!1925 = !{!1926, !1934}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1924, file: !131, line: 43, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1929, line: 7, size: 128, elements: !1930)
!1929 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1930 = !{!1931, !1933}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1928, file: !1929, line: 8, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !44, line: 93, baseType: !50)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1928, file: !1929, line: 9, baseType: !50, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1924, file: !131, line: 44, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1937, line: 7, size: 64, elements: !1938)
!1937 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1938 = !{!1939, !1941}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1936, file: !1937, line: 8, baseType: !1940, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1937, line: 5, baseType: !423)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1936, file: !1937, line: 9, baseType: !423, size: 32, offset: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1919, file: !131, line: 46, baseType: !168, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1906, file: !131, line: 55, baseType: !1944, size: 256)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1906, file: !131, line: 49, size: 256, elements: !1945)
!1945 = !{!1946, !1949, !1950, !1951, !1952}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1944, file: !131, line: 50, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !131, line: 14, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1944, file: !131, line: 51, baseType: !29, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1944, file: !131, line: 52, baseType: !29, size: 32, offset: 96)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1944, file: !131, line: 53, baseType: !46, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1944, file: !131, line: 54, baseType: !46, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1456, file: !1457, line: 973, baseType: !1954, size: 32, offset: 10688)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !32, line: 27, baseType: !1955)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !44, line: 28, baseType: !29)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1456, file: !1457, line: 974, baseType: !1954, size: 32, offset: 10720)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1456, file: !1457, line: 978, baseType: !46, size: 64, offset: 10752)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1456, file: !1457, line: 987, baseType: !1455, size: 64, offset: 10816)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1456, file: !1457, line: 990, baseType: !1455, size: 64, offset: 10880)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1456, file: !1457, line: 995, baseType: !104, size: 128, offset: 10944)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1456, file: !1457, line: 996, baseType: !104, size: 128, offset: 11072)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1456, file: !1457, line: 997, baseType: !1455, size: 64, offset: 11200)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1456, file: !1457, line: 1005, baseType: !104, size: 128, offset: 11264)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1456, file: !1457, line: 1006, baseType: !104, size: 128, offset: 11392)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1456, file: !1457, line: 1009, baseType: !333, size: 64, offset: 11520)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1456, file: !1457, line: 1010, baseType: !1967, size: 512, offset: 11584)
!1967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 512, elements: !355)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1456, file: !1457, line: 1011, baseType: !104, size: 128, offset: 12096)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1456, file: !1457, line: 1012, baseType: !104, size: 128, offset: 12224)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1456, file: !1457, line: 1014, baseType: !663, size: 64, offset: 12352)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1456, file: !1457, line: 1017, baseType: !1111, size: 64, offset: 12416)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1456, file: !1457, line: 1020, baseType: !1111, size: 64, offset: 12480)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1456, file: !1457, line: 1023, baseType: !27, size: 64, offset: 12544)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1456, file: !1457, line: 1025, baseType: !168, size: 64, offset: 12608)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1456, file: !1457, line: 1026, baseType: !168, size: 64, offset: 12672)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1456, file: !1457, line: 1031, baseType: !168, size: 64, offset: 12736)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1456, file: !1457, line: 1032, baseType: !1978, size: 192, offset: 12800)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1457, line: 324, size: 192, elements: !1979)
!1979 = !{!1980, !1981, !1982}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1978, file: !1457, line: 326, baseType: !168, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1978, file: !1457, line: 327, baseType: !168, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1978, file: !1457, line: 328, baseType: !297, size: 32, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1456, file: !1457, line: 1041, baseType: !46, size: 64, offset: 12992)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1456, file: !1457, line: 1042, baseType: !46, size: 64, offset: 13056)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1456, file: !1457, line: 1045, baseType: !168, size: 64, offset: 13120)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1456, file: !1457, line: 1048, baseType: !168, size: 64, offset: 13184)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1456, file: !1457, line: 1051, baseType: !46, size: 64, offset: 13248)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1456, file: !1457, line: 1052, baseType: !46, size: 64, offset: 13312)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1456, file: !1457, line: 1055, baseType: !1990, size: 640, offset: 13376)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1991, line: 132, size: 640, elements: !1992)
!1991 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1992 = !{!1993, !1999, !2000}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1990, file: !1991, line: 133, baseType: !1994, size: 576)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1995, size: 576, elements: !329)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1991, line: 117, size: 192, elements: !1996)
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1995, file: !1991, line: 118, baseType: !168, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1995, file: !1991, line: 119, baseType: !1623, size: 128, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1990, file: !1991, line: 134, baseType: !7, size: 32, offset: 576)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1990, file: !1991, line: 135, baseType: !7, size: 32, offset: 608)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1456, file: !1457, line: 1058, baseType: !2002, size: 448, offset: 14016)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1991, line: 144, size: 448, elements: !2003)
!2003 = !{!2004, !2005, !2006}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2002, file: !1991, line: 145, baseType: !270, size: 128, align: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2002, file: !1991, line: 146, baseType: !292, size: 256, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2002, file: !1991, line: 147, baseType: !7, size: 32, offset: 384)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1456, file: !1457, line: 1064, baseType: !382, size: 64, offset: 14464)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1456, file: !1457, line: 1067, baseType: !382, size: 64, offset: 14528)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1456, file: !1457, line: 1070, baseType: !382, size: 64, offset: 14592)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1456, file: !1457, line: 1074, baseType: !415, size: 64, offset: 14656)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1456, file: !1457, line: 1084, baseType: !2012, size: 128, offset: 14720)
!2012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 128, elements: !2013)
!2013 = !{!2014}
!2014 = !DISubrange(count: 16)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1456, file: !1457, line: 1086, baseType: !2016, size: 64, offset: 14848)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1457, line: 55, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1456, file: !1457, line: 1089, baseType: !2019, size: 64, offset: 14912)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2020, line: 12, size: 64, elements: !2021)
!2020 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2021 = !{!2022}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2019, file: !2020, line: 13, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2020, line: 8, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1456, file: !1457, line: 1090, baseType: !2026, size: 128, offset: 14976)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2027, line: 13, size: 128, elements: !2028)
!2027 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2028 = !{!2029}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2026, file: !2027, line: 14, baseType: !104, size: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1456, file: !1457, line: 1097, baseType: !2031, size: 64, offset: 15104)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1457, line: 50, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1456, file: !1457, line: 1100, baseType: !2034, size: 64, offset: 15168)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1457, line: 1100, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1456, file: !1457, line: 1103, baseType: !2037, size: 64, offset: 15232)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1457, line: 53, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1456, file: !1457, line: 1107, baseType: !2040, size: 64, offset: 15296)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2042, line: 31, size: 576, elements: !2043)
!2042 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2043 = !{!2044, !2045, !2048, !2051, !2054, !2055, !2058, !2061, !2062}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2041, file: !2042, line: 32, baseType: !337, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2041, file: !2042, line: 33, baseType: !2046, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2042, line: 9, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2041, file: !2042, line: 34, baseType: !2049, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2042, line: 10, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2041, file: !2042, line: 35, baseType: !2052, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2042, line: 8, flags: DIFlagFwdDecl)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2041, file: !2042, line: 36, baseType: !366, size: 64, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2041, file: !2042, line: 37, baseType: !2056, size: 64, offset: 320)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !417, line: 34, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2041, file: !2042, line: 38, baseType: !2059, size: 64, offset: 384)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2042, line: 38, flags: DIFlagFwdDecl)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2041, file: !2042, line: 39, baseType: !2059, size: 64, offset: 448)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2041, file: !2042, line: 40, baseType: !2063, size: 64, offset: 512)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2065, line: 771, size: 384, elements: !2066)
!2065 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!2066 = !{!2067, !2068, !2069, !2070}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2064, file: !2065, line: 772, baseType: !609, size: 192)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2064, file: !2065, line: 773, baseType: !576, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2064, file: !2065, line: 774, baseType: !708, size: 64, offset: 256)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !2064, file: !2065, line: 775, baseType: !2071, size: 64, offset: 320)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !182, line: 209, size: 4736, elements: !2073)
!2073 = !{!2074, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2072, file: !182, line: 215, baseType: !2075, size: 896)
!2075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2076, size: 896, elements: !2077)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!2077 = !{!2078}
!2078 = !DISubrange(count: 14)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2072, file: !182, line: 218, baseType: !337, size: 32, offset: 896)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !2072, file: !182, line: 226, baseType: !2071, size: 64, offset: 960)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !2072, file: !182, line: 229, baseType: !185, size: 64, offset: 1024)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2072, file: !182, line: 232, baseType: !29, size: 32, offset: 1088)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2072, file: !182, line: 241, baseType: !104, size: 128, offset: 1152)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !2072, file: !182, line: 242, baseType: !104, size: 128, offset: 1280)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !2072, file: !182, line: 243, baseType: !104, size: 128, offset: 1408)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !2072, file: !182, line: 246, baseType: !104, size: 128, offset: 1536)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !2072, file: !182, line: 255, baseType: !2088, size: 1792, offset: 1664)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 1792, elements: !2077)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !2072, file: !182, line: 258, baseType: !104, size: 128, offset: 3456)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !2072, file: !182, line: 259, baseType: !104, size: 128, offset: 3584)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !2072, file: !182, line: 265, baseType: !350, size: 128, offset: 3712)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !2072, file: !182, line: 271, baseType: !104, size: 128, offset: 3840)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !2072, file: !182, line: 277, baseType: !104, size: 128, offset: 3968)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !2072, file: !182, line: 278, baseType: !104, size: 128, offset: 4096)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !2072, file: !182, line: 279, baseType: !104, size: 128, offset: 4224)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !2072, file: !182, line: 288, baseType: !185, size: 64, offset: 4352)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !2072, file: !182, line: 289, baseType: !185, size: 64, offset: 4416)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !2072, file: !182, line: 290, baseType: !2071, size: 64, offset: 4480)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !2072, file: !182, line: 293, baseType: !492, size: 8, offset: 4544)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2072, file: !182, line: 296, baseType: !270, size: 128, align: 64, offset: 4608)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1456, file: !1457, line: 1110, baseType: !2102, size: 64, offset: 15360)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2104, line: 93, size: 8768, elements: !2105)
!2104 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2105 = !{!2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2156, !2165, !2166, !2168, !2169, !2170, !2173, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2211, !2212, !2219, !2229, !2294, !2295, !2298, !2299, !2300, !2301, !2302, !2303}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2103, file: !2104, line: 94, baseType: !337, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2103, file: !2104, line: 95, baseType: !56, size: 32, offset: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2103, file: !2104, line: 96, baseType: !29, size: 32, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2103, file: !2104, line: 97, baseType: !29, size: 32, offset: 96)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2103, file: !2104, line: 98, baseType: !104, size: 128, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2103, file: !2104, line: 100, baseType: !61, size: 192, offset: 256)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2103, file: !2104, line: 103, baseType: !1455, size: 64, offset: 448)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2103, file: !2104, line: 106, baseType: !2114, size: 192, offset: 512)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2115, line: 32, size: 192, elements: !2116)
!2115 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2116 = !{!2117, !2118}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2114, file: !2115, line: 33, baseType: !104, size: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2114, file: !2115, line: 34, baseType: !2119, size: 64, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2120, line: 25, baseType: !2121)
!2120 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2120, line: 23, size: 64, elements: !2122)
!2122 = !{!2123}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2121, file: !2120, line: 24, baseType: !1691, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2103, file: !2104, line: 109, baseType: !346, size: 64, offset: 704)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2103, file: !2104, line: 112, baseType: !29, size: 32, offset: 768)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2103, file: !2104, line: 114, baseType: !29, size: 32, offset: 800)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2103, file: !2104, line: 115, baseType: !1455, size: 64, offset: 832)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2103, file: !2104, line: 118, baseType: !29, size: 32, offset: 896)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2103, file: !2104, line: 119, baseType: !7, size: 32, offset: 928)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2103, file: !2104, line: 121, baseType: !2131, size: 64, offset: 960)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2104, line: 80, size: 448, elements: !2133)
!2133 = !{!2134, !2135, !2141}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2132, file: !2104, line: 81, baseType: !56, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2132, file: !2104, line: 82, baseType: !2136, size: 128, offset: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2104, line: 75, size: 128, elements: !2137)
!2137 = !{!2138, !2139}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2136, file: !2104, line: 76, baseType: !1455, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2136, file: !2104, line: 77, baseType: !2140, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2132, file: !2104, line: 83, baseType: !664, size: 256, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2103, file: !2104, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2103, file: !2104, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2103, file: !2104, line: 138, baseType: !7, size: 32, offset: 1056)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2103, file: !2104, line: 139, baseType: !104, size: 128, offset: 1088)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2103, file: !2104, line: 142, baseType: !1567, size: 512, offset: 1216)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2103, file: !2104, line: 143, baseType: !1575, size: 64, offset: 1728)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2103, file: !2104, line: 150, baseType: !2149, size: 256, offset: 1792)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2150, size: 256, elements: !2154)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2104, line: 38, size: 128, elements: !2151)
!2151 = !{!2152, !2153}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2150, file: !2104, line: 39, baseType: !168, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2150, file: !2104, line: 40, baseType: !168, size: 64, offset: 64)
!2154 = !{!2155}
!2155 = !DISubrange(count: 2)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2103, file: !2104, line: 156, baseType: !2157, size: 192, offset: 2048)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2104, line: 66, size: 192, elements: !2158)
!2158 = !{!2159}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2157, file: !2104, line: 67, baseType: !2160, size: 192)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2104, line: 47, size: 192, elements: !2161)
!2161 = !{!2162, !2163, !2164}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2160, file: !2104, line: 48, baseType: !285, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2160, file: !2104, line: 49, baseType: !285, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2160, file: !2104, line: 50, baseType: !285, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2103, file: !2104, line: 160, baseType: !1990, size: 640, offset: 2240)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2103, file: !2104, line: 163, baseType: !2167, size: 256, offset: 2880)
!2167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 256, elements: !355)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2103, file: !2104, line: 169, baseType: !333, size: 64, offset: 3136)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2103, file: !2104, line: 172, baseType: !29, size: 32, offset: 3200)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2103, file: !2104, line: 174, baseType: !2171, size: 64, offset: 3264)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2104, line: 174, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2103, file: !2104, line: 185, baseType: !2174, size: 64, offset: 3328)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !766, line: 860, baseType: !2175)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !766, line: 853, size: 64, elements: !2176)
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2175, file: !766, line: 858, baseType: !765, size: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2175, file: !766, line: 859, baseType: !66, size: 32, offset: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2103, file: !2104, line: 186, baseType: !168, size: 64, offset: 3392)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2103, file: !2104, line: 186, baseType: !168, size: 64, offset: 3456)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2103, file: !2104, line: 186, baseType: !168, size: 64, offset: 3520)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2103, file: !2104, line: 186, baseType: !168, size: 64, offset: 3584)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2103, file: !2104, line: 187, baseType: !168, size: 64, offset: 3648)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2103, file: !2104, line: 188, baseType: !168, size: 64, offset: 3712)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2103, file: !2104, line: 189, baseType: !1978, size: 192, offset: 3776)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2103, file: !2104, line: 190, baseType: !46, size: 64, offset: 3968)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2103, file: !2104, line: 190, baseType: !46, size: 64, offset: 4032)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2103, file: !2104, line: 190, baseType: !46, size: 64, offset: 4096)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2103, file: !2104, line: 190, baseType: !46, size: 64, offset: 4160)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2103, file: !2104, line: 191, baseType: !46, size: 64, offset: 4224)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2103, file: !2104, line: 191, baseType: !46, size: 64, offset: 4288)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2103, file: !2104, line: 191, baseType: !46, size: 64, offset: 4352)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2103, file: !2104, line: 191, baseType: !46, size: 64, offset: 4416)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2103, file: !2104, line: 192, baseType: !46, size: 64, offset: 4480)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2103, file: !2104, line: 192, baseType: !46, size: 64, offset: 4544)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2103, file: !2104, line: 192, baseType: !46, size: 64, offset: 4608)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2103, file: !2104, line: 192, baseType: !46, size: 64, offset: 4672)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2103, file: !2104, line: 193, baseType: !46, size: 64, offset: 4736)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2103, file: !2104, line: 193, baseType: !46, size: 64, offset: 4800)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2103, file: !2104, line: 194, baseType: !2201, size: 448, offset: 4864)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2202, line: 12, size: 448, elements: !2203)
!2202 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2203 = !{!2204, !2205, !2206, !2207, !2208, !2209, !2210}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2201, file: !2202, line: 15, baseType: !168, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2201, file: !2202, line: 17, baseType: !168, size: 64, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2201, file: !2202, line: 19, baseType: !168, size: 64, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2201, file: !2202, line: 21, baseType: !168, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2201, file: !2202, line: 29, baseType: !168, size: 64, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2201, file: !2202, line: 35, baseType: !168, size: 64, offset: 320)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2201, file: !2202, line: 44, baseType: !168, size: 64, offset: 384)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2103, file: !2104, line: 202, baseType: !170, size: 64, offset: 5312)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2103, file: !2104, line: 213, baseType: !2213, size: 2048, offset: 5376)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2214, size: 2048, elements: !2013)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2215, line: 43, size: 128, elements: !2216)
!2215 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2216 = !{!2217, !2218}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2214, file: !2215, line: 44, baseType: !45, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2214, file: !2215, line: 45, baseType: !45, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2103, file: !2104, line: 216, baseType: !2220, size: 448, offset: 7424)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2104, line: 30, size: 448, elements: !2221)
!2221 = !{!2222, !2223, !2224, !2225, !2226, !2227, !2228}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2220, file: !2104, line: 31, baseType: !29, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2220, file: !2104, line: 32, baseType: !723, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2220, file: !2104, line: 33, baseType: !46, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2220, file: !2104, line: 34, baseType: !168, size: 64, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2220, file: !2104, line: 34, baseType: !168, size: 64, offset: 256)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2220, file: !2104, line: 35, baseType: !46, size: 64, offset: 320)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2220, file: !2104, line: 35, baseType: !46, size: 64, offset: 384)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2103, file: !2104, line: 219, baseType: !2230, size: 64, offset: 7872)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2232, line: 41, size: 3456, elements: !2233)
!2232 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2233 = !{!2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2250, !2251, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2231, file: !2232, line: 47, baseType: !101, size: 16)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2231, file: !2232, line: 48, baseType: !457, size: 32, offset: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2231, file: !2232, line: 54, baseType: !92, size: 8, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2231, file: !2232, line: 55, baseType: !92, size: 8, offset: 72)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2231, file: !2232, line: 73, baseType: !169, size: 64, align: 64, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2231, file: !2232, line: 74, baseType: !169, size: 64, offset: 192)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2231, file: !2232, line: 81, baseType: !169, size: 64, offset: 256)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2231, file: !2232, line: 82, baseType: !169, size: 64, offset: 320)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2231, file: !2232, line: 85, baseType: !169, size: 64, offset: 384)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2231, file: !2232, line: 86, baseType: !169, size: 64, offset: 448)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2231, file: !2232, line: 94, baseType: !169, size: 64, offset: 512)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2231, file: !2232, line: 102, baseType: !169, size: 64, offset: 576)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2231, file: !2232, line: 107, baseType: !2247, size: 256, offset: 640)
!2247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 256, elements: !2248)
!2248 = !{!2249}
!2249 = !DISubrange(count: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2231, file: !2232, line: 108, baseType: !92, size: 8, align: 64, offset: 896)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2231, file: !2232, line: 110, baseType: !2252, size: 24, offset: 904)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 24, elements: !329)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2231, file: !2232, line: 111, baseType: !457, size: 32, align: 64, offset: 960)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2231, file: !2232, line: 113, baseType: !457, size: 32, offset: 992)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2231, file: !2232, line: 114, baseType: !457, size: 32, offset: 1024)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2231, file: !2232, line: 115, baseType: !457, size: 32, offset: 1056)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2231, file: !2232, line: 117, baseType: !457, size: 32, offset: 1088)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2231, file: !2232, line: 118, baseType: !169, size: 64, align: 64, offset: 1152)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2231, file: !2232, line: 120, baseType: !169, size: 64, offset: 1216)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2231, file: !2232, line: 121, baseType: !169, size: 64, offset: 1280)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2231, file: !2232, line: 122, baseType: !169, size: 64, offset: 1344)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2231, file: !2232, line: 123, baseType: !169, size: 64, offset: 1408)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2231, file: !2232, line: 133, baseType: !169, size: 64, offset: 1472)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2231, file: !2232, line: 137, baseType: !169, size: 64, offset: 1536)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2231, file: !2232, line: 142, baseType: !169, size: 64, offset: 1600)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2231, file: !2232, line: 143, baseType: !169, size: 64, offset: 1664)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2231, file: !2232, line: 146, baseType: !169, size: 64, offset: 1728)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2231, file: !2232, line: 147, baseType: !169, size: 64, offset: 1792)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2231, file: !2232, line: 148, baseType: !169, size: 64, offset: 1856)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2231, file: !2232, line: 149, baseType: !169, size: 64, offset: 1920)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2231, file: !2232, line: 154, baseType: !169, size: 64, offset: 1984)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2231, file: !2232, line: 155, baseType: !169, size: 64, offset: 2048)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2231, file: !2232, line: 156, baseType: !169, size: 64, offset: 2112)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2231, file: !2232, line: 158, baseType: !169, size: 64, offset: 2176)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2231, file: !2232, line: 159, baseType: !169, size: 64, offset: 2240)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2231, file: !2232, line: 162, baseType: !169, size: 64, offset: 2304)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2231, file: !2232, line: 163, baseType: !169, size: 64, offset: 2368)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2231, file: !2232, line: 164, baseType: !169, size: 64, offset: 2432)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2231, file: !2232, line: 167, baseType: !169, size: 64, offset: 2496)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2231, file: !2232, line: 168, baseType: !169, size: 64, offset: 2560)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2231, file: !2232, line: 171, baseType: !169, size: 64, offset: 2624)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2231, file: !2232, line: 172, baseType: !169, size: 64, offset: 2688)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2231, file: !2232, line: 175, baseType: !169, size: 64, offset: 2752)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2231, file: !2232, line: 178, baseType: !169, size: 64, offset: 2816)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2231, file: !2232, line: 179, baseType: !169, size: 64, offset: 2880)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2231, file: !2232, line: 182, baseType: !457, size: 32, offset: 2944)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2231, file: !2232, line: 186, baseType: !169, size: 64, align: 64, offset: 3008)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2231, file: !2232, line: 194, baseType: !169, size: 64, offset: 3072)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2231, file: !2232, line: 195, baseType: !169, size: 64, offset: 3136)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2231, file: !2232, line: 199, baseType: !169, size: 64, offset: 3200)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2231, file: !2232, line: 200, baseType: !169, size: 64, offset: 3264)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2231, file: !2232, line: 203, baseType: !169, size: 64, offset: 3328)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2231, file: !2232, line: 204, baseType: !169, size: 64, offset: 3392)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2103, file: !2104, line: 222, baseType: !7, size: 32, offset: 7936)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2103, file: !2104, line: 223, baseType: !2296, size: 64, offset: 8000)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2104, line: 223, flags: DIFlagFwdDecl)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2103, file: !2104, line: 230, baseType: !492, size: 8, offset: 8064)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2103, file: !2104, line: 231, baseType: !461, size: 16, offset: 8080)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2103, file: !2104, line: 232, baseType: !461, size: 16, offset: 8096)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2103, file: !2104, line: 234, baseType: !1740, size: 64, offset: 8128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2103, file: !2104, line: 237, baseType: !292, size: 256, offset: 8192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2103, file: !2104, line: 243, baseType: !431, size: 320, offset: 8448)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1456, file: !1457, line: 1111, baseType: !2305, size: 64, offset: 15424)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2104, line: 20, size: 16640, elements: !2307)
!2307 = !{!2308, !2309, !2310, !2311}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2306, file: !2104, line: 21, baseType: !66, size: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2306, file: !2104, line: 22, baseType: !337, size: 32, offset: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2306, file: !2104, line: 23, baseType: !61, size: 192, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2306, file: !2104, line: 24, baseType: !2312, size: 16384, offset: 256)
!2312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2313, size: 16384, elements: !2333)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2115, line: 51, size: 256, elements: !2314)
!2314 = !{!2315}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2313, file: !2115, line: 52, baseType: !2316, size: 256)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2115, line: 37, size: 256, elements: !2317)
!2317 = !{!2318, !2325, !2326, !2332}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2316, file: !2115, line: 39, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2320, line: 83, baseType: !2321)
!2320 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2320, line: 82, baseType: !2323)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{null, !29}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2316, file: !2115, line: 40, baseType: !46, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2316, file: !2115, line: 46, baseType: !2327, size: 64, offset: 128)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2320, line: 86, baseType: !2328)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2320, line: 85, baseType: !2330)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{null}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2316, file: !2115, line: 48, baseType: !2119, size: 64, offset: 192)
!2333 = !{!2334}
!2334 = !DISubrange(count: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1456, file: !1457, line: 1112, baseType: !2119, size: 64, offset: 15488)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1456, file: !1457, line: 1113, baseType: !2119, size: 64, offset: 15552)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1456, file: !1457, line: 1115, baseType: !2119, size: 64, offset: 15616)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1456, file: !1457, line: 1116, baseType: !2114, size: 192, offset: 15680)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1456, file: !1457, line: 1117, baseType: !46, size: 64, offset: 15872)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1456, file: !1457, line: 1118, baseType: !42, size: 64, offset: 15936)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1456, file: !1457, line: 1119, baseType: !7, size: 32, offset: 16000)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1456, file: !1457, line: 1121, baseType: !273, size: 64, offset: 16064)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1456, file: !1457, line: 1125, baseType: !2344, size: 64, offset: 16128)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1457, line: 43, flags: DIFlagFwdDecl)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1456, file: !1457, line: 1127, baseType: !372, size: 32, offset: 16192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1456, file: !1457, line: 1128, baseType: !7, size: 32, offset: 16224)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1456, file: !1457, line: 1130, baseType: !2349, size: 128, offset: 16256)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2350, line: 37, size: 128, elements: !2351)
!2350 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2351 = !{!2352, !2353, !2354}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2349, file: !2350, line: 38, baseType: !29, size: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2349, file: !2350, line: 39, baseType: !56, size: 32, offset: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2349, file: !2350, line: 40, baseType: !2355, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2350, line: 24, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1456, file: !1457, line: 1131, baseType: !2358, size: 256, offset: 16384)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2359, line: 12, size: 256, elements: !2360)
!2359 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2360 = !{!2361, !2362, !2363, !2364}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2358, file: !2359, line: 13, baseType: !503, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2358, file: !2359, line: 14, baseType: !46, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2358, file: !2359, line: 15, baseType: !46, size: 64, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2358, file: !2359, line: 16, baseType: !492, size: 8, offset: 192)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1456, file: !1457, line: 1134, baseType: !168, size: 64, offset: 16640)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1456, file: !1457, line: 1135, baseType: !168, size: 64, offset: 16704)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1456, file: !1457, line: 1138, baseType: !66, size: 32, offset: 16768)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1456, file: !1457, line: 1141, baseType: !297, size: 32, offset: 16800)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1456, file: !1457, line: 1143, baseType: !2370, size: 64, offset: 16832)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1457, line: 735, size: 64, elements: !2371)
!2371 = !{!2372}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2370, file: !1457, line: 736, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1456, file: !1457, line: 1147, baseType: !1626, size: 128, offset: 16896)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1456, file: !1457, line: 1149, baseType: !1455, size: 64, offset: 17024)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1456, file: !1457, line: 1151, baseType: !2377, size: 64, offset: 17088)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1457, line: 1151, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1456, file: !1457, line: 1188, baseType: !27, size: 64, offset: 17152)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1456, file: !1457, line: 1191, baseType: !2381, size: 64, offset: 17216)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1457, line: 44, flags: DIFlagFwdDecl)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1456, file: !1457, line: 1194, baseType: !2384, size: 64, offset: 17280)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1457, line: 45, flags: DIFlagFwdDecl)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1456, file: !1457, line: 1197, baseType: !2387, size: 64, offset: 17344)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1457, line: 61, flags: DIFlagFwdDecl)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1456, file: !1457, line: 1199, baseType: !2390, size: 64, offset: 17408)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2392, line: 99, size: 128, elements: !2393)
!2392 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2393 = !{!2394, !2395, !2396}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2391, file: !2392, line: 100, baseType: !283, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2391, file: !2392, line: 101, baseType: !56, size: 32, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2391, file: !2392, line: 103, baseType: !33, size: 16, offset: 96)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1456, file: !1457, line: 1202, baseType: !2398, size: 64, offset: 17472)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1457, line: 48, flags: DIFlagFwdDecl)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1456, file: !1457, line: 1205, baseType: !46, size: 64, offset: 17536)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1456, file: !1457, line: 1206, baseType: !2402, size: 64, offset: 17600)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2115, line: 14, baseType: !2404)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2115, line: 12, size: 384, elements: !2405)
!2405 = !{!2406}
!2406 = !DIDerivedType(tag: DW_TAG_member, scope: !2404, file: !2115, line: 13, baseType: !2407, size: 384)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2404, file: !2115, line: 13, size: 384, elements: !2408)
!2408 = !{!2409, !2410, !2411, !2412}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2407, file: !2115, line: 13, baseType: !29, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2407, file: !2115, line: 13, baseType: !29, size: 32, offset: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2407, file: !2115, line: 13, baseType: !29, size: 32, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2407, file: !2115, line: 13, baseType: !2413, size: 256, offset: 128)
!2413 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2414, line: 37, size: 256, elements: !2415)
!2414 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2415 = !{!2416, !2421, !2434, !2440, !2449, !2476, !2481}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2413, file: !2414, line: 42, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !2414, line: 39, size: 64, elements: !2418)
!2418 = !{!2419, !2420}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2417, file: !2414, line: 40, baseType: !1955, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2417, file: !2414, line: 41, baseType: !378, size: 32, offset: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2413, file: !2414, line: 50, baseType: !2422, size: 192)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !2414, line: 45, size: 192, elements: !2423)
!2423 = !{!2424, !2426, !2427, !2433}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2422, file: !2414, line: 46, baseType: !2425, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !44, line: 95, baseType: !29)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2422, file: !2414, line: 47, baseType: !29, size: 32, offset: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2422, file: !2414, line: 48, baseType: !2428, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2414, line: 11, baseType: !2429)
!2429 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2414, line: 8, size: 64, elements: !2430)
!2430 = !{!2431, !2432}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2429, file: !2414, line: 9, baseType: !29, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2429, file: !2414, line: 10, baseType: !27, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2422, file: !2414, line: 49, baseType: !29, size: 32, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2413, file: !2414, line: 57, baseType: !2435, size: 128)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !2414, line: 53, size: 128, elements: !2436)
!2436 = !{!2437, !2438, !2439}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2435, file: !2414, line: 54, baseType: !1955, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2435, file: !2414, line: 55, baseType: !378, size: 32, offset: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2435, file: !2414, line: 56, baseType: !2428, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2413, file: !2414, line: 66, baseType: !2441, size: 256)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !2414, line: 60, size: 256, elements: !2442)
!2442 = !{!2443, !2444, !2445, !2446, !2448}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2441, file: !2414, line: 61, baseType: !1955, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2441, file: !2414, line: 62, baseType: !378, size: 32, offset: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2441, file: !2414, line: 63, baseType: !29, size: 32, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2441, file: !2414, line: 64, baseType: !2447, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !44, line: 94, baseType: !953)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2441, file: !2414, line: 65, baseType: !2447, size: 64, offset: 192)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2413, file: !2414, line: 105, baseType: !2450, size: 256)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !2414, line: 69, size: 256, elements: !2451)
!2451 = !{!2452, !2453}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2450, file: !2414, line: 70, baseType: !27, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, scope: !2450, file: !2414, line: 79, baseType: !2454, size: 192, offset: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2450, file: !2414, line: 79, size: 192, elements: !2455)
!2455 = !{!2456, !2457, !2458, !2465, !2470}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2454, file: !2414, line: 81, baseType: !29, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2454, file: !2414, line: 86, baseType: !461, size: 16)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2454, file: !2414, line: 92, baseType: !2459, size: 192)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2454, file: !2414, line: 88, size: 192, elements: !2460)
!2460 = !{!2461, !2463, !2464}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2459, file: !2414, line: 89, baseType: !2462, size: 64)
!2462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !1610)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2459, file: !2414, line: 90, baseType: !27, size: 64, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2459, file: !2414, line: 91, baseType: !27, size: 64, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2454, file: !2414, line: 97, baseType: !2466, size: 96)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2454, file: !2414, line: 94, size: 96, elements: !2467)
!2467 = !{!2468, !2469}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2466, file: !2414, line: 95, baseType: !2462, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2466, file: !2414, line: 96, baseType: !457, size: 32, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2454, file: !2414, line: 103, baseType: !2471, size: 128)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2454, file: !2414, line: 99, size: 128, elements: !2472)
!2472 = !{!2473, !2474, !2475}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2471, file: !2414, line: 100, baseType: !46, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2471, file: !2414, line: 101, baseType: !457, size: 32, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2471, file: !2414, line: 102, baseType: !457, size: 32, offset: 96)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2413, file: !2414, line: 111, baseType: !2477, size: 128)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !2414, line: 108, size: 128, elements: !2478)
!2478 = !{!2479, !2480}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2477, file: !2414, line: 109, baseType: !723, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2477, file: !2414, line: 110, baseType: !29, size: 32, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2413, file: !2414, line: 118, baseType: !2482, size: 128)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !2414, line: 114, size: 128, elements: !2483)
!2483 = !{!2484, !2485, !2486}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2482, file: !2414, line: 115, baseType: !27, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2482, file: !2414, line: 116, baseType: !29, size: 32, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2482, file: !2414, line: 117, baseType: !7, size: 32, offset: 96)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1456, file: !1457, line: 1208, baseType: !2201, size: 448, offset: 17664)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1456, file: !1457, line: 1215, baseType: !168, size: 64, offset: 18112)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1456, file: !1457, line: 1217, baseType: !168, size: 64, offset: 18176)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1456, file: !1457, line: 1219, baseType: !168, size: 64, offset: 18240)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1456, file: !1457, line: 1223, baseType: !2492, size: 64, offset: 18304)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2493, line: 99, baseType: !2494)
!2493 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2493, line: 99, size: 64, elements: !2495)
!2495 = !{!2496}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2494, file: !2493, line: 99, baseType: !1691, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1456, file: !1457, line: 1225, baseType: !765, size: 32, offset: 18368)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1456, file: !1457, line: 1226, baseType: !29, size: 32, offset: 18400)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1456, file: !1457, line: 1227, baseType: !29, size: 32, offset: 18432)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1456, file: !1457, line: 1231, baseType: !2071, size: 64, offset: 18496)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1456, file: !1457, line: 1233, baseType: !104, size: 128, offset: 18560)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1456, file: !1457, line: 1240, baseType: !2503, size: 64, offset: 18688)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1457, line: 62, flags: DIFlagFwdDecl)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1456, file: !1457, line: 1242, baseType: !2506, size: 64, offset: 18752)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1457, line: 1242, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1456, file: !1457, line: 1244, baseType: !104, size: 128, offset: 18816)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1456, file: !1457, line: 1245, baseType: !2510, size: 64, offset: 18944)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1457, line: 51, flags: DIFlagFwdDecl)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1456, file: !1457, line: 1246, baseType: !292, size: 256, offset: 19008)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1456, file: !1457, line: 1247, baseType: !7, size: 32, offset: 19264)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1456, file: !1457, line: 1250, baseType: !2515, size: 64, offset: 19328)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1457, line: 57, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1456, file: !1457, line: 1251, baseType: !292, size: 256, offset: 19392)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1456, file: !1457, line: 1252, baseType: !104, size: 128, offset: 19648)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1456, file: !1457, line: 1259, baseType: !2520, size: 64, offset: 19776)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1457, line: 54, flags: DIFlagFwdDecl)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1456, file: !1457, line: 1260, baseType: !461, size: 16, offset: 19840)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1456, file: !1457, line: 1261, baseType: !461, size: 16, offset: 19856)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1456, file: !1457, line: 1314, baseType: !2525, size: 64, offset: 19904)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2527, line: 62, size: 256, align: 256, elements: !2528)
!2527 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2528 = !{!2529, !2530, !2531, !2532, !2533, !2534, !2535}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2526, file: !2527, line: 75, baseType: !457, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2526, file: !2527, line: 90, baseType: !457, size: 32, offset: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2526, file: !2527, line: 112, baseType: !169, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2526, file: !2527, line: 132, baseType: !457, size: 32, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2526, file: !2527, line: 140, baseType: !457, size: 32, offset: 160)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2526, file: !2527, line: 149, baseType: !457, size: 32, offset: 192)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2526, file: !2527, line: 154, baseType: !2536, offset: 224)
!2536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, elements: !368)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1456, file: !1457, line: 1315, baseType: !456, size: 32, offset: 19968)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1456, file: !1457, line: 1316, baseType: !456, size: 32, offset: 20000)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1456, file: !1457, line: 1321, baseType: !46, size: 64, offset: 20032)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1456, file: !1457, line: 1325, baseType: !29, size: 32, offset: 20096)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1456, file: !1457, line: 1326, baseType: !29, size: 32, offset: 20128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1456, file: !1457, line: 1327, baseType: !29, size: 32, offset: 20160)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1456, file: !1457, line: 1328, baseType: !29, size: 32, offset: 20192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1456, file: !1457, line: 1329, baseType: !270, size: 128, align: 64, offset: 20224)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1456, file: !1457, line: 1332, baseType: !2546, size: 128, offset: 20352)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2547, line: 51, size: 128, elements: !2548)
!2547 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2548 = !{!2549, !2554, !2555}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2546, file: !2547, line: 60, baseType: !2550, size: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2551, line: 7, size: 64, elements: !2552)
!2551 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2552 = !{!2553}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2550, file: !2551, line: 12, baseType: !1688, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2546, file: !2547, line: 63, baseType: !492, size: 8, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2546, file: !2547, line: 70, baseType: !492, size: 8, offset: 72)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1456, file: !1457, line: 1335, baseType: !2557, size: 64, offset: 20480)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1457, line: 59, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1456, file: !1457, line: 1337, baseType: !2560, size: 128, offset: 20544)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2547, line: 39, size: 128, elements: !2561)
!2561 = !{!2562, !2826, !2827}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2560, file: !2547, line: 40, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1742, line: 74, size: 512, align: 128, elements: !2565)
!2565 = !{!2566, !2567, !2820, !2825}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2564, file: !1742, line: 75, baseType: !46, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, scope: !2564, file: !1742, line: 83, baseType: !2568, size: 320, offset: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2564, file: !1742, line: 83, size: 320, elements: !2569)
!2569 = !{!2570, !2794, !2808, !2812, !2819}
!2570 = !DIDerivedType(tag: DW_TAG_member, scope: !2568, file: !1742, line: 84, baseType: !2571, size: 320)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2568, file: !1742, line: 84, size: 320, elements: !2572)
!2572 = !{!2573, !2584, !2788, !2793}
!2573 = !DIDerivedType(tag: DW_TAG_member, scope: !2571, file: !1742, line: 90, baseType: !2574, size: 128)
!2574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2571, file: !1742, line: 90, size: 128, elements: !2575)
!2575 = !{!2576, !2577, !2582, !2583}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2574, file: !1742, line: 91, baseType: !104, size: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, scope: !2574, file: !1742, line: 94, baseType: !2578, size: 128)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2574, file: !1742, line: 94, size: 128, elements: !2579)
!2579 = !{!2580, !2581}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2578, file: !1742, line: 96, baseType: !27, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2578, file: !1742, line: 98, baseType: !7, size: 32, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2574, file: !1742, line: 102, baseType: !104, size: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2574, file: !1742, line: 103, baseType: !104, size: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2571, file: !1742, line: 106, baseType: !2585, size: 64, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !115, line: 472, size: 1536, align: 64, elements: !2587)
!2587 = !{!2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2780, !2781, !2782, !2785, !2786, !2787}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2586, file: !115, line: 473, baseType: !799, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2586, file: !115, line: 474, baseType: !998, size: 128, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2586, file: !115, line: 475, baseType: !431, size: 320, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2586, file: !115, line: 476, baseType: !1003, size: 32, offset: 512)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2586, file: !115, line: 477, baseType: !56, size: 32, offset: 544)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2586, file: !115, line: 482, baseType: !1626, size: 128, offset: 576)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2586, file: !115, line: 483, baseType: !46, size: 64, offset: 704)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2586, file: !115, line: 484, baseType: !46, size: 64, offset: 768)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2586, file: !115, line: 485, baseType: !2597, size: 64, offset: 832)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2599)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !115, line: 404, size: 1280, elements: !2600)
!2600 = !{!2601, !2605, !2675, !2679, !2683, !2689, !2695, !2699, !2704, !2708, !2712, !2716, !2744, !2748, !2752, !2756, !2761, !2765, !2772, !2776}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2599, file: !115, line: 405, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!29, !2563, !1079}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2599, file: !115, line: 406, baseType: !2606, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!29, !257, !2609}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1742, line: 293, size: 1536, elements: !2611)
!2611 = !{!2612, !2642, !2656}
!2612 = !DIDerivedType(tag: DW_TAG_member, scope: !2610, file: !1742, line: 295, baseType: !2613, size: 512)
!2613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2610, file: !1742, line: 295, size: 512, elements: !2614)
!2614 = !{!2615, !2641}
!2615 = !DIDerivedType(tag: DW_TAG_member, scope: !2613, file: !1742, line: 296, baseType: !2616, size: 448)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2613, file: !1742, line: 296, size: 448, elements: !2617)
!2617 = !{!2618, !2619, !2628, !2629, !2630, !2639, !2640}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2616, file: !1742, line: 298, baseType: !46, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, scope: !2616, file: !1742, line: 299, baseType: !2620, size: 128, offset: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2616, file: !1742, line: 299, size: 128, elements: !2621)
!2621 = !{!2622, !2623}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2620, file: !1742, line: 300, baseType: !104, size: 128)
!2623 = !DIDerivedType(tag: DW_TAG_member, scope: !2620, file: !1742, line: 302, baseType: !2624, size: 128)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2620, file: !1742, line: 302, size: 128, elements: !2625)
!2625 = !{!2626, !2627}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2624, file: !1742, line: 303, baseType: !27, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2624, file: !1742, line: 305, baseType: !7, size: 32, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2616, file: !1742, line: 310, baseType: !2585, size: 64, offset: 192)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2616, file: !1742, line: 311, baseType: !46, size: 64, offset: 256)
!2630 = !DIDerivedType(tag: DW_TAG_member, scope: !2616, file: !1742, line: 312, baseType: !2631, size: 64, offset: 320)
!2631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2616, file: !1742, line: 312, size: 64, elements: !2632)
!2632 = !{!2633, !2634}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2631, file: !1742, line: 313, baseType: !27, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2631, file: !1742, line: 314, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1742, line: 257, baseType: !2636)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1742, line: 255, size: 64, elements: !2637)
!2637 = !{!2638}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2636, file: !1742, line: 256, baseType: !46, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2616, file: !1742, line: 316, baseType: !56, size: 32, offset: 384)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2616, file: !1742, line: 317, baseType: !56, size: 32, offset: 416)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2613, file: !1742, line: 323, baseType: !2564, size: 512, align: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, scope: !2610, file: !1742, line: 325, baseType: !2643, size: 512, offset: 512)
!2643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2610, file: !1742, line: 325, size: 512, elements: !2644)
!2644 = !{!2645, !2655}
!2645 = !DIDerivedType(tag: DW_TAG_member, scope: !2643, file: !1742, line: 326, baseType: !2646, size: 320)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2643, file: !1742, line: 326, size: 320, elements: !2647)
!2647 = !{!2648, !2649, !2650, !2651, !2652, !2653, !2654}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2646, file: !1742, line: 327, baseType: !46, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2646, file: !1742, line: 328, baseType: !46, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2646, file: !1742, line: 329, baseType: !46, size: 64, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2646, file: !1742, line: 331, baseType: !56, size: 32, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2646, file: !1742, line: 332, baseType: !56, size: 32, offset: 224)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2646, file: !1742, line: 333, baseType: !56, size: 32, offset: 256)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2646, file: !1742, line: 335, baseType: !7, size: 32, offset: 288)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2643, file: !1742, line: 339, baseType: !2564, size: 512, align: 128)
!2656 = !DIDerivedType(tag: DW_TAG_member, scope: !2610, file: !1742, line: 341, baseType: !2657, size: 512, offset: 1024)
!2657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2610, file: !1742, line: 341, size: 512, elements: !2658)
!2658 = !{!2659, !2668, !2674}
!2659 = !DIDerivedType(tag: DW_TAG_member, scope: !2657, file: !1742, line: 342, baseType: !2660, size: 384)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !1742, line: 342, size: 384, elements: !2661)
!2661 = !{!2662, !2663, !2664, !2665, !2666, !2667}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2660, file: !1742, line: 343, baseType: !46, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2660, file: !1742, line: 344, baseType: !46, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2660, file: !1742, line: 346, baseType: !27, size: 64, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2660, file: !1742, line: 347, baseType: !27, size: 64, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2660, file: !1742, line: 348, baseType: !27, size: 64, offset: 256)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2660, file: !1742, line: 349, baseType: !27, size: 64, offset: 320)
!2668 = !DIDerivedType(tag: DW_TAG_member, scope: !2657, file: !1742, line: 352, baseType: !2669, size: 256)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2657, file: !1742, line: 352, size: 256, elements: !2670)
!2670 = !{!2671, !2672, !2673}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2669, file: !1742, line: 353, baseType: !46, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2669, file: !1742, line: 354, baseType: !46, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2669, file: !1742, line: 356, baseType: !104, size: 128, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2657, file: !1742, line: 359, baseType: !2564, size: 512, align: 128)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2599, file: !115, line: 409, baseType: !2676, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!29, !2585, !1079}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2599, file: !115, line: 412, baseType: !2680, size: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!492, !2585, !2609}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2599, file: !115, line: 414, baseType: !2684, size: 64, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{null, !2687}
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !115, line: 310, flags: DIFlagFwdDecl)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2599, file: !115, line: 416, baseType: !2690, size: 64, offset: 320)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!29, !257, !2585, !48, !7, !2693, !2694}
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2599, file: !115, line: 419, baseType: !2696, size: 64, offset: 384)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!29, !257, !2585, !48, !7, !7, !2563, !27}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2599, file: !115, line: 424, baseType: !2700, size: 64, offset: 448)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!2703, !2585, !2703}
!2703 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !32, line: 131, baseType: !168)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2599, file: !115, line: 425, baseType: !2705, size: 64, offset: 512)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{null, !2609, !42, !42}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2599, file: !115, line: 426, baseType: !2709, size: 64, offset: 576)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!492, !2609, !1003}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2599, file: !115, line: 427, baseType: !2713, size: 64, offset: 640)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{null, !2609}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2599, file: !115, line: 428, baseType: !2717, size: 64, offset: 704)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!951, !2720, !2742}
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !115, line: 373, size: 384, elements: !2722)
!2722 = !{!2723, !2724, !2725, !2729, !2730, !2731, !2732}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2721, file: !115, line: 374, baseType: !257, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2721, file: !115, line: 375, baseType: !48, size: 64, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2721, file: !115, line: 376, baseType: !2726, size: 64, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{null, !2720, !723}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2721, file: !115, line: 377, baseType: !27, size: 64, offset: 192)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2721, file: !115, line: 378, baseType: !29, size: 32, offset: 256)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2721, file: !115, line: 379, baseType: !100, size: 16, offset: 288)
!2732 = !DIDerivedType(tag: DW_TAG_member, scope: !2721, file: !115, line: 380, baseType: !2733, size: 64, offset: 320)
!2733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2721, file: !115, line: 380, size: 64, elements: !2734)
!2734 = !{!2735, !2738}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2733, file: !115, line: 386, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !115, line: 386, flags: DIFlagFwdDecl)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2733, file: !115, line: 395, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!951, !27}
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !115, line: 69, flags: DIFlagFwdDecl)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2599, file: !115, line: 433, baseType: !2745, size: 64, offset: 768)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!29, !2585, !2609, !2609, !136}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2599, file: !115, line: 435, baseType: !2749, size: 64, offset: 832)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!29, !2609}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2599, file: !115, line: 436, baseType: !2753, size: 64, offset: 896)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!492, !2609, !42, !42}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2599, file: !115, line: 438, baseType: !2757, size: 64, offset: 960)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null, !2609, !2760, !2760}
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2599, file: !115, line: 439, baseType: !2762, size: 64, offset: 1024)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!29, !2585, !2563}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2599, file: !115, line: 442, baseType: !2766, size: 64, offset: 1088)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!29, !2769, !257, !2771}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !115, line: 66, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2599, file: !115, line: 444, baseType: !2773, size: 64, offset: 1152)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{null, !257}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2599, file: !115, line: 445, baseType: !2777, size: 64, offset: 1216)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!29, !2720, !2742}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2586, file: !115, line: 486, baseType: !46, size: 64, offset: 896)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2586, file: !115, line: 487, baseType: !431, size: 320, offset: 960)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2586, file: !115, line: 488, baseType: !2783, size: 32, offset: 1280)
!2783 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2784, line: 8, baseType: !456)
!2784 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2586, file: !115, line: 489, baseType: !66, size: 32, offset: 1312)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2586, file: !115, line: 490, baseType: !104, size: 128, offset: 1344)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2586, file: !115, line: 491, baseType: !27, size: 64, offset: 1472)
!2788 = !DIDerivedType(tag: DW_TAG_member, scope: !2571, file: !1742, line: 107, baseType: !2789, size: 64, offset: 192)
!2789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2571, file: !1742, line: 107, size: 64, elements: !2790)
!2790 = !{!2791, !2792}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2789, file: !1742, line: 108, baseType: !46, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2789, file: !1742, line: 109, baseType: !46, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2571, file: !1742, line: 117, baseType: !46, size: 64, offset: 256)
!2794 = !DIDerivedType(tag: DW_TAG_member, scope: !2568, file: !1742, line: 119, baseType: !2795, size: 320)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2568, file: !1742, line: 119, size: 320, elements: !2796)
!2796 = !{!2797, !2798, !2801, !2802, !2803}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2795, file: !1742, line: 124, baseType: !46, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2795, file: !1742, line: 125, baseType: !2799, size: 64, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1742, line: 125, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2795, file: !1742, line: 126, baseType: !46, size: 64, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2795, file: !1742, line: 127, baseType: !46, size: 64, offset: 192)
!2803 = !DIDerivedType(tag: DW_TAG_member, scope: !2795, file: !1742, line: 128, baseType: !2804, size: 64, offset: 256)
!2804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2795, file: !1742, line: 128, size: 64, elements: !2805)
!2805 = !{!2806, !2807}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2804, file: !1742, line: 133, baseType: !46, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2804, file: !1742, line: 138, baseType: !283, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, scope: !2568, file: !1742, line: 141, baseType: !2809, size: 64)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2568, file: !1742, line: 141, size: 64, elements: !2810)
!2810 = !{!2811}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2809, file: !1742, line: 142, baseType: !46, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, scope: !2568, file: !1742, line: 144, baseType: !2813, size: 128)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2568, file: !1742, line: 144, size: 128, elements: !2814)
!2814 = !{!2815, !2818}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2813, file: !1742, line: 146, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1742, line: 146, flags: DIFlagFwdDecl)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2813, file: !1742, line: 147, baseType: !27, size: 64, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2568, file: !1742, line: 161, baseType: !270, size: 128, align: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, scope: !2564, file: !1742, line: 164, baseType: !2821, size: 32, offset: 384)
!2821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2564, file: !1742, line: 164, size: 32, elements: !2822)
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2821, file: !1742, line: 169, baseType: !56, size: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2821, file: !1742, line: 177, baseType: !7, size: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2564, file: !1742, line: 181, baseType: !56, size: 32, offset: 416)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2560, file: !2547, line: 42, baseType: !457, size: 32, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2560, file: !2547, line: 43, baseType: !457, size: 32, offset: 96)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1456, file: !1457, line: 1340, baseType: !2829, size: 64, offset: 20672)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1457, line: 69, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1456, file: !1457, line: 1351, baseType: !29, size: 32, offset: 20736)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1456, file: !1457, line: 1352, baseType: !29, size: 32, offset: 20768)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1456, file: !1457, line: 1354, baseType: !46, size: 64, offset: 20800)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1456, file: !1457, line: 1364, baseType: !168, size: 64, offset: 20864)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1456, file: !1457, line: 1365, baseType: !168, size: 64, offset: 20928)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1456, file: !1457, line: 1412, baseType: !46, size: 64, offset: 20992)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1456, file: !1457, line: 1453, baseType: !2838, size: 64, offset: 21056)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1457, line: 1453, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1456, file: !1457, line: 1457, baseType: !2841, size: 64, offset: 21120)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !144, line: 61, size: 576, elements: !2843)
!2843 = !{!2844, !2845, !2864, !2867, !2868, !2901, !2911}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2842, file: !144, line: 62, baseType: !143, size: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, scope: !2842, file: !144, line: 64, baseType: !2846, size: 192, offset: 64)
!2846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2842, file: !144, line: 64, size: 192, elements: !2847)
!2847 = !{!2848, !2859}
!2848 = !DIDerivedType(tag: DW_TAG_member, scope: !2846, file: !144, line: 65, baseType: !2849, size: 192)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2846, file: !144, line: 65, size: 192, elements: !2850)
!2850 = !{!2851, !2858}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2849, file: !144, line: 66, baseType: !2852, size: 128)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2853, line: 50, size: 128, elements: !2854)
!2853 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2854 = !{!2855, !2856, !2857}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2852, file: !2853, line: 52, baseType: !46, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2852, file: !2853, line: 54, baseType: !7, size: 32, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2852, file: !2853, line: 55, baseType: !7, size: 32, offset: 96)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2849, file: !144, line: 67, baseType: !46, size: 64, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, scope: !2846, file: !144, line: 70, baseType: !2860, size: 192)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2846, file: !144, line: 70, size: 192, elements: !2861)
!2861 = !{!2862, !2863}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2860, file: !144, line: 71, baseType: !270, size: 128, align: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2860, file: !144, line: 72, baseType: !46, size: 64, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2842, file: !144, line: 76, baseType: !2865, size: 64, offset: 256)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !144, line: 76, flags: DIFlagFwdDecl)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2842, file: !144, line: 77, baseType: !46, size: 64, offset: 320)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2842, file: !144, line: 79, baseType: !2869, size: 64, offset: 384)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2853, line: 25, size: 256, elements: !2871)
!2871 = !{!2872, !2878, !2882}
!2872 = !DIDerivedType(tag: DW_TAG_member, scope: !2870, file: !2853, line: 26, baseType: !2873, size: 128)
!2873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2870, file: !2853, line: 26, size: 128, elements: !2874)
!2874 = !{!2875, !2877}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2873, file: !2853, line: 27, baseType: !2876, size: 128)
!2876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !2013)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2873, file: !2853, line: 28, baseType: !2876, size: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2870, file: !2853, line: 31, baseType: !2879, size: 64, offset: 128)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2881)
!2881 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2853, line: 23, flags: DIFlagFwdDecl)
!2882 = !DIDerivedType(tag: DW_TAG_member, scope: !2870, file: !2853, line: 33, baseType: !2883, size: 64, offset: 192)
!2883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2870, file: !2853, line: 33, size: 64, elements: !2884)
!2884 = !{!2885, !2891, !2896}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2883, file: !2853, line: 38, baseType: !2886, size: 64)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2883, file: !2853, line: 34, size: 64, elements: !2887)
!2887 = !{!2888, !2889, !2890}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2886, file: !2853, line: 35, baseType: !423, size: 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2886, file: !2853, line: 36, baseType: !90, size: 8, offset: 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2886, file: !2853, line: 37, baseType: !90, size: 8, offset: 40)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2883, file: !2853, line: 42, baseType: !2892, size: 16)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2883, file: !2853, line: 39, size: 16, elements: !2893)
!2893 = !{!2894, !2895}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2892, file: !2853, line: 40, baseType: !90, size: 8)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2892, file: !2853, line: 41, baseType: !90, size: 8, offset: 8)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2883, file: !2853, line: 46, baseType: !2897, size: 16)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2883, file: !2853, line: 43, size: 16, elements: !2898)
!2898 = !{!2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2897, file: !2853, line: 44, baseType: !90, size: 8)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2897, file: !2853, line: 45, baseType: !90, size: 8, offset: 8)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2842, file: !144, line: 81, baseType: !2902, size: 64, offset: 448)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !144, line: 85, size: 384, elements: !2904)
!2904 = !{!2905, !2906, !2907, !2908, !2909, !2910}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2903, file: !144, line: 86, baseType: !2865, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2903, file: !144, line: 87, baseType: !46, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2903, file: !144, line: 88, baseType: !46, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2903, file: !144, line: 89, baseType: !46, size: 64, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2903, file: !144, line: 90, baseType: !492, size: 8, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2903, file: !144, line: 92, baseType: !2902, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2842, file: !144, line: 82, baseType: !7, size: 32, offset: 512)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1456, file: !1457, line: 1463, baseType: !2913, offset: 21184)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1457, line: 739, elements: !1048)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1456, file: !1457, line: 1470, baseType: !270, size: 128, align: 64, offset: 21184)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1456, file: !1457, line: 1471, baseType: !337, size: 32, offset: 21312)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1456, file: !1457, line: 1472, baseType: !29, size: 32, offset: 21344)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1456, file: !1457, line: 1474, baseType: !1455, size: 64, offset: 21376)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1456, file: !1457, line: 1475, baseType: !2919, size: 320, offset: 21440)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2920, line: 11, size: 320, elements: !2921)
!2920 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2921 = !{!2922, !2923, !2924, !2929}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2919, file: !2920, line: 16, baseType: !350, size: 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2919, file: !2920, line: 17, baseType: !46, size: 64, offset: 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2919, file: !2920, line: 18, baseType: !2925, size: 64, offset: 192)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{null, !2928}
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2919, file: !2920, line: 19, baseType: !456, size: 32, offset: 256)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1456, file: !1457, line: 1478, baseType: !2931, size: 64, offset: 21760)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1457, line: 1478, flags: DIFlagFwdDecl)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1456, file: !1457, line: 1482, baseType: !337, size: 32, offset: 21824)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1456, file: !1457, line: 1489, baseType: !27, size: 64, offset: 21888)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1456, file: !1457, line: 1504, baseType: !27, size: 64, offset: 21952)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1456, file: !1457, line: 1505, baseType: !169, size: 64, offset: 22016)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1456, file: !1457, line: 1506, baseType: !168, size: 64, offset: 22080)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1456, file: !1457, line: 1507, baseType: !169, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1456, file: !1457, line: 1508, baseType: !169, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1456, file: !1457, line: 1509, baseType: !169, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1456, file: !1457, line: 1510, baseType: !270, size: 128, align: 64, offset: 22208)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1456, file: !1457, line: 1511, baseType: !29, size: 32, offset: 22336)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1456, file: !1457, line: 1515, baseType: !2944, size: 64, offset: 22400)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !265, line: 56, size: 64, elements: !2945)
!2945 = !{!2946}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2944, file: !265, line: 57, baseType: !268, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1456, file: !1457, line: 1518, baseType: !2944, size: 64, offset: 22464)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1456, file: !1457, line: 1528, baseType: !270, size: 128, align: 64, offset: 22528)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1456, file: !1457, line: 1552, baseType: !2950, size: 35328, offset: 23040)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2951, line: 430, size: 35328, elements: !2952)
!2951 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2952 = !{!2953, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2982, !2983, !2984, !2985, !2986, !2987, !2990, !2991, !2992, !2993}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2950, file: !2951, line: 432, baseType: !2954, size: 192)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2955, size: 192, elements: !329)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2956, line: 16, size: 64, elements: !2957)
!2956 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2957 = !{!2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2955, file: !2956, line: 17, baseType: !100, size: 16)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2955, file: !2956, line: 18, baseType: !100, size: 16, offset: 16)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2955, file: !2956, line: 19, baseType: !100, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2955, file: !2956, line: 19, baseType: !100, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2955, file: !2956, line: 19, baseType: !100, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2955, file: !2956, line: 19, baseType: !100, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2955, file: !2956, line: 19, baseType: !100, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2955, file: !2956, line: 20, baseType: !100, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2955, file: !2956, line: 20, baseType: !100, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2955, file: !2956, line: 20, baseType: !100, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2955, file: !2956, line: 20, baseType: !100, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2955, file: !2956, line: 20, baseType: !100, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2955, file: !2956, line: 20, baseType: !100, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2950, file: !2951, line: 436, baseType: !46, size: 64, offset: 192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2950, file: !2951, line: 440, baseType: !33, size: 16, offset: 256)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2950, file: !2951, line: 441, baseType: !33, size: 16, offset: 272)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2950, file: !2951, line: 442, baseType: !33, size: 16, offset: 288)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2950, file: !2951, line: 443, baseType: !33, size: 16, offset: 304)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2950, file: !2951, line: 447, baseType: !46, size: 64, offset: 320)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2950, file: !2951, line: 448, baseType: !46, size: 64, offset: 384)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2950, file: !2951, line: 459, baseType: !2979, size: 256, offset: 448)
!2979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2980, size: 256, elements: !355)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2951, line: 428, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2950, file: !2951, line: 461, baseType: !46, size: 64, offset: 704)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2950, file: !2951, line: 463, baseType: !46, size: 64, offset: 768)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2950, file: !2951, line: 465, baseType: !46, size: 64, offset: 832)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2950, file: !2951, line: 466, baseType: !46, size: 64, offset: 896)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2950, file: !2951, line: 467, baseType: !46, size: 64, offset: 960)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2950, file: !2951, line: 473, baseType: !2988, size: 64, offset: 1024)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2951, line: 10, flags: DIFlagFwdDecl)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2950, file: !2951, line: 480, baseType: !46, size: 64, offset: 1088)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2950, file: !2951, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2950, file: !2951, line: 491, baseType: !456, size: 32, offset: 1184)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2950, file: !2951, line: 501, baseType: !2994, size: 33792, offset: 1536)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2995, line: 448, size: 33792, elements: !2996)
!2995 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2996 = !{!2997, !2998, !2999, !3161, !3162, !3168, !3169}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2994, file: !2995, line: 461, baseType: !7, size: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2994, file: !2995, line: 468, baseType: !46, size: 64, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2994, file: !2995, line: 476, baseType: !3000, size: 64, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2995, line: 356, size: 33280, align: 512, elements: !3002)
!3002 = !{!3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3001, file: !2995, line: 358, baseType: !7, size: 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3001, file: !2995, line: 361, baseType: !7, size: 32, offset: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3001, file: !2995, line: 364, baseType: !168, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3001, file: !2995, line: 367, baseType: !168, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3001, file: !2995, line: 370, baseType: !168, size: 64, offset: 192)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3001, file: !2995, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3001, file: !2995, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3001, file: !2995, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3001, file: !2995, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3001, file: !2995, line: 397, baseType: !3013, size: 32768, offset: 512)
!3013 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2995, line: 348, size: 32768, elements: !3014)
!3014 = !{!3015, !3030, !3067, !3144, !3157}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3013, file: !2995, line: 349, baseType: !3016, size: 896)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2995, line: 12, size: 896, elements: !3017)
!3017 = !{!3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3029}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3016, file: !2995, line: 13, baseType: !456, size: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3016, file: !2995, line: 14, baseType: !456, size: 32, offset: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3016, file: !2995, line: 15, baseType: !456, size: 32, offset: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3016, file: !2995, line: 16, baseType: !456, size: 32, offset: 96)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3016, file: !2995, line: 17, baseType: !456, size: 32, offset: 128)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3016, file: !2995, line: 18, baseType: !456, size: 32, offset: 160)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3016, file: !2995, line: 19, baseType: !456, size: 32, offset: 192)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3016, file: !2995, line: 22, baseType: !3026, size: 640, offset: 224)
!3026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 640, elements: !3027)
!3027 = !{!3028}
!3028 = !DISubrange(count: 20)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3016, file: !2995, line: 25, baseType: !456, size: 32, offset: 864)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3013, file: !2995, line: 350, baseType: !3031, size: 4096, align: 128)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2995, line: 34, size: 4096, align: 128, elements: !3032)
!3032 = !{!3033, !3034, !3035, !3036, !3037, !3052, !3053, !3054, !3056, !3058, !3062}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3031, file: !2995, line: 35, baseType: !100, size: 16)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3031, file: !2995, line: 36, baseType: !100, size: 16, offset: 16)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3031, file: !2995, line: 37, baseType: !100, size: 16, offset: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3031, file: !2995, line: 38, baseType: !100, size: 16, offset: 48)
!3037 = !DIDerivedType(tag: DW_TAG_member, scope: !3031, file: !2995, line: 39, baseType: !3038, size: 128, offset: 64)
!3038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3031, file: !2995, line: 39, size: 128, elements: !3039)
!3039 = !{!3040, !3045}
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !3038, file: !2995, line: 40, baseType: !3041, size: 128)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3038, file: !2995, line: 40, size: 128, elements: !3042)
!3042 = !{!3043, !3044}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3041, file: !2995, line: 41, baseType: !168, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3041, file: !2995, line: 42, baseType: !168, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, scope: !3038, file: !2995, line: 44, baseType: !3046, size: 128)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3038, file: !2995, line: 44, size: 128, elements: !3047)
!3047 = !{!3048, !3049, !3050, !3051}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3046, file: !2995, line: 45, baseType: !456, size: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3046, file: !2995, line: 46, baseType: !456, size: 32, offset: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3046, file: !2995, line: 47, baseType: !456, size: 32, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3046, file: !2995, line: 48, baseType: !456, size: 32, offset: 96)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3031, file: !2995, line: 51, baseType: !456, size: 32, offset: 192)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3031, file: !2995, line: 52, baseType: !456, size: 32, offset: 224)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3031, file: !2995, line: 55, baseType: !3055, size: 1024, offset: 256)
!3055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 1024, elements: !2248)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3031, file: !2995, line: 58, baseType: !3057, size: 2048, offset: 1280)
!3057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 2048, elements: !2333)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3031, file: !2995, line: 60, baseType: !3059, size: 384, offset: 3328)
!3059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 384, elements: !3060)
!3060 = !{!3061}
!3061 = !DISubrange(count: 12)
!3062 = !DIDerivedType(tag: DW_TAG_member, scope: !3031, file: !2995, line: 62, baseType: !3063, size: 384, offset: 3712)
!3063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3031, file: !2995, line: 62, size: 384, elements: !3064)
!3064 = !{!3065, !3066}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3063, file: !2995, line: 63, baseType: !3059, size: 384)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3063, file: !2995, line: 64, baseType: !3059, size: 384)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3013, file: !2995, line: 351, baseType: !3068, size: 1088)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2995, line: 79, size: 1088, elements: !3069)
!3069 = !{!3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3143}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3068, file: !2995, line: 80, baseType: !456, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3068, file: !2995, line: 81, baseType: !456, size: 32, offset: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3068, file: !2995, line: 82, baseType: !456, size: 32, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3068, file: !2995, line: 83, baseType: !456, size: 32, offset: 96)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3068, file: !2995, line: 84, baseType: !456, size: 32, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3068, file: !2995, line: 85, baseType: !456, size: 32, offset: 160)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3068, file: !2995, line: 86, baseType: !456, size: 32, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3068, file: !2995, line: 88, baseType: !3026, size: 640, offset: 224)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3068, file: !2995, line: 89, baseType: !90, size: 8, offset: 864)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3068, file: !2995, line: 90, baseType: !90, size: 8, offset: 872)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3068, file: !2995, line: 91, baseType: !90, size: 8, offset: 880)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3068, file: !2995, line: 92, baseType: !90, size: 8, offset: 888)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3068, file: !2995, line: 93, baseType: !90, size: 8, offset: 896)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3068, file: !2995, line: 94, baseType: !90, size: 8, offset: 904)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3068, file: !2995, line: 95, baseType: !3085, size: 64, offset: 960)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3087, line: 11, size: 128, elements: !3088)
!3087 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3088 = !{!3089, !3090}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3086, file: !3087, line: 12, baseType: !723, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3086, file: !3087, line: 13, baseType: !3091, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3093, line: 103, size: 1344, elements: !3094)
!3093 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3094 = !{!3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3123, !3124, !3125}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3092, file: !3093, line: 109, baseType: !46, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3092, file: !3093, line: 110, baseType: !46, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3092, file: !3093, line: 111, baseType: !46, size: 64, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3092, file: !3093, line: 112, baseType: !46, size: 64, offset: 192)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3092, file: !3093, line: 113, baseType: !46, size: 64, offset: 256)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3092, file: !3093, line: 114, baseType: !46, size: 64, offset: 320)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3092, file: !3093, line: 117, baseType: !46, size: 64, offset: 384)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3092, file: !3093, line: 118, baseType: !46, size: 64, offset: 448)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3092, file: !3093, line: 119, baseType: !46, size: 64, offset: 512)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3092, file: !3093, line: 120, baseType: !46, size: 64, offset: 576)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3092, file: !3093, line: 121, baseType: !46, size: 64, offset: 640)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3092, file: !3093, line: 122, baseType: !46, size: 64, offset: 704)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3092, file: !3093, line: 123, baseType: !46, size: 64, offset: 768)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3092, file: !3093, line: 124, baseType: !46, size: 64, offset: 832)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3092, file: !3093, line: 125, baseType: !46, size: 64, offset: 896)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3092, file: !3093, line: 139, baseType: !46, size: 64, offset: 960)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3092, file: !3093, line: 142, baseType: !46, size: 64, offset: 1024)
!3112 = !DIDerivedType(tag: DW_TAG_member, scope: !3092, file: !3093, line: 144, baseType: !3113, size: 64, offset: 1088)
!3113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3092, file: !3093, line: 144, size: 64, elements: !3114)
!3114 = !{!3115, !3116, !3117}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3113, file: !3093, line: 146, baseType: !100, size: 16)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3113, file: !3093, line: 148, baseType: !168, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3113, file: !3093, line: 150, baseType: !3118, size: 64)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3093, line: 59, size: 64, elements: !3119)
!3119 = !{!3120, !3121, !3122}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3118, file: !3093, line: 61, baseType: !168, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3118, file: !3093, line: 63, baseType: !168, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3118, file: !3093, line: 65, baseType: !168, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3092, file: !3093, line: 153, baseType: !46, size: 64, offset: 1152)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3092, file: !3093, line: 154, baseType: !46, size: 64, offset: 1216)
!3125 = !DIDerivedType(tag: DW_TAG_member, scope: !3092, file: !3093, line: 156, baseType: !3126, size: 64, offset: 1280)
!3126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3092, file: !3093, line: 156, size: 64, elements: !3127)
!3127 = !{!3128, !3129, !3130}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3126, file: !3093, line: 158, baseType: !100, size: 16)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3126, file: !3093, line: 160, baseType: !168, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3126, file: !3093, line: 162, baseType: !3131, size: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3093, line: 69, size: 64, elements: !3132)
!3132 = !{!3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3131, file: !3093, line: 71, baseType: !168, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3131, file: !3093, line: 73, baseType: !168, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3131, file: !3093, line: 75, baseType: !168, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3131, file: !3093, line: 77, baseType: !168, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3131, file: !3093, line: 80, baseType: !168, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3131, file: !3093, line: 83, baseType: !168, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3131, file: !3093, line: 86, baseType: !168, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3131, file: !3093, line: 88, baseType: !168, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3131, file: !3093, line: 93, baseType: !168, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3131, file: !3093, line: 100, baseType: !168, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3068, file: !2995, line: 96, baseType: !456, size: 32, offset: 1024)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3013, file: !2995, line: 352, baseType: !3145, size: 4608, align: 512)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2995, line: 333, size: 4608, align: 512, elements: !3146)
!3146 = !{!3147, !3148, !3155}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3145, file: !2995, line: 334, baseType: !3031, size: 4096, align: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3145, file: !2995, line: 335, baseType: !3149, size: 512, offset: 4096)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2995, line: 312, size: 512, elements: !3150)
!3150 = !{!3151, !3152, !3153}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3149, file: !2995, line: 313, baseType: !168, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3149, file: !2995, line: 314, baseType: !168, size: 64, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3149, file: !2995, line: 315, baseType: !3154, size: 384, offset: 128)
!3154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 384, elements: !479)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3145, file: !2995, line: 336, baseType: !3156, offset: 4608)
!3156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, elements: !368)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3013, file: !2995, line: 353, baseType: !3158, size: 32768)
!3158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 32768, elements: !3159)
!3159 = !{!3160}
!3160 = !DISubrange(count: 4096)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2994, file: !2995, line: 484, baseType: !3000, size: 64, offset: 192)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2994, file: !2995, line: 491, baseType: !3163, size: 128, offset: 256)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2995, line: 404, size: 128, elements: !3164)
!3164 = !{!3165, !3166, !3167}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3163, file: !2995, line: 424, baseType: !168, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3163, file: !2995, line: 432, baseType: !7, size: 32, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3163, file: !2995, line: 440, baseType: !7, size: 32, offset: 96)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2994, file: !2995, line: 498, baseType: !3163, size: 128, offset: 384)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2994, file: !2995, line: 508, baseType: !3001, size: 33280, align: 512, offset: 512)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1437, file: !1438, line: 16, baseType: !61, size: 192, offset: 512)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1437, file: !1438, line: 17, baseType: !56, size: 32, offset: 704)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1008, file: !115, line: 1240, baseType: !27, size: 64, offset: 6912)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1008, file: !115, line: 1243, baseType: !456, size: 32, offset: 6976)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1008, file: !115, line: 1245, baseType: !447, size: 64, offset: 7040)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1008, file: !115, line: 1246, baseType: !447, size: 64, offset: 7104)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1008, file: !115, line: 1248, baseType: !457, size: 32, offset: 7168)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1008, file: !115, line: 1249, baseType: !3178, size: 64, offset: 7232)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !115, line: 634, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1008, file: !115, line: 1252, baseType: !2247, size: 256, offset: 7296)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1008, file: !115, line: 1253, baseType: !3182, size: 128, offset: 7552)
!3182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3183, line: 21, baseType: !3184)
!3183 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3183, line: 19, size: 128, elements: !3185)
!3185 = !{!3186}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3184, file: !3183, line: 20, baseType: !3187, size: 128)
!3187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 128, elements: !2013)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1008, file: !115, line: 1255, baseType: !7, size: 32, offset: 7680)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1008, file: !115, line: 1261, baseType: !292, size: 256, offset: 7744)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1008, file: !115, line: 1267, baseType: !23, size: 64, offset: 8000)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1008, file: !115, line: 1269, baseType: !3192, size: 64, offset: 8064)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3194)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !761, line: 128, size: 1024, align: 512, elements: !3195)
!3195 = !{!3196, !3200, !3201, !3208, !3214, !3218, !3222, !3226, !3227, !3231, !3235, !3240, !3244}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3194, file: !761, line: 129, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!29, !759, !7}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3194, file: !761, line: 130, baseType: !3197, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3194, file: !761, line: 131, baseType: !3202, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!29, !3205, !3207}
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3194, file: !761, line: 132, baseType: !3209, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!29, !3205, !7, !23, !3212}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3194, file: !761, line: 134, baseType: !3215, size: 64, offset: 256)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!29, !3205}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3194, file: !761, line: 135, baseType: !3219, size: 64, offset: 320)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!29, !759}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3194, file: !761, line: 136, baseType: !3223, size: 64, offset: 384)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{null, !759}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3194, file: !761, line: 137, baseType: !3223, size: 64, offset: 448)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3194, file: !761, line: 138, baseType: !3228, size: 64, offset: 512)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{null, !759, !799}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3194, file: !761, line: 139, baseType: !3232, size: 64, offset: 576)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!503, !759, !503, !29}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3194, file: !761, line: 140, baseType: !3236, size: 64, offset: 640)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!754, !3239}
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3194, file: !761, line: 141, baseType: !3241, size: 64, offset: 704)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!29, !920, !492}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3194, file: !761, line: 142, baseType: !3245, size: 64, offset: 768)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!759, !759, !3248}
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1008, file: !115, line: 1271, baseType: !3251, size: 448, offset: 8128)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1219, line: 63, size: 448, elements: !3252)
!3252 = !{!3253, !3258, !3259, !3260, !3261, !3262, !3263}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3251, file: !1219, line: 64, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!46, !3257, !1217}
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3251, file: !1219, line: 66, baseType: !3254, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3251, file: !1219, line: 69, baseType: !723, size: 64, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3251, file: !1219, line: 70, baseType: !29, size: 32, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3251, file: !1219, line: 71, baseType: !7, size: 32, offset: 224)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3251, file: !1219, line: 74, baseType: !104, size: 128, offset: 256)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3251, file: !1219, line: 85, baseType: !3264, size: 64, offset: 384)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1008, file: !115, line: 1274, baseType: !283, size: 64, offset: 8576)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1008, file: !115, line: 1280, baseType: !283, size: 64, offset: 8640)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1008, file: !115, line: 1283, baseType: !29, size: 32, offset: 8704)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1008, file: !115, line: 1286, baseType: !2783, size: 32, offset: 8736)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1008, file: !115, line: 1289, baseType: !3270, size: 64, offset: 8768)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !626, line: 18, flags: DIFlagFwdDecl)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1008, file: !115, line: 1290, baseType: !346, size: 64, offset: 8832)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1008, file: !115, line: 1297, baseType: !576, size: 64, offset: 8896)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1008, file: !115, line: 1304, baseType: !3275, size: 64, offset: 8960)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3276, line: 49, size: 64, elements: !3277)
!3276 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3277 = !{!3278}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3275, file: !3276, line: 50, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3276, line: 41, size: 512, align: 512, elements: !3281)
!3281 = !{!3282, !3283, !3288}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3280, file: !3276, line: 43, baseType: !66, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3280, file: !3276, line: 45, baseType: !3284, size: 192, offset: 64)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3276, line: 29, size: 192, elements: !3285)
!3285 = !{!3286, !3287}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3284, file: !3276, line: 30, baseType: !104, size: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3284, file: !3276, line: 32, baseType: !723, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3280, file: !3276, line: 46, baseType: !723, size: 64, offset: 256)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1008, file: !115, line: 1305, baseType: !3275, size: 64, offset: 9024)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1008, file: !115, line: 1306, baseType: !270, size: 128, align: 64, offset: 9088)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1008, file: !115, line: 1307, baseType: !625, size: 256, offset: 9216)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1008, file: !115, line: 1309, baseType: !292, size: 256, offset: 9472)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1008, file: !115, line: 1314, baseType: !29, size: 32, offset: 9728)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1008, file: !115, line: 1317, baseType: !66, size: 32, align: 512, offset: 10240)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1008, file: !115, line: 1318, baseType: !104, size: 128, offset: 10304)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1008, file: !115, line: 1320, baseType: !66, size: 32, offset: 10432)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1008, file: !115, line: 1321, baseType: !104, size: 128, offset: 10496)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !800, file: !115, line: 656, baseType: !2585, size: 64, offset: 512)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !800, file: !115, line: 659, baseType: !27, size: 64, offset: 576)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !800, file: !115, line: 663, baseType: !46, size: 64, offset: 640)
!3301 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !115, line: 671, baseType: !3302, size: 32, offset: 704)
!3302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !115, line: 671, size: 32, elements: !3303)
!3303 = !{!3304, !3306}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3302, file: !115, line: 672, baseType: !3305, size: 32)
!3305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3302, file: !115, line: 673, baseType: !7, size: 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !800, file: !115, line: 675, baseType: !873, size: 32, offset: 736)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !800, file: !115, line: 676, baseType: !48, size: 64, offset: 768)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !800, file: !115, line: 677, baseType: !909, size: 128, offset: 832)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !800, file: !115, line: 678, baseType: !909, size: 128, offset: 960)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !800, file: !115, line: 679, baseType: !909, size: 128, offset: 1088)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !800, file: !115, line: 680, baseType: !66, size: 32, offset: 1216)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !800, file: !115, line: 681, baseType: !33, size: 16, offset: 1248)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !800, file: !115, line: 682, baseType: !90, size: 8, offset: 1264)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !800, file: !115, line: 683, baseType: !90, size: 8, offset: 1272)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !800, file: !115, line: 684, baseType: !1350, size: 64, offset: 1280)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !800, file: !115, line: 691, baseType: !46, size: 64, offset: 1344)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !800, file: !115, line: 692, baseType: !431, size: 320, offset: 1408)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !800, file: !115, line: 694, baseType: !46, size: 64, offset: 1728)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !800, file: !115, line: 695, baseType: !46, size: 64, offset: 1792)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !800, file: !115, line: 697, baseType: !350, size: 128, offset: 1856)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !800, file: !115, line: 698, baseType: !104, size: 128, offset: 1984)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !800, file: !115, line: 707, baseType: !104, size: 128, offset: 2112)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !800, file: !115, line: 708, baseType: !104, size: 128, offset: 2240)
!3325 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !115, line: 709, baseType: !3326, size: 128, offset: 2368)
!3326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !115, line: 709, size: 128, elements: !3327)
!3327 = !{!3328, !3329}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3326, file: !115, line: 710, baseType: !346, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3326, file: !115, line: 711, baseType: !270, size: 128, align: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !800, file: !115, line: 713, baseType: !285, size: 64, offset: 2496)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !800, file: !115, line: 714, baseType: !285, size: 64, offset: 2560)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !800, file: !115, line: 715, baseType: !56, size: 32, offset: 2624)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !800, file: !115, line: 716, baseType: !56, size: 32, offset: 2656)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !800, file: !115, line: 717, baseType: !56, size: 32, offset: 2688)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !800, file: !115, line: 719, baseType: !56, size: 32, offset: 2720)
!3336 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !115, line: 721, baseType: !3337, size: 64, offset: 2752)
!3337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !115, line: 721, size: 64, elements: !3338)
!3338 = !{!3339, !3520}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3337, file: !115, line: 722, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3342)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !115, line: 1914, size: 2112, elements: !3343)
!3343 = !{!3344, !3345, !3349, !3353, !3357, !3358, !3359, !3365, !3378, !3386, !3390, !3391, !3448, !3449, !3453, !3458, !3459, !3463, !3467, !3473, !3474, !3478, !3479, !3483, !3487, !3488, !3493, !3497, !3501, !3505, !3509, !3510, !3516}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3342, file: !115, line: 1915, baseType: !1040, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3342, file: !115, line: 1916, baseType: !3346, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!48, !257, !48, !29}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3342, file: !115, line: 1917, baseType: !3350, size: 64, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!951, !257, !503, !42, !47}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3342, file: !115, line: 1918, baseType: !3354, size: 64, offset: 192)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!951, !257, !23, !42, !47}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3342, file: !115, line: 1919, baseType: !2717, size: 64, offset: 256)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3342, file: !115, line: 1920, baseType: !2717, size: 64, offset: 320)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3342, file: !115, line: 1921, baseType: !3360, size: 64, offset: 384)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!29, !2720, !3363, !7}
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !115, line: 53, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3342, file: !115, line: 1923, baseType: !3366, size: 64, offset: 448)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!29, !257, !3369}
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !115, line: 1858, size: 128, elements: !3371)
!3371 = !{!3372, !3377}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3370, file: !115, line: 1859, baseType: !3373, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !115, line: 1855, baseType: !3374)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!492, !3369, !23, !29, !48, !168, !7}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3370, file: !115, line: 1860, baseType: !48, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3342, file: !115, line: 1924, baseType: !3379, size: 64, offset: 512)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!3382, !257, !3384}
!3382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3383, line: 59, baseType: !7)
!3383 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !115, line: 61, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3342, file: !115, line: 1925, baseType: !3387, size: 64, offset: 576)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!723, !257, !7, !46}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3342, file: !115, line: 1926, baseType: !3387, size: 64, offset: 640)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3342, file: !115, line: 1927, baseType: !3392, size: 64, offset: 704)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!29, !257, !3395}
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1742, line: 625, size: 1344, elements: !3397)
!3397 = !{!3398, !3407, !3408, !3414, !3421, !3422, !3427, !3428, !3433, !3434, !3437, !3441, !3442, !3443, !3444, !3445, !3446}
!3398 = !DIDerivedType(tag: DW_TAG_member, scope: !3396, file: !1742, line: 628, baseType: !3399, size: 128)
!3399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3396, file: !1742, line: 628, size: 128, elements: !3400)
!3400 = !{!3401, !3406}
!3401 = !DIDerivedType(tag: DW_TAG_member, scope: !3399, file: !1742, line: 629, baseType: !3402, size: 128)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3399, file: !1742, line: 629, size: 128, elements: !3403)
!3403 = !{!3404, !3405}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3402, file: !1742, line: 631, baseType: !46, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3402, file: !1742, line: 632, baseType: !46, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3399, file: !1742, line: 635, baseType: !270, size: 128, align: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3396, file: !1742, line: 639, baseType: !1740, size: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3396, file: !1742, line: 640, baseType: !3409, size: 64, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1776, line: 297, baseType: !3410)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1776, line: 297, size: 64, elements: !3411)
!3411 = !{!3412}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3410, file: !1776, line: 297, baseType: !3413, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1781, line: 19, baseType: !46)
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3396, file: !1742, line: 646, baseType: !3415, size: 64, offset: 256)
!3415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3396, file: !1742, line: 646, size: 64, elements: !3416)
!3416 = !{!3417, !3420}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3415, file: !1742, line: 647, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3419)
!3419 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1742, line: 542, baseType: !46)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3415, file: !1742, line: 648, baseType: !3419, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3396, file: !1742, line: 666, baseType: !29, size: 32, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3396, file: !1742, line: 667, baseType: !3423, size: 64, offset: 384)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1742, line: 579, size: 320, elements: !3425)
!3425 = !{!3426}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3424, file: !1742, line: 580, baseType: !431, size: 320)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3396, file: !1742, line: 670, baseType: !492, size: 8, offset: 448)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3396, file: !1742, line: 681, baseType: !3429, size: 256, offset: 512)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3396, file: !1742, line: 678, size: 256, elements: !3430)
!3430 = !{!3431, !3432}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3429, file: !1742, line: 679, baseType: !210, size: 192, align: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3429, file: !1742, line: 680, baseType: !46, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3396, file: !1742, line: 689, baseType: !104, size: 128, offset: 768)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3396, file: !1742, line: 691, baseType: !3435, size: 64, offset: 896)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1742, line: 691, flags: DIFlagFwdDecl)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3396, file: !1742, line: 694, baseType: !3438, size: 64, offset: 960)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3440)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1742, line: 694, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3396, file: !1742, line: 697, baseType: !46, size: 64, offset: 1024)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3396, file: !1742, line: 699, baseType: !257, size: 64, offset: 1088)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3396, file: !1742, line: 700, baseType: !27, size: 64, offset: 1152)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3396, file: !1742, line: 711, baseType: !283, size: 64, offset: 1216)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3396, file: !1742, line: 717, baseType: !2520, size: 64, offset: 1280)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3396, file: !1742, line: 722, baseType: !3447, offset: 1344)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1742, line: 570, elements: !1048)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3342, file: !115, line: 1928, baseType: !46, size: 64, offset: 768)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3342, file: !115, line: 1929, baseType: !3450, size: 64, offset: 832)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!29, !799, !257}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3342, file: !115, line: 1930, baseType: !3454, size: 64, offset: 896)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!29, !257, !3457}
!3457 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !115, line: 1061, baseType: !27)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3342, file: !115, line: 1931, baseType: !3450, size: 64, offset: 960)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3342, file: !115, line: 1932, baseType: !3460, size: 64, offset: 1024)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!29, !257, !48, !48, !29}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3342, file: !115, line: 1933, baseType: !3464, size: 64, offset: 1088)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!29, !29, !257, !29}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3342, file: !115, line: 1934, baseType: !3468, size: 64, offset: 1152)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!29, !257, !29, !3471}
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !115, line: 1063, flags: DIFlagFwdDecl)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3342, file: !115, line: 1935, baseType: !1765, size: 64, offset: 1216)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3342, file: !115, line: 1936, baseType: !3475, size: 64, offset: 1280)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!29, !29}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3342, file: !115, line: 1937, baseType: !3468, size: 64, offset: 1344)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3342, file: !115, line: 1938, baseType: !3480, size: 64, offset: 1408)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!951, !2557, !257, !47, !42, !7}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3342, file: !115, line: 1939, baseType: !3484, size: 64, offset: 1472)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!951, !257, !47, !2557, !42, !7}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3342, file: !115, line: 1940, baseType: !2773, size: 64, offset: 1536)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3342, file: !115, line: 1941, baseType: !3489, size: 64, offset: 1600)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!29, !257, !29, !3492, !2694}
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3342, file: !115, line: 1942, baseType: !3494, size: 64, offset: 1664)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!723, !257, !29, !48, !48}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3342, file: !115, line: 1944, baseType: !3498, size: 64, offset: 1728)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{null, !1117, !257}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3342, file: !115, line: 1948, baseType: !3502, size: 64, offset: 1792)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!951, !257, !48, !257, !48, !42, !7}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3342, file: !115, line: 1950, baseType: !3506, size: 64, offset: 1856)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!48, !257, !48, !257, !48, !48, !7}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3342, file: !115, line: 1953, baseType: !3460, size: 64, offset: 1920)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3342, file: !115, line: 1954, baseType: !3511, size: 64, offset: 1984)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!29, !3514, !7}
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !115, line: 1911, flags: DIFlagFwdDecl)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3342, file: !115, line: 1955, baseType: !3517, size: 64, offset: 2048)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!29, !3514, !3363, !7}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3337, file: !115, line: 723, baseType: !1067, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !800, file: !115, line: 725, baseType: !3522, size: 64, offset: 2816)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !115, line: 725, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !800, file: !115, line: 726, baseType: !2586, size: 1536, align: 64, offset: 2880)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !800, file: !115, line: 727, baseType: !104, size: 128, offset: 4416)
!3526 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !115, line: 728, baseType: !3527, size: 64, offset: 4544)
!3527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !115, line: 728, size: 64, elements: !3528)
!3528 = !{!3529, !3530, !3533, !3534}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3527, file: !115, line: 729, baseType: !2557, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3527, file: !115, line: 730, baseType: !3531, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !115, line: 730, flags: DIFlagFwdDecl)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3527, file: !115, line: 731, baseType: !503, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3527, file: !115, line: 732, baseType: !7, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !800, file: !115, line: 735, baseType: !457, size: 32, offset: 4608)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !800, file: !115, line: 738, baseType: !457, size: 32, offset: 4640)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !800, file: !115, line: 739, baseType: !3178, size: 64, offset: 4672)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !800, file: !115, line: 750, baseType: !27, size: 64, offset: 4736)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !760, file: !761, line: 91, baseType: !3540, size: 256, offset: 448)
!3540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 256, elements: !2248)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !760, file: !761, line: 94, baseType: !3542, size: 64, offset: 704)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3543, line: 25, size: 64, elements: !3544)
!3543 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3544 = !{!3545}
!3545 = !DIDerivedType(tag: DW_TAG_member, scope: !3542, file: !3543, line: 26, baseType: !3546, size: 64)
!3546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3542, file: !3543, line: 26, size: 64, elements: !3547)
!3547 = !{!3548, !3549}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3546, file: !3543, line: 28, baseType: !169, size: 64, align: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, scope: !3546, file: !3543, line: 30, baseType: !3550, size: 64)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3546, file: !3543, line: 30, size: 64, elements: !3551)
!3551 = !{!3552, !3553}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3550, file: !3543, line: 31, baseType: !66, size: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3550, file: !3543, line: 32, baseType: !29, size: 32, offset: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !760, file: !761, line: 95, baseType: !3192, size: 64, offset: 768)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !760, file: !761, line: 96, baseType: !1007, size: 64, offset: 832)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !760, file: !761, line: 97, baseType: !46, size: 64, offset: 896)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !760, file: !761, line: 98, baseType: !27, size: 64, offset: 960)
!3558 = !DIDerivedType(tag: DW_TAG_member, scope: !760, file: !761, line: 100, baseType: !3559, size: 128, offset: 1024)
!3559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !761, line: 100, size: 128, elements: !3560)
!3560 = !{!3561, !3562}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3559, file: !761, line: 101, baseType: !104, size: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3559, file: !761, line: 102, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !760, file: !761, line: 104, baseType: !104, size: 128, offset: 1152)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !760, file: !761, line: 105, baseType: !104, size: 128, offset: 1280)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !760, file: !761, line: 113, baseType: !3567, size: 128, offset: 1408)
!3567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !761, line: 109, size: 128, elements: !3568)
!3568 = !{!3569, !3570, !3571}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3567, file: !761, line: 110, baseType: !350, size: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3567, file: !761, line: 111, baseType: !775, size: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3567, file: !761, line: 112, baseType: !270, size: 128, align: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !755, file: !756, line: 72, baseType: !1007, size: 64, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !755, file: !756, line: 73, baseType: !29, size: 32, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !755, file: !756, line: 74, baseType: !838, size: 64, offset: 192)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !750, file: !751, line: 10, baseType: !759, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !258, file: !115, line: 1015, baseType: !799, size: 64, offset: 1344)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !258, file: !115, line: 1016, baseType: !3340, size: 64, offset: 1408)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !258, file: !115, line: 1018, baseType: !168, size: 64, offset: 1472)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !258, file: !115, line: 1020, baseType: !27, size: 64, offset: 1536)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !258, file: !115, line: 1023, baseType: !27, size: 64, offset: 1600)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !258, file: !115, line: 1027, baseType: !3582, size: 64, offset: 1664)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !258, file: !115, line: 1029, baseType: !2585, size: 64, offset: 1728)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !258, file: !115, line: 1030, baseType: !2783, size: 32, offset: 1792)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !258, file: !115, line: 1031, baseType: !2783, size: 32, offset: 1824)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !253, file: !203, line: 255, baseType: !1117, size: 64, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !253, file: !203, line: 256, baseType: !27, size: 64, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !253, file: !203, line: 259, baseType: !292, size: 256, offset: 256)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !253, file: !203, line: 260, baseType: !292, size: 256, offset: 512)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !253, file: !203, line: 261, baseType: !29, size: 32, offset: 768)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !253, file: !203, line: 262, baseType: !104, size: 128, offset: 832)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !253, file: !203, line: 263, baseType: !503, size: 64, offset: 960)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !253, file: !203, line: 265, baseType: !42, size: 64, offset: 1024)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !253, file: !203, line: 266, baseType: !492, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !253, file: !203, line: 267, baseType: !492, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !253, file: !203, line: 268, baseType: !3438, size: 64, offset: 1152)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !246, file: !203, line: 277, baseType: !3598, size: 64, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{null, !252}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !246, file: !203, line: 290, baseType: !1147, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !246, file: !203, line: 292, baseType: !1135, size: 64, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !246, file: !203, line: 293, baseType: !1143, size: 64, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !246, file: !203, line: 294, baseType: !1139, size: 64, offset: 320)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !246, file: !203, line: 296, baseType: !3606, size: 64, offset: 384)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!951, !252, !503, !42, !48}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !246, file: !203, line: 306, baseType: !42, size: 64, offset: 448)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !246, file: !203, line: 313, baseType: !492, size: 8, offset: 512)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !246, file: !203, line: 314, baseType: !3606, size: 64, offset: 576)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !246, file: !203, line: 317, baseType: !3613, size: 64, offset: 640)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!3382, !252, !3384}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !246, file: !203, line: 320, baseType: !3617, size: 64, offset: 704)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!29, !252, !3395}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !241, file: !203, line: 176, baseType: !3621, size: 64, offset: 64)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !203, line: 35, flags: DIFlagFwdDecl)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !241, file: !203, line: 177, baseType: !48, size: 64, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !241, file: !203, line: 178, baseType: !201, size: 64, offset: 192)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !202, file: !203, line: 215, baseType: !27, size: 64, offset: 768)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !202, file: !203, line: 221, baseType: !168, size: 64, offset: 832)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !203, line: 223, baseType: !33, size: 16, offset: 896)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !202, file: !203, line: 224, baseType: !31, size: 16, offset: 912)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !202, file: !203, line: 225, baseType: !3630, size: 64, offset: 960)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !203, line: 36, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !202, file: !203, line: 227, baseType: !270, size: 128, align: 64, offset: 1024)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !186, file: !182, line: 442, baseType: !3634, size: 448, offset: 2048)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !182, line: 138, size: 448, elements: !3635)
!3635 = !{!3636, !3637, !3638}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3634, file: !182, line: 140, baseType: !201, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3634, file: !182, line: 141, baseType: !46, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3634, file: !182, line: 142, baseType: !2919, size: 320, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !186, file: !182, line: 443, baseType: !3634, size: 448, offset: 2496)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !186, file: !182, line: 446, baseType: !3641, offset: 2944)
!3641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3634, elements: !3642)
!3642 = !{!3643}
!3643 = !DISubrange(count: 0)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !186, file: !182, line: 455, baseType: !100, size: 16, offset: 2944)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !186, file: !182, line: 456, baseType: !100, size: 16, offset: 2960)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !186, file: !182, line: 457, baseType: !100, size: 16, offset: 2976)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !186, file: !182, line: 458, baseType: !100, size: 16, offset: 2992)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !186, file: !182, line: 461, baseType: !2075, size: 896, offset: 3008)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !186, file: !182, line: 463, baseType: !3650, size: 64, offset: 3904)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !182, line: 537, size: 41664, elements: !3652)
!3652 = !{!3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3664}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3651, file: !182, line: 538, baseType: !233, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3651, file: !182, line: 541, baseType: !7, size: 32, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3651, file: !182, line: 544, baseType: !29, size: 32, offset: 96)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3651, file: !182, line: 547, baseType: !104, size: 128, offset: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3651, file: !182, line: 548, baseType: !270, size: 128, align: 64, offset: 256)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3651, file: !182, line: 555, baseType: !186, size: 7872, offset: 384)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3651, file: !182, line: 558, baseType: !185, size: 64, offset: 8256)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3651, file: !182, line: 561, baseType: !56, size: 32, offset: 8320)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3651, file: !182, line: 564, baseType: !7, size: 32, offset: 8352)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3651, file: !182, line: 567, baseType: !3663, size: 32768, offset: 8384)
!3663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32768, elements: !3159)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3651, file: !182, line: 570, baseType: !3665, size: 512, offset: 41152)
!3665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 512, elements: !2333)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !186, file: !182, line: 469, baseType: !104, size: 128, offset: 3968)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !186, file: !182, line: 478, baseType: !2088, size: 1792, offset: 4096)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !186, file: !182, line: 487, baseType: !185, size: 64, offset: 5888)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !186, file: !182, line: 488, baseType: !185, size: 64, offset: 5952)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !186, file: !182, line: 491, baseType: !3671, size: 64, offset: 6016)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !182, line: 327, size: 896, elements: !3673)
!3673 = !{!3674, !3677, !3687, !3688, !3689, !3690, !3691}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3672, file: !182, line: 332, baseType: !3675)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3676, line: 64, elements: !1048)
!3676 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3672, file: !182, line: 333, baseType: !3678, size: 192)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !182, line: 299, size: 192, elements: !3679)
!3679 = !{!3680}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3678, file: !182, line: 300, baseType: !3681, size: 192)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3682, line: 17, size: 192, elements: !3683)
!3682 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3683 = !{!3684, !3685, !3686}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3681, file: !3682, line: 18, baseType: !168, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3681, file: !3682, line: 19, baseType: !168, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3681, file: !3682, line: 20, baseType: !170, size: 64, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3672, file: !182, line: 339, baseType: !3678, size: 192, offset: 192)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3672, file: !182, line: 347, baseType: !3678, size: 192, offset: 384)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3672, file: !182, line: 353, baseType: !3678, size: 192, offset: 576)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3672, file: !182, line: 366, baseType: !185, size: 64, offset: 768)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3672, file: !182, line: 367, baseType: !185, size: 64, offset: 832)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !186, file: !182, line: 492, baseType: !104, size: 128, offset: 6080)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !186, file: !182, line: 495, baseType: !3678, size: 192, offset: 6208)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !186, file: !182, line: 496, baseType: !3678, size: 192, offset: 6400)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !186, file: !182, line: 497, baseType: !1978, size: 192, offset: 6592)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !186, file: !182, line: 503, baseType: !104, size: 128, offset: 6784)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !186, file: !182, line: 504, baseType: !292, size: 256, offset: 6912)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !186, file: !182, line: 507, baseType: !61, size: 192, offset: 7168)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !186, file: !182, line: 510, baseType: !625, size: 256, offset: 7360)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !186, file: !182, line: 513, baseType: !3701, size: 64, offset: 7616)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3703, line: 214, elements: !1048)
!3703 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !186, file: !182, line: 516, baseType: !3705, offset: 7680)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3706, line: 76, elements: !1048)
!3706 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !186, file: !182, line: 519, baseType: !56, size: 32, offset: 7680)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !186, file: !182, line: 522, baseType: !3709, size: 128, offset: 7712)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !182, line: 370, size: 128, elements: !3710)
!3710 = !{!3711, !3712, !3713, !3714}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3709, file: !182, line: 372, baseType: !492, size: 8)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3709, file: !182, line: 375, baseType: !29, size: 32, offset: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3709, file: !182, line: 380, baseType: !29, size: 32, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3709, file: !182, line: 386, baseType: !29, size: 32, offset: 96)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !186, file: !182, line: 529, baseType: !3716, offset: 7872)
!3716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, elements: !368)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !181, file: !182, line: 157, baseType: !3718, size: 64, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !182, line: 669, size: 1984, elements: !3720)
!3720 = !{!3721, !3725, !3729, !3733, !3734, !3735, !3736, !3740, !3744, !3745, !3751, !3755, !3756, !3758, !3762, !3766, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3787, !3788, !3825, !3826}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3719, file: !182, line: 670, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!2076, !2076}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3719, file: !182, line: 671, baseType: !3726, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!29, !2076}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3719, file: !182, line: 672, baseType: !3730, size: 64, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{null, !2076}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3719, file: !182, line: 673, baseType: !3730, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3719, file: !182, line: 674, baseType: !3730, size: 64, offset: 256)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3719, file: !182, line: 675, baseType: !3730, size: 64, offset: 320)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3719, file: !182, line: 676, baseType: !3737, size: 64, offset: 384)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{null, !2076, !29}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3719, file: !182, line: 677, baseType: !3741, size: 64, offset: 448)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!29, !1117, !2076}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3719, file: !182, line: 679, baseType: !3741, size: 64, offset: 512)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3719, file: !182, line: 682, baseType: !3746, size: 64, offset: 576)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!29, !3749}
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !182, line: 30, flags: DIFlagFwdDecl)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3719, file: !182, line: 683, baseType: !3752, size: 64, offset: 640)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{null, !3749}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3719, file: !182, line: 684, baseType: !3752, size: 64, offset: 704)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3719, file: !182, line: 685, baseType: !3757, size: 64, offset: 768)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3719, file: !182, line: 686, baseType: !3759, size: 64, offset: 832)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!29, !1455, !2071}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3719, file: !182, line: 688, baseType: !3763, size: 64, offset: 896)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{null, !1455, !2071}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3719, file: !182, line: 689, baseType: !3767, size: 64, offset: 960)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{null, !1455}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3719, file: !182, line: 690, baseType: !3767, size: 64, offset: 1024)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3719, file: !182, line: 691, baseType: !3767, size: 64, offset: 1088)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3719, file: !182, line: 692, baseType: !3730, size: 64, offset: 1152)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3719, file: !182, line: 694, baseType: !492, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3719, file: !182, line: 707, baseType: !492, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3719, file: !182, line: 719, baseType: !492, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3719, file: !182, line: 722, baseType: !29, size: 32, offset: 1248)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3719, file: !182, line: 723, baseType: !23, size: 64, offset: 1280)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3719, file: !182, line: 726, baseType: !23, size: 64, offset: 1344)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3719, file: !182, line: 729, baseType: !3650, size: 64, offset: 1408)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3719, file: !182, line: 732, baseType: !3781, size: 192, offset: 1472)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3782, line: 19, size: 192, elements: !3783)
!3782 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3783 = !{!3784, !3785, !3786}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3781, file: !3782, line: 20, baseType: !998, size: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3781, file: !3782, line: 21, baseType: !7, size: 32, offset: 128)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3781, file: !3782, line: 22, baseType: !7, size: 32, offset: 160)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3719, file: !182, line: 738, baseType: !104, size: 128, offset: 1664)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3719, file: !182, line: 744, baseType: !3789, size: 64, offset: 1792)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !182, line: 580, size: 1728, elements: !3791)
!3791 = !{!3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3801, !3802, !3803, !3807, !3811, !3812, !3813, !3814, !3815, !3819, !3823, !3824}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3790, file: !182, line: 586, baseType: !3665, size: 512)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3790, file: !182, line: 587, baseType: !46, size: 64, offset: 512)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3790, file: !182, line: 593, baseType: !42, size: 64, offset: 576)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3790, file: !182, line: 596, baseType: !7, size: 32, offset: 640)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3790, file: !182, line: 604, baseType: !7, size: 32, offset: 672)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3790, file: !182, line: 610, baseType: !3718, size: 64, offset: 704)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3790, file: !182, line: 611, baseType: !104, size: 128, offset: 768)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3790, file: !182, line: 612, baseType: !3800, size: 64, offset: 896)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3790, file: !182, line: 614, baseType: !249, size: 64, offset: 960)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3790, file: !182, line: 615, baseType: !3598, size: 64, offset: 1024)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3790, file: !182, line: 621, baseType: !3804, size: 64, offset: 1088)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!168, !2076, !3789}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3790, file: !182, line: 625, baseType: !3808, size: 64, offset: 1152)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!289, !2076, !3789}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3790, file: !182, line: 628, baseType: !1147, size: 64, offset: 1216)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3790, file: !182, line: 631, baseType: !1135, size: 64, offset: 1280)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3790, file: !182, line: 632, baseType: !1143, size: 64, offset: 1344)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3790, file: !182, line: 633, baseType: !1139, size: 64, offset: 1408)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3790, file: !182, line: 640, baseType: !3816, size: 64, offset: 1472)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!29, !2076, !3789, !168}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3790, file: !182, line: 645, baseType: !3820, size: 64, offset: 1536)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!29, !2076, !3789, !289}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3790, file: !182, line: 654, baseType: !3606, size: 64, offset: 1600)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3790, file: !182, line: 657, baseType: !3613, size: 64, offset: 1664)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3719, file: !182, line: 745, baseType: !3789, size: 64, offset: 1856)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3719, file: !182, line: 754, baseType: !7, size: 32, offset: 1920)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !181, file: !182, line: 160, baseType: !3828, size: 128, offset: 128)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3829, line: 105, size: 128, elements: !3830)
!3829 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3830 = !{!3831, !3832}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3828, file: !3829, line: 110, baseType: !46, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3828, file: !3829, line: 118, baseType: !3833, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3829, line: 95, size: 448, elements: !3835)
!3835 = !{!3836, !3837, !3843, !3844, !3845, !3846, !3847}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3834, file: !3829, line: 96, baseType: !283, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3834, file: !3829, line: 97, baseType: !3838, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3829, line: 60, baseType: !3840)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{null, !3842}
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3834, file: !3829, line: 98, baseType: !3838, size: 64, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3834, file: !3829, line: 99, baseType: !492, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3834, file: !3829, line: 100, baseType: !492, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3834, file: !3829, line: 101, baseType: !270, size: 128, align: 64, offset: 256)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3834, file: !3829, line: 102, baseType: !3842, size: 64, offset: 384)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !181, file: !182, line: 163, baseType: !104, size: 128, offset: 256)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !181, file: !182, line: 164, baseType: !104, size: 128, offset: 384)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !181, file: !182, line: 167, baseType: !104, size: 128, offset: 512)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !181, file: !182, line: 173, baseType: !29, size: 32, offset: 640)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !182, line: 175, baseType: !7, size: 32, offset: 672)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !181, file: !182, line: 183, baseType: !168, size: 64, offset: 704)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !181, file: !182, line: 189, baseType: !56, size: 32, offset: 768)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !181, file: !182, line: 192, baseType: !625, size: 256, offset: 832)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !181, file: !182, line: 193, baseType: !3857, size: 448, offset: 1088)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !626, line: 120, size: 448, elements: !3858)
!3858 = !{!3859, !3860, !3861}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3857, file: !626, line: 121, baseType: !625, size: 256)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3857, file: !626, line: 122, baseType: !270, size: 128, align: 64, offset: 256)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3857, file: !626, line: 125, baseType: !3270, size: 64, offset: 384)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !181, file: !182, line: 199, baseType: !2076, size: 64, offset: 1536)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !178, file: !6, line: 52, baseType: !3634, size: 448, offset: 1600)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !178, file: !6, line: 54, baseType: !3865, offset: 2048)
!3865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3866, elements: !3642)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "misc_res", file: !6, line: 36, size: 192, elements: !3867)
!3867 = !{!3868, !3869, !3870}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3866, file: !6, line: 37, baseType: !168, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3866, file: !6, line: 38, baseType: !285, size: 64, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3866, file: !6, line: 39, baseType: !285, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !289)
!3873 = !{!3874, !3876, !3878, !3880, !3882, !0, !3884, !3887, !3908, !3913, !3918, !3922, !3924, !3927, !3929, !3934, !3937, !3940}
!3874 = !DIGlobalVariableExpression(var: !3875, expr: !DIExpression())
!3875 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_misc_cg_res_total_usage264", scope: !2, file: !3, line: 84, type: !27, isLocal: true, isDefinition: true)
!3876 = !DIGlobalVariableExpression(var: !3877, expr: !DIExpression())
!3877 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_misc_cg_set_capacity266", scope: !2, file: !3, line: 106, type: !27, isLocal: true, isDefinition: true)
!3878 = !DIGlobalVariableExpression(var: !3879, expr: !DIExpression())
!3879 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_misc_cg_try_charge270", scope: !2, file: !3, line: 176, type: !27, isLocal: true, isDefinition: true)
!3880 = !DIGlobalVariableExpression(var: !3881, expr: !DIExpression())
!3881 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_misc_cg_uncharge271", scope: !2, file: !3, line: 196, type: !27, isLocal: true, isDefinition: true)
!3882 = !DIGlobalVariableExpression(var: !3883, expr: !DIExpression())
!3883 = distinct !DIGlobalVariable(name: "misc_cgrp_subsys", scope: !2, file: !3, line: 417, type: !3719, isLocal: false, isDefinition: true)
!3884 = !DIGlobalVariableExpression(var: !3885, expr: !DIExpression())
!3885 = distinct !DIGlobalVariable(name: "misc_res_capacity", scope: !2, file: !3, line: 40, type: !3886, isLocal: true, isDefinition: true)
!3886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, elements: !3642)
!3887 = !DIGlobalVariableExpression(var: !3888, expr: !DIExpression())
!3888 = distinct !DIGlobalVariable(name: "__already_done", scope: !3889, file: !3, line: 119, type: !492, isLocal: true, isDefinition: true)
!3889 = distinct !DISubprogram(name: "misc_cg_cancel_charge", scope: !3, file: !3, line: 116, type: !3890, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3892)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{null, !5, !177, !168}
!3892 = !{!3893, !3894, !3895, !3896, !3898, !3901, !3902, !3904}
!3893 = !DILocalVariable(name: "type", arg: 1, scope: !3889, file: !3, line: 116, type: !5)
!3894 = !DILocalVariable(name: "cg", arg: 2, scope: !3889, file: !3, line: 116, type: !177)
!3895 = !DILocalVariable(name: "amount", arg: 3, scope: !3889, file: !3, line: 117, type: !168)
!3896 = !DILocalVariable(name: "__ret_do_once", scope: !3897, file: !3, line: 119, type: !492)
!3897 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 119, column: 2)
!3898 = !DILocalVariable(name: "__ret_cond", scope: !3899, file: !3, line: 119, type: !492)
!3899 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 119, column: 2)
!3900 = distinct !DILexicalBlock(scope: !3897, file: !3, line: 119, column: 2)
!3901 = !DILocalVariable(name: "__ret_once", scope: !3899, file: !3, line: 119, type: !492)
!3902 = !DILocalVariable(name: "__ret_warn_on", scope: !3903, file: !3, line: 119, type: !29)
!3903 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 119, column: 2)
!3904 = !DILocalVariable(name: "__flags", scope: !3905, file: !3, line: 119, type: !29)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 119, column: 2)
!3906 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 119, column: 2)
!3907 = distinct !DILexicalBlock(scope: !3903, file: !3, line: 119, column: 2)
!3908 = !DIGlobalVariableExpression(var: !3909, expr: !DIExpression())
!3909 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !3910, isLocal: true, isDefinition: true)
!3910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 344, elements: !3911)
!3911 = !{!3912}
!3912 = !DISubrange(count: 43)
!3913 = !DIGlobalVariableExpression(var: !3914, expr: !DIExpression())
!3914 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !3915, isLocal: true, isDefinition: true)
!3915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 168, elements: !3916)
!3916 = !{!3917}
!3917 = !DISubrange(count: 21)
!3918 = !DIGlobalVariableExpression(var: !3919, expr: !DIExpression())
!3919 = distinct !DIGlobalVariable(name: "misc_res_name", scope: !2, file: !3, line: 20, type: !3920, isLocal: true, isDefinition: true)
!3920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3921, elements: !3642)
!3921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!3922 = !DIGlobalVariableExpression(var: !3923, expr: !DIExpression())
!3923 = distinct !DIGlobalVariable(scope: null, file: !156, line: 480, type: !3915, isLocal: true, isDefinition: true)
!3924 = !DIGlobalVariableExpression(var: !3925, expr: !DIExpression())
!3925 = distinct !DIGlobalVariable(name: "misc_cg_files", scope: !2, file: !3, line: 349, type: !3926, isLocal: true, isDefinition: true)
!3926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3790, size: 8640, elements: !594)
!3927 = !DIGlobalVariableExpression(var: !3928, expr: !DIExpression())
!3928 = distinct !DIGlobalVariable(scope: null, file: !3, line: 216, type: !2462, isLocal: true, isDefinition: true)
!3929 = !DIGlobalVariableExpression(var: !3930, expr: !DIExpression())
!3930 = distinct !DIGlobalVariable(scope: null, file: !3, line: 218, type: !3931, isLocal: true, isDefinition: true)
!3931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 72, elements: !3932)
!3932 = !{!3933}
!3933 = !DISubrange(count: 9)
!3934 = !DIGlobalVariableExpression(var: !3935, expr: !DIExpression())
!3935 = distinct !DIGlobalVariable(scope: null, file: !3, line: 254, type: !3936, isLocal: true, isDefinition: true)
!3936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 16, elements: !2154)
!3937 = !DIGlobalVariableExpression(var: !3938, expr: !DIExpression())
!3938 = distinct !DIGlobalVariable(scope: null, file: !3, line: 269, type: !3939, isLocal: true, isDefinition: true)
!3939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !355)
!3940 = !DIGlobalVariableExpression(var: !3941, expr: !DIExpression())
!3941 = distinct !DIGlobalVariable(scope: null, file: !3, line: 343, type: !3942, isLocal: true, isDefinition: true)
!3942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 104, elements: !3943)
!3943 = !{!3944}
!3944 = !DISubrange(count: 13)
!3945 = !{i32 7, !"Dwarf Version", i32 5}
!3946 = !{i32 2, !"Debug Info Version", i32 3}
!3947 = !{i32 1, !"wchar_size", i32 2}
!3948 = !{i32 8, !"cf-protection-branch", i32 1}
!3949 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3950 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3951 = !{i32 1, !"Code Model", i32 2}
!3952 = !{i32 1, !"override-stack-alignment", i32 8}
!3953 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3954 = distinct !DISubprogram(name: "misc_cg_res_total_usage", scope: !3, file: !3, line: 77, type: !3955, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3957)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!168, !5}
!3957 = !{!3958}
!3958 = !DILocalVariable(name: "type", arg: 1, scope: !3954, file: !3, line: 77, type: !5)
!3959 = !DILocation(line: 77, column: 48, scope: !3954)
!3960 = !DILocation(line: 79, column: 17, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 79, column: 6)
!3962 = !DILocation(line: 79, column: 6, scope: !3961)
!3963 = !DILocation(line: 79, column: 6, scope: !3954)
!3964 = !DILocation(line: 80, column: 37, scope: !3961)
!3965 = !DILocation(line: 80, column: 25, scope: !3961)
!3966 = !DILocation(line: 80, column: 43, scope: !3961)
!3967 = !DILocation(line: 80, column: 10, scope: !3961)
!3968 = !DILocation(line: 80, column: 3, scope: !3961)
!3969 = !DILocation(line: 82, column: 2, scope: !3954)
!3970 = !DILocation(line: 83, column: 1, scope: !3954)
!3971 = distinct !DISubprogram(name: "valid_type", scope: !3, file: !3, line: 65, type: !3972, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3974)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!492, !5}
!3974 = !{!3975}
!3975 = !DILocalVariable(name: "type", arg: 1, scope: !3971, file: !3, line: 65, type: !5)
!3976 = !DILocation(line: 65, column: 50, scope: !3971)
!3977 = !DILocation(line: 67, column: 9, scope: !3971)
!3978 = !DILocation(line: 67, column: 14, scope: !3971)
!3979 = !DILocation(line: 67, column: 19, scope: !3971)
!3980 = !DILocation(line: 67, column: 22, scope: !3971)
!3981 = !DILocation(line: 67, column: 27, scope: !3971)
!3982 = !DILocation(line: 0, scope: !3971)
!3983 = !DILocation(line: 67, column: 2, scope: !3971)
!3984 = distinct !DISubprogram(name: "atomic64_read", scope: !3985, file: !3985, line: 1594, type: !3986, scopeLine: 1595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3990)
!3985 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!289, !3988}
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!3990 = !{!3991}
!3991 = !DILocalVariable(name: "v", arg: 1, scope: !3984, file: !3985, line: 1594, type: !3988)
!3992 = !DILocation(line: 1594, column: 33, scope: !3984)
!3993 = !DILocation(line: 1596, column: 25, scope: !3984)
!3994 = !DILocation(line: 1596, column: 2, scope: !3984)
!3995 = !DILocation(line: 1597, column: 27, scope: !3984)
!3996 = !DILocation(line: 1597, column: 9, scope: !3984)
!3997 = !DILocation(line: 1597, column: 2, scope: !3984)
!3998 = distinct !DISubprogram(name: "misc_cg_set_capacity", scope: !3, file: !3, line: 98, type: !3999, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4001)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!29, !5, !168}
!4001 = !{!4002, !4003}
!4002 = !DILocalVariable(name: "type", arg: 1, scope: !3998, file: !3, line: 98, type: !5)
!4003 = !DILocalVariable(name: "capacity", arg: 2, scope: !3998, file: !3, line: 98, type: !168)
!4004 = !DILocation(line: 98, column: 45, scope: !3998)
!4005 = !DILocation(line: 98, column: 55, scope: !3998)
!4006 = !DILocation(line: 100, column: 18, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3998, file: !3, line: 100, column: 6)
!4008 = !DILocation(line: 100, column: 7, scope: !4007)
!4009 = !DILocation(line: 100, column: 6, scope: !3998)
!4010 = !DILocation(line: 101, column: 3, scope: !4007)
!4011 = !DILocation(line: 103, column: 2, scope: !3998)
!4012 = !DILocation(line: 103, column: 2, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3998, file: !3, line: 103, column: 2)
!4014 = !DILocation(line: 103, column: 2, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4013, file: !3, line: 103, column: 2)
!4016 = !DILocation(line: 103, column: 2, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4013, file: !3, line: 103, column: 2)
!4018 = !DILocation(line: 104, column: 2, scope: !3998)
!4019 = !DILocation(line: 105, column: 1, scope: !3998)
!4020 = distinct !DISubprogram(name: "misc_cg_try_charge", scope: !3, file: !3, line: 140, type: !4021, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4023)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!29, !5, !177, !168}
!4023 = !{!4024, !4025, !4026, !4027, !4028, !4029, !4030, !4032, !4033}
!4024 = !DILocalVariable(name: "type", arg: 1, scope: !4020, file: !3, line: 140, type: !5)
!4025 = !DILocalVariable(name: "cg", arg: 2, scope: !4020, file: !3, line: 140, type: !177)
!4026 = !DILocalVariable(name: "amount", arg: 3, scope: !4020, file: !3, line: 140, type: !168)
!4027 = !DILocalVariable(name: "i", scope: !4020, file: !3, line: 142, type: !177)
!4028 = !DILocalVariable(name: "j", scope: !4020, file: !3, line: 142, type: !177)
!4029 = !DILocalVariable(name: "ret", scope: !4020, file: !3, line: 143, type: !29)
!4030 = !DILocalVariable(name: "res", scope: !4020, file: !3, line: 144, type: !4031)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!4032 = !DILocalVariable(name: "new_usage", scope: !4020, file: !3, line: 145, type: !168)
!4033 = !DILabel(scope: !4020, name: "err_charge", file: !3, line: 165)
!4034 = !DILocation(line: 140, column: 43, scope: !4020)
!4035 = !DILocation(line: 140, column: 65, scope: !4020)
!4036 = !DILocation(line: 140, column: 73, scope: !4020)
!4037 = !DILocation(line: 142, column: 2, scope: !4020)
!4038 = !DILocation(line: 142, column: 18, scope: !4020)
!4039 = !DILocation(line: 142, column: 22, scope: !4020)
!4040 = !DILocation(line: 143, column: 2, scope: !4020)
!4041 = !DILocation(line: 143, column: 6, scope: !4020)
!4042 = !DILocation(line: 144, column: 2, scope: !4020)
!4043 = !DILocation(line: 144, column: 19, scope: !4020)
!4044 = !DILocation(line: 145, column: 2, scope: !4020)
!4045 = !DILocation(line: 145, column: 6, scope: !4020)
!4046 = !DILocation(line: 147, column: 19, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4020, file: !3, line: 147, column: 6)
!4048 = !DILocation(line: 147, column: 8, scope: !4047)
!4049 = !DILocation(line: 147, column: 25, scope: !4047)
!4050 = !DILocation(line: 147, column: 28, scope: !4047)
!4051 = !DILocation(line: 147, column: 31, scope: !4047)
!4052 = !DILocation(line: 147, column: 34, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 147, column: 34)
!4054 = !DILocation(line: 147, column: 34, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 147, column: 34)
!4056 = !DILocation(line: 147, column: 34, scope: !4047)
!4057 = !DILocation(line: 147, column: 6, scope: !4020)
!4058 = !DILocation(line: 148, column: 3, scope: !4047)
!4059 = !DILocation(line: 150, column: 7, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4020, file: !3, line: 150, column: 6)
!4061 = !DILocation(line: 150, column: 6, scope: !4020)
!4062 = !DILocation(line: 151, column: 3, scope: !4060)
!4063 = !DILocation(line: 153, column: 11, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4020, file: !3, line: 153, column: 2)
!4065 = !DILocation(line: 153, column: 9, scope: !4064)
!4066 = !DILocation(line: 153, column: 7, scope: !4064)
!4067 = !DILocation(line: 153, column: 15, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 153, column: 2)
!4069 = !DILocation(line: 153, column: 2, scope: !4064)
!4070 = !DILocation(line: 154, column: 10, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 153, column: 38)
!4072 = !DILocation(line: 154, column: 13, scope: !4071)
!4073 = !DILocation(line: 154, column: 17, scope: !4071)
!4074 = !DILocation(line: 154, column: 7, scope: !4071)
!4075 = !DILocation(line: 156, column: 35, scope: !4071)
!4076 = !DILocation(line: 156, column: 44, scope: !4071)
!4077 = !DILocation(line: 156, column: 49, scope: !4071)
!4078 = !DILocation(line: 156, column: 15, scope: !4071)
!4079 = !DILocation(line: 156, column: 13, scope: !4071)
!4080 = !DILocation(line: 157, column: 7, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4071, file: !3, line: 157, column: 7)
!4082 = !DILocation(line: 157, column: 19, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 157, column: 19)
!4084 = !DILocation(line: 157, column: 19, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4083, file: !3, line: 157, column: 19)
!4086 = !DILocation(line: 157, column: 17, scope: !4081)
!4087 = !DILocation(line: 157, column: 39, scope: !4081)
!4088 = !DILocation(line: 158, column: 7, scope: !4081)
!4089 = !DILocation(line: 158, column: 19, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 158, column: 19)
!4091 = !DILocation(line: 158, column: 19, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 158, column: 19)
!4093 = !DILocation(line: 158, column: 17, scope: !4081)
!4094 = !DILocation(line: 157, column: 7, scope: !4071)
!4095 = !DILocation(line: 159, column: 8, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 158, column: 55)
!4097 = !DILocation(line: 160, column: 4, scope: !4096)
!4098 = !DILocation(line: 162, column: 2, scope: !4071)
!4099 = !DILocation(line: 153, column: 34, scope: !4068)
!4100 = !DILocation(line: 153, column: 22, scope: !4068)
!4101 = !DILocation(line: 153, column: 20, scope: !4068)
!4102 = !DILocation(line: 153, column: 2, scope: !4068)
!4103 = distinct !{!4103, !4069, !4104, !4105, !4106}
!4104 = !DILocation(line: 162, column: 2, scope: !4064)
!4105 = !{!"llvm.loop.mustprogress"}
!4106 = !{!"llvm.loop.unroll.disable"}
!4107 = !DILocation(line: 163, column: 2, scope: !4020)
!4108 = !DILocation(line: 165, column: 1, scope: !4020)
!4109 = !DILocation(line: 166, column: 11, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4020, file: !3, line: 166, column: 2)
!4111 = !DILocation(line: 166, column: 9, scope: !4110)
!4112 = !DILocation(line: 166, column: 7, scope: !4110)
!4113 = !DILocation(line: 166, column: 14, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 166, column: 2)
!4115 = !DILocation(line: 166, column: 2, scope: !4110)
!4116 = !DILocation(line: 167, column: 17, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 166, column: 37)
!4118 = !DILocation(line: 167, column: 20, scope: !4117)
!4119 = !DILocation(line: 167, column: 24, scope: !4117)
!4120 = !DILocation(line: 167, column: 30, scope: !4117)
!4121 = !DILocation(line: 167, column: 3, scope: !4117)
!4122 = !DILocation(line: 168, column: 23, scope: !4117)
!4123 = !DILocation(line: 168, column: 26, scope: !4117)
!4124 = !DILocation(line: 168, column: 3, scope: !4117)
!4125 = !DILocation(line: 169, column: 2, scope: !4117)
!4126 = !DILocation(line: 166, column: 33, scope: !4114)
!4127 = !DILocation(line: 166, column: 21, scope: !4114)
!4128 = !DILocation(line: 166, column: 19, scope: !4114)
!4129 = !DILocation(line: 166, column: 2, scope: !4114)
!4130 = distinct !{!4130, !4115, !4131, !4105, !4106}
!4131 = !DILocation(line: 169, column: 2, scope: !4110)
!4132 = !DILocation(line: 171, column: 11, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4020, file: !3, line: 171, column: 2)
!4134 = !DILocation(line: 171, column: 9, scope: !4133)
!4135 = !DILocation(line: 171, column: 7, scope: !4133)
!4136 = !DILocation(line: 171, column: 15, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 171, column: 2)
!4138 = !DILocation(line: 171, column: 20, scope: !4137)
!4139 = !DILocation(line: 171, column: 17, scope: !4137)
!4140 = !DILocation(line: 171, column: 2, scope: !4133)
!4141 = !DILocation(line: 172, column: 25, scope: !4137)
!4142 = !DILocation(line: 172, column: 31, scope: !4137)
!4143 = !DILocation(line: 172, column: 34, scope: !4137)
!4144 = !DILocation(line: 172, column: 3, scope: !4137)
!4145 = !DILocation(line: 171, column: 39, scope: !4137)
!4146 = !DILocation(line: 171, column: 27, scope: !4137)
!4147 = !DILocation(line: 171, column: 25, scope: !4137)
!4148 = !DILocation(line: 171, column: 2, scope: !4137)
!4149 = distinct !{!4149, !4140, !4150, !4105, !4106}
!4150 = !DILocation(line: 172, column: 40, scope: !4133)
!4151 = !DILocation(line: 173, column: 24, scope: !4020)
!4152 = !DILocation(line: 173, column: 30, scope: !4020)
!4153 = !DILocation(line: 173, column: 33, scope: !4020)
!4154 = !DILocation(line: 173, column: 2, scope: !4020)
!4155 = !DILocation(line: 174, column: 9, scope: !4020)
!4156 = !DILocation(line: 174, column: 2, scope: !4020)
!4157 = !DILocation(line: 175, column: 1, scope: !4020)
!4158 = distinct !DISubprogram(name: "atomic64_add_return", scope: !3985, file: !3985, line: 1684, type: !4159, scopeLine: 1685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4162)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!289, !289, !4161}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!4162 = !{!4163, !4164}
!4163 = !DILocalVariable(name: "i", arg: 1, scope: !4158, file: !3985, line: 1684, type: !289)
!4164 = !DILocalVariable(name: "v", arg: 2, scope: !4158, file: !3985, line: 1684, type: !4161)
!4165 = !DILocation(line: 1684, column: 25, scope: !4158)
!4166 = !DILocation(line: 1684, column: 40, scope: !4158)
!4167 = !DILocation(line: 1686, column: 2, scope: !4158)
!4168 = !DILocation(line: 1686, column: 2, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4158, file: !3985, line: 1686, column: 2)
!4170 = !DILocation(line: 1687, column: 31, scope: !4158)
!4171 = !DILocation(line: 1687, column: 2, scope: !4158)
!4172 = !DILocation(line: 1688, column: 33, scope: !4158)
!4173 = !DILocation(line: 1688, column: 36, scope: !4158)
!4174 = !DILocation(line: 1688, column: 9, scope: !4158)
!4175 = !DILocation(line: 1688, column: 2, scope: !4158)
!4176 = distinct !DISubprogram(name: "parent_misc", scope: !3, file: !3, line: 51, type: !4177, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4179)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!177, !177}
!4179 = !{!4180}
!4180 = !DILocalVariable(name: "cgroup", arg: 1, scope: !4176, file: !3, line: 51, type: !177)
!4181 = !DILocation(line: 51, column: 52, scope: !4176)
!4182 = !DILocation(line: 53, column: 9, scope: !4176)
!4183 = !DILocation(line: 53, column: 27, scope: !4176)
!4184 = !DILocation(line: 53, column: 35, scope: !4176)
!4185 = !DILocation(line: 53, column: 39, scope: !4176)
!4186 = !DILocation(line: 53, column: 18, scope: !4176)
!4187 = !DILocation(line: 53, column: 2, scope: !4176)
!4188 = distinct !DISubprogram(name: "atomic64_inc", scope: !3985, file: !3985, line: 1997, type: !4189, scopeLine: 1998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4191)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{null, !4161}
!4191 = !{!4192}
!4192 = !DILocalVariable(name: "v", arg: 1, scope: !4188, file: !3985, line: 1997, type: !4161)
!4193 = !DILocation(line: 1997, column: 26, scope: !4188)
!4194 = !DILocation(line: 1999, column: 31, scope: !4188)
!4195 = !DILocation(line: 1999, column: 2, scope: !4188)
!4196 = !DILocation(line: 2000, column: 19, scope: !4188)
!4197 = !DILocation(line: 2000, column: 2, scope: !4188)
!4198 = !DILocation(line: 2001, column: 1, scope: !4188)
!4199 = !DISubprogram(name: "cgroup_file_notify", scope: !2065, file: !2065, line: 118, type: !4200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{null, !4202}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!4203 = !DILocation(line: 116, column: 54, scope: !3889)
!4204 = !DILocation(line: 116, column: 76, scope: !3889)
!4205 = !DILocation(line: 117, column: 11, scope: !3889)
!4206 = !DILocation(line: 119, column: 2, scope: !3897)
!4207 = !DILocation(line: 119, column: 2, scope: !3899)
!4208 = !{i8 0, i8 2}
!4209 = !DILocation(line: 119, column: 2, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 119, column: 2)
!4211 = !DILocation(line: 0, scope: !4210)
!4212 = !DILocation(line: 119, column: 2, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 119, column: 2)
!4214 = !DILocation(line: 119, column: 2, scope: !3900)
!4215 = !DILocation(line: 119, column: 2, scope: !3903)
!4216 = !DILocation(line: 119, column: 2, scope: !3907)
!4217 = !DILocation(line: 119, column: 2, scope: !3906)
!4218 = !DILocation(line: 119, column: 2, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 119, column: 2)
!4220 = !DILocation(line: 119, column: 2, scope: !3905)
!4221 = !DILocation(line: 119, column: 2, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 119, column: 2)
!4223 = !DILocation(line: 119, column: 2, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 119, column: 2)
!4225 = !{i64 2153758666, i64 2153758695, i64 2153758741, i64 2153758799, i64 2153758853, i64 2153758907, i64 2153758962, i64 2153758993, i64 2153759301, i64 2153759307, i64 2153759354, i64 2153759377, i64 2153759403}
!4226 = !DILocation(line: 119, column: 2, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 119, column: 2)
!4228 = !DILocation(line: 119, column: 2, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 119, column: 2)
!4230 = !DILocation(line: 119, column: 2, scope: !3889)
!4231 = !DILocation(line: 122, column: 1, scope: !3889)
!4232 = distinct !DISubprogram(name: "misc_cg_uncharge", scope: !3, file: !3, line: 186, type: !3890, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4233)
!4233 = !{!4234, !4235, !4236, !4237}
!4234 = !DILocalVariable(name: "type", arg: 1, scope: !4232, file: !3, line: 186, type: !5)
!4235 = !DILocalVariable(name: "cg", arg: 2, scope: !4232, file: !3, line: 186, type: !177)
!4236 = !DILocalVariable(name: "amount", arg: 3, scope: !4232, file: !3, line: 186, type: !168)
!4237 = !DILocalVariable(name: "i", scope: !4232, file: !3, line: 188, type: !177)
!4238 = !DILocation(line: 186, column: 42, scope: !4232)
!4239 = !DILocation(line: 186, column: 64, scope: !4232)
!4240 = !DILocation(line: 186, column: 72, scope: !4232)
!4241 = !DILocation(line: 188, column: 2, scope: !4232)
!4242 = !DILocation(line: 188, column: 18, scope: !4232)
!4243 = !DILocation(line: 190, column: 8, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 190, column: 6)
!4245 = !DILocation(line: 190, column: 15, scope: !4244)
!4246 = !DILocation(line: 190, column: 29, scope: !4244)
!4247 = !DILocation(line: 190, column: 18, scope: !4244)
!4248 = !DILocation(line: 190, column: 35, scope: !4244)
!4249 = !DILocation(line: 190, column: 38, scope: !4244)
!4250 = !DILocation(line: 190, column: 6, scope: !4232)
!4251 = !DILocation(line: 191, column: 3, scope: !4244)
!4252 = !DILocation(line: 193, column: 11, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 193, column: 2)
!4254 = !DILocation(line: 193, column: 9, scope: !4253)
!4255 = !DILocation(line: 193, column: 7, scope: !4253)
!4256 = !DILocation(line: 193, column: 15, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 193, column: 2)
!4258 = !DILocation(line: 193, column: 2, scope: !4253)
!4259 = !DILocation(line: 194, column: 25, scope: !4257)
!4260 = !DILocation(line: 194, column: 31, scope: !4257)
!4261 = !DILocation(line: 194, column: 34, scope: !4257)
!4262 = !DILocation(line: 194, column: 3, scope: !4257)
!4263 = !DILocation(line: 193, column: 34, scope: !4257)
!4264 = !DILocation(line: 193, column: 22, scope: !4257)
!4265 = !DILocation(line: 193, column: 20, scope: !4257)
!4266 = !DILocation(line: 193, column: 2, scope: !4257)
!4267 = distinct !{!4267, !4258, !4268, !4105, !4106}
!4268 = !DILocation(line: 194, column: 40, scope: !4253)
!4269 = !DILocation(line: 195, column: 1, scope: !4232)
!4270 = distinct !DISubprogram(name: "misc_cg_alloc", scope: !3, file: !3, line: 384, type: !3723, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4271)
!4271 = !{!4272, !4273, !4274}
!4272 = !DILocalVariable(name: "parent_css", arg: 1, scope: !4270, file: !3, line: 384, type: !2076)
!4273 = !DILocalVariable(name: "i", scope: !4270, file: !3, line: 386, type: !5)
!4274 = !DILocalVariable(name: "cg", scope: !4270, file: !3, line: 387, type: !177)
!4275 = !DILocation(line: 384, column: 43, scope: !4270)
!4276 = !DILocation(line: 386, column: 2, scope: !4270)
!4277 = !DILocation(line: 386, column: 21, scope: !4270)
!4278 = !DILocation(line: 387, column: 2, scope: !4270)
!4279 = !DILocation(line: 387, column: 18, scope: !4270)
!4280 = !DILocation(line: 389, column: 7, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 389, column: 6)
!4282 = !DILocation(line: 389, column: 6, scope: !4270)
!4283 = !DILocation(line: 390, column: 6, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 389, column: 19)
!4285 = !DILocation(line: 391, column: 2, scope: !4284)
!4286 = !DILocation(line: 392, column: 8, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 391, column: 9)
!4288 = !DILocation(line: 392, column: 6, scope: !4287)
!4289 = !DILocation(line: 393, column: 8, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4287, file: !3, line: 393, column: 7)
!4291 = !DILocation(line: 393, column: 7, scope: !4287)
!4292 = !DILocation(line: 394, column: 11, scope: !4290)
!4293 = !DILocation(line: 394, column: 4, scope: !4290)
!4294 = !DILocation(line: 397, column: 9, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 397, column: 2)
!4296 = !DILocation(line: 397, column: 7, scope: !4295)
!4297 = !DILocation(line: 397, column: 14, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 397, column: 2)
!4299 = !DILocation(line: 397, column: 16, scope: !4298)
!4300 = !DILocation(line: 397, column: 2, scope: !4295)
!4301 = !DILocation(line: 398, column: 3, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4298, file: !3, line: 397, column: 42)
!4303 = !DILocation(line: 398, column: 3, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 398, column: 3)
!4305 = !DILocation(line: 398, column: 3, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 398, column: 3)
!4307 = !DILocation(line: 398, column: 3, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 398, column: 3)
!4309 = !DILocation(line: 399, column: 17, scope: !4302)
!4310 = !DILocation(line: 399, column: 21, scope: !4302)
!4311 = !DILocation(line: 399, column: 25, scope: !4302)
!4312 = !DILocation(line: 399, column: 28, scope: !4302)
!4313 = !DILocation(line: 399, column: 3, scope: !4302)
!4314 = !DILocation(line: 400, column: 2, scope: !4302)
!4315 = !DILocation(line: 397, column: 38, scope: !4298)
!4316 = !DILocation(line: 397, column: 2, scope: !4298)
!4317 = distinct !{!4317, !4300, !4318, !4105, !4106}
!4318 = !DILocation(line: 400, column: 2, scope: !4295)
!4319 = !DILocation(line: 402, column: 10, scope: !4270)
!4320 = !DILocation(line: 402, column: 14, scope: !4270)
!4321 = !DILocation(line: 402, column: 2, scope: !4270)
!4322 = !DILocation(line: 403, column: 1, scope: !4270)
!4323 = distinct !DISubprogram(name: "misc_cg_free", scope: !3, file: !3, line: 411, type: !3731, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4324)
!4324 = !{!4325}
!4325 = !DILocalVariable(name: "css", arg: 1, scope: !4323, file: !3, line: 411, type: !2076)
!4326 = !DILocation(line: 411, column: 54, scope: !4323)
!4327 = !DILocation(line: 413, column: 17, scope: !4323)
!4328 = !DILocation(line: 413, column: 8, scope: !4323)
!4329 = !DILocation(line: 413, column: 2, scope: !4323)
!4330 = !DILocation(line: 414, column: 1, scope: !4323)
!4331 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4332, file: !4332, line: 66, type: !4333, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4338)
!4332 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4333 = !DISubroutineType(types: !4334)
!4334 = !{null, !4335, !42}
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4337)
!4337 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4338 = !{!4339, !4340}
!4339 = !DILocalVariable(name: "v", arg: 1, scope: !4331, file: !4332, line: 66, type: !4335)
!4340 = !DILocalVariable(name: "size", arg: 2, scope: !4331, file: !4332, line: 66, type: !42)
!4341 = !DILocation(line: 66, column: 73, scope: !4331)
!4342 = !DILocation(line: 66, column: 83, scope: !4331)
!4343 = !DILocation(line: 68, column: 19, scope: !4331)
!4344 = !DILocation(line: 68, column: 22, scope: !4331)
!4345 = !DILocation(line: 68, column: 2, scope: !4331)
!4346 = !DILocation(line: 69, column: 2, scope: !4331)
!4347 = !DILocation(line: 70, column: 1, scope: !4331)
!4348 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !4349, file: !4349, line: 2554, type: !3986, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4350)
!4349 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4350 = !{!4351}
!4351 = !DILocalVariable(name: "v", arg: 1, scope: !4348, file: !4349, line: 2554, type: !3988)
!4352 = !DILocation(line: 2554, column: 37, scope: !4348)
!4353 = !DILocation(line: 2556, column: 28, scope: !4348)
!4354 = !DILocation(line: 2556, column: 9, scope: !4348)
!4355 = !DILocation(line: 2556, column: 2, scope: !4348)
!4356 = distinct !DISubprogram(name: "kasan_check_read", scope: !4357, file: !4357, line: 40, type: !4358, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4360)
!4357 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!492, !4335, !7}
!4360 = !{!4361, !4362}
!4361 = !DILocalVariable(name: "p", arg: 1, scope: !4356, file: !4357, line: 40, type: !4335)
!4362 = !DILocalVariable(name: "size", arg: 2, scope: !4356, file: !4357, line: 40, type: !7)
!4363 = !DILocation(line: 40, column: 58, scope: !4356)
!4364 = !DILocation(line: 40, column: 74, scope: !4356)
!4365 = !DILocation(line: 42, column: 2, scope: !4356)
!4366 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4367, file: !4367, line: 229, type: !4368, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4370)
!4367 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4368 = !DISubroutineType(types: !4369)
!4369 = !{null, !4335, !42, !29}
!4370 = !{!4371, !4372, !4373}
!4371 = !DILocalVariable(name: "ptr", arg: 1, scope: !4366, file: !4367, line: 229, type: !4335)
!4372 = !DILocalVariable(name: "size", arg: 2, scope: !4366, file: !4367, line: 229, type: !42)
!4373 = !DILocalVariable(name: "type", arg: 3, scope: !4366, file: !4367, line: 230, type: !29)
!4374 = !DILocation(line: 229, column: 60, scope: !4366)
!4375 = !DILocation(line: 229, column: 72, scope: !4366)
!4376 = !DILocation(line: 230, column: 15, scope: !4366)
!4377 = !DILocation(line: 230, column: 23, scope: !4366)
!4378 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !4379, file: !4379, line: 13, type: !3986, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4380)
!4379 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!4380 = !{!4381}
!4381 = !DILocalVariable(name: "v", arg: 1, scope: !4378, file: !4379, line: 13, type: !3988)
!4382 = !DILocation(line: 13, column: 65, scope: !4378)
!4383 = !DILocation(line: 15, column: 9, scope: !4378)
!4384 = !DILocation(line: 15, column: 2, scope: !4378)
!4385 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4332, file: !4332, line: 94, type: !4333, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4386)
!4386 = !{!4387, !4388}
!4387 = !DILocalVariable(name: "v", arg: 1, scope: !4385, file: !4332, line: 94, type: !4335)
!4388 = !DILocalVariable(name: "size", arg: 2, scope: !4385, file: !4332, line: 94, type: !42)
!4389 = !DILocation(line: 94, column: 79, scope: !4385)
!4390 = !DILocation(line: 94, column: 89, scope: !4385)
!4391 = !DILocation(line: 96, column: 20, scope: !4385)
!4392 = !DILocation(line: 96, column: 23, scope: !4385)
!4393 = !DILocation(line: 96, column: 2, scope: !4385)
!4394 = !DILocation(line: 97, column: 2, scope: !4385)
!4395 = !DILocation(line: 98, column: 1, scope: !4385)
!4396 = distinct !DISubprogram(name: "raw_atomic64_add_return", scope: !4349, file: !4349, line: 2660, type: !4159, scopeLine: 2661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4397)
!4397 = !{!4398, !4399}
!4398 = !DILocalVariable(name: "i", arg: 1, scope: !4396, file: !4349, line: 2660, type: !289)
!4399 = !DILocalVariable(name: "v", arg: 2, scope: !4396, file: !4349, line: 2660, type: !4161)
!4400 = !DILocation(line: 2660, column: 29, scope: !4396)
!4401 = !DILocation(line: 2660, column: 44, scope: !4396)
!4402 = !DILocation(line: 2663, column: 34, scope: !4396)
!4403 = !DILocation(line: 2663, column: 37, scope: !4396)
!4404 = !DILocation(line: 2663, column: 9, scope: !4396)
!4405 = !DILocation(line: 2663, column: 2, scope: !4396)
!4406 = distinct !DISubprogram(name: "kasan_check_write", scope: !4357, file: !4357, line: 44, type: !4358, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4407)
!4407 = !{!4408, !4409}
!4408 = !DILocalVariable(name: "p", arg: 1, scope: !4406, file: !4357, line: 44, type: !4335)
!4409 = !DILocalVariable(name: "size", arg: 2, scope: !4406, file: !4357, line: 44, type: !7)
!4410 = !DILocation(line: 44, column: 59, scope: !4406)
!4411 = !DILocation(line: 44, column: 75, scope: !4406)
!4412 = !DILocation(line: 46, column: 2, scope: !4406)
!4413 = distinct !DISubprogram(name: "arch_atomic64_add_return", scope: !4379, file: !4379, line: 77, type: !4159, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4414)
!4414 = !{!4415, !4416, !4417}
!4415 = !DILocalVariable(name: "i", arg: 1, scope: !4413, file: !4379, line: 77, type: !289)
!4416 = !DILocalVariable(name: "v", arg: 2, scope: !4413, file: !4379, line: 77, type: !4161)
!4417 = !DILocalVariable(name: "__ret", scope: !4418, file: !4379, line: 79, type: !289)
!4418 = distinct !DILexicalBlock(scope: !4413, file: !4379, line: 79, column: 13)
!4419 = !DILocation(line: 77, column: 57, scope: !4413)
!4420 = !DILocation(line: 77, column: 72, scope: !4413)
!4421 = !DILocation(line: 79, column: 9, scope: !4413)
!4422 = !DILocation(line: 79, column: 13, scope: !4418)
!4423 = !{i64 2148472031, i64 2148472070, i64 2148472091, i64 2148472128, i64 2148472151, i64 2148472160}
!4424 = !DILocation(line: 79, column: 13, scope: !4413)
!4425 = !DILocation(line: 79, column: 11, scope: !4413)
!4426 = !DILocation(line: 79, column: 2, scope: !4413)
!4427 = distinct !DISubprogram(name: "css_misc", scope: !6, file: !6, line: 71, type: !4428, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4430)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!177, !2076}
!4430 = !{!4431, !4432}
!4431 = !DILocalVariable(name: "css", arg: 1, scope: !4427, file: !6, line: 71, type: !2076)
!4432 = !DILocalVariable(name: "__mptr", scope: !4433, file: !6, line: 73, type: !27)
!4433 = distinct !DILexicalBlock(scope: !4427, file: !6, line: 73, column: 15)
!4434 = !DILocation(line: 71, column: 68, scope: !4427)
!4435 = !DILocation(line: 73, column: 9, scope: !4427)
!4436 = !DILocation(line: 73, column: 15, scope: !4433)
!4437 = !DILocation(line: 73, column: 15, scope: !4427)
!4438 = !DILocation(line: 73, column: 2, scope: !4427)
!4439 = distinct !DISubprogram(name: "raw_atomic64_inc", scope: !4349, file: !4349, line: 3088, type: !4189, scopeLine: 3089, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4440)
!4440 = !{!4441}
!4441 = !DILocalVariable(name: "v", arg: 1, scope: !4439, file: !4349, line: 3088, type: !4161)
!4442 = !DILocation(line: 3088, column: 30, scope: !4439)
!4443 = !DILocation(line: 3091, column: 20, scope: !4439)
!4444 = !DILocation(line: 3091, column: 2, scope: !4439)
!4445 = !DILocation(line: 3095, column: 1, scope: !4439)
!4446 = distinct !DISubprogram(name: "arch_atomic64_inc", scope: !4379, file: !4379, line: 43, type: !4189, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4447)
!4447 = !{!4448}
!4448 = !DILocalVariable(name: "v", arg: 1, scope: !4446, file: !4379, line: 43, type: !4161)
!4449 = !DILocation(line: 43, column: 59, scope: !4446)
!4450 = !DILocation(line: 46, column: 16, scope: !4446)
!4451 = !DILocation(line: 46, column: 19, scope: !4446)
!4452 = !DILocation(line: 47, column: 15, scope: !4446)
!4453 = !DILocation(line: 47, column: 18, scope: !4446)
!4454 = !DILocation(line: 45, column: 2, scope: !4446)
!4455 = !{i64 2148463789, i64 2148463828, i64 2148463849, i64 2148463886, i64 2148463909, i64 2148463779}
!4456 = !DILocation(line: 48, column: 1, scope: !4446)
!4457 = distinct !DISubprogram(name: "atomic64_add_negative", scope: !3985, file: !3985, line: 2973, type: !4458, scopeLine: 2974, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4460)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!492, !289, !4161}
!4460 = !{!4461, !4462}
!4461 = !DILocalVariable(name: "i", arg: 1, scope: !4457, file: !3985, line: 2973, type: !289)
!4462 = !DILocalVariable(name: "v", arg: 2, scope: !4457, file: !3985, line: 2973, type: !4161)
!4463 = !DILocation(line: 2973, column: 27, scope: !4457)
!4464 = !DILocation(line: 2973, column: 42, scope: !4457)
!4465 = !DILocation(line: 2975, column: 2, scope: !4457)
!4466 = !DILocation(line: 2975, column: 2, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4457, file: !3985, line: 2975, column: 2)
!4468 = !DILocation(line: 2976, column: 31, scope: !4457)
!4469 = !DILocation(line: 2976, column: 2, scope: !4457)
!4470 = !DILocation(line: 2977, column: 35, scope: !4457)
!4471 = !DILocation(line: 2977, column: 38, scope: !4457)
!4472 = !DILocation(line: 2977, column: 9, scope: !4457)
!4473 = !DILocation(line: 2977, column: 2, scope: !4457)
!4474 = !DISubprogram(name: "__warn_printk", scope: !4475, file: !4475, line: 93, type: !4476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4475 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4476 = !DISubroutineType(types: !4477)
!4477 = !{null, !23, null}
!4478 = distinct !DISubprogram(name: "raw_atomic64_add_negative", scope: !4349, file: !4349, line: 4407, type: !4458, scopeLine: 4408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4479)
!4479 = !{!4480, !4481}
!4480 = !DILocalVariable(name: "i", arg: 1, scope: !4478, file: !4349, line: 4407, type: !289)
!4481 = !DILocalVariable(name: "v", arg: 2, scope: !4478, file: !4349, line: 4407, type: !4161)
!4482 = !DILocation(line: 4407, column: 31, scope: !4478)
!4483 = !DILocation(line: 4407, column: 46, scope: !4478)
!4484 = !DILocation(line: 4410, column: 36, scope: !4478)
!4485 = !DILocation(line: 4410, column: 39, scope: !4478)
!4486 = !DILocation(line: 4410, column: 9, scope: !4478)
!4487 = !DILocation(line: 4410, column: 2, scope: !4478)
!4488 = distinct !DISubprogram(name: "arch_atomic64_add_negative", scope: !4379, file: !4379, line: 71, type: !4458, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4489)
!4489 = !{!4490, !4491, !4492}
!4490 = !DILocalVariable(name: "i", arg: 1, scope: !4488, file: !4379, line: 71, type: !289)
!4491 = !DILocalVariable(name: "v", arg: 2, scope: !4488, file: !4379, line: 71, type: !4161)
!4492 = !DILocalVariable(name: "c", scope: !4493, file: !4379, line: 73, type: !492)
!4493 = distinct !DILexicalBlock(scope: !4488, file: !4379, line: 73, column: 9)
!4494 = !DILocation(line: 71, column: 60, scope: !4488)
!4495 = !DILocation(line: 71, column: 75, scope: !4488)
!4496 = !DILocation(line: 73, column: 9, scope: !4493)
!4497 = !{i64 2148469761, i64 2148469800, i64 2148469821, i64 2148469858, i64 2148469881, i64 2148469890, i64 2148469989}
!4498 = !DILocation(line: 73, column: 9, scope: !4488)
!4499 = !DILocation(line: 73, column: 2, scope: !4488)
!4500 = distinct !DISubprogram(name: "kzalloc", scope: !156, file: !156, line: 719, type: !4501, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4503)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!27, !42, !1003}
!4503 = !{!4504, !4505}
!4504 = !DILocalVariable(name: "size", arg: 1, scope: !4500, file: !156, line: 719, type: !42)
!4505 = !DILocalVariable(name: "flags", arg: 2, scope: !4500, file: !156, line: 719, type: !1003)
!4506 = !DILocation(line: 719, column: 52, scope: !4500)
!4507 = !DILocation(line: 719, column: 64, scope: !4500)
!4508 = !DILocation(line: 721, column: 17, scope: !4500)
!4509 = !DILocation(line: 721, column: 23, scope: !4500)
!4510 = !DILocation(line: 721, column: 29, scope: !4500)
!4511 = !DILocation(line: 721, column: 9, scope: !4500)
!4512 = !DILocation(line: 721, column: 2, scope: !4500)
!4513 = distinct !DISubprogram(name: "ERR_PTR", scope: !4514, file: !4514, line: 39, type: !4515, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4517)
!4514 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!27, !723}
!4517 = !{!4518}
!4518 = !DILocalVariable(name: "error", arg: 1, scope: !4513, file: !4514, line: 39, type: !723)
!4519 = !DILocation(line: 39, column: 48, scope: !4513)
!4520 = !DILocation(line: 41, column: 18, scope: !4513)
!4521 = !DILocation(line: 41, column: 9, scope: !4513)
!4522 = !DILocation(line: 41, column: 2, scope: !4513)
!4523 = distinct !DISubprogram(name: "atomic64_set", scope: !3985, file: !3985, line: 1629, type: !4524, scopeLine: 1630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4526)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{null, !4161, !289}
!4526 = !{!4527, !4528}
!4527 = !DILocalVariable(name: "v", arg: 1, scope: !4523, file: !3985, line: 1629, type: !4161)
!4528 = !DILocalVariable(name: "i", arg: 2, scope: !4523, file: !3985, line: 1629, type: !289)
!4529 = !DILocation(line: 1629, column: 26, scope: !4523)
!4530 = !DILocation(line: 1629, column: 33, scope: !4523)
!4531 = !DILocation(line: 1631, column: 26, scope: !4523)
!4532 = !DILocation(line: 1631, column: 2, scope: !4523)
!4533 = !DILocation(line: 1632, column: 19, scope: !4523)
!4534 = !DILocation(line: 1632, column: 22, scope: !4523)
!4535 = !DILocation(line: 1632, column: 2, scope: !4523)
!4536 = !DILocation(line: 1633, column: 1, scope: !4523)
!4537 = distinct !DISubprogram(name: "kmalloc", scope: !156, file: !156, line: 591, type: !4501, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4538)
!4538 = !{!4539, !4540, !4541}
!4539 = !DILocalVariable(name: "size", arg: 1, scope: !4537, file: !156, line: 591, type: !42)
!4540 = !DILocalVariable(name: "flags", arg: 2, scope: !4537, file: !156, line: 591, type: !1003)
!4541 = !DILocalVariable(name: "index", scope: !4542, file: !156, line: 594, type: !7)
!4542 = distinct !DILexicalBlock(scope: !4543, file: !156, line: 593, column: 42)
!4543 = distinct !DILexicalBlock(scope: !4537, file: !156, line: 593, column: 6)
!4544 = !DILocation(line: 591, column: 61, scope: !4537)
!4545 = !DILocation(line: 591, column: 73, scope: !4537)
!4546 = !DILocation(line: 593, column: 27, scope: !4543)
!4547 = !DILocation(line: 593, column: 6, scope: !4543)
!4548 = !DILocation(line: 593, column: 33, scope: !4543)
!4549 = !DILocation(line: 593, column: 36, scope: !4543)
!4550 = !DILocation(line: 593, column: 6, scope: !4537)
!4551 = !DILocation(line: 594, column: 3, scope: !4542)
!4552 = !DILocation(line: 594, column: 16, scope: !4542)
!4553 = !DILocation(line: 596, column: 7, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4542, file: !156, line: 596, column: 7)
!4555 = !DILocation(line: 596, column: 12, scope: !4554)
!4556 = !DILocation(line: 596, column: 7, scope: !4542)
!4557 = !DILocation(line: 597, column: 25, scope: !4554)
!4558 = !DILocation(line: 597, column: 31, scope: !4554)
!4559 = !DILocation(line: 597, column: 11, scope: !4554)
!4560 = !DILocation(line: 597, column: 4, scope: !4554)
!4561 = !DILocation(line: 599, column: 11, scope: !4542)
!4562 = !DILocation(line: 599, column: 9, scope: !4542)
!4563 = !DILocation(line: 601, column: 33, scope: !4542)
!4564 = !DILocation(line: 601, column: 40, scope: !4542)
!4565 = !DILocation(line: 601, column: 20, scope: !4542)
!4566 = !DILocation(line: 601, column: 5, scope: !4542)
!4567 = !DILocation(line: 601, column: 51, scope: !4542)
!4568 = !DILocation(line: 602, column: 5, scope: !4542)
!4569 = !DILocation(line: 602, column: 12, scope: !4542)
!4570 = !DILocation(line: 600, column: 10, scope: !4542)
!4571 = !DILocation(line: 600, column: 3, scope: !4542)
!4572 = !DILocation(line: 603, column: 2, scope: !4543)
!4573 = !DILocation(line: 604, column: 19, scope: !4537)
!4574 = !DILocation(line: 604, column: 25, scope: !4537)
!4575 = !DILocation(line: 604, column: 9, scope: !4537)
!4576 = !DILocation(line: 604, column: 2, scope: !4537)
!4577 = !DILocation(line: 605, column: 1, scope: !4537)
!4578 = !DISubprogram(name: "kmalloc_large", scope: !156, file: !156, line: 531, type: !4501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4579 = distinct !DISubprogram(name: "__kmalloc_index", scope: !156, file: !156, line: 444, type: !4580, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4582)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!7, !42, !492}
!4582 = !{!4583, !4584}
!4583 = !DILocalVariable(name: "size", arg: 1, scope: !4579, file: !156, line: 444, type: !42)
!4584 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4579, file: !156, line: 445, type: !492)
!4585 = !DILocation(line: 444, column: 60, scope: !4579)
!4586 = !DILocation(line: 445, column: 16, scope: !4579)
!4587 = !DILocation(line: 447, column: 7, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 447, column: 6)
!4589 = !DILocation(line: 447, column: 6, scope: !4579)
!4590 = !DILocation(line: 448, column: 3, scope: !4588)
!4591 = !DILocation(line: 450, column: 6, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 450, column: 6)
!4593 = !DILocation(line: 450, column: 11, scope: !4592)
!4594 = !DILocation(line: 450, column: 6, scope: !4579)
!4595 = !DILocation(line: 451, column: 3, scope: !4592)
!4596 = !DILocation(line: 453, column: 32, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 453, column: 6)
!4598 = !DILocation(line: 453, column: 37, scope: !4597)
!4599 = !DILocation(line: 453, column: 42, scope: !4597)
!4600 = !DILocation(line: 453, column: 45, scope: !4597)
!4601 = !DILocation(line: 453, column: 50, scope: !4597)
!4602 = !DILocation(line: 453, column: 6, scope: !4579)
!4603 = !DILocation(line: 454, column: 3, scope: !4597)
!4604 = !DILocation(line: 455, column: 32, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 455, column: 6)
!4606 = !DILocation(line: 455, column: 37, scope: !4605)
!4607 = !DILocation(line: 455, column: 43, scope: !4605)
!4608 = !DILocation(line: 455, column: 46, scope: !4605)
!4609 = !DILocation(line: 455, column: 51, scope: !4605)
!4610 = !DILocation(line: 455, column: 6, scope: !4579)
!4611 = !DILocation(line: 456, column: 3, scope: !4605)
!4612 = !DILocation(line: 457, column: 6, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 457, column: 6)
!4614 = !DILocation(line: 457, column: 11, scope: !4613)
!4615 = !DILocation(line: 457, column: 6, scope: !4579)
!4616 = !DILocation(line: 457, column: 26, scope: !4613)
!4617 = !DILocation(line: 458, column: 6, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 458, column: 6)
!4619 = !DILocation(line: 458, column: 11, scope: !4618)
!4620 = !DILocation(line: 458, column: 6, scope: !4579)
!4621 = !DILocation(line: 458, column: 26, scope: !4618)
!4622 = !DILocation(line: 459, column: 6, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 459, column: 6)
!4624 = !DILocation(line: 459, column: 11, scope: !4623)
!4625 = !DILocation(line: 459, column: 6, scope: !4579)
!4626 = !DILocation(line: 459, column: 26, scope: !4623)
!4627 = !DILocation(line: 460, column: 6, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 460, column: 6)
!4629 = !DILocation(line: 460, column: 11, scope: !4628)
!4630 = !DILocation(line: 460, column: 6, scope: !4579)
!4631 = !DILocation(line: 460, column: 26, scope: !4628)
!4632 = !DILocation(line: 461, column: 6, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 461, column: 6)
!4634 = !DILocation(line: 461, column: 11, scope: !4633)
!4635 = !DILocation(line: 461, column: 6, scope: !4579)
!4636 = !DILocation(line: 461, column: 26, scope: !4633)
!4637 = !DILocation(line: 462, column: 6, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 462, column: 6)
!4639 = !DILocation(line: 462, column: 11, scope: !4638)
!4640 = !DILocation(line: 462, column: 6, scope: !4579)
!4641 = !DILocation(line: 462, column: 26, scope: !4638)
!4642 = !DILocation(line: 463, column: 6, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 463, column: 6)
!4644 = !DILocation(line: 463, column: 11, scope: !4643)
!4645 = !DILocation(line: 463, column: 6, scope: !4579)
!4646 = !DILocation(line: 463, column: 26, scope: !4643)
!4647 = !DILocation(line: 464, column: 6, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 464, column: 6)
!4649 = !DILocation(line: 464, column: 11, scope: !4648)
!4650 = !DILocation(line: 464, column: 6, scope: !4579)
!4651 = !DILocation(line: 464, column: 26, scope: !4648)
!4652 = !DILocation(line: 465, column: 6, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 465, column: 6)
!4654 = !DILocation(line: 465, column: 11, scope: !4653)
!4655 = !DILocation(line: 465, column: 6, scope: !4579)
!4656 = !DILocation(line: 465, column: 26, scope: !4653)
!4657 = !DILocation(line: 466, column: 6, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 466, column: 6)
!4659 = !DILocation(line: 466, column: 11, scope: !4658)
!4660 = !DILocation(line: 466, column: 6, scope: !4579)
!4661 = !DILocation(line: 466, column: 26, scope: !4658)
!4662 = !DILocation(line: 467, column: 6, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 467, column: 6)
!4664 = !DILocation(line: 467, column: 11, scope: !4663)
!4665 = !DILocation(line: 467, column: 6, scope: !4579)
!4666 = !DILocation(line: 467, column: 26, scope: !4663)
!4667 = !DILocation(line: 468, column: 6, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 468, column: 6)
!4669 = !DILocation(line: 468, column: 11, scope: !4668)
!4670 = !DILocation(line: 468, column: 6, scope: !4579)
!4671 = !DILocation(line: 468, column: 26, scope: !4668)
!4672 = !DILocation(line: 469, column: 6, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 469, column: 6)
!4674 = !DILocation(line: 469, column: 11, scope: !4673)
!4675 = !DILocation(line: 469, column: 6, scope: !4579)
!4676 = !DILocation(line: 469, column: 26, scope: !4673)
!4677 = !DILocation(line: 470, column: 6, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 470, column: 6)
!4679 = !DILocation(line: 470, column: 11, scope: !4678)
!4680 = !DILocation(line: 470, column: 6, scope: !4579)
!4681 = !DILocation(line: 470, column: 26, scope: !4678)
!4682 = !DILocation(line: 471, column: 6, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 471, column: 6)
!4684 = !DILocation(line: 471, column: 11, scope: !4683)
!4685 = !DILocation(line: 471, column: 6, scope: !4579)
!4686 = !DILocation(line: 471, column: 26, scope: !4683)
!4687 = !DILocation(line: 472, column: 6, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 472, column: 6)
!4689 = !DILocation(line: 472, column: 11, scope: !4688)
!4690 = !DILocation(line: 472, column: 6, scope: !4579)
!4691 = !DILocation(line: 472, column: 26, scope: !4688)
!4692 = !DILocation(line: 473, column: 6, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 473, column: 6)
!4694 = !DILocation(line: 473, column: 11, scope: !4693)
!4695 = !DILocation(line: 473, column: 6, scope: !4579)
!4696 = !DILocation(line: 473, column: 26, scope: !4693)
!4697 = !DILocation(line: 474, column: 6, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 474, column: 6)
!4699 = !DILocation(line: 474, column: 11, scope: !4698)
!4700 = !DILocation(line: 474, column: 6, scope: !4579)
!4701 = !DILocation(line: 474, column: 27, scope: !4698)
!4702 = !DILocation(line: 475, column: 6, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 475, column: 6)
!4704 = !DILocation(line: 475, column: 11, scope: !4703)
!4705 = !DILocation(line: 475, column: 6, scope: !4579)
!4706 = !DILocation(line: 475, column: 32, scope: !4703)
!4707 = !DILocation(line: 477, column: 50, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4579, file: !156, line: 477, column: 6)
!4709 = !DILocation(line: 477, column: 6, scope: !4579)
!4710 = !DILocation(line: 478, column: 3, scope: !4708)
!4711 = !DILocation(line: 478, column: 3, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4713, file: !156, line: 478, column: 3)
!4713 = distinct !DILexicalBlock(scope: !4708, file: !156, line: 478, column: 3)
!4714 = !{i32 -2141678073}
!4715 = !DILocation(line: 478, column: 3, scope: !4713)
!4716 = !DILocation(line: 480, column: 3, scope: !4708)
!4717 = !DILocation(line: 480, column: 3, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4708, file: !156, line: 480, column: 3)
!4719 = !DILocation(line: 480, column: 3, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4718, file: !156, line: 480, column: 3)
!4721 = !DILocation(line: 480, column: 3, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4718, file: !156, line: 480, column: 3)
!4723 = !{i64 2153289426, i64 2153289455, i64 2153289501, i64 2153289559, i64 2153289613, i64 2153289667, i64 2153289722, i64 2153289753}
!4724 = !DILocation(line: 483, column: 2, scope: !4579)
!4725 = !DILocation(line: 484, column: 1, scope: !4579)
!4726 = !DISubprogram(name: "kmalloc_trace", scope: !156, file: !156, line: 525, type: !4727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!27, !4729, !1003, !42}
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4731, line: 325, flags: DIFlagFwdDecl)
!4731 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4732 = distinct !DISubprogram(name: "kmalloc_type", scope: !156, file: !156, line: 401, type: !4733, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4735)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!155, !1003, !46}
!4735 = !{!4736, !4737}
!4736 = !DILocalVariable(name: "flags", arg: 1, scope: !4732, file: !156, line: 401, type: !1003)
!4737 = !DILocalVariable(name: "caller", arg: 2, scope: !4732, file: !156, line: 401, type: !46)
!4738 = !DILocation(line: 401, column: 67, scope: !4732)
!4739 = !DILocation(line: 401, column: 88, scope: !4732)
!4740 = !DILocation(line: 407, column: 6, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4732, file: !156, line: 407, column: 6)
!4742 = !DILocation(line: 407, column: 6, scope: !4732)
!4743 = !DILocation(line: 413, column: 3, scope: !4741)
!4744 = !DILocation(line: 423, column: 38, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4732, file: !156, line: 423, column: 6)
!4746 = !DILocation(line: 423, column: 44, scope: !4745)
!4747 = !DILocation(line: 423, column: 6, scope: !4732)
!4748 = !DILocation(line: 424, column: 3, scope: !4745)
!4749 = !DILocation(line: 426, column: 3, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4732, file: !156, line: 425, column: 6)
!4751 = !DILocation(line: 429, column: 1, scope: !4732)
!4752 = !DISubprogram(name: "__kmalloc", scope: !156, file: !156, line: 488, type: !4501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4753 = !DISubprogram(name: "__compiletime_assert_245", scope: !156, file: !156, line: 478, type: !2330, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4754 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4332, file: !4332, line: 80, type: !4333, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4755)
!4755 = !{!4756, !4757}
!4756 = !DILocalVariable(name: "v", arg: 1, scope: !4754, file: !4332, line: 80, type: !4335)
!4757 = !DILocalVariable(name: "size", arg: 2, scope: !4754, file: !4332, line: 80, type: !42)
!4758 = !DILocation(line: 80, column: 74, scope: !4754)
!4759 = !DILocation(line: 80, column: 84, scope: !4754)
!4760 = !DILocation(line: 82, column: 20, scope: !4754)
!4761 = !DILocation(line: 82, column: 23, scope: !4754)
!4762 = !DILocation(line: 82, column: 2, scope: !4754)
!4763 = !DILocation(line: 83, column: 2, scope: !4754)
!4764 = !DILocation(line: 84, column: 1, scope: !4754)
!4765 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !4349, file: !4349, line: 2600, type: !4524, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4766)
!4766 = !{!4767, !4768}
!4767 = !DILocalVariable(name: "v", arg: 1, scope: !4765, file: !4349, line: 2600, type: !4161)
!4768 = !DILocalVariable(name: "i", arg: 2, scope: !4765, file: !4349, line: 2600, type: !289)
!4769 = !DILocation(line: 2600, column: 30, scope: !4765)
!4770 = !DILocation(line: 2600, column: 37, scope: !4765)
!4771 = !DILocation(line: 2602, column: 20, scope: !4765)
!4772 = !DILocation(line: 2602, column: 23, scope: !4765)
!4773 = !DILocation(line: 2602, column: 2, scope: !4765)
!4774 = !DILocation(line: 2603, column: 1, scope: !4765)
!4775 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !4379, file: !4379, line: 18, type: !4524, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4776)
!4776 = !{!4777, !4778}
!4777 = !DILocalVariable(name: "v", arg: 1, scope: !4775, file: !4379, line: 18, type: !4161)
!4778 = !DILocalVariable(name: "i", arg: 2, scope: !4775, file: !4379, line: 18, type: !289)
!4779 = !DILocation(line: 18, column: 59, scope: !4775)
!4780 = !DILocation(line: 18, column: 66, scope: !4775)
!4781 = !DILocation(line: 20, column: 2, scope: !4775)
!4782 = !DILocation(line: 20, column: 2, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4775, file: !4379, line: 20, column: 2)
!4784 = !DILocation(line: 21, column: 1, scope: !4775)
!4785 = !DISubprogram(name: "kfree", scope: !156, file: !156, line: 227, type: !4786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{null, !218}
!4788 = distinct !DISubprogram(name: "misc_cg_max_show", scope: !3, file: !3, line: 206, type: !1148, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4789)
!4789 = !{!4790, !4791, !4792, !4793, !4794}
!4790 = !DILocalVariable(name: "sf", arg: 1, scope: !4788, file: !3, line: 206, type: !1117)
!4791 = !DILocalVariable(name: "v", arg: 2, scope: !4788, file: !3, line: 206, type: !27)
!4792 = !DILocalVariable(name: "i", scope: !4788, file: !3, line: 208, type: !29)
!4793 = !DILocalVariable(name: "cg", scope: !4788, file: !3, line: 209, type: !177)
!4794 = !DILocalVariable(name: "max", scope: !4788, file: !3, line: 210, type: !168)
!4795 = !DILocation(line: 206, column: 46, scope: !4788)
!4796 = !DILocation(line: 206, column: 56, scope: !4788)
!4797 = !DILocation(line: 208, column: 2, scope: !4788)
!4798 = !DILocation(line: 208, column: 6, scope: !4788)
!4799 = !DILocation(line: 209, column: 2, scope: !4788)
!4800 = !DILocation(line: 209, column: 18, scope: !4788)
!4801 = !DILocation(line: 209, column: 40, scope: !4788)
!4802 = !DILocation(line: 209, column: 32, scope: !4788)
!4803 = !DILocation(line: 209, column: 23, scope: !4788)
!4804 = !DILocation(line: 210, column: 2, scope: !4788)
!4805 = !DILocation(line: 210, column: 6, scope: !4788)
!4806 = !DILocation(line: 212, column: 9, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4788, file: !3, line: 212, column: 2)
!4808 = !DILocation(line: 212, column: 7, scope: !4807)
!4809 = !DILocation(line: 212, column: 14, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4807, file: !3, line: 212, column: 2)
!4811 = !DILocation(line: 212, column: 16, scope: !4810)
!4812 = !DILocation(line: 212, column: 2, scope: !4807)
!4813 = !DILocation(line: 213, column: 7, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 213, column: 7)
!4815 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 213, column: 7)
!4816 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 212, column: 42)
!4817 = !DILocation(line: 213, column: 7, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 213, column: 7)
!4819 = !DILocation(line: 213, column: 7, scope: !4815)
!4820 = !DILocation(line: 213, column: 7, scope: !4816)
!4821 = !DILocation(line: 214, column: 10, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 214, column: 10)
!4823 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 213, column: 40)
!4824 = !DILocation(line: 214, column: 10, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 214, column: 10)
!4826 = !DILocation(line: 214, column: 8, scope: !4823)
!4827 = !DILocation(line: 215, column: 8, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 215, column: 8)
!4829 = !DILocation(line: 215, column: 12, scope: !4828)
!4830 = !DILocation(line: 215, column: 8, scope: !4823)
!4831 = !DILocation(line: 216, column: 16, scope: !4828)
!4832 = !DILocation(line: 216, column: 46, scope: !4828)
!4833 = !DILocation(line: 216, column: 32, scope: !4828)
!4834 = !DILocation(line: 216, column: 5, scope: !4828)
!4835 = !DILocation(line: 218, column: 16, scope: !4828)
!4836 = !DILocation(line: 218, column: 47, scope: !4828)
!4837 = !DILocation(line: 218, column: 33, scope: !4828)
!4838 = !DILocation(line: 219, column: 9, scope: !4828)
!4839 = !DILocation(line: 218, column: 5, scope: !4828)
!4840 = !DILocation(line: 220, column: 3, scope: !4823)
!4841 = !DILocation(line: 221, column: 2, scope: !4816)
!4842 = !DILocation(line: 212, column: 38, scope: !4810)
!4843 = !DILocation(line: 212, column: 2, scope: !4810)
!4844 = distinct !{!4844, !4812, !4845, !4105, !4106}
!4845 = !DILocation(line: 221, column: 2, scope: !4807)
!4846 = !DILocation(line: 224, column: 1, scope: !4788)
!4847 = !DILocation(line: 223, column: 2, scope: !4788)
!4848 = distinct !DISubprogram(name: "misc_cg_max_write", scope: !3, file: !3, line: 244, type: !3607, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4849)
!4849 = !{!4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859}
!4850 = !DILocalVariable(name: "of", arg: 1, scope: !4848, file: !3, line: 244, type: !252)
!4851 = !DILocalVariable(name: "buf", arg: 2, scope: !4848, file: !3, line: 244, type: !503)
!4852 = !DILocalVariable(name: "nbytes", arg: 3, scope: !4848, file: !3, line: 245, type: !42)
!4853 = !DILocalVariable(name: "off", arg: 4, scope: !4848, file: !3, line: 245, type: !48)
!4854 = !DILocalVariable(name: "cg", scope: !4848, file: !3, line: 247, type: !177)
!4855 = !DILocalVariable(name: "max", scope: !4848, file: !3, line: 248, type: !168)
!4856 = !DILocalVariable(name: "ret", scope: !4848, file: !3, line: 249, type: !29)
!4857 = !DILocalVariable(name: "i", scope: !4848, file: !3, line: 249, type: !29)
!4858 = !DILocalVariable(name: "type", scope: !4848, file: !3, line: 250, type: !5)
!4859 = !DILocalVariable(name: "token", scope: !4848, file: !3, line: 251, type: !503)
!4860 = !DILocation(line: 244, column: 59, scope: !4848)
!4861 = !DILocation(line: 244, column: 69, scope: !4848)
!4862 = !DILocation(line: 245, column: 13, scope: !4848)
!4863 = !DILocation(line: 245, column: 28, scope: !4848)
!4864 = !DILocation(line: 247, column: 2, scope: !4848)
!4865 = !DILocation(line: 247, column: 18, scope: !4848)
!4866 = !DILocation(line: 248, column: 2, scope: !4848)
!4867 = !DILocation(line: 248, column: 6, scope: !4848)
!4868 = !DILocation(line: 249, column: 2, scope: !4848)
!4869 = !DILocation(line: 249, column: 6, scope: !4848)
!4870 = !DILocation(line: 249, column: 15, scope: !4848)
!4871 = !DILocation(line: 250, column: 2, scope: !4848)
!4872 = !DILocation(line: 250, column: 21, scope: !4848)
!4873 = !DILocation(line: 251, column: 2, scope: !4848)
!4874 = !DILocation(line: 251, column: 8, scope: !4848)
!4875 = !DILocation(line: 253, column: 17, scope: !4848)
!4876 = !DILocation(line: 253, column: 8, scope: !4848)
!4877 = !DILocation(line: 253, column: 6, scope: !4848)
!4878 = !DILocation(line: 254, column: 10, scope: !4848)
!4879 = !DILocation(line: 254, column: 8, scope: !4848)
!4880 = !DILocation(line: 256, column: 7, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 256, column: 6)
!4882 = !DILocation(line: 256, column: 13, scope: !4881)
!4883 = !DILocation(line: 256, column: 17, scope: !4881)
!4884 = !DILocation(line: 256, column: 6, scope: !4848)
!4885 = !DILocation(line: 257, column: 3, scope: !4881)
!4886 = !DILocation(line: 259, column: 9, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 259, column: 2)
!4888 = !DILocation(line: 259, column: 7, scope: !4887)
!4889 = !DILocation(line: 259, column: 14, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 259, column: 2)
!4891 = !DILocation(line: 259, column: 16, scope: !4890)
!4892 = !DILocation(line: 259, column: 2, scope: !4887)
!4893 = !DILocation(line: 260, column: 29, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 260, column: 7)
!4895 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 259, column: 42)
!4896 = !DILocation(line: 260, column: 15, scope: !4894)
!4897 = !DILocation(line: 260, column: 33, scope: !4894)
!4898 = !DILocation(line: 260, column: 8, scope: !4894)
!4899 = !DILocation(line: 260, column: 7, scope: !4895)
!4900 = !DILocation(line: 261, column: 11, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 260, column: 41)
!4902 = !DILocation(line: 261, column: 9, scope: !4901)
!4903 = !DILocation(line: 262, column: 4, scope: !4901)
!4904 = !DILocation(line: 264, column: 2, scope: !4895)
!4905 = !DILocation(line: 259, column: 38, scope: !4890)
!4906 = !DILocation(line: 259, column: 2, scope: !4890)
!4907 = distinct !{!4907, !4892, !4908, !4105, !4106}
!4908 = !DILocation(line: 264, column: 2, scope: !4887)
!4909 = !DILocation(line: 266, column: 6, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 266, column: 6)
!4911 = !DILocation(line: 266, column: 11, scope: !4910)
!4912 = !DILocation(line: 266, column: 6, scope: !4848)
!4913 = !DILocation(line: 267, column: 3, scope: !4910)
!4914 = !DILocation(line: 269, column: 23, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 269, column: 6)
!4916 = !DILocation(line: 269, column: 7, scope: !4915)
!4917 = !DILocation(line: 269, column: 6, scope: !4848)
!4918 = !DILocation(line: 270, column: 7, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 269, column: 29)
!4920 = !DILocation(line: 271, column: 2, scope: !4919)
!4921 = !DILocation(line: 272, column: 19, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 271, column: 9)
!4923 = !DILocation(line: 272, column: 9, scope: !4922)
!4924 = !DILocation(line: 272, column: 7, scope: !4922)
!4925 = !DILocation(line: 273, column: 7, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 273, column: 7)
!4927 = !DILocation(line: 273, column: 7, scope: !4922)
!4928 = !DILocation(line: 274, column: 11, scope: !4926)
!4929 = !DILocation(line: 274, column: 4, scope: !4926)
!4930 = !DILocation(line: 277, column: 23, scope: !4848)
!4931 = !DILocation(line: 277, column: 16, scope: !4848)
!4932 = !DILocation(line: 277, column: 7, scope: !4848)
!4933 = !DILocation(line: 277, column: 5, scope: !4848)
!4934 = !DILocation(line: 279, column: 6, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 279, column: 6)
!4936 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 279, column: 6)
!4937 = !DILocation(line: 279, column: 6, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 279, column: 6)
!4939 = !DILocation(line: 279, column: 6, scope: !4936)
!4940 = !DILocation(line: 279, column: 6, scope: !4848)
!4941 = !DILocation(line: 280, column: 3, scope: !4936)
!4942 = !DILocation(line: 280, column: 3, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 280, column: 3)
!4944 = !DILocation(line: 280, column: 3, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 280, column: 3)
!4946 = !DILocation(line: 280, column: 3, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 280, column: 3)
!4948 = !DILocation(line: 282, column: 7, scope: !4936)
!4949 = !DILocation(line: 284, column: 9, scope: !4848)
!4950 = !DILocation(line: 284, column: 15, scope: !4848)
!4951 = !DILocation(line: 284, column: 21, scope: !4848)
!4952 = !DILocation(line: 284, column: 2, scope: !4848)
!4953 = !DILocation(line: 285, column: 1, scope: !4848)
!4954 = distinct !DISubprogram(name: "misc_cg_current_show", scope: !3, file: !3, line: 295, type: !1148, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4955)
!4955 = !{!4956, !4957, !4958, !4959, !4960}
!4956 = !DILocalVariable(name: "sf", arg: 1, scope: !4954, file: !3, line: 295, type: !1117)
!4957 = !DILocalVariable(name: "v", arg: 2, scope: !4954, file: !3, line: 295, type: !27)
!4958 = !DILocalVariable(name: "i", scope: !4954, file: !3, line: 297, type: !29)
!4959 = !DILocalVariable(name: "usage", scope: !4954, file: !3, line: 298, type: !168)
!4960 = !DILocalVariable(name: "cg", scope: !4954, file: !3, line: 299, type: !177)
!4961 = !DILocation(line: 295, column: 50, scope: !4954)
!4962 = !DILocation(line: 295, column: 60, scope: !4954)
!4963 = !DILocation(line: 297, column: 2, scope: !4954)
!4964 = !DILocation(line: 297, column: 6, scope: !4954)
!4965 = !DILocation(line: 298, column: 2, scope: !4954)
!4966 = !DILocation(line: 298, column: 6, scope: !4954)
!4967 = !DILocation(line: 299, column: 2, scope: !4954)
!4968 = !DILocation(line: 299, column: 18, scope: !4954)
!4969 = !DILocation(line: 299, column: 40, scope: !4954)
!4970 = !DILocation(line: 299, column: 32, scope: !4954)
!4971 = !DILocation(line: 299, column: 23, scope: !4954)
!4972 = !DILocation(line: 301, column: 9, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 301, column: 2)
!4974 = !DILocation(line: 301, column: 7, scope: !4973)
!4975 = !DILocation(line: 301, column: 14, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 301, column: 2)
!4977 = !DILocation(line: 301, column: 16, scope: !4976)
!4978 = !DILocation(line: 301, column: 2, scope: !4973)
!4979 = !DILocation(line: 302, column: 26, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 301, column: 42)
!4981 = !DILocation(line: 302, column: 30, scope: !4980)
!4982 = !DILocation(line: 302, column: 34, scope: !4980)
!4983 = !DILocation(line: 302, column: 37, scope: !4980)
!4984 = !DILocation(line: 302, column: 11, scope: !4980)
!4985 = !DILocation(line: 302, column: 9, scope: !4980)
!4986 = !DILocation(line: 303, column: 7, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4988, file: !3, line: 303, column: 7)
!4988 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 303, column: 7)
!4989 = !DILocation(line: 303, column: 7, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 303, column: 7)
!4991 = !DILocation(line: 303, column: 7, scope: !4988)
!4992 = !DILocation(line: 303, column: 39, scope: !4988)
!4993 = !DILocation(line: 303, column: 42, scope: !4988)
!4994 = !DILocation(line: 303, column: 7, scope: !4980)
!4995 = !DILocation(line: 304, column: 15, scope: !4988)
!4996 = !DILocation(line: 304, column: 46, scope: !4988)
!4997 = !DILocation(line: 304, column: 32, scope: !4988)
!4998 = !DILocation(line: 304, column: 50, scope: !4988)
!4999 = !DILocation(line: 304, column: 4, scope: !4988)
!5000 = !DILocation(line: 305, column: 2, scope: !4980)
!5001 = !DILocation(line: 301, column: 38, scope: !4976)
!5002 = !DILocation(line: 301, column: 2, scope: !4976)
!5003 = distinct !{!5003, !4978, !5004, !4105, !4106}
!5004 = !DILocation(line: 305, column: 2, scope: !4973)
!5005 = !DILocation(line: 308, column: 1, scope: !4954)
!5006 = !DILocation(line: 307, column: 2, scope: !4954)
!5007 = distinct !DISubprogram(name: "misc_cg_capacity_show", scope: !3, file: !3, line: 320, type: !1148, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5008)
!5008 = !{!5009, !5010, !5011, !5012}
!5009 = !DILocalVariable(name: "sf", arg: 1, scope: !5007, file: !3, line: 320, type: !1117)
!5010 = !DILocalVariable(name: "v", arg: 2, scope: !5007, file: !3, line: 320, type: !27)
!5011 = !DILocalVariable(name: "i", scope: !5007, file: !3, line: 322, type: !29)
!5012 = !DILocalVariable(name: "cap", scope: !5007, file: !3, line: 323, type: !168)
!5013 = !DILocation(line: 320, column: 51, scope: !5007)
!5014 = !DILocation(line: 320, column: 61, scope: !5007)
!5015 = !DILocation(line: 322, column: 2, scope: !5007)
!5016 = !DILocation(line: 322, column: 6, scope: !5007)
!5017 = !DILocation(line: 323, column: 2, scope: !5007)
!5018 = !DILocation(line: 323, column: 6, scope: !5007)
!5019 = !DILocation(line: 325, column: 9, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 325, column: 2)
!5021 = !DILocation(line: 325, column: 7, scope: !5020)
!5022 = !DILocation(line: 325, column: 14, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5020, file: !3, line: 325, column: 2)
!5024 = !DILocation(line: 325, column: 16, scope: !5023)
!5025 = !DILocation(line: 325, column: 2, scope: !5020)
!5026 = !DILocation(line: 326, column: 9, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 326, column: 9)
!5028 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 325, column: 42)
!5029 = !DILocation(line: 326, column: 9, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 326, column: 9)
!5031 = !DILocation(line: 326, column: 7, scope: !5028)
!5032 = !DILocation(line: 327, column: 7, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 327, column: 7)
!5034 = !DILocation(line: 327, column: 7, scope: !5028)
!5035 = !DILocation(line: 328, column: 15, scope: !5033)
!5036 = !DILocation(line: 328, column: 46, scope: !5033)
!5037 = !DILocation(line: 328, column: 32, scope: !5033)
!5038 = !DILocation(line: 328, column: 50, scope: !5033)
!5039 = !DILocation(line: 328, column: 4, scope: !5033)
!5040 = !DILocation(line: 329, column: 2, scope: !5028)
!5041 = !DILocation(line: 325, column: 38, scope: !5023)
!5042 = !DILocation(line: 325, column: 2, scope: !5023)
!5043 = distinct !{!5043, !5025, !5044, !4105, !4106}
!5044 = !DILocation(line: 329, column: 2, scope: !5020)
!5045 = !DILocation(line: 332, column: 1, scope: !5007)
!5046 = !DILocation(line: 331, column: 2, scope: !5007)
!5047 = distinct !DISubprogram(name: "misc_events_show", scope: !3, file: !3, line: 334, type: !1148, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5048)
!5048 = !{!5049, !5050, !5051, !5052, !5053}
!5049 = !DILocalVariable(name: "sf", arg: 1, scope: !5047, file: !3, line: 334, type: !1117)
!5050 = !DILocalVariable(name: "v", arg: 2, scope: !5047, file: !3, line: 334, type: !27)
!5051 = !DILocalVariable(name: "cg", scope: !5047, file: !3, line: 336, type: !177)
!5052 = !DILocalVariable(name: "events", scope: !5047, file: !3, line: 337, type: !168)
!5053 = !DILocalVariable(name: "i", scope: !5047, file: !3, line: 338, type: !29)
!5054 = !DILocation(line: 334, column: 46, scope: !5047)
!5055 = !DILocation(line: 334, column: 56, scope: !5047)
!5056 = !DILocation(line: 336, column: 2, scope: !5047)
!5057 = !DILocation(line: 336, column: 18, scope: !5047)
!5058 = !DILocation(line: 336, column: 40, scope: !5047)
!5059 = !DILocation(line: 336, column: 32, scope: !5047)
!5060 = !DILocation(line: 336, column: 23, scope: !5047)
!5061 = !DILocation(line: 337, column: 2, scope: !5047)
!5062 = !DILocation(line: 337, column: 6, scope: !5047)
!5063 = !DILocation(line: 338, column: 2, scope: !5047)
!5064 = !DILocation(line: 338, column: 6, scope: !5047)
!5065 = !DILocation(line: 340, column: 9, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 340, column: 2)
!5067 = !DILocation(line: 340, column: 7, scope: !5066)
!5068 = !DILocation(line: 340, column: 14, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 340, column: 2)
!5070 = !DILocation(line: 340, column: 16, scope: !5069)
!5071 = !DILocation(line: 340, column: 2, scope: !5066)
!5072 = !DILocation(line: 341, column: 27, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 340, column: 42)
!5074 = !DILocation(line: 341, column: 31, scope: !5073)
!5075 = !DILocation(line: 341, column: 35, scope: !5073)
!5076 = !DILocation(line: 341, column: 38, scope: !5073)
!5077 = !DILocation(line: 341, column: 12, scope: !5073)
!5078 = !DILocation(line: 341, column: 10, scope: !5073)
!5079 = !DILocation(line: 342, column: 7, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5081, file: !3, line: 342, column: 7)
!5081 = distinct !DILexicalBlock(scope: !5073, file: !3, line: 342, column: 7)
!5082 = !DILocation(line: 342, column: 7, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 342, column: 7)
!5084 = !DILocation(line: 342, column: 7, scope: !5081)
!5085 = !DILocation(line: 342, column: 39, scope: !5081)
!5086 = !DILocation(line: 342, column: 42, scope: !5081)
!5087 = !DILocation(line: 342, column: 7, scope: !5073)
!5088 = !DILocation(line: 343, column: 15, scope: !5081)
!5089 = !DILocation(line: 343, column: 50, scope: !5081)
!5090 = !DILocation(line: 343, column: 36, scope: !5081)
!5091 = !DILocation(line: 343, column: 54, scope: !5081)
!5092 = !DILocation(line: 343, column: 4, scope: !5081)
!5093 = !DILocation(line: 344, column: 2, scope: !5073)
!5094 = !DILocation(line: 340, column: 38, scope: !5069)
!5095 = !DILocation(line: 340, column: 2, scope: !5069)
!5096 = distinct !{!5096, !5071, !5097, !4105, !4106}
!5097 = !DILocation(line: 344, column: 2, scope: !5066)
!5098 = !DILocation(line: 346, column: 1, scope: !5047)
!5099 = !DILocation(line: 345, column: 2, scope: !5047)
!5100 = distinct !DISubprogram(name: "seq_css", scope: !2065, file: !2065, line: 584, type: !5101, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5103)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!2076, !1117}
!5103 = !{!5104}
!5104 = !DILocalVariable(name: "seq", arg: 1, scope: !5100, file: !2065, line: 584, type: !1117)
!5105 = !DILocation(line: 584, column: 68, scope: !5100)
!5106 = !DILocation(line: 586, column: 16, scope: !5100)
!5107 = !DILocation(line: 586, column: 21, scope: !5100)
!5108 = !DILocation(line: 586, column: 9, scope: !5100)
!5109 = !DILocation(line: 586, column: 2, scope: !5100)
!5110 = !DISubprogram(name: "seq_printf", scope: !1119, file: !1119, line: 119, type: !5111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{null, !1117, !23, null}
!5113 = !DISubprogram(name: "of_css", scope: !2065, file: !2065, line: 576, type: !5114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!2076, !252}
!5116 = distinct !DISubprogram(name: "strstrip", scope: !5117, file: !5117, line: 116, type: !5118, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5120)
!5117 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!503, !503}
!5120 = !{!5121}
!5121 = !DILocalVariable(name: "str", arg: 1, scope: !5116, file: !5117, line: 116, type: !503)
!5122 = !DILocation(line: 116, column: 49, scope: !5116)
!5123 = !DILocation(line: 118, column: 15, scope: !5116)
!5124 = !DILocation(line: 118, column: 9, scope: !5116)
!5125 = !DILocation(line: 118, column: 2, scope: !5116)
!5126 = !DISubprogram(name: "strsep", scope: !5117, file: !5117, line: 137, type: !5127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!503, !5129, !23}
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!5130 = !DISubprogram(name: "strcmp", scope: !5117, file: !5117, line: 88, type: !5131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!29, !23, !23}
!5133 = distinct !DISubprogram(name: "kstrtou64", scope: !5134, file: !5134, line: 74, type: !5135, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5138)
!5134 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!29, !23, !7, !5137}
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!5138 = !{!5139, !5140, !5141}
!5139 = !DILocalVariable(name: "s", arg: 1, scope: !5133, file: !5134, line: 74, type: !23)
!5140 = !DILocalVariable(name: "base", arg: 2, scope: !5133, file: !5134, line: 74, type: !7)
!5141 = !DILocalVariable(name: "res", arg: 3, scope: !5133, file: !5134, line: 74, type: !5137)
!5142 = !DILocation(line: 74, column: 54, scope: !5133)
!5143 = !DILocation(line: 74, column: 70, scope: !5133)
!5144 = !DILocation(line: 74, column: 81, scope: !5133)
!5145 = !DILocation(line: 76, column: 19, scope: !5133)
!5146 = !DILocation(line: 76, column: 22, scope: !5133)
!5147 = !DILocation(line: 76, column: 28, scope: !5133)
!5148 = !DILocation(line: 76, column: 9, scope: !5133)
!5149 = !DILocation(line: 76, column: 2, scope: !5133)
!5150 = !DISubprogram(name: "strim", scope: !5117, file: !5117, line: 114, type: !5118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5151 = !DISubprogram(name: "kstrtoull", scope: !5134, file: !5134, line: 12, type: !5152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!29, !23, !7, !5154}
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
