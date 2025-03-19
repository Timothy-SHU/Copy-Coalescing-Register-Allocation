; ModuleID = 'ipc/msgutil.c'
source_filename = "ipc/msgutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.user_namespace = type opaque
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, i64, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, %struct.ctl_table_set, ptr, %struct.ctl_table_set, ptr, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.2, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.static_call_key = type { ptr, %union.anon.15 }
%union.anon.15 = type { i64 }
%struct.msg_msg = type { %struct.list_head, i64, i64, ptr, ptr }
%struct.msg_msgseg = type { ptr }

@mq_lock = hidden global %struct.spinlock zeroinitializer, align 4, !dbg !0
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@ipcns_operations = external dso_local constant %struct.proc_ns_operations, align 8
@init_ipc_ns = hidden global %struct.ipc_namespace { [3 x %struct.ipc_ids] zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, %struct.percpu_counter zeroinitializer, %struct.percpu_counter zeroinitializer, i64 0, i64 0, i64 0, i32 0, i32 0, %struct.notifier_block zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.ctl_table_set zeroinitializer, ptr null, %struct.ctl_table_set zeroinitializer, ptr null, ptr @init_user_ns, ptr null, %struct.llist_node zeroinitializer, %struct.ns_common { %struct.atomic64_t zeroinitializer, ptr @ipcns_operations, i32 -268435457, %struct.refcount_struct { %struct.atomic_t { i32 1 } } } }, align 8, !dbg !189
@.str = private unnamed_addr constant [14 x i8] c"ipc/msgutil.c\00", align 1, !dbg !3730
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3735
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !3740
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched183 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !3746
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched183], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @load_msg(ptr noundef %src, i64 noundef %len) #0 align 16 !dbg !3760 {
entry:
  %retval = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %msg = alloca ptr, align 8
  %seg = alloca ptr, align 8
  %err = alloca i32, align 4
  %alen = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x286 = alloca i64, align 8
  %__UNIQUE_ID___y287 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x288 = alloca i64, align 8
  %__UNIQUE_ID___y289 = alloca i64, align 8
  %tmp8 = alloca i64, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !3777, metadata !DIExpression()), !dbg !3793
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3778, metadata !DIExpression()), !dbg !3794
  call void @llvm.lifetime.start.p0(i64 8, ptr %msg) #14, !dbg !3795
  call void @llvm.dbg.declare(metadata ptr %msg, metadata !3779, metadata !DIExpression()), !dbg !3796
  call void @llvm.lifetime.start.p0(i64 8, ptr %seg) #14, !dbg !3797
  call void @llvm.dbg.declare(metadata ptr %seg, metadata !3780, metadata !DIExpression()), !dbg !3798
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !3799
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3781, metadata !DIExpression()), !dbg !3800
  store i32 -14, ptr %err, align 4, !dbg !3800
  call void @llvm.lifetime.start.p0(i64 8, ptr %alen) #14, !dbg !3801
  call void @llvm.dbg.declare(metadata ptr %alen, metadata !3782, metadata !DIExpression()), !dbg !3802
  %0 = load i64, ptr %len.addr, align 8, !dbg !3803
  %call = call ptr @alloc_msg(i64 noundef %0) #15, !dbg !3804
  store ptr %call, ptr %msg, align 8, !dbg !3805
  %1 = load ptr, ptr %msg, align 8, !dbg !3806
  %cmp = icmp eq ptr %1, null, !dbg !3808
  br i1 %cmp, label %if.then, label %if.end, !dbg !3809

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #15, !dbg !3810
  store ptr %call1, ptr %retval, align 8, !dbg !3811
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3811

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x286) #14, !dbg !3812
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x286, metadata !3783, metadata !DIExpression()), !dbg !3812
  %2 = load i64, ptr %len.addr, align 8, !dbg !3812
  store i64 %2, ptr %__UNIQUE_ID___x286, align 8, !dbg !3812
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y287) #14, !dbg !3812
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y287, metadata !3785, metadata !DIExpression()), !dbg !3812
  store i64 4048, ptr %__UNIQUE_ID___y287, align 8, !dbg !3812
  %3 = load i64, ptr %__UNIQUE_ID___x286, align 8, !dbg !3812
  %4 = load i64, ptr %__UNIQUE_ID___y287, align 8, !dbg !3812
  %cmp2 = icmp ult i64 %3, %4, !dbg !3812
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !3812

cond.true:                                        ; preds = %if.end
  %5 = load i64, ptr %__UNIQUE_ID___x286, align 8, !dbg !3812
  br label %cond.end, !dbg !3812

cond.false:                                       ; preds = %if.end
  %6 = load i64, ptr %__UNIQUE_ID___y287, align 8, !dbg !3812
  br label %cond.end, !dbg !3812

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !3812
  store i64 %cond, ptr %tmp, align 8, !dbg !3812
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y287) #14, !dbg !3813
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x286) #14, !dbg !3813
  %7 = load i64, ptr %tmp, align 8, !dbg !3812
  store i64 %7, ptr %alen, align 8, !dbg !3814
  %8 = load ptr, ptr %msg, align 8, !dbg !3815
  %add.ptr = getelementptr %struct.msg_msg, ptr %8, i64 1, !dbg !3817
  %9 = load ptr, ptr %src.addr, align 8, !dbg !3818
  %10 = load i64, ptr %alen, align 8, !dbg !3819
  %call3 = call i64 @copy_from_user(ptr noundef %add.ptr, ptr noundef %9, i64 noundef %10) #15, !dbg !3820
  %tobool = icmp ne i64 %call3, 0, !dbg !3820
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !3821

if.then4:                                         ; preds = %cond.end
  br label %out_err, !dbg !3822

if.end5:                                          ; preds = %cond.end
  %11 = load ptr, ptr %msg, align 8, !dbg !3823
  %next = getelementptr inbounds %struct.msg_msg, ptr %11, i32 0, i32 3, !dbg !3824
  %12 = load ptr, ptr %next, align 8, !dbg !3824
  store ptr %12, ptr %seg, align 8, !dbg !3825
  br label %for.cond, !dbg !3826

for.cond:                                         ; preds = %for.inc, %if.end5
  %13 = load ptr, ptr %seg, align 8, !dbg !3827
  %cmp6 = icmp ne ptr %13, null, !dbg !3828
  br i1 %cmp6, label %for.body, label %for.end, !dbg !3829

for.body:                                         ; preds = %for.cond
  %14 = load i64, ptr %alen, align 8, !dbg !3830
  %15 = load i64, ptr %len.addr, align 8, !dbg !3831
  %sub = sub i64 %15, %14, !dbg !3831
  store i64 %sub, ptr %len.addr, align 8, !dbg !3831
  %16 = load ptr, ptr %src.addr, align 8, !dbg !3832
  %17 = load i64, ptr %alen, align 8, !dbg !3833
  %add.ptr7 = getelementptr i8, ptr %16, i64 %17, !dbg !3834
  store ptr %add.ptr7, ptr %src.addr, align 8, !dbg !3835
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x288) #14, !dbg !3836
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x288, metadata !3786, metadata !DIExpression()), !dbg !3836
  %18 = load i64, ptr %len.addr, align 8, !dbg !3836
  store i64 %18, ptr %__UNIQUE_ID___x288, align 8, !dbg !3836
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y289) #14, !dbg !3836
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y289, metadata !3791, metadata !DIExpression()), !dbg !3836
  store i64 4088, ptr %__UNIQUE_ID___y289, align 8, !dbg !3836
  %19 = load i64, ptr %__UNIQUE_ID___x288, align 8, !dbg !3836
  %20 = load i64, ptr %__UNIQUE_ID___y289, align 8, !dbg !3836
  %cmp9 = icmp ult i64 %19, %20, !dbg !3836
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !3836

cond.true10:                                      ; preds = %for.body
  %21 = load i64, ptr %__UNIQUE_ID___x288, align 8, !dbg !3836
  br label %cond.end12, !dbg !3836

cond.false11:                                     ; preds = %for.body
  %22 = load i64, ptr %__UNIQUE_ID___y289, align 8, !dbg !3836
  br label %cond.end12, !dbg !3836

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i64 [ %21, %cond.true10 ], [ %22, %cond.false11 ], !dbg !3836
  store i64 %cond13, ptr %tmp8, align 8, !dbg !3836
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y289) #14, !dbg !3837
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x288) #14, !dbg !3837
  %23 = load i64, ptr %tmp8, align 8, !dbg !3836
  store i64 %23, ptr %alen, align 8, !dbg !3838
  %24 = load ptr, ptr %seg, align 8, !dbg !3839
  %add.ptr14 = getelementptr %struct.msg_msgseg, ptr %24, i64 1, !dbg !3841
  %25 = load ptr, ptr %src.addr, align 8, !dbg !3842
  %26 = load i64, ptr %alen, align 8, !dbg !3843
  %call15 = call i64 @copy_from_user(ptr noundef %add.ptr14, ptr noundef %25, i64 noundef %26) #15, !dbg !3844
  %tobool16 = icmp ne i64 %call15, 0, !dbg !3844
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !3845

if.then17:                                        ; preds = %cond.end12
  br label %out_err, !dbg !3846

if.end18:                                         ; preds = %cond.end12
  br label %for.inc, !dbg !3847

for.inc:                                          ; preds = %if.end18
  %27 = load ptr, ptr %seg, align 8, !dbg !3848
  %next19 = getelementptr inbounds %struct.msg_msgseg, ptr %27, i32 0, i32 0, !dbg !3849
  %28 = load ptr, ptr %next19, align 8, !dbg !3849
  store ptr %28, ptr %seg, align 8, !dbg !3850
  br label %for.cond, !dbg !3851, !llvm.loop !3852

for.end:                                          ; preds = %for.cond
  %29 = load ptr, ptr %msg, align 8, !dbg !3856
  %call20 = call i32 @security_msg_msg_alloc(ptr noundef %29) #15, !dbg !3857
  store i32 %call20, ptr %err, align 4, !dbg !3858
  %30 = load i32, ptr %err, align 4, !dbg !3859
  %tobool21 = icmp ne i32 %30, 0, !dbg !3859
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !3861

if.then22:                                        ; preds = %for.end
  br label %out_err, !dbg !3862

if.end23:                                         ; preds = %for.end
  %31 = load ptr, ptr %msg, align 8, !dbg !3863
  store ptr %31, ptr %retval, align 8, !dbg !3864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3864

out_err:                                          ; preds = %if.then22, %if.then17, %if.then4
  call void @llvm.dbg.label(metadata !3792), !dbg !3865
  %32 = load ptr, ptr %msg, align 8, !dbg !3866
  call void @free_msg(ptr noundef %32) #15, !dbg !3867
  %33 = load i32, ptr %err, align 4, !dbg !3868
  %conv = sext i32 %33 to i64, !dbg !3868
  %call24 = call ptr @ERR_PTR(i64 noundef %conv) #15, !dbg !3869
  store ptr %call24, ptr %retval, align 8, !dbg !3870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3870

cleanup:                                          ; preds = %out_err, %if.end23, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %alen) #14, !dbg !3871
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !3871
  call void @llvm.lifetime.end.p0(i64 8, ptr %seg) #14, !dbg !3871
  call void @llvm.lifetime.end.p0(i64 8, ptr %msg) #14, !dbg !3871
  %34 = load ptr, ptr %retval, align 8, !dbg !3871
  ret ptr %34, !dbg !3871
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_msg(i64 noundef %len) #0 align 16 !dbg !3872 {
entry:
  %retval = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %msg = alloca ptr, align 8
  %pseg = alloca ptr, align 8
  %alen = alloca i64, align 8
  %__UNIQUE_ID___x282 = alloca i64, align 8
  %__UNIQUE_ID___y283 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %seg = alloca ptr, align 8
  %tmp4 = alloca i32, align 4
  %__UNIQUE_ID___x284 = alloca i64, align 8
  %__UNIQUE_ID___y285 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !3876, metadata !DIExpression()), !dbg !3890
  call void @llvm.lifetime.start.p0(i64 8, ptr %msg) #14, !dbg !3891
  call void @llvm.dbg.declare(metadata ptr %msg, metadata !3877, metadata !DIExpression()), !dbg !3892
  call void @llvm.lifetime.start.p0(i64 8, ptr %pseg) #14, !dbg !3893
  call void @llvm.dbg.declare(metadata ptr %pseg, metadata !3878, metadata !DIExpression()), !dbg !3894
  call void @llvm.lifetime.start.p0(i64 8, ptr %alen) #14, !dbg !3895
  call void @llvm.dbg.declare(metadata ptr %alen, metadata !3880, metadata !DIExpression()), !dbg !3896
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x282) #14, !dbg !3897
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x282, metadata !3881, metadata !DIExpression()), !dbg !3897
  %0 = load i64, ptr %len.addr, align 8, !dbg !3897
  store i64 %0, ptr %__UNIQUE_ID___x282, align 8, !dbg !3897
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y283) #14, !dbg !3897
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y283, metadata !3883, metadata !DIExpression()), !dbg !3897
  store i64 4048, ptr %__UNIQUE_ID___y283, align 8, !dbg !3897
  %1 = load i64, ptr %__UNIQUE_ID___x282, align 8, !dbg !3897
  %2 = load i64, ptr %__UNIQUE_ID___y283, align 8, !dbg !3897
  %cmp = icmp ult i64 %1, %2, !dbg !3897
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3897

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___x282, align 8, !dbg !3897
  br label %cond.end, !dbg !3897

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___y283, align 8, !dbg !3897
  br label %cond.end, !dbg !3897

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !3897
  store i64 %cond, ptr %tmp, align 8, !dbg !3897
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y283) #14, !dbg !3898
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x282) #14, !dbg !3898
  %5 = load i64, ptr %tmp, align 8, !dbg !3897
  store i64 %5, ptr %alen, align 8, !dbg !3899
  %6 = load i64, ptr %alen, align 8, !dbg !3900
  %add = add i64 48, %6, !dbg !3901
  %call = call noalias ptr @kmalloc(i64 noundef %add, i32 noundef 4197568) #16, !dbg !3902
  store ptr %call, ptr %msg, align 8, !dbg !3903
  %7 = load ptr, ptr %msg, align 8, !dbg !3904
  %cmp1 = icmp eq ptr %7, null, !dbg !3906
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3907

if.then:                                          ; preds = %cond.end
  store ptr null, ptr %retval, align 8, !dbg !3908
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !3908

if.end:                                           ; preds = %cond.end
  %8 = load ptr, ptr %msg, align 8, !dbg !3909
  %next = getelementptr inbounds %struct.msg_msg, ptr %8, i32 0, i32 3, !dbg !3910
  store ptr null, ptr %next, align 8, !dbg !3911
  %9 = load ptr, ptr %msg, align 8, !dbg !3912
  %security = getelementptr inbounds %struct.msg_msg, ptr %9, i32 0, i32 4, !dbg !3913
  store ptr null, ptr %security, align 8, !dbg !3914
  %10 = load i64, ptr %alen, align 8, !dbg !3915
  %11 = load i64, ptr %len.addr, align 8, !dbg !3916
  %sub = sub i64 %11, %10, !dbg !3916
  store i64 %sub, ptr %len.addr, align 8, !dbg !3916
  %12 = load ptr, ptr %msg, align 8, !dbg !3917
  %next2 = getelementptr inbounds %struct.msg_msg, ptr %12, i32 0, i32 3, !dbg !3918
  store ptr %next2, ptr %pseg, align 8, !dbg !3919
  br label %while.cond, !dbg !3920

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %13 = load i64, ptr %len.addr, align 8, !dbg !3921
  %cmp3 = icmp ugt i64 %13, 0, !dbg !3922
  br i1 %cmp3, label %while.body, label %while.end, !dbg !3920

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %seg) #14, !dbg !3923
  call void @llvm.dbg.declare(metadata ptr %seg, metadata !3884, metadata !DIExpression()), !dbg !3924
  call void @__might_resched(ptr noundef @.str, i32 noundef 65, i32 noundef 0) #15, !dbg !3925
  %call5 = call i32 @_cond_resched() #15, !dbg !3925
  store i32 %call5, ptr %tmp4, align 4, !dbg !3925
  %14 = load i32, ptr %tmp4, align 4, !dbg !3925
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x284) #14, !dbg !3927
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x284, metadata !3886, metadata !DIExpression()), !dbg !3927
  %15 = load i64, ptr %len.addr, align 8, !dbg !3927
  store i64 %15, ptr %__UNIQUE_ID___x284, align 8, !dbg !3927
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y285) #14, !dbg !3927
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y285, metadata !3888, metadata !DIExpression()), !dbg !3927
  store i64 4088, ptr %__UNIQUE_ID___y285, align 8, !dbg !3927
  %16 = load i64, ptr %__UNIQUE_ID___x284, align 8, !dbg !3927
  %17 = load i64, ptr %__UNIQUE_ID___y285, align 8, !dbg !3927
  %cmp7 = icmp ult i64 %16, %17, !dbg !3927
  br i1 %cmp7, label %cond.true8, label %cond.false9, !dbg !3927

cond.true8:                                       ; preds = %while.body
  %18 = load i64, ptr %__UNIQUE_ID___x284, align 8, !dbg !3927
  br label %cond.end10, !dbg !3927

cond.false9:                                      ; preds = %while.body
  %19 = load i64, ptr %__UNIQUE_ID___y285, align 8, !dbg !3927
  br label %cond.end10, !dbg !3927

cond.end10:                                       ; preds = %cond.false9, %cond.true8
  %cond11 = phi i64 [ %18, %cond.true8 ], [ %19, %cond.false9 ], !dbg !3927
  store i64 %cond11, ptr %tmp6, align 8, !dbg !3927
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y285) #14, !dbg !3928
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x284) #14, !dbg !3928
  %20 = load i64, ptr %tmp6, align 8, !dbg !3927
  store i64 %20, ptr %alen, align 8, !dbg !3929
  %21 = load i64, ptr %alen, align 8, !dbg !3930
  %add12 = add i64 8, %21, !dbg !3931
  %call13 = call noalias ptr @kmalloc(i64 noundef %add12, i32 noundef 4197568) #16, !dbg !3932
  store ptr %call13, ptr %seg, align 8, !dbg !3933
  %22 = load ptr, ptr %seg, align 8, !dbg !3934
  %cmp14 = icmp eq ptr %22, null, !dbg !3936
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !3937

if.then15:                                        ; preds = %cond.end10
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3938

if.end16:                                         ; preds = %cond.end10
  %23 = load ptr, ptr %seg, align 8, !dbg !3939
  %24 = load ptr, ptr %pseg, align 8, !dbg !3940
  store ptr %23, ptr %24, align 8, !dbg !3941
  %25 = load ptr, ptr %seg, align 8, !dbg !3942
  %next17 = getelementptr inbounds %struct.msg_msgseg, ptr %25, i32 0, i32 0, !dbg !3943
  store ptr null, ptr %next17, align 8, !dbg !3944
  %26 = load ptr, ptr %seg, align 8, !dbg !3945
  %next18 = getelementptr inbounds %struct.msg_msgseg, ptr %26, i32 0, i32 0, !dbg !3946
  store ptr %next18, ptr %pseg, align 8, !dbg !3947
  %27 = load i64, ptr %alen, align 8, !dbg !3948
  %28 = load i64, ptr %len.addr, align 8, !dbg !3949
  %sub19 = sub i64 %28, %27, !dbg !3949
  store i64 %sub19, ptr %len.addr, align 8, !dbg !3949
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3950
  br label %cleanup, !dbg !3950

cleanup:                                          ; preds = %if.then15, %if.end16
  call void @llvm.lifetime.end.p0(i64 8, ptr %seg) #14, !dbg !3950
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup20 [
    i32 0, label %cleanup.cont
    i32 4, label %out_err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !3920, !llvm.loop !3951

while.end:                                        ; preds = %while.cond
  %29 = load ptr, ptr %msg, align 8, !dbg !3952
  store ptr %29, ptr %retval, align 8, !dbg !3953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !3953

out_err:                                          ; preds = %cleanup
  call void @llvm.dbg.label(metadata !3889), !dbg !3954
  %30 = load ptr, ptr %msg, align 8, !dbg !3955
  call void @free_msg(ptr noundef %30) #15, !dbg !3956
  store ptr null, ptr %retval, align 8, !dbg !3957
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !3957

cleanup20:                                        ; preds = %out_err, %while.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %alen) #14, !dbg !3958
  call void @llvm.lifetime.end.p0(i64 8, ptr %pseg) #14, !dbg !3958
  call void @llvm.lifetime.end.p0(i64 8, ptr %msg) #14, !dbg !3958
  %31 = load ptr, ptr %retval, align 8, !dbg !3958
  ret ptr %31, !dbg !3958
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !3959 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !3964, metadata !DIExpression()), !dbg !3965
  %0 = load i64, ptr %error.addr, align 8, !dbg !3966
  %1 = inttoptr i64 %0 to ptr, !dbg !3967
  ret ptr %1, !dbg !3968
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !3969 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !3974, metadata !DIExpression()), !dbg !3977
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !3975, metadata !DIExpression()), !dbg !3978
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3976, metadata !DIExpression()), !dbg !3979
  %0 = load ptr, ptr %to.addr, align 8, !dbg !3980
  %1 = load i64, ptr %n.addr, align 8, !dbg !3982
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #15, !dbg !3983
  br i1 %call, label %if.then, label %if.end, !dbg !3984

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !3985
  %3 = load ptr, ptr %from.addr, align 8, !dbg !3986
  %4 = load i64, ptr %n.addr, align 8, !dbg !3987
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #15, !dbg !3988
  store i64 %call1, ptr %n.addr, align 8, !dbg !3989
  br label %if.end, !dbg !3990

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !3991
  ret i64 %5, !dbg !3992
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3993 dso_local i32 @security_msg_msg_alloc(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @free_msg(ptr noundef %msg) #0 align 16 !dbg !3997 {
entry:
  %msg.addr = alloca ptr, align 8
  %seg = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca i32, align 4
  store ptr %msg, ptr %msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !4001, metadata !DIExpression()), !dbg !4005
  call void @llvm.lifetime.start.p0(i64 8, ptr %seg) #14, !dbg !4006
  call void @llvm.dbg.declare(metadata ptr %seg, metadata !4002, metadata !DIExpression()), !dbg !4007
  %0 = load ptr, ptr %msg.addr, align 8, !dbg !4008
  call void @security_msg_msg_free(ptr noundef %0) #15, !dbg !4009
  %1 = load ptr, ptr %msg.addr, align 8, !dbg !4010
  %next = getelementptr inbounds %struct.msg_msg, ptr %1, i32 0, i32 3, !dbg !4011
  %2 = load ptr, ptr %next, align 8, !dbg !4011
  store ptr %2, ptr %seg, align 8, !dbg !4012
  %3 = load ptr, ptr %msg.addr, align 8, !dbg !4013
  call void @kfree(ptr noundef %3) #15, !dbg !4014
  br label %while.cond, !dbg !4015

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %seg, align 8, !dbg !4016
  %cmp = icmp ne ptr %4, null, !dbg !4017
  br i1 %cmp, label %while.body, label %while.end, !dbg !4015

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !4018
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4003, metadata !DIExpression()), !dbg !4019
  %5 = load ptr, ptr %seg, align 8, !dbg !4020
  %next1 = getelementptr inbounds %struct.msg_msgseg, ptr %5, i32 0, i32 0, !dbg !4021
  %6 = load ptr, ptr %next1, align 8, !dbg !4021
  store ptr %6, ptr %tmp, align 8, !dbg !4019
  call void @__might_resched(ptr noundef @.str, i32 noundef 180, i32 noundef 0) #15, !dbg !4022
  %call = call i32 @_cond_resched() #15, !dbg !4022
  store i32 %call, ptr %tmp2, align 4, !dbg !4022
  %7 = load i32, ptr %tmp2, align 4, !dbg !4022
  %8 = load ptr, ptr %seg, align 8, !dbg !4024
  call void @kfree(ptr noundef %8) #15, !dbg !4025
  %9 = load ptr, ptr %tmp, align 8, !dbg !4026
  store ptr %9, ptr %seg, align 8, !dbg !4027
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !4028
  br label %while.cond, !dbg !4015, !llvm.loop !4029

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %seg) #14, !dbg !4030
  ret void, !dbg !4030
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @copy_msg(ptr noundef %src, ptr noundef %dst) #0 align 16 !dbg !4031 {
entry:
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4035, metadata !DIExpression()), !dbg !4037
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4036, metadata !DIExpression()), !dbg !4038
  %call = call ptr @ERR_PTR(i64 noundef -38) #15, !dbg !4039
  ret ptr %call, !dbg !4040
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @store_msg(ptr noundef %dest, ptr noundef %msg, i64 noundef %len) #0 align 16 !dbg !4041 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %msg.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %alen = alloca i64, align 8
  %seg = alloca ptr, align 8
  %__UNIQUE_ID___x290 = alloca i64, align 8
  %__UNIQUE_ID___y291 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x292 = alloca i64, align 8
  %__UNIQUE_ID___y293 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !4045, metadata !DIExpression()), !dbg !4059
  store ptr %msg, ptr %msg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msg.addr, metadata !4046, metadata !DIExpression()), !dbg !4060
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !4047, metadata !DIExpression()), !dbg !4061
  call void @llvm.lifetime.start.p0(i64 8, ptr %alen) #14, !dbg !4062
  call void @llvm.dbg.declare(metadata ptr %alen, metadata !4048, metadata !DIExpression()), !dbg !4063
  call void @llvm.lifetime.start.p0(i64 8, ptr %seg) #14, !dbg !4064
  call void @llvm.dbg.declare(metadata ptr %seg, metadata !4049, metadata !DIExpression()), !dbg !4065
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x290) #14, !dbg !4066
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x290, metadata !4050, metadata !DIExpression()), !dbg !4066
  %0 = load i64, ptr %len.addr, align 8, !dbg !4066
  store i64 %0, ptr %__UNIQUE_ID___x290, align 8, !dbg !4066
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y291) #14, !dbg !4066
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y291, metadata !4052, metadata !DIExpression()), !dbg !4066
  store i64 4048, ptr %__UNIQUE_ID___y291, align 8, !dbg !4066
  %1 = load i64, ptr %__UNIQUE_ID___x290, align 8, !dbg !4066
  %2 = load i64, ptr %__UNIQUE_ID___y291, align 8, !dbg !4066
  %cmp = icmp ult i64 %1, %2, !dbg !4066
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4066

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___x290, align 8, !dbg !4066
  br label %cond.end, !dbg !4066

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___y291, align 8, !dbg !4066
  br label %cond.end, !dbg !4066

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !4066
  store i64 %cond, ptr %tmp, align 8, !dbg !4066
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y291) #14, !dbg !4067
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x290) #14, !dbg !4067
  %5 = load i64, ptr %tmp, align 8, !dbg !4066
  store i64 %5, ptr %alen, align 8, !dbg !4068
  %6 = load ptr, ptr %dest.addr, align 8, !dbg !4069
  %7 = load ptr, ptr %msg.addr, align 8, !dbg !4071
  %add.ptr = getelementptr %struct.msg_msg, ptr %7, i64 1, !dbg !4072
  %8 = load i64, ptr %alen, align 8, !dbg !4073
  %call = call i64 @copy_to_user(ptr noundef %6, ptr noundef %add.ptr, i64 noundef %8) #15, !dbg !4074
  %tobool = icmp ne i64 %call, 0, !dbg !4074
  br i1 %tobool, label %if.then, label %if.end, !dbg !4075

if.then:                                          ; preds = %cond.end
  store i32 -1, ptr %retval, align 4, !dbg !4076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4076

if.end:                                           ; preds = %cond.end
  %9 = load ptr, ptr %msg.addr, align 8, !dbg !4077
  %next = getelementptr inbounds %struct.msg_msg, ptr %9, i32 0, i32 3, !dbg !4078
  %10 = load ptr, ptr %next, align 8, !dbg !4078
  store ptr %10, ptr %seg, align 8, !dbg !4079
  br label %for.cond, !dbg !4080

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load ptr, ptr %seg, align 8, !dbg !4081
  %cmp1 = icmp ne ptr %11, null, !dbg !4082
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4083

for.body:                                         ; preds = %for.cond
  %12 = load i64, ptr %alen, align 8, !dbg !4084
  %13 = load i64, ptr %len.addr, align 8, !dbg !4085
  %sub = sub i64 %13, %12, !dbg !4085
  store i64 %sub, ptr %len.addr, align 8, !dbg !4085
  %14 = load ptr, ptr %dest.addr, align 8, !dbg !4086
  %15 = load i64, ptr %alen, align 8, !dbg !4087
  %add.ptr2 = getelementptr i8, ptr %14, i64 %15, !dbg !4088
  store ptr %add.ptr2, ptr %dest.addr, align 8, !dbg !4089
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x292) #14, !dbg !4090
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x292, metadata !4053, metadata !DIExpression()), !dbg !4090
  %16 = load i64, ptr %len.addr, align 8, !dbg !4090
  store i64 %16, ptr %__UNIQUE_ID___x292, align 8, !dbg !4090
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y293) #14, !dbg !4090
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y293, metadata !4058, metadata !DIExpression()), !dbg !4090
  store i64 4088, ptr %__UNIQUE_ID___y293, align 8, !dbg !4090
  %17 = load i64, ptr %__UNIQUE_ID___x292, align 8, !dbg !4090
  %18 = load i64, ptr %__UNIQUE_ID___y293, align 8, !dbg !4090
  %cmp4 = icmp ult i64 %17, %18, !dbg !4090
  br i1 %cmp4, label %cond.true5, label %cond.false6, !dbg !4090

cond.true5:                                       ; preds = %for.body
  %19 = load i64, ptr %__UNIQUE_ID___x292, align 8, !dbg !4090
  br label %cond.end7, !dbg !4090

cond.false6:                                      ; preds = %for.body
  %20 = load i64, ptr %__UNIQUE_ID___y293, align 8, !dbg !4090
  br label %cond.end7, !dbg !4090

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi i64 [ %19, %cond.true5 ], [ %20, %cond.false6 ], !dbg !4090
  store i64 %cond8, ptr %tmp3, align 8, !dbg !4090
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y293) #14, !dbg !4091
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x292) #14, !dbg !4091
  %21 = load i64, ptr %tmp3, align 8, !dbg !4090
  store i64 %21, ptr %alen, align 8, !dbg !4092
  %22 = load ptr, ptr %dest.addr, align 8, !dbg !4093
  %23 = load ptr, ptr %seg, align 8, !dbg !4095
  %add.ptr9 = getelementptr %struct.msg_msgseg, ptr %23, i64 1, !dbg !4096
  %24 = load i64, ptr %alen, align 8, !dbg !4097
  %call10 = call i64 @copy_to_user(ptr noundef %22, ptr noundef %add.ptr9, i64 noundef %24) #15, !dbg !4098
  %tobool11 = icmp ne i64 %call10, 0, !dbg !4098
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4099

if.then12:                                        ; preds = %cond.end7
  store i32 -1, ptr %retval, align 4, !dbg !4100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4100

if.end13:                                         ; preds = %cond.end7
  br label %for.inc, !dbg !4101

for.inc:                                          ; preds = %if.end13
  %25 = load ptr, ptr %seg, align 8, !dbg !4102
  %next14 = getelementptr inbounds %struct.msg_msgseg, ptr %25, i32 0, i32 0, !dbg !4103
  %26 = load ptr, ptr %next14, align 8, !dbg !4103
  store ptr %26, ptr %seg, align 8, !dbg !4104
  br label %for.cond, !dbg !4105, !llvm.loop !4106

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4108

cleanup:                                          ; preds = %for.end, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %seg) #14, !dbg !4109
  call void @llvm.lifetime.end.p0(i64 8, ptr %alen) #14, !dbg !4109
  %27 = load i32, ptr %retval, align 4, !dbg !4109
  ret i32 %27, !dbg !4109
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !4110 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4112, metadata !DIExpression()), !dbg !4115
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4113, metadata !DIExpression()), !dbg !4116
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4114, metadata !DIExpression()), !dbg !4117
  %0 = load ptr, ptr %from.addr, align 8, !dbg !4118
  %1 = load i64, ptr %n.addr, align 8, !dbg !4120
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #15, !dbg !4121
  br i1 %call, label %if.then, label %if.end, !dbg !4122

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !4123
  %3 = load ptr, ptr %from.addr, align 8, !dbg !4124
  %4 = load i64, ptr %n.addr, align 8, !dbg !4125
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #15, !dbg !4126
  store i64 %call1, ptr %n.addr, align 8, !dbg !4127
  br label %if.end, !dbg !4128

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !4129
  ret i64 %5, !dbg !4130
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4131 dso_local void @security_msg_msg_free(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4132 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #3 align 16 !dbg !4135 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4140, metadata !DIExpression()), !dbg !4143
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !4141, metadata !DIExpression()), !dbg !4144
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !4142, metadata !DIExpression()), !dbg !4145
  ret void, !dbg !4146
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #4 align 16 !dbg !3748 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !4147
  %0 = load ptr, ptr %tmp, align 8, !dbg !4147
  %call = call i32 %0() #15, !dbg !4149
  ret i32 %call, !dbg !4150
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !4151 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4155, metadata !DIExpression()), !dbg !4160
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4156, metadata !DIExpression()), !dbg !4161
  %0 = load i64, ptr %size.addr, align 8, !dbg !4162
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4163
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4164

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4165
  %tobool = icmp ne i64 %2, 0, !dbg !4165
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4166

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !4167
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4157, metadata !DIExpression()), !dbg !4168
  %3 = load i64, ptr %size.addr, align 8, !dbg !4169
  %cmp = icmp ugt i64 %3, 8192, !dbg !4171
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4172

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4173
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4174
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !4175
  store ptr %call, ptr %retval, align 8, !dbg !4176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4176

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4177
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !4177
  store i32 %call2, ptr %index, align 4, !dbg !4178
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4179
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4180
  %9 = ptrtoint ptr %8 to i64, !dbg !4180
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !4181
  %idxprom = zext i32 %call3 to i64, !dbg !4182
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4182
  %10 = load i32, ptr %index, align 4, !dbg !4183
  %idxprom4 = zext i32 %10 to i64, !dbg !4182
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4182
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4182
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4184
  %13 = load i64, ptr %size.addr, align 8, !dbg !4185
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !4186
  store ptr %call6, ptr %retval, align 8, !dbg !4187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4187

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !4188
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4189
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4190
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !4191
  store ptr %call8, ptr %retval, align 8, !dbg !4192
  br label %return, !dbg !4192

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4193
  ret ptr %16, !dbg !4193
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4194 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !4195 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4199, metadata !DIExpression()), !dbg !4201
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4200, metadata !DIExpression()), !dbg !4202
  %0 = load i64, ptr %size.addr, align 8, !dbg !4203
  %tobool = icmp ne i64 %0, 0, !dbg !4203
  br i1 %tobool, label %if.end, label %if.then, !dbg !4205

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4206
  br label %return, !dbg !4206

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4207
  %cmp = icmp ule i64 %1, 8, !dbg !4209
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4210

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4211
  br label %return, !dbg !4211

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4212
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4214
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4215

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4216
  %cmp4 = icmp ule i64 %3, 96, !dbg !4217
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4218

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4219
  br label %return, !dbg !4219

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4220
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4222
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4223

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4224
  %cmp9 = icmp ule i64 %5, 192, !dbg !4225
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4226

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4227
  br label %return, !dbg !4227

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4228
  %cmp12 = icmp ule i64 %6, 8, !dbg !4230
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4231

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4232
  br label %return, !dbg !4232

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4233
  %cmp15 = icmp ule i64 %7, 16, !dbg !4235
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4236

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4237
  br label %return, !dbg !4237

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4238
  %cmp18 = icmp ule i64 %8, 32, !dbg !4240
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4241

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4242
  br label %return, !dbg !4242

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4243
  %cmp21 = icmp ule i64 %9, 64, !dbg !4245
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4246

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4247
  br label %return, !dbg !4247

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4248
  %cmp24 = icmp ule i64 %10, 128, !dbg !4250
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4251

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4252
  br label %return, !dbg !4252

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4253
  %cmp27 = icmp ule i64 %11, 256, !dbg !4255
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4256

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4257
  br label %return, !dbg !4257

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4258
  %cmp30 = icmp ule i64 %12, 512, !dbg !4260
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4261

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4262
  br label %return, !dbg !4262

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4263
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4265
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4266

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4267
  br label %return, !dbg !4267

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4268
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4270
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4271

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4272
  br label %return, !dbg !4272

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4273
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4275
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4276

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4277
  br label %return, !dbg !4277

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4278
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4280
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4281

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4282
  br label %return, !dbg !4282

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4283
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4285
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4286

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4287
  br label %return, !dbg !4287

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4288
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4290
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4291

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4292
  br label %return, !dbg !4292

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4293
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4295
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4296

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4297
  br label %return, !dbg !4297

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4298
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4300
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4301

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4302
  br label %return, !dbg !4302

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4303
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4305
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4306

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4307
  br label %return, !dbg !4307

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4308
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4310
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4311

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4312
  br label %return, !dbg !4312

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4313
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4315
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4316

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4317
  br label %return, !dbg !4317

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4318
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4320
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4321

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4322
  br label %return, !dbg !4322

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4323, !range !4325, !noundef !996
  %tobool69 = trunc i8 %25 to i1, !dbg !4323
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4326

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4327

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #18, !dbg !4328, !srcloc !4331
  unreachable, !dbg !4328

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4332

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4333

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4334

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4336

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4334

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #14, !dbg !4338, !srcloc !4340
  br label %do.end75, !dbg !4338

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4334

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4341
  br label %return, !dbg !4341

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4342
  ret i32 %26, !dbg !4342
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4343 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !4349 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4353, metadata !DIExpression()), !dbg !4355
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4354, metadata !DIExpression()), !dbg !4356
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4357
  %and = and i32 %0, 17, !dbg !4357
  %cmp = icmp eq i32 %and, 0, !dbg !4357
  %lnot = xor i1 %cmp, true, !dbg !4357
  %lnot1 = xor i1 %lnot, true, !dbg !4357
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4357
  %conv = sext i32 %lnot.ext to i64, !dbg !4357
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4357
  %tobool = icmp ne i64 %expval, 0, !dbg !4357
  br i1 %tobool, label %if.then, label %if.end, !dbg !4359

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4360
  br label %return, !dbg !4360

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4361
  %and2 = and i32 %1, 1, !dbg !4363
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4363
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4364

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4365
  br label %return, !dbg !4365

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4366
  br label %return, !dbg !4366

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4368
  ret i32 %2, !dbg !4368
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4369 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4370 dso_local void @__compiletime_assert_245() #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #4 align 16 !dbg !4371 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4375, metadata !DIExpression()), !dbg !4385
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !4376, metadata !DIExpression()), !dbg !4386
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !4377, metadata !DIExpression()), !dbg !4387
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #14, !dbg !4388
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !4378, metadata !DIExpression()), !dbg !4389
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4390
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !4391
  %conv = trunc i64 %1 to i32, !dbg !4391
  store i32 %conv, ptr %sz, align 4, !dbg !4389
  %2 = load i32, ptr %sz, align 4, !dbg !4392
  %cmp = icmp sge i32 %2, 0, !dbg !4392
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4392

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !4392
  %conv2 = sext i32 %3 to i64, !dbg !4392
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !4392
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !4392
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !4394
  %lnot = xor i1 %5, true, !dbg !4392
  %lnot5 = xor i1 %lnot, true, !dbg !4392
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !4392
  %conv6 = sext i32 %lnot.ext to i64, !dbg !4392
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !4392
  %tobool = icmp ne i64 %expval, 0, !dbg !4392
  br i1 %tobool, label %if.then, label %if.end12, !dbg !4395

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !4396
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !4399
  br i1 %7, label %if.else, label %if.then7, !dbg !4400

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !4401
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !4402
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #15, !dbg !4403
  br label %if.end11, !dbg !4403

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !4404, !range !4325, !noundef !996
  %tobool8 = trunc i8 %10 to i1, !dbg !4404
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !4406

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #15, !dbg !4407, !srcloc !4408
  br label %if.end, !dbg !4407

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #15, !dbg !4409, !srcloc !4410
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !4411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4411

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !4412
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4379, metadata !DIExpression()), !dbg !4412
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !4412
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !4412
  %lnot15 = xor i1 %cmp13, true, !dbg !4412
  %lnot17 = xor i1 %lnot15, true, !dbg !4412
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4412
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !4412
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !4413
  %tobool19 = icmp ne i32 %12, 0, !dbg !4413
  %lnot20 = xor i1 %tobool19, true, !dbg !4413
  %lnot22 = xor i1 %lnot20, true, !dbg !4413
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4413
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4413
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4413
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !4413
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !4412

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !4413

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !4414
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4382, metadata !DIExpression()), !dbg !4414
  store i32 2307, ptr %__flags, align 4, !dbg !4414
  br label %do.body28, !dbg !4414

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !4415

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !4415

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !4414

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !4417
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 249, i32 %13, i64 12) #14, !dbg !4417, !srcloc !4419
  br label %do.cond30, !dbg !4417

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !4417

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !4414

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !4420

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4420

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !4413
  br label %do.cond35, !dbg !4414

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !4414

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !4414

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !4412
  %tobool38 = icmp ne i32 %14, 0, !dbg !4412
  %lnot39 = xor i1 %tobool38, true, !dbg !4412
  %lnot41 = xor i1 %lnot39, true, !dbg !4412
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !4412
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !4412
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !4412
  store i64 %expval44, ptr %tmp, align 8, !dbg !4413
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !4422
  %15 = load i64, ptr %tmp, align 8, !dbg !4412
  %tobool45 = icmp ne i64 %15, 0, !dbg !4422
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !4423

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !4424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4424

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !4425
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !4426
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !4427, !range !4325, !noundef !996
  %tobool48 = trunc i8 %18 to i1, !dbg !4427
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #15, !dbg !4428
  store i1 true, ptr %retval, align 1, !dbg !4429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4429

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #14, !dbg !4430
  %19 = load i1, ptr %retval, align 1, !dbg !4430
  ret i1 %19, !dbg !4430
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4431 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #3 align 16 !dbg !4432 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4436, metadata !DIExpression()), !dbg !4438
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4437, metadata !DIExpression()), !dbg !4439
  %0 = load i32, ptr %size.addr, align 4, !dbg !4440
  %1 = load i64, ptr %count.addr, align 8, !dbg !4442
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #15, !dbg !4443
  ret void, !dbg !4444
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4445 dso_local void @__bad_copy_from() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4446 dso_local void @__bad_copy_to() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #3 align 16 !dbg !4447 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4451, metadata !DIExpression()), !dbg !4454
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4452, metadata !DIExpression()), !dbg !4455
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !4453, metadata !DIExpression()), !dbg !4456
  ret void, !dbg !4457
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4458 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4459 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758}
!llvm.ident = !{!3759}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mq_lock", scope: !2, file: !3, line: 21, type: !122, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF ipc/.msgutil.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22ipc/msgutil\22 -D KBUILD_BASENAME=\22msgutil\22 -D KBUILD_MODNAME=\22msgutil\22 -D __KBUILD_MODNAME=kmod_msgutil -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o ipc/msgutil.ll ipc/msgutil.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !185, globals: !188, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "ipc/msgutil.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0892b24d538279a9cbb67b6cd0f9d1d")
!4 = !{!5, !14, !30, !37, !45, !50, !56, !61, !67, !74, !170, !175}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !15, line: 1325, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!17 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!18 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!19 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!20 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!21 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!22 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!23 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!24 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!25 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!26 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!27 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!28 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!29 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !31, line: 15, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!34 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!35 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!36 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !38, line: 68, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!43 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!44 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !46, line: 2052, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!47 = !{!48, !49}
!48 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!49 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !51, line: 54, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "USRQUOTA", value: 0)
!54 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!55 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !57, line: 65, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!60 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !76, file: !75, line: 147, baseType: !7, size: 32, elements: !167)
!75 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !75, line: 135, size: 512, elements: !77)
!77 = !{!78, !82, !84, !86, !90, !91, !107, !165, !166}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !76, file: !75, line: 136, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !76, file: !75, line: 137, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !76, file: !75, line: 138, baseType: !85, size: 32, offset: 128)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !76, file: !75, line: 139, baseType: !87, size: 16, offset: 160)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !88, line: 24, baseType: !89)
!88 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!89 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !75, line: 150, baseType: !74, size: 32, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !76, file: !75, line: 151, baseType: !92, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !75, line: 64, baseType: !94)
!94 = !DISubroutineType(types: !95)
!95 = !{!85, !96, !85, !83, !97, !103}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !88, line: 61, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !100, line: 72, baseType: !101)
!100 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !100, line: 16, baseType: !102)
!102 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !88, line: 52, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !100, line: 88, baseType: !106)
!106 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !76, file: !75, line: 152, baseType: !108, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !75, line: 117, size: 256, elements: !110)
!110 = !{!111, !116}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !109, file: !75, line: 118, baseType: !112, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !88, line: 174, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 172, size: 32, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !113, file: !88, line: 173, baseType: !85, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !109, file: !75, line: 119, baseType: !117, size: 192, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !118, line: 41, baseType: !119)
!118 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !118, line: 37, size: 192, elements: !120)
!120 = !{!121, !159}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !119, file: !118, line: 38, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !123, line: 29, baseType: !124)
!123 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !123, line: 17, size: 32, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !124, file: !123, line: 18, baseType: !127, size: 32)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !124, file: !123, line: 18, size: 32, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !127, file: !123, line: 19, baseType: !130, size: 32)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !131, line: 14, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !130, file: !131, line: 15, baseType: !134, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !135, line: 44, baseType: !136)
!135 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !135, line: 14, size: 32, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !135, line: 15, baseType: !139, size: 32)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !135, line: 15, size: 32, elements: !140)
!140 = !{!141, !142, !152}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !139, file: !135, line: 16, baseType: !112, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !135, line: 24, baseType: !143, size: 16)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !139, file: !135, line: 24, size: 16, elements: !144)
!144 = !{!145, !151}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !143, file: !135, line: 25, baseType: !146, size: 8)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !147, line: 17, baseType: !148)
!147 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !149, line: 21, baseType: !150)
!149 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!150 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !143, file: !135, line: 26, baseType: !146, size: 8, offset: 8)
!152 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !135, line: 28, baseType: !153, size: 32)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !139, file: !135, line: 28, size: 32, elements: !154)
!154 = !{!155, !158}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !153, file: !135, line: 29, baseType: !156, size: 16)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !147, line: 19, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !149, line: 24, baseType: !89)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !153, file: !135, line: 30, baseType: !156, size: 16, offset: 16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !119, file: !118, line: 39, baseType: !160, size: 128, offset: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !88, line: 190, size: 128, elements: !161)
!161 = !{!162, !164}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !160, file: !88, line: 191, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !160, file: !88, line: 191, baseType: !163, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !76, file: !75, line: 153, baseType: !83, size: 64, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !76, file: !75, line: 154, baseType: !83, size: 64, offset: 448)
!167 = !{!168, !169}
!168 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!169 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !171, line: 10, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "false", value: 0)
!174 = !DIEnumerator(name: "true", value: 1)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !176, line: 364, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!177 = !{!178, !179, !180, !181, !182, !183, !184}
!178 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!179 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!180 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!181 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!182 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!183 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!184 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!185 = !{!83, !98, !186, !187, !102, !85}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !88, line: 154, baseType: !7)
!188 = !{!0, !189, !3730, !3735, !3740, !3746}
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "init_ipc_ns", scope: !2, file: !3, line: 28, type: !191, isLocal: false, isDefinition: true)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !192, line: 31, size: 8832, elements: !193)
!192 = !DIFile(filename: "./include/linux/ipc_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b41e274c4c0ae39d94ad49bb38518e4e")
!193 = !{!194, !305, !309, !310, !311, !312, !313, !324, !325, !326, !327, !328, !329, !330, !342, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3723, !3724, !3725, !3726, !3727, !3728, !3729}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !191, file: !192, line: 32, baseType: !195, size: 5184)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 5184, elements: !303)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_ids", file: !192, line: 18, size: 1728, elements: !197)
!197 = !{!198, !199, !200, !222, !235, !236, !237}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !196, file: !192, line: 19, baseType: !85, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !196, file: !192, line: 20, baseType: !89, size: 16, offset: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !196, file: !192, line: 21, baseType: !201, size: 320, offset: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !202, line: 48, size: 320, elements: !203)
!202 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!203 = !{!204, !213, !214, !219, !221}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !201, file: !202, line: 49, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !206, line: 13, baseType: !207)
!206 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !88, line: 181, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 179, size: 64, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !208, file: !88, line: 180, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !147, line: 22, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !149, line: 30, baseType: !106)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !201, file: !202, line: 55, baseType: !205, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !201, file: !202, line: 57, baseType: !215, size: 32, offset: 128)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !216, line: 15, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !215, file: !216, line: 20, baseType: !112, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !201, file: !202, line: 59, baseType: !220, size: 32, offset: 160)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !131, line: 23, baseType: !130)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !201, file: !202, line: 60, baseType: !160, size: 128, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ipcs_idr", scope: !196, file: !192, line: 22, baseType: !223, size: 192, offset: 384)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !224, line: 19, size: 192, elements: !225)
!224 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!225 = !{!226, !233, !234}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !223, file: !224, line: 20, baseType: !227, size: 128)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !228, line: 296, size: 128, elements: !229)
!228 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!229 = !{!230, !231, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !227, file: !228, line: 297, baseType: !122, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !227, file: !228, line: 299, baseType: !187, size: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !227, file: !228, line: 300, baseType: !83, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !223, file: !224, line: 21, baseType: !7, size: 32, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !223, file: !224, line: 22, baseType: !7, size: 32, offset: 160)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "max_idx", scope: !196, file: !192, line: 23, baseType: !85, size: 32, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "last_idx", scope: !196, file: !192, line: 24, baseType: !85, size: 32, offset: 608)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "key_ht", scope: !196, file: !192, line: 28, baseType: !238, size: 1088, offset: 640)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable", file: !239, line: 81, size: 1088, elements: !240)
!239 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!240 = !{!241, !244, !245, !246, !280, !281, !293, !301, !302}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tbl", scope: !238, file: !239, line: 82, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_table", file: !239, line: 26, flags: DIFlagFwdDecl)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !238, file: !239, line: 83, baseType: !7, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "max_elems", scope: !238, file: !239, line: 84, baseType: !7, size: 32, offset: 96)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !238, file: !239, line: 85, baseType: !247, size: 320, offset: 128)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_params", file: !239, line: 56, size: 320, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !258, !267, !269}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "nelem_hint", scope: !247, file: !239, line: 57, baseType: !156, size: 16)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !247, file: !239, line: 58, baseType: !156, size: 16, offset: 16)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "key_offset", scope: !247, file: !239, line: 59, baseType: !156, size: 16, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "head_offset", scope: !247, file: !239, line: 60, baseType: !156, size: 16, offset: 48)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !247, file: !239, line: 61, baseType: !7, size: 32, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !247, file: !239, line: 62, baseType: !156, size: 16, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "automatic_shrinking", scope: !247, file: !239, line: 63, baseType: !256, size: 8, offset: 112)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !88, line: 35, baseType: !257)
!257 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "hashfn", scope: !247, file: !239, line: 64, baseType: !259, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_hashfn_t", file: !239, line: 38, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !265, !263, !263}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !147, line: 21, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !149, line: 27, baseType: !7)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "obj_hashfn", scope: !247, file: !239, line: 65, baseType: !268, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_hashfn_t", file: !239, line: 39, baseType: !260)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "obj_cmpfn", scope: !247, file: !239, line: 66, baseType: !270, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_cmpfn_t", file: !239, line: 40, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!85, !274, !265}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_compare_arg", file: !239, line: 33, size: 128, elements: !276)
!276 = !{!277, !279}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !275, file: !239, line: 34, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !275, file: !239, line: 35, baseType: !265, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "rhlist", scope: !238, file: !239, line: 86, baseType: !256, size: 8, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !238, file: !239, line: 87, baseType: !282, size: 256, offset: 512)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !283, line: 98, size: 256, elements: !284)
!283 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!284 = !{!285, !286, !287}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !282, file: !283, line: 99, baseType: !205, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !282, file: !283, line: 100, baseType: !160, size: 128, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !282, file: !283, line: 101, baseType: !288, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !283, line: 21, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !292}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !238, file: !239, line: 88, baseType: !294, size: 256, offset: 768)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !295, line: 66, size: 256, elements: !296)
!295 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!296 = !{!297, !298, !299, !300}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !294, file: !295, line: 67, baseType: !205, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !294, file: !295, line: 68, baseType: !220, size: 32, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !294, file: !295, line: 70, baseType: !215, size: 32, offset: 96)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !294, file: !295, line: 72, baseType: !160, size: 128, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !238, file: !239, line: 89, baseType: !122, size: 32, offset: 1024)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "nelems", scope: !238, file: !239, line: 90, baseType: !112, size: 32, offset: 1056)
!303 = !{!304}
!304 = !DISubrange(count: 3)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "sem_ctls", scope: !191, file: !192, line: 34, baseType: !306, size: 128, offset: 5184)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 4)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "used_sems", scope: !191, file: !192, line: 35, baseType: !85, size: 32, offset: 5312)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "msg_ctlmax", scope: !191, file: !192, line: 37, baseType: !7, size: 32, offset: 5344)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "msg_ctlmnb", scope: !191, file: !192, line: 38, baseType: !7, size: 32, offset: 5376)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "msg_ctlmni", scope: !191, file: !192, line: 39, baseType: !7, size: 32, offset: 5408)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_msg_bytes", scope: !191, file: !192, line: 40, baseType: !314, size: 320, offset: 5440)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !315, line: 22, size: 320, elements: !316)
!315 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!316 = !{!317, !318, !319, !320}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !314, file: !315, line: 23, baseType: !220, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !314, file: !315, line: 24, baseType: !211, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !314, file: !315, line: 26, baseType: !160, size: 128, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !314, file: !315, line: 28, baseType: !321, size: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !147, line: 20, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !149, line: 26, baseType: !85)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_msg_hdrs", scope: !191, file: !192, line: 41, baseType: !314, size: 320, offset: 5760)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "shm_ctlmax", scope: !191, file: !192, line: 43, baseType: !98, size: 64, offset: 6080)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "shm_ctlall", scope: !191, file: !192, line: 44, baseType: !98, size: 64, offset: 6144)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "shm_tot", scope: !191, file: !192, line: 45, baseType: !102, size: 64, offset: 6208)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "shm_ctlmni", scope: !191, file: !192, line: 46, baseType: !85, size: 32, offset: 6272)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "shm_rmid_forced", scope: !191, file: !192, line: 51, baseType: !85, size: 32, offset: 6304)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ipcns_nb", scope: !191, file: !192, line: 53, baseType: !331, size: 192, offset: 6336)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !332, line: 54, size: 192, elements: !333)
!332 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!333 = !{!334, !340, !341}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !331, file: !332, line: 55, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !332, line: 51, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!85, !339, !102, !83}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !332, line: 56, baseType: !339, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !331, file: !332, line: 57, baseType: !85, size: 32, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "mq_mnt", scope: !191, file: !192, line: 56, baseType: !343, size: 64, offset: 6528)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !345, line: 70, size: 256, elements: !346)
!345 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!346 = !{!347, !3655, !3656, !3657}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !344, file: !345, line: 71, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !350, line: 82, size: 1536, elements: !351)
!350 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!351 = !{!352, !353, !363, !371, !372, !390, !3622, !3624, !3637, !3638, !3639, !3640, !3641, !3647, !3648, !3649}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !349, file: !350, line: 84, baseType: !7, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !349, file: !350, line: 85, baseType: !354, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !355, line: 275, baseType: !356)
!355 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !355, line: 275, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !356, file: !355, line: 275, baseType: !359, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !355, line: 69, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !355, line: 64, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !360, file: !355, line: 65, baseType: !7, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !349, file: !350, line: 86, baseType: !364, size: 128, offset: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !365, line: 38, size: 128, elements: !366)
!365 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!366 = !{!367, !369}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !365, line: 39, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !364, file: !365, line: 39, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !349, file: !350, line: 87, baseType: !348, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !349, file: !350, line: 88, baseType: !373, size: 128, offset: 256)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !350, line: 49, size: 128, elements: !374)
!374 = !{!375, !387}
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !350, line: 50, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !350, line: 50, size: 64, elements: !377)
!377 = !{!378, !383}
!378 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !350, line: 51, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !376, file: !350, line: 51, size: 64, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !379, file: !350, line: 52, baseType: !263, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !379, file: !350, line: 52, baseType: !263, size: 32, offset: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !376, file: !350, line: 54, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !147, line: 23, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !149, line: 31, baseType: !386)
!386 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !373, file: !350, line: 56, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !349, file: !350, line: 89, baseType: !391, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !46, line: 641, size: 4800, elements: !393)
!393 = !{!394, !395, !396, !404, !405, !412, !413, !416, !417, !1741, !3561, !3562, !3563, !3564, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3604, !3607, !3608, !3609, !3618, !3619, !3620, !3621}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !392, file: !46, line: 642, baseType: !87, size: 16)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !392, file: !46, line: 643, baseType: !89, size: 16, offset: 16)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !392, file: !46, line: 644, baseType: !397, size: 32, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !398, line: 23, baseType: !399)
!398 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 21, size: 32, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !399, file: !398, line: 22, baseType: !402, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !88, line: 37, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !100, line: 49, baseType: !7)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !392, file: !46, line: 645, baseType: !160, size: 128, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !392, file: !46, line: 646, baseType: !406, size: 32, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !398, line: 28, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 26, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !407, file: !398, line: 27, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !88, line: 38, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !100, line: 50, baseType: !7)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !392, file: !46, line: 647, baseType: !7, size: 32, offset: 224)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !392, file: !46, line: 650, baseType: !414, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !46, line: 607, flags: DIFlagFwdDecl)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !392, file: !46, line: 651, baseType: !414, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !392, file: !46, line: 654, baseType: !418, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !46, line: 1966, size: 2048, align: 512, elements: !421)
!421 = !{!422, !426, !439, !446, !450, !454, !458, !462, !466, !470, !474, !475, !481, !485, !1661, !1692, !1696, !1702, !1706, !1710, !1714, !1718, !1722, !1728, !1732}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !420, file: !46, line: 1967, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!348, !391, !348, !7}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !420, file: !46, line: 1968, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!79, !348, !391, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !432, line: 10, size: 128, elements: !433)
!432 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!433 = !{!434, !438}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !431, file: !432, line: 11, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !83}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !431, file: !432, line: 12, baseType: !83, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !420, file: !46, line: 1969, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!85, !443, !391, !85}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !445, line: 42, flags: DIFlagFwdDecl)
!445 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!446 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !420, file: !46, line: 1970, baseType: !447, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!414, !391, !85, !256}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !420, file: !46, line: 1972, baseType: !451, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!85, !348, !186, !85}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !420, file: !46, line: 1974, baseType: !455, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!85, !443, !391, !348, !87, !256}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !420, file: !46, line: 1976, baseType: !459, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!85, !348, !391, !348}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !420, file: !46, line: 1977, baseType: !463, size: 64, offset: 448)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!85, !391, !348}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !420, file: !46, line: 1978, baseType: !467, size: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!85, !443, !391, !348, !79}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !420, file: !46, line: 1980, baseType: !471, size: 64, offset: 576)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!85, !443, !391, !348, !87}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !420, file: !46, line: 1982, baseType: !463, size: 64, offset: 640)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !420, file: !46, line: 1983, baseType: !476, size: 64, offset: 704)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!85, !443, !391, !348, !87, !479}
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !88, line: 21, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !88, line: 18, baseType: !263)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !420, file: !46, line: 1985, baseType: !482, size: 64, offset: 768)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!85, !443, !391, !348, !391, !348, !7}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !420, file: !46, line: 1987, baseType: !486, size: 64, offset: 832)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!85, !443, !348, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !46, line: 226, size: 640, elements: !491)
!491 = !{!492, !493, !494, !504, !513, !514, !522, !523, !524}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !490, file: !46, line: 227, baseType: !7, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !490, file: !46, line: 228, baseType: !87, size: 16, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !46, line: 241, baseType: !495, size: 32, offset: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !46, line: 241, size: 32, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !495, file: !46, line: 242, baseType: !397, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !495, file: !46, line: 243, baseType: !499, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !500, line: 16, baseType: !501)
!500 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !500, line: 14, size: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !501, file: !500, line: 15, baseType: !402, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !46, line: 245, baseType: !505, size: 32, offset: 96)
!505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !46, line: 245, size: 32, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !505, file: !46, line: 246, baseType: !406, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !505, file: !46, line: 247, baseType: !509, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !500, line: 20, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !500, line: 18, size: 32, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !510, file: !500, line: 19, baseType: !410, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !490, file: !46, line: 249, baseType: !104, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !490, file: !46, line: 250, baseType: !515, size: 128, offset: 192)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !516, line: 13, size: 128, elements: !517)
!516 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!517 = !{!518, !520}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !515, file: !516, line: 14, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !516, line: 8, baseType: !212)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !515, file: !516, line: 15, baseType: !521, size: 64, offset: 64)
!521 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !490, file: !46, line: 251, baseType: !515, size: 128, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !490, file: !46, line: 252, baseType: !515, size: 128, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !490, file: !46, line: 259, baseType: !525, size: 64, offset: 576)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !46, line: 994, size: 1856, align: 64, elements: !527)
!527 = !{!528, !547, !548, !550, !551, !552, !553, !554, !618, !807, !816, !822, !823, !1653, !1654, !1655, !1656, !1658, !1659, !1660}
!528 = !DIDerivedType(tag: DW_TAG_member, scope: !526, file: !46, line: 995, baseType: !529, size: 128)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !526, file: !46, line: 995, size: 128, elements: !530)
!530 = !{!531, !537, !546}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !529, file: !46, line: 996, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !533, line: 60, size: 64, elements: !534)
!533 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !532, file: !533, line: 61, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !529, file: !46, line: 997, baseType: !538, size: 128, align: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !88, line: 232, size: 128, align: 64, elements: !539)
!539 = !{!540, !542}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !538, file: !88, line: 233, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !538, file: !88, line: 234, baseType: !543, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !541}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !529, file: !46, line: 998, baseType: !7, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !526, file: !46, line: 1005, baseType: !122, size: 32, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !526, file: !46, line: 1006, baseType: !549, size: 32, offset: 160)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !88, line: 156, baseType: !7)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !526, file: !46, line: 1007, baseType: !205, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !526, file: !46, line: 1008, baseType: !294, size: 256, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !526, file: !46, line: 1009, baseType: !104, size: 64, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !526, file: !46, line: 1010, baseType: !7, size: 32, offset: 576)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !526, file: !46, line: 1011, baseType: !555, size: 256, offset: 640)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !46, line: 948, size: 256, elements: !556)
!556 = !{!557, !578, !614, !615, !616, !617}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !555, file: !46, line: 949, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !559, line: 34, baseType: !560)
!559 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !559, line: 25, size: 64, elements: !561)
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !560, file: !559, line: 26, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !564, line: 27, baseType: !565)
!564 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !564, line: 13, size: 64, elements: !566)
!566 = !{!567, !577}
!567 = !DIDerivedType(tag: DW_TAG_member, scope: !565, file: !564, line: 14, baseType: !568, size: 32)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !565, file: !564, line: 14, size: 32, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !568, file: !564, line: 15, baseType: !112, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, scope: !568, file: !564, line: 16, baseType: !572, size: 32)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !568, file: !564, line: 16, size: 32, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !572, file: !564, line: 18, baseType: !146, size: 8)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !572, file: !564, line: 19, baseType: !576, size: 24, offset: 8)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 24, elements: !303)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !565, file: !564, line: 26, baseType: !134, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !555, file: !46, line: 950, baseType: !579, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !581)
!581 = !{!582, !588, !589, !590, !601, !602, !603, !604}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !580, file: !6, line: 61, baseType: !583, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !584, line: 113, baseType: !585)
!584 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !584, line: 111, size: 32, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !585, file: !584, line: 112, baseType: !112, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !580, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !580, file: !6, line: 63, baseType: !122, size: 32, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !580, file: !6, line: 65, baseType: !591, size: 256, offset: 128)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 256, elements: !307)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !88, line: 194, size: 64, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !592, file: !88, line: 195, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !88, line: 198, size: 128, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !596, file: !88, line: 199, baseType: !595, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !596, file: !88, line: 199, baseType: !600, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !580, file: !6, line: 66, baseType: !592, size: 64, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !580, file: !6, line: 68, baseType: !117, size: 192, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !580, file: !6, line: 69, baseType: !538, size: 128, align: 64, offset: 640)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !580, file: !6, line: 70, baseType: !605, offset: 768)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, elements: !612)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !606, file: !6, line: 55, baseType: !85, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !606, file: !6, line: 56, baseType: !610, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!612 = !{!613}
!613 = !DISubrange(count: -1)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !555, file: !46, line: 951, baseType: !5, size: 32, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !555, file: !46, line: 952, baseType: !397, size: 32, offset: 160)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !555, file: !46, line: 952, baseType: !397, size: 32, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !555, file: !46, line: 953, baseType: !85, size: 32, offset: 224)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !526, file: !46, line: 1012, baseType: !619, size: 64, offset: 896)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !622, line: 110, size: 1472, elements: !623)
!622 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!623 = !{!624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !639, !640, !641, !642, !643, !644, !760, !761, !762, !763, !764, !787, !790, !794, !802}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !621, file: !622, line: 111, baseType: !205, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !621, file: !622, line: 112, baseType: !397, size: 32, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !621, file: !622, line: 113, baseType: !406, size: 32, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !621, file: !622, line: 114, baseType: !397, size: 32, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !621, file: !622, line: 115, baseType: !406, size: 32, offset: 160)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !621, file: !622, line: 116, baseType: !397, size: 32, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !621, file: !622, line: 117, baseType: !406, size: 32, offset: 224)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !621, file: !622, line: 118, baseType: !397, size: 32, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !621, file: !622, line: 119, baseType: !406, size: 32, offset: 288)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !621, file: !622, line: 120, baseType: !7, size: 32, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !621, file: !622, line: 121, baseType: !635, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !445, line: 24, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !445, line: 24, size: 64, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !636, file: !445, line: 24, baseType: !384, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !621, file: !622, line: 122, baseType: !635, size: 64, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !621, file: !622, line: 123, baseType: !635, size: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !621, file: !622, line: 124, baseType: !635, size: 64, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !621, file: !622, line: 125, baseType: !635, size: 64, offset: 640)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !621, file: !622, line: 127, baseType: !150, size: 8, offset: 704)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !621, file: !622, line: 129, baseType: !645, size: 64, offset: 768)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !647, line: 195, size: 1728, elements: !648)
!647 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!648 = !{!649, !650, !653, !665, !666, !669, !670, !675, !676, !677, !678, !681, !682, !683, !685, !686, !724, !745}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !646, file: !647, line: 196, baseType: !583, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !646, file: !647, line: 197, baseType: !651, size: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !647, line: 28, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !88, line: 104, baseType: !322)
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !647, line: 198, baseType: !654, size: 192, offset: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !646, file: !647, line: 198, size: 192, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !654, file: !647, line: 199, baseType: !160, size: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !654, file: !647, line: 200, baseType: !658, size: 192, align: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !659, line: 5, size: 192, align: 64, elements: !660)
!659 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!660 = !{!661, !662, !664}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !658, file: !659, line: 6, baseType: !102, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !658, file: !659, line: 7, baseType: !663, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !658, file: !659, line: 8, baseType: !663, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !646, file: !647, line: 205, baseType: !201, size: 320, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !646, file: !647, line: 206, baseType: !667, size: 64, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !647, line: 206, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !646, file: !647, line: 207, baseType: !83, size: 64, offset: 640)
!670 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !647, line: 208, baseType: !671, size: 64, offset: 704)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !646, file: !647, line: 208, size: 64, elements: !672)
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !671, file: !647, line: 209, baseType: !519, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !671, file: !647, line: 210, baseType: !519, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !646, file: !647, line: 212, baseType: !519, size: 64, offset: 768)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !646, file: !647, line: 213, baseType: !397, size: 32, offset: 832)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !646, file: !647, line: 214, baseType: !406, size: 32, offset: 864)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !646, file: !647, line: 215, baseType: !679, size: 32, offset: 896)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !647, line: 31, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !88, line: 110, baseType: !263)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !646, file: !647, line: 216, baseType: !89, size: 16, offset: 928)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !646, file: !647, line: 217, baseType: !89, size: 16, offset: 944)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !646, file: !647, line: 221, baseType: !684, size: 16, offset: 960)
!684 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !646, file: !647, line: 228, baseType: !102, size: 64, offset: 1024)
!686 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !647, line: 245, baseType: !687, size: 320, offset: 1088)
!687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !646, file: !647, line: 245, size: 320, elements: !688)
!688 = !{!689, !716}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !687, file: !647, line: 246, baseType: !690, size: 320)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !647, line: 114, size: 320, elements: !691)
!691 = !{!692, !693, !705, !708, !715}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !690, file: !647, line: 116, baseType: !102, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !647, line: 117, baseType: !694, size: 64, offset: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !647, line: 117, size: 64, elements: !695)
!695 = !{!696, !704}
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !647, line: 118, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !647, line: 118, size: 64, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !697, file: !647, line: 120, baseType: !156, size: 16)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !697, file: !647, line: 121, baseType: !701, size: 48, offset: 16)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 48, elements: !702)
!702 = !{!703}
!703 = !DISubrange(count: 6)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !694, file: !647, line: 127, baseType: !102, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !647, line: 129, baseType: !706, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !647, line: 102, flags: DIFlagFwdDecl)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !690, file: !647, line: 130, baseType: !709, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !647, line: 108, size: 192, elements: !711)
!711 = !{!712, !713, !714}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !710, file: !647, line: 109, baseType: !538, size: 128, align: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !710, file: !647, line: 110, baseType: !583, size: 32, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !710, file: !647, line: 111, baseType: !256, size: 8, offset: 160)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !690, file: !647, line: 131, baseType: !79, size: 64, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, scope: !687, file: !647, line: 247, baseType: !717, size: 320)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !687, file: !647, line: 247, size: 320, elements: !718)
!718 = !{!719, !720, !721, !722, !723}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !717, file: !647, line: 248, baseType: !102, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !717, file: !647, line: 249, baseType: !102, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !717, file: !647, line: 250, baseType: !706, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !717, file: !647, line: 251, baseType: !709, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !717, file: !647, line: 252, baseType: !186, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !647, line: 260, baseType: !725, size: 256, offset: 1408)
!725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !646, file: !647, line: 260, size: 256, elements: !726)
!726 = !{!727, !733}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !725, file: !647, line: 261, baseType: !728, size: 256)
!728 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !647, line: 134, size: 256, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !728, file: !647, line: 135, baseType: !83, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !728, file: !647, line: 136, baseType: !732, size: 256)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 256, elements: !307)
!733 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !647, line: 262, baseType: !734, size: 256)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !725, file: !647, line: 262, size: 256, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !734, file: !647, line: 264, baseType: !160, size: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !734, file: !647, line: 265, baseType: !738, size: 128, offset: 128)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !739, line: 22, size: 128, elements: !740)
!739 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!740 = !{!741, !744}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !738, file: !739, line: 23, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !739, line: 23, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !738, file: !739, line: 24, baseType: !102, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !646, file: !647, line: 280, baseType: !746, size: 64, offset: 1664)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !647, line: 176, size: 192, elements: !748)
!748 = !{!749, !758, !759}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !747, file: !647, line: 177, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !647, line: 171, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!85, !645, !754, !756, !645}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !747, file: !647, line: 178, baseType: !645, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !747, file: !647, line: 179, baseType: !706, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !621, file: !622, line: 130, baseType: !645, size: 64, offset: 832)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !621, file: !622, line: 131, baseType: !645, size: 64, offset: 896)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !621, file: !622, line: 132, baseType: !645, size: 64, offset: 960)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !621, file: !622, line: 135, baseType: !83, size: 64, offset: 1024)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !621, file: !622, line: 137, baseType: !765, size: 64, offset: 1088)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !767, line: 14, size: 1088, elements: !768)
!767 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !766, file: !767, line: 15, baseType: !583, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !766, file: !767, line: 17, baseType: !314, size: 320, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !766, file: !767, line: 19, baseType: !102, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !766, file: !767, line: 20, baseType: !205, size: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !766, file: !767, line: 23, baseType: !596, size: 128, offset: 512)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !766, file: !767, line: 24, baseType: !397, size: 32, offset: 640)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !766, file: !767, line: 29, baseType: !205, size: 64, offset: 704)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !766, file: !767, line: 36, baseType: !777, size: 320, offset: 768)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !778, line: 15, size: 320, elements: !779)
!778 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!779 = !{!780, !781, !782, !783, !784, !785, !786}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !777, file: !778, line: 16, baseType: !220, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !777, file: !778, line: 18, baseType: !85, size: 32, offset: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !777, file: !778, line: 19, baseType: !85, size: 32, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !777, file: !778, line: 20, baseType: !85, size: 32, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !777, file: !778, line: 21, baseType: !85, size: 32, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !777, file: !778, line: 22, baseType: !102, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !778, line: 23, baseType: !102, size: 64, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !621, file: !622, line: 138, baseType: !788, size: 64, offset: 1152)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !398, line: 18, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !621, file: !622, line: 139, baseType: !791, size: 64, offset: 1216)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !793, line: 16, flags: DIFlagFwdDecl)
!793 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!794 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !621, file: !622, line: 140, baseType: !795, size: 64, offset: 1280)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !622, line: 25, size: 64, elements: !797)
!797 = !{!798, !799, !800}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !796, file: !622, line: 26, baseType: !112, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !796, file: !622, line: 27, baseType: !85, size: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !796, file: !622, line: 28, baseType: !801, offset: 64)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, elements: !612)
!802 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !622, line: 142, baseType: !803, size: 128, offset: 1344)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !622, line: 142, size: 128, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !803, file: !622, line: 143, baseType: !85, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !803, file: !622, line: 144, baseType: !538, size: 128, align: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !526, file: !46, line: 1013, baseType: !808, size: 256, offset: 960)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !46, line: 970, size: 256, elements: !809)
!809 = !{!810, !811, !812, !813, !814, !815}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !808, file: !46, line: 971, baseType: !102, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !808, file: !46, line: 972, baseType: !7, size: 32, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !808, file: !46, line: 973, baseType: !7, size: 32, offset: 96)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !808, file: !46, line: 974, baseType: !7, size: 32, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !808, file: !46, line: 975, baseType: !7, size: 32, offset: 160)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !808, file: !46, line: 976, baseType: !104, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !526, file: !46, line: 1014, baseType: !817, size: 128, offset: 1216)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !818, line: 8, size: 128, elements: !819)
!818 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !817, file: !818, line: 9, baseType: !343, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !817, file: !818, line: 10, baseType: !348, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !526, file: !46, line: 1015, baseType: !391, size: 64, offset: 1344)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !526, file: !46, line: 1016, baseType: !824, size: 64, offset: 1408)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !46, line: 1914, size: 2112, elements: !827)
!827 = !{!828, !832, !836, !843, !847, !925, !926, !932, !945, !953, !957, !958, !1576, !1577, !1581, !1586, !1587, !1591, !1595, !1601, !1602, !1606, !1607, !1614, !1618, !1619, !1624, !1628, !1634, !1638, !1642, !1643, !1649}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !826, file: !46, line: 1915, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !831, line: 103, flags: DIFlagFwdDecl)
!831 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!832 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !826, file: !46, line: 1916, baseType: !833, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!104, !525, !104, !85}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !826, file: !46, line: 1917, baseType: !837, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!840, !525, !186, !98, !103}
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !88, line: 66, baseType: !841)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !100, line: 73, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !100, line: 15, baseType: !521)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !826, file: !46, line: 1918, baseType: !844, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!840, !525, !79, !98, !103}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !826, file: !46, line: 1919, baseType: !848, size: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!840, !851, !873}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !46, line: 373, size: 384, elements: !853)
!853 = !{!854, !855, !856, !860, !861, !862, !863}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !852, file: !46, line: 374, baseType: !525, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !852, file: !46, line: 375, baseType: !104, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !852, file: !46, line: 376, baseType: !857, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !851, !521}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !852, file: !46, line: 377, baseType: !83, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !852, file: !46, line: 378, baseType: !85, size: 32, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !852, file: !46, line: 379, baseType: !156, size: 16, offset: 288)
!863 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !46, line: 380, baseType: !864, size: 64, offset: 320)
!864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !46, line: 380, size: 64, elements: !865)
!865 = !{!866, !869}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !864, file: !46, line: 386, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !46, line: 386, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !864, file: !46, line: 395, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!840, !83}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !875, line: 41, size: 320, elements: !876)
!875 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!876 = !{!877, !878, !879, !880, !881, !882, !887, !920}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !874, file: !875, line: 42, baseType: !146, size: 8)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !874, file: !875, line: 43, baseType: !256, size: 8, offset: 8)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !874, file: !875, line: 44, baseType: !256, size: 8, offset: 16)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !874, file: !875, line: 45, baseType: !256, size: 8, offset: 24)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !874, file: !875, line: 46, baseType: !256, size: 8, offset: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !875, line: 47, baseType: !883, size: 64, offset: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !875, line: 47, size: 64, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !883, file: !875, line: 48, baseType: !98, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !883, file: !875, line: 49, baseType: !85, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !875, line: 61, baseType: !888, size: 128, offset: 128)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !875, line: 61, size: 128, elements: !889)
!889 = !{!890, !896}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !888, file: !875, line: 67, baseType: !891, size: 128)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !892, line: 17, size: 128, elements: !893)
!892 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !891, file: !892, line: 19, baseType: !83, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !891, file: !892, line: 20, baseType: !99, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !875, line: 68, baseType: !897, size: 128)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !875, line: 68, size: 128, elements: !898)
!898 = !{!899, !919}
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !875, line: 69, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !897, file: !875, line: 69, size: 64, elements: !901)
!901 = !{!902, !905, !912, !916, !918}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !900, file: !875, line: 71, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !891)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !900, file: !875, line: 72, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !875, line: 17, size: 128, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !908, file: !875, line: 18, baseType: !83, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !908, file: !875, line: 19, baseType: !98, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !900, file: !875, line: 73, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !915)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !875, line: 73, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !900, file: !875, line: 74, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !900, file: !875, line: 75, baseType: !83, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !897, file: !875, line: 77, baseType: !98, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !875, line: 80, baseType: !921, size: 64, offset: 256)
!921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !875, line: 80, size: 64, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !921, file: !875, line: 81, baseType: !102, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !921, file: !875, line: 82, baseType: !104, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !826, file: !46, line: 1920, baseType: !848, size: 64, offset: 320)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !826, file: !46, line: 1921, baseType: !927, size: 64, offset: 384)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!85, !851, !930, !7}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !46, line: 53, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !826, file: !46, line: 1923, baseType: !933, size: 64, offset: 448)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!85, !525, !936}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !46, line: 1858, size: 128, elements: !938)
!938 = !{!939, !944}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !937, file: !46, line: 1859, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !46, line: 1855, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!256, !936, !79, !85, !104, !384, !7}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !937, file: !46, line: 1860, baseType: !104, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !826, file: !46, line: 1924, baseType: !946, size: 64, offset: 512)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!949, !525, !951}
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !950, line: 59, baseType: !7)
!950 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !46, line: 61, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !826, file: !46, line: 1925, baseType: !954, size: 64, offset: 576)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!521, !525, !7, !102}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !826, file: !46, line: 1926, baseType: !954, size: 64, offset: 640)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !826, file: !46, line: 1927, baseType: !959, size: 64, offset: 704)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!85, !525, !962}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !15, line: 625, size: 1344, elements: !964)
!964 = !{!965, !974, !1109, !1115, !1122, !1123, !1128, !1129, !1134, !1135, !1138, !1569, !1570, !1571, !1572, !1573, !1574}
!965 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !15, line: 628, baseType: !966, size: 128)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !963, file: !15, line: 628, size: 128, elements: !967)
!967 = !{!968, !973}
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !15, line: 629, baseType: !969, size: 128)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !966, file: !15, line: 629, size: 128, elements: !970)
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !969, file: !15, line: 631, baseType: !102, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !969, file: !15, line: 632, baseType: !102, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !966, file: !15, line: 635, baseType: !538, size: 128, align: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !963, file: !15, line: 639, baseType: !975, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !15, line: 733, size: 10240, elements: !977)
!977 = !{!978, !1107}
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !15, line: 734, baseType: !979, size: 10240)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !15, line: 734, size: 10240, elements: !980)
!980 = !{!981, !985, !999, !1003, !1004, !1005, !1006, !1007, !1008, !1017, !1018, !1019, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1058, !1060, !1063, !1087, !1088, !1089, !1092, !1093, !1094, !1097, !1098, !1099, !1105, !1106}
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !15, line: 739, baseType: !982, size: 512, align: 512)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !979, file: !15, line: 739, size: 512, align: 512, elements: !983)
!983 = !{!984}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !982, file: !15, line: 747, baseType: !112, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !979, file: !15, line: 750, baseType: !986, size: 128, offset: 512)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !987, line: 218, size: 128, elements: !988)
!987 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!988 = !{!989, !997, !998}
!989 = !DIDerivedType(tag: DW_TAG_member, scope: !986, file: !987, line: 219, baseType: !990, size: 32)
!990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !986, file: !987, line: 219, size: 32, elements: !991)
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !990, file: !987, line: 220, baseType: !122, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !990, file: !987, line: 221, baseType: !994)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !987, line: 197, baseType: !995)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !987, line: 197, elements: !996)
!996 = !{}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !986, file: !987, line: 223, baseType: !7, size: 32, offset: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !986, file: !987, line: 224, baseType: !83, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !979, file: !15, line: 752, baseType: !1000, size: 64, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!102, !525, !102, !102, !102, !102}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !979, file: !15, line: 756, baseType: !102, size: 64, offset: 704)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !979, file: !15, line: 757, baseType: !102, size: 64, offset: 768)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !979, file: !15, line: 760, baseType: !102, size: 64, offset: 832)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !979, file: !15, line: 761, baseType: !102, size: 64, offset: 896)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !979, file: !15, line: 763, baseType: !102, size: 64, offset: 960)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !979, file: !15, line: 764, baseType: !1009, size: 64, offset: 1024)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1011, line: 299, baseType: !1012)
!1011 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1011, line: 299, size: 64, elements: !1013)
!1013 = !{!1014}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1012, file: !1011, line: 299, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1016, line: 18, baseType: !102)
!1016 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !979, file: !15, line: 773, baseType: !112, size: 32, offset: 1088)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !979, file: !15, line: 785, baseType: !112, size: 32, offset: 1120)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !979, file: !15, line: 795, baseType: !1020, size: 64, offset: 1152)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !15, line: 726, size: 128, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1021, file: !15, line: 727, baseType: !384, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1021, file: !15, line: 728, baseType: !85, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !979, file: !15, line: 801, baseType: !102, size: 64, offset: 1216)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !979, file: !15, line: 804, baseType: !205, size: 64, offset: 1280)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !979, file: !15, line: 806, baseType: !85, size: 32, offset: 1344)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !979, file: !15, line: 808, baseType: !122, size: 32, offset: 1376)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !979, file: !15, line: 823, baseType: !201, size: 320, offset: 1408)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !979, file: !15, line: 825, baseType: !160, size: 128, offset: 1728)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !979, file: !15, line: 845, baseType: !85, size: 32, offset: 1856)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !979, file: !15, line: 849, baseType: !102, size: 64, offset: 1920)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !979, file: !15, line: 850, baseType: !102, size: 64, offset: 1984)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !979, file: !15, line: 852, baseType: !102, size: 64, offset: 2048)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !979, file: !15, line: 853, baseType: !102, size: 64, offset: 2112)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !979, file: !15, line: 854, baseType: !207, size: 64, offset: 2176)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !979, file: !15, line: 855, baseType: !102, size: 64, offset: 2240)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !979, file: !15, line: 856, baseType: !102, size: 64, offset: 2304)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !979, file: !15, line: 857, baseType: !102, size: 64, offset: 2368)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !979, file: !15, line: 858, baseType: !102, size: 64, offset: 2432)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !979, file: !15, line: 865, baseType: !359, size: 32, offset: 2496)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !979, file: !15, line: 867, baseType: !122, size: 32, offset: 2528)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !979, file: !15, line: 869, baseType: !102, size: 64, offset: 2560)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !979, file: !15, line: 869, baseType: !102, size: 64, offset: 2624)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !979, file: !15, line: 869, baseType: !102, size: 64, offset: 2688)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !979, file: !15, line: 869, baseType: !102, size: 64, offset: 2752)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !979, file: !15, line: 870, baseType: !102, size: 64, offset: 2816)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !979, file: !15, line: 870, baseType: !102, size: 64, offset: 2880)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !979, file: !15, line: 870, baseType: !102, size: 64, offset: 2944)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !979, file: !15, line: 871, baseType: !102, size: 64, offset: 3008)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !979, file: !15, line: 871, baseType: !102, size: 64, offset: 3072)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !979, file: !15, line: 871, baseType: !102, size: 64, offset: 3136)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !979, file: !15, line: 871, baseType: !102, size: 64, offset: 3200)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !979, file: !15, line: 873, baseType: !1055, size: 3328, offset: 3264)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 3328, elements: !1056)
!1056 = !{!1057}
!1057 = !DISubrange(count: 52)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !979, file: !15, line: 875, baseType: !1059, size: 1280, offset: 6592)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 1280, elements: !307)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !979, file: !15, line: 877, baseType: !1061, size: 64, offset: 7872)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !15, line: 877, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !979, file: !15, line: 880, baseType: !1064, size: 1088, offset: 7936)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1065, line: 72, baseType: !1066)
!1065 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1065, line: 23, size: 1088, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1075, !1076, !1077, !1078, !1082, !1083, !1084}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1066, file: !1065, line: 28, baseType: !384, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1066, file: !1065, line: 38, baseType: !207, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1066, file: !1065, line: 40, baseType: !102, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1066, file: !1065, line: 43, baseType: !201, size: 320, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1066, file: !1065, line: 44, baseType: !1073, size: 64, offset: 512)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1065, line: 44, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1066, file: !1065, line: 48, baseType: !102, size: 64, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1066, file: !1065, line: 59, baseType: !294, size: 256, offset: 640)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1066, file: !1065, line: 60, baseType: !83, size: 64, offset: 896)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1066, file: !1065, line: 61, baseType: !1079, size: 64, offset: 960)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1081)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1065, line: 61, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1066, file: !1065, line: 63, baseType: !112, size: 32, offset: 1024)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1066, file: !1065, line: 69, baseType: !156, size: 16, offset: 1056)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1066, file: !1065, line: 70, baseType: !1085, size: 16, offset: 1072)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !147, line: 18, baseType: !1086)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !149, line: 23, baseType: !684)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !979, file: !15, line: 882, baseType: !102, size: 64, offset: 9024)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !979, file: !15, line: 885, baseType: !122, size: 32, offset: 9088)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !979, file: !15, line: 886, baseType: !1090, size: 64, offset: 9152)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !15, line: 732, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !979, file: !15, line: 901, baseType: !788, size: 64, offset: 9216)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !979, file: !15, line: 904, baseType: !525, size: 64, offset: 9280)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !979, file: !15, line: 906, baseType: !1095, size: 64, offset: 9344)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !15, line: 906, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !979, file: !15, line: 930, baseType: !112, size: 32, offset: 9408)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !979, file: !15, line: 933, baseType: !112, size: 32, offset: 9440)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !979, file: !15, line: 935, baseType: !1100, size: 64, offset: 9472)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1101)
!1101 = !{!1102}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1100, file: !68, line: 104, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !979, file: !15, line: 940, baseType: !205, size: 64, offset: 9536)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !979, file: !15, line: 942, baseType: !282, size: 256, offset: 9600)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !976, file: !15, line: 986, baseType: !1108, offset: 10240)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, elements: !612)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !963, file: !15, line: 640, baseType: !1110, size: 64, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1011, line: 297, baseType: !1111)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1011, line: 297, size: 64, elements: !1112)
!1112 = !{!1113}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1111, file: !1011, line: 297, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1016, line: 19, baseType: !102)
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !15, line: 646, baseType: !1116, size: 64, offset: 256)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !963, file: !15, line: 646, size: 64, elements: !1117)
!1117 = !{!1118, !1121}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1116, file: !15, line: 647, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !15, line: 542, baseType: !102)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1116, file: !15, line: 648, baseType: !1120, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !963, file: !15, line: 666, baseType: !85, size: 32, offset: 320)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !963, file: !15, line: 667, baseType: !1124, size: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !15, line: 579, size: 320, elements: !1126)
!1126 = !{!1127}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1125, file: !15, line: 580, baseType: !201, size: 320)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !963, file: !15, line: 670, baseType: !256, size: 8, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !963, file: !15, line: 681, baseType: !1130, size: 256, offset: 512)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !15, line: 678, size: 256, elements: !1131)
!1131 = !{!1132, !1133}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1130, file: !15, line: 679, baseType: !658, size: 192, align: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1130, file: !15, line: 680, baseType: !102, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !963, file: !15, line: 689, baseType: !160, size: 128, offset: 768)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !963, file: !15, line: 691, baseType: !1136, size: 64, offset: 896)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !15, line: 691, flags: DIFlagFwdDecl)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !963, file: !15, line: 694, baseType: !1139, size: 64, offset: 960)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1142, line: 563, size: 1024, elements: !1143)
!1142 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1143 = !{!1144, !1148, !1149, !1153, !1157, !1161, !1533, !1537, !1541, !1545, !1546, !1547, !1551, !1555, !1561, !1565}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1141, file: !1142, line: 564, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !962}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1141, file: !1142, line: 569, baseType: !1145, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1141, file: !1142, line: 571, baseType: !1150, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!85, !962, !102}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1141, file: !1142, line: 572, baseType: !1154, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!85, !962}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1141, file: !1142, line: 578, baseType: !1158, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!85, !962, !102, !102, !102}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1141, file: !1142, line: 580, baseType: !1162, size: 64, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !15, line: 1184, baseType: !7)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1142, line: 512, size: 896, elements: !1168)
!1168 = !{!1169, !1177, !1178, !1185, !1192, !1202, !1526, !1527, !1529, !1531}
!1169 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !1142, line: 513, baseType: !1170, size: 320)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1167, file: !1142, line: 513, size: 320, elements: !1171)
!1171 = !{!1172, !1173, !1174, !1175, !1176}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1170, file: !1142, line: 514, baseType: !962, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1170, file: !1142, line: 515, baseType: !187, size: 32, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1170, file: !1142, line: 516, baseType: !102, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1170, file: !1142, line: 517, baseType: !102, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1170, file: !1142, line: 518, baseType: !102, size: 64, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1167, file: !1142, line: 520, baseType: !14, size: 32, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1167, file: !1142, line: 522, baseType: !1179, size: 64, offset: 384)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1016, line: 22, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1016, line: 22, size: 64, elements: !1182)
!1182 = !{!1183}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1181, file: !1016, line: 22, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1016, line: 15, baseType: !102)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1167, file: !1142, line: 524, baseType: !1186, size: 64, offset: 448)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1011, line: 372, baseType: !1188)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1011, line: 372, size: 64, elements: !1189)
!1189 = !{!1190}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1188, file: !1011, line: 372, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1016, line: 16, baseType: !102)
!1192 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !1142, line: 527, baseType: !1193, size: 64, offset: 512)
!1193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1167, file: !1142, line: 527, size: 64, elements: !1194)
!1194 = !{!1195, !1201}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1193, file: !1142, line: 528, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1016, line: 21, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1016, line: 21, size: 64, elements: !1198)
!1198 = !{!1199}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1197, file: !1016, line: 21, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1016, line: 14, baseType: !102)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1193, file: !1142, line: 529, baseType: !1180, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1167, file: !1142, line: 534, baseType: !1203, size: 64, offset: 576)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !15, line: 74, size: 512, align: 128, elements: !1205)
!1205 = !{!1206, !1207, !1520, !1525}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1204, file: !15, line: 75, baseType: !102, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, scope: !1204, file: !15, line: 83, baseType: !1208, size: 320, offset: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1204, file: !15, line: 83, size: 320, elements: !1209)
!1209 = !{!1210, !1416, !1430, !1434, !1519}
!1210 = !DIDerivedType(tag: DW_TAG_member, scope: !1208, file: !15, line: 84, baseType: !1211, size: 320)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1208, file: !15, line: 84, size: 320, elements: !1212)
!1212 = !{!1213, !1224, !1410, !1415}
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !15, line: 90, baseType: !1214, size: 128)
!1214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !15, line: 90, size: 128, elements: !1215)
!1215 = !{!1216, !1217, !1222, !1223}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1214, file: !15, line: 91, baseType: !160, size: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !15, line: 94, baseType: !1218, size: 128)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1214, file: !15, line: 94, size: 128, elements: !1219)
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1218, file: !15, line: 96, baseType: !83, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1218, file: !15, line: 98, baseType: !7, size: 32, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1214, file: !15, line: 102, baseType: !160, size: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1214, file: !15, line: 103, baseType: !160, size: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1211, file: !15, line: 106, baseType: !1225, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !46, line: 472, size: 1536, align: 64, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1231, !1232, !1233, !1241, !1242, !1243, !1402, !1403, !1404, !1407, !1408, !1409}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1226, file: !46, line: 473, baseType: !391, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1226, file: !46, line: 474, baseType: !227, size: 128, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1226, file: !46, line: 475, baseType: !201, size: 320, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1226, file: !46, line: 476, baseType: !187, size: 32, offset: 512)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1226, file: !46, line: 477, baseType: !112, size: 32, offset: 544)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1226, file: !46, line: 482, baseType: !1234, size: 128, offset: 576)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !659, line: 26, size: 128, elements: !1235)
!1235 = !{!1236, !1240}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1234, file: !659, line: 27, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !659, line: 12, size: 64, elements: !1238)
!1238 = !{!1239}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1237, file: !659, line: 13, baseType: !663, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1234, file: !659, line: 28, baseType: !663, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1226, file: !46, line: 483, baseType: !102, size: 64, offset: 704)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1226, file: !46, line: 484, baseType: !102, size: 64, offset: 768)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1226, file: !46, line: 485, baseType: !1244, size: 64, offset: 832)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1246)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !46, line: 404, size: 1280, elements: !1247)
!1247 = !{!1248, !1254, !1324, !1328, !1332, !1338, !1344, !1348, !1353, !1357, !1361, !1365, !1366, !1370, !1374, !1378, !1383, !1387, !1394, !1398}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1246, file: !46, line: 405, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!85, !1203, !1252}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !46, line: 309, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1246, file: !46, line: 406, baseType: !1255, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!85, !525, !1258}
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !15, line: 293, size: 1536, elements: !1260)
!1260 = !{!1261, !1291, !1305}
!1261 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !15, line: 295, baseType: !1262, size: 512)
!1262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !15, line: 295, size: 512, elements: !1263)
!1263 = !{!1264, !1290}
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1262, file: !15, line: 296, baseType: !1265, size: 448)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1262, file: !15, line: 296, size: 448, elements: !1266)
!1266 = !{!1267, !1268, !1277, !1278, !1279, !1288, !1289}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1265, file: !15, line: 298, baseType: !102, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, scope: !1265, file: !15, line: 299, baseType: !1269, size: 128, offset: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1265, file: !15, line: 299, size: 128, elements: !1270)
!1270 = !{!1271, !1272}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1269, file: !15, line: 300, baseType: !160, size: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !15, line: 302, baseType: !1273, size: 128)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1269, file: !15, line: 302, size: 128, elements: !1274)
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1273, file: !15, line: 303, baseType: !83, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1273, file: !15, line: 305, baseType: !7, size: 32, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1265, file: !15, line: 310, baseType: !1225, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1265, file: !15, line: 311, baseType: !102, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, scope: !1265, file: !15, line: 312, baseType: !1280, size: 64, offset: 320)
!1280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1265, file: !15, line: 312, size: 64, elements: !1281)
!1281 = !{!1282, !1283}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1280, file: !15, line: 313, baseType: !83, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1280, file: !15, line: 314, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !15, line: 257, baseType: !1285)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 255, size: 64, elements: !1286)
!1286 = !{!1287}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1285, file: !15, line: 256, baseType: !102, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1265, file: !15, line: 316, baseType: !112, size: 32, offset: 384)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1265, file: !15, line: 317, baseType: !112, size: 32, offset: 416)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1262, file: !15, line: 323, baseType: !1204, size: 512, align: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !15, line: 325, baseType: !1292, size: 512, offset: 512)
!1292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !15, line: 325, size: 512, elements: !1293)
!1293 = !{!1294, !1304}
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !15, line: 326, baseType: !1295, size: 320)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1292, file: !15, line: 326, size: 320, elements: !1296)
!1296 = !{!1297, !1298, !1299, !1300, !1301, !1302, !1303}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1295, file: !15, line: 327, baseType: !102, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1295, file: !15, line: 328, baseType: !102, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1295, file: !15, line: 329, baseType: !102, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1295, file: !15, line: 331, baseType: !112, size: 32, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1295, file: !15, line: 332, baseType: !112, size: 32, offset: 224)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1295, file: !15, line: 333, baseType: !112, size: 32, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1295, file: !15, line: 335, baseType: !7, size: 32, offset: 288)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1292, file: !15, line: 339, baseType: !1204, size: 512, align: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !15, line: 341, baseType: !1306, size: 512, offset: 1024)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !15, line: 341, size: 512, elements: !1307)
!1307 = !{!1308, !1317, !1323}
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !15, line: 342, baseType: !1309, size: 384)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1306, file: !15, line: 342, size: 384, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1309, file: !15, line: 343, baseType: !102, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1309, file: !15, line: 344, baseType: !102, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1309, file: !15, line: 346, baseType: !83, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1309, file: !15, line: 347, baseType: !83, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1309, file: !15, line: 348, baseType: !83, size: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1309, file: !15, line: 349, baseType: !83, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !15, line: 352, baseType: !1318, size: 256)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1306, file: !15, line: 352, size: 256, elements: !1319)
!1319 = !{!1320, !1321, !1322}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1318, file: !15, line: 353, baseType: !102, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1318, file: !15, line: 354, baseType: !102, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1318, file: !15, line: 356, baseType: !160, size: 128, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1306, file: !15, line: 359, baseType: !1204, size: 512, align: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1246, file: !46, line: 409, baseType: !1325, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!85, !1225, !1252}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1246, file: !46, line: 412, baseType: !1329, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!256, !1225, !1258}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1246, file: !46, line: 414, baseType: !1333, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !1336}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !46, line: 310, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1246, file: !46, line: 416, baseType: !1339, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!85, !525, !1225, !104, !7, !1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1246, file: !46, line: 419, baseType: !1345, size: 64, offset: 384)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!85, !525, !1225, !104, !7, !7, !1203, !83}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1246, file: !46, line: 424, baseType: !1349, size: 64, offset: 448)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!1352, !1225, !1352}
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !88, line: 131, baseType: !384)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1246, file: !46, line: 425, baseType: !1354, size: 64, offset: 512)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{null, !1258, !98, !98}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1246, file: !46, line: 426, baseType: !1358, size: 64, offset: 576)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!256, !1258, !187}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1246, file: !46, line: 427, baseType: !1362, size: 64, offset: 640)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !1258}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1246, file: !46, line: 428, baseType: !848, size: 64, offset: 704)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1246, file: !46, line: 433, baseType: !1367, size: 64, offset: 768)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!85, !1225, !1258, !1258, !30}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1246, file: !46, line: 435, baseType: !1371, size: 64, offset: 832)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!85, !1258}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1246, file: !46, line: 436, baseType: !1375, size: 64, offset: 896)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!256, !1258, !98, !98}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1246, file: !46, line: 438, baseType: !1379, size: 64, offset: 960)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !1258, !1382, !1382}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1246, file: !46, line: 439, baseType: !1384, size: 64, offset: 1024)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!85, !1225, !1203}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1246, file: !46, line: 442, baseType: !1388, size: 64, offset: 1088)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!85, !1391, !525, !1393}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !46, line: 66, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1246, file: !46, line: 444, baseType: !1395, size: 64, offset: 1152)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !525}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1246, file: !46, line: 445, baseType: !1399, size: 64, offset: 1216)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!85, !851, !873}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1226, file: !46, line: 486, baseType: !102, size: 64, offset: 896)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1226, file: !46, line: 487, baseType: !201, size: 320, offset: 960)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1226, file: !46, line: 488, baseType: !1405, size: 32, offset: 1280)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1406, line: 8, baseType: !263)
!1406 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1226, file: !46, line: 489, baseType: !122, size: 32, offset: 1312)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1226, file: !46, line: 490, baseType: !160, size: 128, offset: 1344)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1226, file: !46, line: 491, baseType: !83, size: 64, offset: 1472)
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !15, line: 107, baseType: !1411, size: 64, offset: 192)
!1411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !15, line: 107, size: 64, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1411, file: !15, line: 108, baseType: !102, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1411, file: !15, line: 109, baseType: !102, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1211, file: !15, line: 117, baseType: !102, size: 64, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1208, file: !15, line: 119, baseType: !1417, size: 320)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1208, file: !15, line: 119, size: 320, elements: !1418)
!1418 = !{!1419, !1420, !1423, !1424, !1425}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1417, file: !15, line: 124, baseType: !102, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1417, file: !15, line: 125, baseType: !1421, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !15, line: 125, flags: DIFlagFwdDecl)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1417, file: !15, line: 126, baseType: !102, size: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1417, file: !15, line: 127, baseType: !102, size: 64, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !15, line: 128, baseType: !1426, size: 64, offset: 256)
!1426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1417, file: !15, line: 128, size: 64, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1426, file: !15, line: 133, baseType: !102, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1426, file: !15, line: 138, baseType: !205, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, scope: !1208, file: !15, line: 141, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1208, file: !15, line: 141, size: 64, elements: !1432)
!1432 = !{!1433}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1431, file: !15, line: 142, baseType: !102, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, scope: !1208, file: !15, line: 144, baseType: !1435, size: 128)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1208, file: !15, line: 144, size: 128, elements: !1436)
!1436 = !{!1437, !1518}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1435, file: !15, line: 146, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !38, line: 126, size: 1216, elements: !1440)
!1440 = !{!1441, !1451, !1472, !1483, !1484, !1485, !1486, !1500, !1501, !1502}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1439, file: !38, line: 127, baseType: !1442, size: 384)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !38, line: 21, size: 384, elements: !1443)
!1443 = !{!1444, !1445, !1447, !1448, !1449, !1450}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1442, file: !38, line: 22, baseType: !102, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1442, file: !38, line: 23, baseType: !1446, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1442, file: !38, line: 24, baseType: !1446, size: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1442, file: !38, line: 25, baseType: !102, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1442, file: !38, line: 26, baseType: !102, size: 64, offset: 256)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1442, file: !38, line: 27, baseType: !102, size: 64, offset: 320)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1439, file: !38, line: 128, baseType: !1452, size: 128, offset: 384)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1453, line: 105, size: 128, elements: !1454)
!1453 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1452, file: !1453, line: 110, baseType: !102, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1452, file: !1453, line: 118, baseType: !1457, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1453, line: 95, size: 448, elements: !1459)
!1459 = !{!1460, !1461, !1467, !1468, !1469, !1470, !1471}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1458, file: !1453, line: 96, baseType: !205, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1458, file: !1453, line: 97, baseType: !1462, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1453, line: 60, baseType: !1464)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !1466}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1458, file: !1453, line: 98, baseType: !1462, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1458, file: !1453, line: 99, baseType: !256, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1458, file: !1453, line: 100, baseType: !256, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1458, file: !1453, line: 101, baseType: !538, size: 128, align: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1458, file: !1453, line: 102, baseType: !1466, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1439, file: !38, line: 129, baseType: !1473, size: 256, offset: 512)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1474, line: 26, size: 256, elements: !1475)
!1474 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1473, file: !1474, line: 27, baseType: !7, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1473, file: !1474, line: 28, baseType: !1478, size: 192, offset: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1479, line: 43, size: 192, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1478, file: !1479, line: 44, baseType: !220, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1478, file: !1479, line: 45, baseType: !160, size: 128, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1439, file: !38, line: 130, baseType: !37, size: 32, offset: 768)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1439, file: !38, line: 131, baseType: !7, size: 32, offset: 800)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1439, file: !38, line: 132, baseType: !102, size: 64, offset: 832)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1439, file: !38, line: 133, baseType: !1487, size: 64, offset: 896)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1489)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !38, line: 77, size: 192, elements: !1490)
!1490 = !{!1491, !1495, !1496}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1489, file: !38, line: 83, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{null, !1203}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1489, file: !38, line: 89, baseType: !1162, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1489, file: !38, line: 100, baseType: !1497, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!85, !1438, !102, !102, !85}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1439, file: !38, line: 134, baseType: !83, size: 64, offset: 960)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1439, file: !38, line: 135, baseType: !85, size: 32, offset: 1024)
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1439, file: !38, line: 136, baseType: !1503, size: 128, offset: 1088)
!1503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1439, file: !38, line: 136, size: 128, elements: !1504)
!1504 = !{!1505, !1511}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1503, file: !38, line: 137, baseType: !1506, size: 128)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1507, line: 6, size: 128, elements: !1508)
!1507 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1508 = !{!1509, !1510}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1506, file: !1507, line: 7, baseType: !384, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1506, file: !1507, line: 8, baseType: !384, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1503, file: !38, line: 138, baseType: !1512)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1503, file: !38, line: 138, elements: !1513)
!1513 = !{!1514, !1516}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1512, file: !38, line: 138, baseType: !1515)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !38, line: 138, elements: !996)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1512, file: !38, line: 138, baseType: !1517)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1506, elements: !612)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1435, file: !15, line: 147, baseType: !83, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1208, file: !15, line: 161, baseType: !538, size: 128, align: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, scope: !1204, file: !15, line: 164, baseType: !1521, size: 32, offset: 384)
!1521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1204, file: !15, line: 164, size: 32, elements: !1522)
!1522 = !{!1523, !1524}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1521, file: !15, line: 169, baseType: !112, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1521, file: !15, line: 177, baseType: !7, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1204, file: !15, line: 181, baseType: !112, size: 32, offset: 416)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1167, file: !1142, line: 535, baseType: !1203, size: 64, offset: 640)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1167, file: !1142, line: 541, baseType: !1528, size: 64, offset: 704)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1167, file: !1142, line: 545, baseType: !1530, size: 64, offset: 768)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1167, file: !1142, line: 549, baseType: !1532, size: 64, offset: 832)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1011, line: 520, baseType: !1203)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1141, file: !1142, line: 581, baseType: !1534, size: 64, offset: 384)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!1165, !1166, !7}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1141, file: !1142, line: 582, baseType: !1538, size: 64, offset: 448)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!1165, !1166, !102, !102}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1141, file: !1142, line: 584, baseType: !1542, size: 64, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!102, !962}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1141, file: !1142, line: 588, baseType: !1162, size: 64, offset: 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1141, file: !1142, line: 591, baseType: !1162, size: 64, offset: 640)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1141, file: !1142, line: 597, baseType: !1548, size: 64, offset: 704)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!85, !962, !102, !83, !85, !85}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1141, file: !1142, line: 603, baseType: !1552, size: 64, offset: 768)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!79, !962}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1141, file: !1142, line: 613, baseType: !1556, size: 64, offset: 832)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!85, !962, !1559}
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !15, line: 717, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1141, file: !1142, line: 625, baseType: !1562, size: 64, offset: 896)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!1559, !962, !102}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1141, file: !1142, line: 633, baseType: !1566, size: 64, offset: 960)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!1203, !962, !102}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !963, file: !15, line: 697, baseType: !102, size: 64, offset: 1024)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !963, file: !15, line: 699, baseType: !525, size: 64, offset: 1088)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !963, file: !15, line: 700, baseType: !83, size: 64, offset: 1152)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !963, file: !15, line: 711, baseType: !205, size: 64, offset: 1216)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !963, file: !15, line: 717, baseType: !1559, size: 64, offset: 1280)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !963, file: !15, line: 722, baseType: !1575, offset: 1344)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !15, line: 570, elements: !996)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !826, file: !46, line: 1928, baseType: !102, size: 64, offset: 768)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !826, file: !46, line: 1929, baseType: !1578, size: 64, offset: 832)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!85, !391, !525}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !826, file: !46, line: 1930, baseType: !1582, size: 64, offset: 896)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!85, !525, !1585}
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !46, line: 1061, baseType: !83)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !826, file: !46, line: 1931, baseType: !1578, size: 64, offset: 960)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !826, file: !46, line: 1932, baseType: !1588, size: 64, offset: 1024)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!85, !525, !104, !104, !85}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !826, file: !46, line: 1933, baseType: !1592, size: 64, offset: 1088)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!85, !85, !525, !85}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !826, file: !46, line: 1934, baseType: !1596, size: 64, offset: 1152)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!85, !525, !85, !1599}
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !46, line: 1063, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !826, file: !46, line: 1935, baseType: !1000, size: 64, offset: 1216)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !826, file: !46, line: 1936, baseType: !1603, size: 64, offset: 1280)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!85, !85}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !826, file: !46, line: 1937, baseType: !1596, size: 64, offset: 1344)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !826, file: !46, line: 1938, baseType: !1608, size: 64, offset: 1408)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!840, !1611, !525, !103, !98, !7}
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1613, line: 59, flags: DIFlagFwdDecl)
!1613 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !826, file: !46, line: 1939, baseType: !1615, size: 64, offset: 1472)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!840, !525, !103, !1611, !98, !7}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !826, file: !46, line: 1940, baseType: !1395, size: 64, offset: 1536)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !826, file: !46, line: 1941, baseType: !1620, size: 64, offset: 1600)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!85, !525, !85, !1623, !1343}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !826, file: !46, line: 1942, baseType: !1625, size: 64, offset: 1664)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!521, !525, !85, !104, !104}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !826, file: !46, line: 1944, baseType: !1629, size: 64, offset: 1728)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{null, !1632, !525}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !647, line: 97, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !826, file: !46, line: 1948, baseType: !1635, size: 64, offset: 1792)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!840, !525, !104, !525, !104, !98, !7}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !826, file: !46, line: 1950, baseType: !1639, size: 64, offset: 1856)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!104, !525, !104, !525, !104, !104, !7}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !826, file: !46, line: 1953, baseType: !1588, size: 64, offset: 1920)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !826, file: !46, line: 1954, baseType: !1644, size: 64, offset: 1984)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!85, !1647, !7}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !46, line: 1911, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !826, file: !46, line: 1955, baseType: !1650, size: 64, offset: 2048)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!85, !1647, !930, !7}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !526, file: !46, line: 1018, baseType: !384, size: 64, offset: 1472)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !526, file: !46, line: 1020, baseType: !83, size: 64, offset: 1536)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !526, file: !46, line: 1023, baseType: !83, size: 64, offset: 1600)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !526, file: !46, line: 1027, baseType: !1657, size: 64, offset: 1664)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !526, file: !46, line: 1029, baseType: !1225, size: 64, offset: 1728)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !526, file: !46, line: 1030, baseType: !1405, size: 32, offset: 1792)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !526, file: !46, line: 1031, baseType: !1405, size: 32, offset: 1824)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !420, file: !46, line: 1988, baseType: !1662, size: 64, offset: 896)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!85, !443, !1665, !1667, !263, !7}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1669, line: 22, size: 1280, elements: !1670)
!1669 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1670 = !{!1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1668, file: !1669, line: 23, baseType: !263, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1668, file: !1669, line: 24, baseType: !87, size: 16, offset: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1668, file: !1669, line: 25, baseType: !7, size: 32, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1668, file: !1669, line: 26, baseType: !680, size: 32, offset: 96)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1668, file: !1669, line: 27, baseType: !384, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1668, file: !1669, line: 28, baseType: !384, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1668, file: !1669, line: 41, baseType: !384, size: 64, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1668, file: !1669, line: 42, baseType: !479, size: 32, offset: 320)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1668, file: !1669, line: 43, baseType: !479, size: 32, offset: 352)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1668, file: !1669, line: 44, baseType: !397, size: 32, offset: 384)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1668, file: !1669, line: 45, baseType: !406, size: 32, offset: 416)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1668, file: !1669, line: 46, baseType: !104, size: 64, offset: 448)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1668, file: !1669, line: 47, baseType: !515, size: 128, offset: 512)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1668, file: !1669, line: 48, baseType: !515, size: 128, offset: 640)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1668, file: !1669, line: 49, baseType: !515, size: 128, offset: 768)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1668, file: !1669, line: 50, baseType: !515, size: 128, offset: 896)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1668, file: !1669, line: 51, baseType: !384, size: 64, offset: 1024)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1668, file: !1669, line: 52, baseType: !384, size: 64, offset: 1088)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1668, file: !1669, line: 53, baseType: !263, size: 32, offset: 1152)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1668, file: !1669, line: 54, baseType: !263, size: 32, offset: 1184)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1668, file: !1669, line: 55, baseType: !384, size: 64, offset: 1216)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !420, file: !46, line: 1990, baseType: !1693, size: 64, offset: 960)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!840, !348, !186, !98}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !420, file: !46, line: 1991, baseType: !1697, size: 64, offset: 1024)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!85, !391, !1700, !384, !384}
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !46, line: 55, flags: DIFlagFwdDecl)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !420, file: !46, line: 1993, baseType: !1703, size: 64, offset: 1088)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!85, !391, !85}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !420, file: !46, line: 1994, baseType: !1707, size: 64, offset: 1152)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!85, !391, !348, !525, !7, !87}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !420, file: !46, line: 1997, baseType: !1711, size: 64, offset: 1216)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!85, !443, !391, !525, !87}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !420, file: !46, line: 1999, baseType: !1715, size: 64, offset: 1280)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!414, !443, !348, !85}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !420, file: !46, line: 2001, baseType: !1719, size: 64, offset: 1344)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!85, !443, !348, !414, !85}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !420, file: !46, line: 2003, baseType: !1723, size: 64, offset: 1408)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!85, !443, !348, !1726}
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !46, line: 76, flags: DIFlagFwdDecl)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !420, file: !46, line: 2005, baseType: !1729, size: 64, offset: 1472)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!85, !348, !1726}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !420, file: !46, line: 2006, baseType: !1733, size: 64, offset: 1536)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!1736, !391}
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !46, line: 3192, size: 192, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1737, file: !46, line: 3193, baseType: !227, size: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1737, file: !46, line: 3194, baseType: !263, size: 32, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !392, file: !46, line: 655, baseType: !1742, size: 64, offset: 448)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !46, line: 1190, size: 10752, elements: !1744)
!1744 = !{!1745, !1746, !1747, !1748, !1749, !1750, !1788, !1921, !1961, !2044, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2061, !2065, !2066, !2069, !2072, !2075, !2078, !2079, !2080, !2121, !3434, !3435, !3436, !3437, !3438, !3439, !3442, !3444, !3451, !3452, !3453, !3454, !3513, !3528, !3529, !3530, !3531, !3532, !3535, !3536, !3537, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1743, file: !46, line: 1191, baseType: !160, size: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1743, file: !46, line: 1192, baseType: !479, size: 32, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1743, file: !46, line: 1193, baseType: !150, size: 8, offset: 160)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1743, file: !46, line: 1194, baseType: !102, size: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1743, file: !46, line: 1195, baseType: !104, size: 64, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1743, file: !46, line: 1196, baseType: !1751, size: 64, offset: 320)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !46, line: 2366, size: 576, elements: !1753)
!1753 = !{!1754, !1755, !1756, !1762, !1766, !1770, !1774, !1775, !1776, !1777, !1780, !1781, !1782, !1784, !1785, !1786, !1787}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1752, file: !46, line: 2367, baseType: !79, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1752, file: !46, line: 2368, baseType: !85, size: 32, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1752, file: !46, line: 2376, baseType: !1757, size: 64, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!85, !1760}
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !345, line: 21, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1752, file: !46, line: 2377, baseType: !1763, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1765)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !46, line: 75, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1752, file: !46, line: 2378, baseType: !1767, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!348, !1751, !85, !79, !83}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1752, file: !46, line: 2380, baseType: !1771, size: 64, offset: 320)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{null, !1742}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1752, file: !46, line: 2381, baseType: !829, size: 64, offset: 384)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1752, file: !46, line: 2382, baseType: !1751, size: 64, offset: 448)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1752, file: !46, line: 2383, baseType: !592, size: 64, offset: 512)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1752, file: !46, line: 2385, baseType: !1778, offset: 576)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1779, line: 206, elements: !996)
!1779 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1752, file: !46, line: 2386, baseType: !1778, offset: 576)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1752, file: !46, line: 2387, baseType: !1778, offset: 576)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1752, file: !46, line: 2388, baseType: !1783, offset: 576)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1778, elements: !303)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1752, file: !46, line: 2390, baseType: !1778, offset: 576)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1752, file: !46, line: 2391, baseType: !1778, offset: 576)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1752, file: !46, line: 2392, baseType: !1778, offset: 576)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1752, file: !46, line: 2393, baseType: !1778, offset: 576)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1743, file: !46, line: 1197, baseType: !1789, size: 64, offset: 384)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1791)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !46, line: 2057, size: 1664, elements: !1792)
!1792 = !{!1793, !1797, !1801, !1802, !1806, !1810, !1814, !1815, !1816, !1820, !1824, !1828, !1829, !1830, !1836, !1841, !1842, !1846, !1847, !1848, !1849, !1853, !1857, !1904, !1919, !1920}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1791, file: !46, line: 2058, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!391, !1742}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1791, file: !46, line: 2059, baseType: !1798, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{null, !391}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1791, file: !46, line: 2060, baseType: !1798, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1791, file: !46, line: 2062, baseType: !1803, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{null, !391, !85}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1791, file: !46, line: 2063, baseType: !1807, size: 64, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!85, !391, !1252}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1791, file: !46, line: 2064, baseType: !1811, size: 64, offset: 320)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!85, !391}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1791, file: !46, line: 2065, baseType: !1798, size: 64, offset: 384)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1791, file: !46, line: 2066, baseType: !1771, size: 64, offset: 448)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1791, file: !46, line: 2067, baseType: !1817, size: 64, offset: 512)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!85, !1742, !85}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1791, file: !46, line: 2068, baseType: !1821, size: 64, offset: 576)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!85, !1742, !45}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1791, file: !46, line: 2069, baseType: !1825, size: 64, offset: 640)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!85, !1742}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1791, file: !46, line: 2070, baseType: !1821, size: 64, offset: 704)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1791, file: !46, line: 2071, baseType: !1825, size: 64, offset: 768)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1791, file: !46, line: 2072, baseType: !1831, size: 64, offset: 832)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!85, !348, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !46, line: 62, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1791, file: !46, line: 2073, baseType: !1837, size: 64, offset: 896)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!85, !1742, !1840, !186}
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1791, file: !46, line: 2074, baseType: !1771, size: 64, offset: 960)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1791, file: !46, line: 2076, baseType: !1843, size: 64, offset: 1024)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!85, !1632, !348}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1791, file: !46, line: 2077, baseType: !1843, size: 64, offset: 1088)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1791, file: !46, line: 2078, baseType: !1843, size: 64, offset: 1152)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1791, file: !46, line: 2079, baseType: !1843, size: 64, offset: 1216)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1791, file: !46, line: 2081, baseType: !1850, size: 64, offset: 1280)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!840, !1742, !85, !186, !98, !104}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1791, file: !46, line: 2082, baseType: !1854, size: 64, offset: 1344)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!840, !1742, !85, !79, !98, !104}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1791, file: !46, line: 2083, baseType: !1858, size: 64, offset: 1408)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!1861, !391}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !1864)
!1864 = !{!1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1889, !1890, !1891}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1863, file: !51, line: 297, baseType: !596, size: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1863, file: !51, line: 298, baseType: !160, size: 128, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1863, file: !51, line: 299, baseType: !160, size: 128, offset: 256)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1863, file: !51, line: 300, baseType: !160, size: 128, offset: 384)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1863, file: !51, line: 301, baseType: !294, size: 256, offset: 512)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1863, file: !51, line: 302, baseType: !122, size: 32, offset: 768)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1863, file: !51, line: 303, baseType: !112, size: 32, offset: 800)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1863, file: !51, line: 304, baseType: !1742, size: 64, offset: 832)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1863, file: !51, line: 305, baseType: !1874, size: 64, offset: 896)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !1875)
!1875 = !{!1876, !1888}
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !51, line: 69, baseType: !1877, size: 32)
!1877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1874, file: !51, line: 69, size: 32, elements: !1878)
!1878 = !{!1879, !1880, !1881}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1877, file: !51, line: 70, baseType: !397, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1877, file: !51, line: 71, baseType: !406, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1877, file: !51, line: 72, baseType: !1882, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1883, line: 24, baseType: !1884)
!1883 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1883, line: 22, size: 32, elements: !1885)
!1885 = !{!1886}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1884, file: !1883, line: 23, baseType: !1887, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1883, line: 20, baseType: !403)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1874, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1863, file: !51, line: 306, baseType: !104, size: 64, offset: 960)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1863, file: !51, line: 307, baseType: !102, size: 64, offset: 1024)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1863, file: !51, line: 308, baseType: !1892, size: 576, offset: 1088)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !1893)
!1893 = !{!1894, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1892, file: !51, line: 206, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !106)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1892, file: !51, line: 207, baseType: !1895, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1892, file: !51, line: 208, baseType: !1895, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1892, file: !51, line: 209, baseType: !1895, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1892, file: !51, line: 210, baseType: !1895, size: 64, offset: 256)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1892, file: !51, line: 211, baseType: !1895, size: 64, offset: 320)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1892, file: !51, line: 212, baseType: !1895, size: 64, offset: 384)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1892, file: !51, line: 213, baseType: !519, size: 64, offset: 448)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1892, file: !51, line: 214, baseType: !519, size: 64, offset: 512)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1791, file: !46, line: 2085, baseType: !1905, size: 64, offset: 1472)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!521, !1742, !1908}
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1910, line: 15, size: 256, elements: !1911)
!1910 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1911 = !{!1912, !1913, !1914, !1915, !1916}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1909, file: !1910, line: 16, baseType: !187, size: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1909, file: !1910, line: 19, baseType: !85, size: 32, offset: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1909, file: !1910, line: 26, baseType: !102, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1909, file: !1910, line: 33, baseType: !102, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1909, file: !1910, line: 36, baseType: !1917, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1910, line: 36, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1791, file: !46, line: 2087, baseType: !1905, size: 64, offset: 1536)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1791, file: !46, line: 2089, baseType: !1771, size: 64, offset: 1600)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1743, file: !46, line: 1198, baseType: !1922, size: 64, offset: 448)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1924)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !1925)
!1925 = !{!1926, !1930, !1934, !1938, !1939, !1940, !1941, !1942, !1947, !1952, !1956}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1924, file: !51, line: 325, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!85, !1862}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1924, file: !51, line: 326, baseType: !1931, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1862, !1742, !85}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1924, file: !51, line: 327, baseType: !1935, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !1862}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1924, file: !51, line: 328, baseType: !1927, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1924, file: !51, line: 329, baseType: !1927, size: 64, offset: 256)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1924, file: !51, line: 330, baseType: !1927, size: 64, offset: 320)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1924, file: !51, line: 331, baseType: !1817, size: 64, offset: 384)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1924, file: !51, line: 334, baseType: !1943, size: 64, offset: 448)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!1946, !391}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1924, file: !51, line: 335, baseType: !1948, size: 64, offset: 512)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!85, !391, !1951}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1924, file: !51, line: 337, baseType: !1953, size: 64, offset: 576)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!85, !391, !1946}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1924, file: !51, line: 339, baseType: !1957, size: 64, offset: 640)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!85, !1742, !1960}
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1743, file: !46, line: 1199, baseType: !1962, size: 64, offset: 512)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1964)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !1965)
!1965 = !{!1966, !1970, !1971, !1975, !1976, !1977, !1992, !2015, !2019, !2020, !2043}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1964, file: !51, line: 431, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!85, !1742, !85, !85, !1665}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1964, file: !51, line: 432, baseType: !1817, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1964, file: !51, line: 433, baseType: !1972, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!85, !1742, !7}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1964, file: !51, line: 434, baseType: !1972, size: 64, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1964, file: !51, line: 435, baseType: !1817, size: 64, offset: 256)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1964, file: !51, line: 436, baseType: !1978, size: 64, offset: 320)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!85, !1742, !85, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1982, file: !51, line: 418, baseType: !85, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1982, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1982, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1982, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1982, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1982, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1982, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1982, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1964, file: !51, line: 437, baseType: !1993, size: 64, offset: 384)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!85, !1742, !1874, !1996}
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !1998)
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1997, file: !51, line: 346, baseType: !85, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1997, file: !51, line: 347, baseType: !384, size: 64, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1997, file: !51, line: 348, baseType: !384, size: 64, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1997, file: !51, line: 349, baseType: !384, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1997, file: !51, line: 350, baseType: !384, size: 64, offset: 256)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1997, file: !51, line: 351, baseType: !384, size: 64, offset: 320)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1997, file: !51, line: 352, baseType: !384, size: 64, offset: 384)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1997, file: !51, line: 353, baseType: !211, size: 64, offset: 448)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1997, file: !51, line: 355, baseType: !211, size: 64, offset: 512)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1997, file: !51, line: 356, baseType: !85, size: 32, offset: 576)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1997, file: !51, line: 357, baseType: !85, size: 32, offset: 608)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1997, file: !51, line: 358, baseType: !384, size: 64, offset: 640)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1997, file: !51, line: 359, baseType: !384, size: 64, offset: 704)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1997, file: !51, line: 360, baseType: !384, size: 64, offset: 768)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1997, file: !51, line: 361, baseType: !211, size: 64, offset: 832)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1997, file: !51, line: 362, baseType: !85, size: 32, offset: 896)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1964, file: !51, line: 438, baseType: !2016, size: 64, offset: 448)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!85, !1742, !1960, !1996}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1964, file: !51, line: 440, baseType: !1993, size: 64, offset: 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1964, file: !51, line: 441, baseType: !2021, size: 64, offset: 576)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!85, !1742, !2024}
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !2026)
!2026 = !{!2027, !2028}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2025, file: !51, line: 412, baseType: !7, size: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2025, file: !51, line: 413, baseType: !2029, size: 1344, offset: 64)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2030, size: 1344, elements: !303)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !2031)
!2031 = !{!2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2042}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2030, file: !51, line: 398, baseType: !7, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2030, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2030, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2030, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2030, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2030, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2030, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2030, file: !51, line: 406, baseType: !386, size: 64, offset: 256)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2030, file: !51, line: 407, baseType: !2041, size: 64, offset: 320)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !88, line: 132, baseType: !384)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2030, file: !51, line: 408, baseType: !2041, size: 64, offset: 384)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1964, file: !51, line: 442, baseType: !1972, size: 64, offset: 640)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1743, file: !46, line: 1200, baseType: !2045, size: 64, offset: 576)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2047)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !46, line: 54, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1743, file: !46, line: 1201, baseType: !102, size: 64, offset: 640)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1743, file: !46, line: 1202, baseType: !102, size: 64, offset: 704)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1743, file: !46, line: 1203, baseType: !102, size: 64, offset: 768)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1743, file: !46, line: 1204, baseType: !348, size: 64, offset: 832)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1743, file: !46, line: 1205, baseType: !201, size: 320, offset: 896)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1743, file: !46, line: 1206, baseType: !85, size: 32, offset: 1216)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1743, file: !46, line: 1207, baseType: !112, size: 32, offset: 1248)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1743, file: !46, line: 1209, baseType: !83, size: 64, offset: 1280)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1743, file: !46, line: 1211, baseType: !2057, size: 64, offset: 1344)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2060)
!2060 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !46, line: 1211, flags: DIFlagFwdDecl)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1743, file: !46, line: 1223, baseType: !2062, size: 64, offset: 1408)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !365, line: 34, size: 64, elements: !2063)
!2063 = !{!2064}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2062, file: !365, line: 35, baseType: !368, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1743, file: !46, line: 1224, baseType: !160, size: 128, offset: 1472)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1743, file: !46, line: 1225, baseType: !2067, size: 64, offset: 1600)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !46, line: 1225, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1743, file: !46, line: 1226, baseType: !2070, size: 64, offset: 1664)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !46, line: 1226, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1743, file: !46, line: 1227, baseType: !2073, size: 64, offset: 1728)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !46, line: 50, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1743, file: !46, line: 1228, baseType: !2076, size: 64, offset: 1792)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !46, line: 1228, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1743, file: !46, line: 1229, baseType: !596, size: 128, offset: 1856)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1743, file: !46, line: 1230, baseType: !7, size: 32, offset: 1984)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1743, file: !46, line: 1231, baseType: !2081, size: 2496, offset: 2048)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !2082)
!2082 = !{!2083, !2084, !2085, !2087, !2119}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2081, file: !51, line: 522, baseType: !7, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2081, file: !51, line: 523, baseType: !201, size: 320, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2081, file: !51, line: 524, baseType: !2086, size: 192, offset: 384)
!2086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 192, elements: !303)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2081, file: !51, line: 525, baseType: !2088, size: 1728, offset: 576)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2089, size: 1728, elements: !303)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !2090)
!2090 = !{!2091, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2089, file: !51, line: 223, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !2094)
!2094 = !{!2095, !2096, !2109, !2110}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2093, file: !51, line: 446, baseType: !85, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2093, file: !51, line: 447, baseType: !2097, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2099)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !2100)
!2100 = !{!2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2099, file: !51, line: 313, baseType: !1817, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2099, file: !51, line: 314, baseType: !1817, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2099, file: !51, line: 315, baseType: !1817, size: 64, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2099, file: !51, line: 316, baseType: !1817, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2099, file: !51, line: 317, baseType: !1927, size: 64, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2099, file: !51, line: 318, baseType: !1927, size: 64, offset: 320)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2099, file: !51, line: 319, baseType: !1927, size: 64, offset: 384)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2099, file: !51, line: 320, baseType: !1957, size: 64, offset: 448)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2093, file: !51, line: 448, baseType: !829, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2093, file: !51, line: 449, baseType: !2092, size: 64, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2089, file: !51, line: 224, baseType: !85, size: 32, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2089, file: !51, line: 226, baseType: !160, size: 128, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2089, file: !51, line: 227, baseType: !102, size: 64, offset: 256)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2089, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2089, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2089, file: !51, line: 230, baseType: !1895, size: 64, offset: 384)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2089, file: !51, line: 231, baseType: !1895, size: 64, offset: 448)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2089, file: !51, line: 232, baseType: !83, size: 64, offset: 512)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2081, file: !51, line: 526, baseType: !2120, size: 192, offset: 2304)
!2120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2097, size: 192, elements: !303)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1743, file: !46, line: 1233, baseType: !2122, size: 2368, offset: 4544)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !46, line: 1184, size: 2368, elements: !2123)
!2123 = !{!2124, !2125, !2126}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2122, file: !46, line: 1185, baseType: !89, size: 16)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2122, file: !46, line: 1186, baseType: !89, size: 16, offset: 16)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2122, file: !46, line: 1187, baseType: !2127, size: 2304, offset: 64)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2128, size: 2304, elements: !303)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2129, line: 12, size: 768, elements: !2130)
!2129 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2130 = !{!2131, !2139, !2141, !3432, !3433}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2128, file: !2129, line: 13, baseType: !2132, size: 384)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2133, line: 17, size: 384, elements: !2134)
!2133 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2134 = !{!2135, !2136, !2137, !2138}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2132, file: !2133, line: 18, baseType: !85, size: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2132, file: !2133, line: 19, baseType: !85, size: 32, offset: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2132, file: !2133, line: 20, baseType: !117, size: 192, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2132, file: !2133, line: 22, baseType: !538, size: 128, align: 64, offset: 256)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2128, file: !2129, line: 14, baseType: !2140, size: 64, offset: 384)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2128, file: !2129, line: 15, baseType: !2142, size: 64, offset: 448)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2143, line: 16, size: 64, elements: !2144)
!2143 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2144 = !{!2145}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2142, file: !2143, line: 17, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1613, line: 746, size: 58368, elements: !2148)
!2148 = !{!2149, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2229, !2240, !2328, !2332, !2335, !2366, !2367, !2368, !2369, !2380, !2382, !2383, !2384, !2385, !2386, !2387, !2398, !2399, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2416, !2417, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2505, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2520, !2521, !2522, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2554, !2560, !2561, !2562, !2563, !2564, !2568, !2571, !2578, !2583, !2586, !2589, !2592, !2678, !2818, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2860, !2861, !2862, !2871, !2879, !2880, !2881, !2882, !2883, !2888, !2889, !2890, !2893, !2894, !2897, !2900, !2903, !2911, !2914, !2915, !3001, !3002, !3003, !3004, !3005, !3011, !3012, !3013, !3014, !3017, !3018, !3021, !3035, !3036, !3039, !3040, !3041, !3044, !3045, !3046, !3047, !3048, !3049, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3081, !3082, !3088, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3100, !3172, !3174, !3175, !3176, !3177, !3178, !3190, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3207, !3208, !3209}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2147, file: !1613, line: 752, baseType: !2150, size: 192)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2151, line: 56, size: 192, elements: !2152)
!2151 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2152 = !{!2153, !2154, !2155, !2156}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2150, file: !2151, line: 57, baseType: !102, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2150, file: !2151, line: 58, baseType: !102, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2150, file: !2151, line: 59, baseType: !263, size: 32, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2150, file: !2151, line: 61, baseType: !263, size: 32, offset: 160)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2147, file: !1613, line: 754, baseType: !7, size: 32, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2147, file: !1613, line: 767, baseType: !83, size: 64, offset: 256)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2147, file: !1613, line: 768, baseType: !583, size: 32, offset: 320)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2147, file: !1613, line: 770, baseType: !7, size: 32, offset: 352)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2147, file: !1613, line: 771, baseType: !7, size: 32, offset: 384)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2147, file: !1613, line: 774, baseType: !85, size: 32, offset: 416)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2147, file: !1613, line: 775, baseType: !2164, size: 128, offset: 448)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2165, line: 58, size: 128, elements: !2166)
!2165 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2166 = !{!2167, !2168, !2173, !2174}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2164, file: !2165, line: 59, baseType: !532, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, scope: !2164, file: !2165, line: 60, baseType: !2169, size: 32, offset: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2164, file: !2165, line: 60, size: 32, elements: !2170)
!2170 = !{!2171, !2172}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2169, file: !2165, line: 61, baseType: !7, size: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2169, file: !2165, line: 62, baseType: !112, size: 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2164, file: !2165, line: 65, baseType: !156, size: 16, offset: 96)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2164, file: !2165, line: 65, baseType: !156, size: 16, offset: 112)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2147, file: !1613, line: 776, baseType: !7, size: 32, offset: 576)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2147, file: !1613, line: 777, baseType: !102, size: 64, offset: 640)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2147, file: !1613, line: 778, baseType: !2146, size: 64, offset: 704)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2147, file: !1613, line: 787, baseType: !85, size: 32, offset: 768)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2147, file: !1613, line: 788, baseType: !85, size: 32, offset: 800)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2147, file: !1613, line: 790, baseType: !85, size: 32, offset: 832)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2147, file: !1613, line: 792, baseType: !85, size: 32, offset: 864)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2147, file: !1613, line: 793, baseType: !85, size: 32, offset: 896)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2147, file: !1613, line: 794, baseType: !85, size: 32, offset: 928)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2147, file: !1613, line: 795, baseType: !7, size: 32, offset: 960)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2147, file: !1613, line: 797, baseType: !2186, size: 2048, offset: 1024)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1613, line: 551, size: 2048, elements: !2187)
!2187 = !{!2188, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2208, !2211, !2212, !2213}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2186, file: !1613, line: 553, baseType: !2189, size: 128)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1613, line: 411, size: 128, elements: !2190)
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2189, file: !1613, line: 412, baseType: !102, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2189, file: !1613, line: 413, baseType: !263, size: 32, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2186, file: !1613, line: 554, baseType: !658, size: 192, align: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2186, file: !1613, line: 555, baseType: !384, size: 64, offset: 320)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2186, file: !1613, line: 556, baseType: !384, size: 64, offset: 384)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2186, file: !1613, line: 558, baseType: !160, size: 128, offset: 448)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2186, file: !1613, line: 559, baseType: !7, size: 32, offset: 576)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2186, file: !1613, line: 561, baseType: !384, size: 64, offset: 640)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2186, file: !1613, line: 562, baseType: !384, size: 64, offset: 704)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2186, file: !1613, line: 563, baseType: !384, size: 64, offset: 768)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2186, file: !1613, line: 564, baseType: !384, size: 64, offset: 832)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2186, file: !1613, line: 565, baseType: !211, size: 64, offset: 896)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2186, file: !1613, line: 566, baseType: !384, size: 64, offset: 960)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2186, file: !1613, line: 568, baseType: !384, size: 64, offset: 1024)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2186, file: !1613, line: 571, baseType: !85, size: 32, offset: 1088)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2186, file: !1613, line: 572, baseType: !2207, size: 64, offset: 1152)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2186, file: !1613, line: 574, baseType: !2209, size: 64, offset: 1216)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1613, line: 49, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2186, file: !1613, line: 576, baseType: !2209, size: 64, offset: 1280)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2186, file: !1613, line: 578, baseType: !102, size: 64, offset: 1344)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2186, file: !1613, line: 588, baseType: !2214, size: 512, align: 512, offset: 1536)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1613, line: 497, size: 512, align: 512, elements: !2215)
!2215 = !{!2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2214, file: !1613, line: 498, baseType: !384, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2214, file: !1613, line: 499, baseType: !384, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2214, file: !1613, line: 500, baseType: !384, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2214, file: !1613, line: 501, baseType: !263, size: 32, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2214, file: !1613, line: 502, baseType: !263, size: 32, offset: 224)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2214, file: !1613, line: 503, baseType: !102, size: 64, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2214, file: !1613, line: 504, baseType: !102, size: 64, offset: 320)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2214, file: !1613, line: 505, baseType: !102, size: 64, offset: 384)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2214, file: !1613, line: 506, baseType: !2225, size: 64, align: 64, offset: 448)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1613, line: 445, size: 64, align: 64, elements: !2226)
!2226 = !{!2227, !2228}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2225, file: !1613, line: 446, baseType: !7, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2225, file: !1613, line: 447, baseType: !7, size: 32, offset: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2147, file: !1613, line: 798, baseType: !2230, size: 384, offset: 3072)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1613, line: 592, size: 384, elements: !2231)
!2231 = !{!2232, !2233, !2234, !2235, !2236, !2237, !2238}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2230, file: !1613, line: 593, baseType: !160, size: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2230, file: !1613, line: 594, baseType: !102, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2230, file: !1613, line: 595, baseType: !102, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2230, file: !1613, line: 596, baseType: !7, size: 32, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2230, file: !1613, line: 597, baseType: !89, size: 16, offset: 288)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2230, file: !1613, line: 598, baseType: !89, size: 16, offset: 304)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2230, file: !1613, line: 600, baseType: !2239, size: 64, offset: 320)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2147, file: !1613, line: 799, baseType: !2241, size: 1792, offset: 3456)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1613, line: 610, size: 1792, elements: !2242)
!2242 = !{!2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2325, !2326}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2241, file: !1613, line: 611, baseType: !658, size: 192, align: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2241, file: !1613, line: 618, baseType: !384, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2241, file: !1613, line: 619, baseType: !384, size: 64, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2241, file: !1613, line: 620, baseType: !384, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2241, file: !1613, line: 621, baseType: !384, size: 64, offset: 384)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2241, file: !1613, line: 622, baseType: !384, size: 64, offset: 448)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2241, file: !1613, line: 629, baseType: !211, size: 64, offset: 512)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2241, file: !1613, line: 630, baseType: !384, size: 64, offset: 576)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2241, file: !1613, line: 631, baseType: !7, size: 32, offset: 640)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2241, file: !1613, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2241, file: !1613, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2241, file: !1613, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2241, file: !1613, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2241, file: !1613, line: 662, baseType: !2257, size: 512, offset: 704)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !2258)
!2258 = !{!2259, !2267, !2268, !2273, !2321, !2322, !2323, !2324}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2257, file: !57, line: 119, baseType: !2260, size: 256)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2261, line: 9, size: 256, elements: !2262)
!2261 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2262 = !{!2263, !2264}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2260, file: !2261, line: 10, baseType: !658, size: 192, align: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2260, file: !2261, line: 11, baseType: !2265, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2266, line: 29, baseType: !211)
!2266 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2257, file: !57, line: 120, baseType: !2265, size: 64, offset: 256)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2257, file: !57, line: 121, baseType: !2269, size: 64, offset: 320)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!56, !2272}
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2257, file: !57, line: 122, baseType: !2274, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !2276)
!2276 = !{!2277, !2302, !2303, !2306, !2311, !2312, !2316, !2320}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2275, file: !57, line: 160, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !2280)
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2279, file: !57, line: 216, baseType: !220, size: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2279, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2279, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2279, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2279, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2279, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2279, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2279, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2279, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2279, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2279, file: !57, line: 227, baseType: !89, size: 16, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2279, file: !57, line: 228, baseType: !89, size: 16, offset: 208)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2279, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2279, file: !57, line: 235, baseType: !2265, size: 64, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2279, file: !57, line: 236, baseType: !2272, size: 64, offset: 320)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2279, file: !57, line: 237, baseType: !2265, size: 64, offset: 384)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2279, file: !57, line: 238, baseType: !2272, size: 64, offset: 448)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2279, file: !57, line: 239, baseType: !2299, size: 4096, align: 512, offset: 512)
!2299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2275, size: 4096, align: 512, elements: !2300)
!2300 = !{!2301}
!2301 = !DISubrange(count: 8)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2275, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2275, file: !57, line: 162, baseType: !2304, size: 32, offset: 96)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !88, line: 32, baseType: !2305)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !100, line: 96, baseType: !85)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2275, file: !57, line: 163, baseType: !2307, size: 32, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !355, line: 274, baseType: !2308)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !355, line: 274, size: 32, elements: !2309)
!2309 = !{!2310}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2308, file: !355, line: 274, baseType: !359, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2275, file: !57, line: 164, baseType: !2272, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2275, file: !57, line: 165, baseType: !2313, size: 128, offset: 256)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2261, line: 14, size: 128, elements: !2314)
!2314 = !{!2315}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2313, file: !2261, line: 15, baseType: !1234, size: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2275, file: !57, line: 166, baseType: !2317, size: 64, offset: 384)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!2265}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2275, file: !57, line: 167, baseType: !2265, size: 64, offset: 448)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2257, file: !57, line: 123, baseType: !146, size: 8, offset: 448)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2257, file: !57, line: 124, baseType: !146, size: 8, offset: 456)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2257, file: !57, line: 125, baseType: !146, size: 8, offset: 464)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2257, file: !57, line: 126, baseType: !146, size: 8, offset: 472)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2241, file: !1613, line: 671, baseType: !2257, size: 512, offset: 1216)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2241, file: !1613, line: 679, baseType: !2327, size: 64, offset: 1728)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2147, file: !1613, line: 800, baseType: !2329, size: 64, offset: 5248)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2331)
!2331 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1613, line: 800, flags: DIFlagFwdDecl)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2147, file: !1613, line: 809, baseType: !2333, size: 64, offset: 5312)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1613, line: 70, flags: DIFlagFwdDecl)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2147, file: !1613, line: 825, baseType: !2336, size: 2048, align: 512, offset: 5632)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1613, line: 509, size: 2048, align: 512, elements: !2337)
!2337 = !{!2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2336, file: !1613, line: 511, baseType: !384, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2336, file: !1613, line: 512, baseType: !384, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2336, file: !1613, line: 513, baseType: !384, size: 64, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2336, file: !1613, line: 514, baseType: !384, size: 64, offset: 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2336, file: !1613, line: 515, baseType: !384, size: 64, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2336, file: !1613, line: 516, baseType: !384, size: 64, offset: 320)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2336, file: !1613, line: 518, baseType: !384, size: 64, offset: 384)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2336, file: !1613, line: 519, baseType: !384, size: 64, offset: 448)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2336, file: !1613, line: 520, baseType: !211, size: 64, offset: 512)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2336, file: !1613, line: 522, baseType: !384, size: 64, offset: 576)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2336, file: !1613, line: 523, baseType: !384, size: 64, offset: 640)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2336, file: !1613, line: 524, baseType: !211, size: 64, offset: 704)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2336, file: !1613, line: 526, baseType: !211, size: 64, offset: 768)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2336, file: !1613, line: 527, baseType: !384, size: 64, offset: 832)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2336, file: !1613, line: 529, baseType: !384, size: 64, offset: 896)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2336, file: !1613, line: 530, baseType: !384, size: 64, offset: 960)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2336, file: !1613, line: 531, baseType: !384, size: 64, offset: 1024)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2336, file: !1613, line: 532, baseType: !384, size: 64, offset: 1088)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2336, file: !1613, line: 533, baseType: !384, size: 64, offset: 1152)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2336, file: !1613, line: 535, baseType: !384, size: 64, offset: 1216)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2336, file: !1613, line: 536, baseType: !384, size: 64, offset: 1280)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2336, file: !1613, line: 537, baseType: !384, size: 64, offset: 1344)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2336, file: !1613, line: 538, baseType: !384, size: 64, offset: 1408)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2336, file: !1613, line: 539, baseType: !384, size: 64, offset: 1472)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2336, file: !1613, line: 540, baseType: !384, size: 64, offset: 1536)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2336, file: !1613, line: 541, baseType: !384, size: 64, offset: 1600)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2336, file: !1613, line: 542, baseType: !384, size: 64, offset: 1664)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2336, file: !1613, line: 543, baseType: !384, size: 64, offset: 1728)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2147, file: !1613, line: 833, baseType: !7, size: 32, offset: 7680)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2147, file: !1613, line: 836, baseType: !7, size: 32, offset: 7712)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2147, file: !1613, line: 837, baseType: !85, size: 32, offset: 7744)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2147, file: !1613, line: 838, baseType: !2370, size: 64, offset: 7808)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2372)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2373, line: 19, baseType: !2374)
!2373 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2373, line: 19, size: 64, elements: !2375)
!2375 = !{!2376}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2374, file: !2373, line: 19, baseType: !2377, size: 64)
!2377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !2378)
!2378 = !{!2379}
!2379 = !DISubrange(count: 1)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2147, file: !1613, line: 839, baseType: !2381, size: 64, offset: 7872)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2147, file: !1613, line: 840, baseType: !2372, size: 64, offset: 7936)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2147, file: !1613, line: 841, baseType: !83, size: 64, offset: 8000)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2147, file: !1613, line: 843, baseType: !89, size: 16, offset: 8064)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2147, file: !1613, line: 845, baseType: !89, size: 16, offset: 8080)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2147, file: !1613, line: 848, baseType: !85, size: 32, offset: 8096)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2147, file: !1613, line: 849, baseType: !2388, size: 32, offset: 8128)
!2388 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1613, line: 718, size: 32, elements: !2389)
!2389 = !{!2390, !2397}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2388, file: !1613, line: 724, baseType: !2391, size: 32)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2388, file: !1613, line: 719, size: 32, elements: !2392)
!2392 = !{!2393, !2394, !2395, !2396}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2391, file: !1613, line: 720, baseType: !146, size: 8)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2391, file: !1613, line: 721, baseType: !146, size: 8, offset: 8)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2391, file: !1613, line: 722, baseType: !146, size: 8, offset: 16)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2391, file: !1613, line: 723, baseType: !146, size: 8, offset: 24)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2388, file: !1613, line: 725, baseType: !263, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2147, file: !1613, line: 850, baseType: !160, size: 128, offset: 8192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2147, file: !1613, line: 851, baseType: !2400, size: 64, offset: 8320)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1613, line: 60, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2147, file: !1613, line: 855, baseType: !102, size: 64, offset: 8384)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2147, file: !1613, line: 856, baseType: !146, size: 8, offset: 8448)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2147, file: !1613, line: 857, baseType: !146, size: 8, offset: 8456)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2147, file: !1613, line: 858, baseType: !85, size: 32, offset: 8480)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2147, file: !1613, line: 859, baseType: !160, size: 128, offset: 8512)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2147, file: !1613, line: 860, baseType: !85, size: 32, offset: 8640)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2147, file: !1613, line: 861, baseType: !160, size: 128, offset: 8704)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2147, file: !1613, line: 873, baseType: !2410, size: 256, offset: 8832)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1613, line: 376, size: 256, elements: !2411)
!2411 = !{!2412, !2413, !2414, !2415}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2410, file: !1613, line: 381, baseType: !102, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2410, file: !1613, line: 384, baseType: !386, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2410, file: !1613, line: 389, baseType: !386, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2410, file: !1613, line: 392, baseType: !386, size: 64, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2147, file: !1613, line: 875, baseType: !160, size: 128, offset: 9088)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2147, file: !1613, line: 877, baseType: !2418, size: 320, offset: 9216)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2419, line: 86, size: 320, elements: !2420)
!2419 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2420 = !{!2421, !2422, !2423}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2418, file: !2419, line: 87, baseType: !85, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2418, file: !2419, line: 88, baseType: !160, size: 128, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2418, file: !2419, line: 89, baseType: !160, size: 128, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2147, file: !1613, line: 878, baseType: !658, size: 192, align: 64, offset: 9536)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2147, file: !1613, line: 881, baseType: !975, size: 64, offset: 9728)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2147, file: !1613, line: 882, baseType: !975, size: 64, offset: 9792)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2147, file: !1613, line: 884, baseType: !85, size: 32, offset: 9856)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2147, file: !1613, line: 885, baseType: !85, size: 32, offset: 9888)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2147, file: !1613, line: 886, baseType: !85, size: 32, offset: 9920)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2147, file: !1613, line: 888, baseType: !85, size: 32, offset: 9952)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2147, file: !1613, line: 890, baseType: !102, size: 64, offset: 9984)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2147, file: !1613, line: 893, baseType: !7, size: 32, offset: 10048)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2147, file: !1613, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2147, file: !1613, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2147, file: !1613, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2147, file: !1613, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2147, file: !1613, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2147, file: !1613, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2147, file: !1613, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2147, file: !1613, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2147, file: !1613, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2147, file: !1613, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2147, file: !1613, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2147, file: !1613, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2147, file: !1613, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2147, file: !1613, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2147, file: !1613, line: 969, baseType: !102, size: 64, offset: 10176)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2147, file: !1613, line: 971, baseType: !2449, size: 448, offset: 10240)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2450)
!2450 = !{!2451, !2452, !2457}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2449, file: !62, line: 26, baseType: !102, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2449, file: !62, line: 27, baseType: !2453, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!521, !2456}
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, scope: !2449, file: !62, line: 28, baseType: !2458, size: 320, offset: 128)
!2458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2449, file: !62, line: 28, size: 320, elements: !2459)
!2459 = !{!2460, !2470, !2495}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2458, file: !62, line: 37, baseType: !2461, size: 320)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2458, file: !62, line: 30, size: 320, elements: !2462)
!2462 = !{!2463, !2465, !2466, !2467, !2468, !2469}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2461, file: !62, line: 31, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2461, file: !62, line: 32, baseType: !263, size: 32, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2461, file: !62, line: 33, baseType: !263, size: 32, offset: 96)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2461, file: !62, line: 34, baseType: !263, size: 32, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2461, file: !62, line: 35, baseType: !384, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2461, file: !62, line: 36, baseType: !2464, size: 64, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2458, file: !62, line: 47, baseType: !2471, size: 192)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2458, file: !62, line: 39, size: 192, elements: !2472)
!2472 = !{!2473, !2474, !2475, !2494}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2471, file: !62, line: 40, baseType: !2304, size: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2471, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, scope: !2471, file: !62, line: 42, baseType: !2476, size: 64, offset: 64)
!2476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2471, file: !62, line: 42, size: 64, elements: !2477)
!2477 = !{!2478, !2486}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2476, file: !62, line: 43, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2481, line: 7, size: 128, elements: !2482)
!2481 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2482 = !{!2483, !2485}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2480, file: !2481, line: 8, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !100, line: 93, baseType: !106)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2480, file: !2481, line: 9, baseType: !106, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2476, file: !62, line: 44, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2489, line: 7, size: 64, elements: !2490)
!2489 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2490 = !{!2491, !2493}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2488, file: !2489, line: 8, baseType: !2492, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2489, line: 5, baseType: !322)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2488, file: !2489, line: 9, baseType: !322, size: 32, offset: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2471, file: !62, line: 46, baseType: !384, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2458, file: !62, line: 55, baseType: !2496, size: 256)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2458, file: !62, line: 49, size: 256, elements: !2497)
!2497 = !{!2498, !2501, !2502, !2503, !2504}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2496, file: !62, line: 50, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2496, file: !62, line: 51, baseType: !85, size: 32, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2496, file: !62, line: 52, baseType: !85, size: 32, offset: 96)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2496, file: !62, line: 53, baseType: !102, size: 64, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2496, file: !62, line: 54, baseType: !102, size: 64, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2147, file: !1613, line: 973, baseType: !2506, size: 32, offset: 10688)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !88, line: 27, baseType: !2507)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !100, line: 28, baseType: !85)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2147, file: !1613, line: 974, baseType: !2506, size: 32, offset: 10720)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2147, file: !1613, line: 978, baseType: !102, size: 64, offset: 10752)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2147, file: !1613, line: 987, baseType: !2146, size: 64, offset: 10816)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2147, file: !1613, line: 990, baseType: !2146, size: 64, offset: 10880)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2147, file: !1613, line: 995, baseType: !160, size: 128, offset: 10944)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2147, file: !1613, line: 996, baseType: !160, size: 128, offset: 11072)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2147, file: !1613, line: 997, baseType: !2146, size: 64, offset: 11200)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2147, file: !1613, line: 1005, baseType: !160, size: 128, offset: 11264)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2147, file: !1613, line: 1006, baseType: !160, size: 128, offset: 11392)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2147, file: !1613, line: 1009, baseType: !579, size: 64, offset: 11520)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2147, file: !1613, line: 1010, baseType: !2519, size: 512, offset: 11584)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 512, elements: !307)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2147, file: !1613, line: 1011, baseType: !160, size: 128, offset: 12096)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2147, file: !1613, line: 1012, baseType: !160, size: 128, offset: 12224)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2147, file: !1613, line: 1014, baseType: !2523, size: 64, offset: 12352)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2147, file: !1613, line: 1017, baseType: !1840, size: 64, offset: 12416)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2147, file: !1613, line: 1020, baseType: !1840, size: 64, offset: 12480)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2147, file: !1613, line: 1023, baseType: !83, size: 64, offset: 12544)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2147, file: !1613, line: 1025, baseType: !384, size: 64, offset: 12608)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2147, file: !1613, line: 1026, baseType: !384, size: 64, offset: 12672)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2147, file: !1613, line: 1031, baseType: !384, size: 64, offset: 12736)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2147, file: !1613, line: 1032, baseType: !2531, size: 192, offset: 12800)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1613, line: 324, size: 192, elements: !2532)
!2532 = !{!2533, !2534, !2535}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2531, file: !1613, line: 326, baseType: !384, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2531, file: !1613, line: 327, baseType: !384, size: 64, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2531, file: !1613, line: 328, baseType: !220, size: 32, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2147, file: !1613, line: 1041, baseType: !102, size: 64, offset: 12992)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2147, file: !1613, line: 1042, baseType: !102, size: 64, offset: 13056)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2147, file: !1613, line: 1045, baseType: !384, size: 64, offset: 13120)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2147, file: !1613, line: 1048, baseType: !384, size: 64, offset: 13184)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2147, file: !1613, line: 1051, baseType: !102, size: 64, offset: 13248)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2147, file: !1613, line: 1052, baseType: !102, size: 64, offset: 13312)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2147, file: !1613, line: 1055, baseType: !2543, size: 640, offset: 13376)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2544, line: 132, size: 640, elements: !2545)
!2544 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2545 = !{!2546, !2552, !2553}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2543, file: !2544, line: 133, baseType: !2547, size: 576)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2548, size: 576, elements: !303)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2544, line: 117, size: 192, elements: !2549)
!2549 = !{!2550, !2551}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2548, file: !2544, line: 118, baseType: !384, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2548, file: !2544, line: 119, baseType: !2313, size: 128, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2543, file: !2544, line: 134, baseType: !7, size: 32, offset: 576)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2543, file: !2544, line: 135, baseType: !7, size: 32, offset: 608)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2147, file: !1613, line: 1058, baseType: !2555, size: 448, offset: 14016)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2544, line: 144, size: 448, elements: !2556)
!2556 = !{!2557, !2558, !2559}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2555, file: !2544, line: 145, baseType: !538, size: 128, align: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2555, file: !2544, line: 146, baseType: !294, size: 256, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2555, file: !2544, line: 147, baseType: !7, size: 32, offset: 384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2147, file: !1613, line: 1064, baseType: !619, size: 64, offset: 14464)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2147, file: !1613, line: 1067, baseType: !619, size: 64, offset: 14528)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2147, file: !1613, line: 1070, baseType: !619, size: 64, offset: 14592)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2147, file: !1613, line: 1074, baseType: !645, size: 64, offset: 14656)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2147, file: !1613, line: 1084, baseType: !2565, size: 128, offset: 14720)
!2565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 128, elements: !2566)
!2566 = !{!2567}
!2567 = !DISubrange(count: 16)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2147, file: !1613, line: 1086, baseType: !2569, size: 64, offset: 14848)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1613, line: 55, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2147, file: !1613, line: 1089, baseType: !2572, size: 64, offset: 14912)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2573, line: 12, size: 64, elements: !2574)
!2573 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2574 = !{!2575}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2572, file: !2573, line: 13, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2573, line: 8, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2147, file: !1613, line: 1090, baseType: !2579, size: 128, offset: 14976)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2580, line: 13, size: 128, elements: !2581)
!2580 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2581 = !{!2582}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2579, file: !2580, line: 14, baseType: !160, size: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2147, file: !1613, line: 1097, baseType: !2584, size: 64, offset: 15104)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1613, line: 50, flags: DIFlagFwdDecl)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2147, file: !1613, line: 1100, baseType: !2587, size: 64, offset: 15168)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1613, line: 1100, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2147, file: !1613, line: 1103, baseType: !2590, size: 64, offset: 15232)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1613, line: 53, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2147, file: !1613, line: 1107, baseType: !2593, size: 64, offset: 15296)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2595, line: 31, size: 576, elements: !2596)
!2595 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2596 = !{!2597, !2598, !2662, !2664, !2667, !2668, !2671, !2674, !2675}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2594, file: !2595, line: 32, baseType: !583, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2594, file: !2595, line: 33, baseType: !2599, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2601, line: 24, size: 3456, elements: !2602)
!2601 = !DIFile(filename: "./include/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d7c7738a60e085c4dfa8b09989fd6dce")
!2602 = !{!2603, !2616, !2617, !2618}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2600, file: !2601, line: 25, baseType: !2604, size: 3120)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "new_utsname", file: !2605, line: 25, size: 3120, elements: !2606)
!2605 = !DIFile(filename: "./include/uapi/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce568c2f88d7dce3b32bd7d3c8b00b87")
!2606 = !{!2607, !2611, !2612, !2613, !2614, !2615}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !2604, file: !2605, line: 26, baseType: !2608, size: 520)
!2608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 520, elements: !2609)
!2609 = !{!2610}
!2610 = !DISubrange(count: 65)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !2604, file: !2605, line: 27, baseType: !2608, size: 520, offset: 520)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2604, file: !2605, line: 28, baseType: !2608, size: 520, offset: 1040)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2604, file: !2605, line: 29, baseType: !2608, size: 520, offset: 1560)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !2604, file: !2605, line: 30, baseType: !2608, size: 520, offset: 2080)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !2604, file: !2605, line: 31, baseType: !2608, size: 520, offset: 2600)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2600, file: !2601, line: 26, baseType: !788, size: 64, offset: 3136)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2600, file: !2601, line: 27, baseType: !791, size: 64, offset: 3200)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2600, file: !2601, line: 28, baseType: !2619, size: 192, offset: 3264)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2620, line: 9, size: 192, elements: !2621)
!2620 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!2621 = !{!2622, !2623, !2660, !2661}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2619, file: !2620, line: 10, baseType: !205, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2619, file: !2620, line: 11, baseType: !2624, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2626)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2627, line: 16, size: 512, elements: !2628)
!2627 = !DIFile(filename: "./include/linux/proc_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10d8d049c3f8fd93040e0b5385a478ba")
!2628 = !{!2629, !2630, !2631, !2632, !2637, !2641, !2652, !2656}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2626, file: !2627, line: 17, baseType: !79, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "real_ns_name", scope: !2626, file: !2627, line: 18, baseType: !79, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2626, file: !2627, line: 19, baseType: !85, size: 32, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2626, file: !2627, line: 20, baseType: !2633, size: 64, offset: 192)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!2636, !2146}
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2626, file: !2627, line: 21, baseType: !2638, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !2636}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !2626, file: !2627, line: 22, baseType: !2642, size: 64, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!85, !2645, !2636}
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsset", file: !2595, line: 53, size: 256, elements: !2647)
!2647 = !{!2648, !2649, !2650, !2651}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2646, file: !2595, line: 54, baseType: !7, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2646, file: !2595, line: 55, baseType: !2593, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2646, file: !2595, line: 56, baseType: !2584, size: 64, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2646, file: !2595, line: 57, baseType: !619, size: 64, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2626, file: !2627, line: 23, baseType: !2653, size: 64, offset: 384)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!788, !2636}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2626, file: !2627, line: 24, baseType: !2657, size: 64, offset: 448)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!2636, !2636}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2619, file: !2620, line: 12, baseType: !7, size: 32, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2619, file: !2620, line: 13, baseType: !583, size: 32, offset: 160)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2594, file: !2595, line: 34, baseType: !2663, size: 64, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2594, file: !2595, line: 35, baseType: !2665, size: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2595, line: 8, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2594, file: !2595, line: 36, baseType: !610, size: 64, offset: 256)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2594, file: !2595, line: 37, baseType: !2669, size: 64, offset: 320)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !647, line: 34, flags: DIFlagFwdDecl)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2594, file: !2595, line: 38, baseType: !2672, size: 64, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2595, line: 38, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2594, file: !2595, line: 39, baseType: !2672, size: 64, offset: 448)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2594, file: !2595, line: 40, baseType: !2676, size: 64, offset: 512)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2595, line: 12, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2147, file: !1613, line: 1110, baseType: !2679, size: 64, offset: 15360)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2681, line: 93, size: 8768, elements: !2682)
!2681 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2732, !2741, !2742, !2744, !2745, !2746, !2749, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2787, !2788, !2795, !2805, !2808, !2809, !2812, !2813, !2814, !2815, !2816, !2817}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2680, file: !2681, line: 94, baseType: !583, size: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2680, file: !2681, line: 95, baseType: !112, size: 32, offset: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2680, file: !2681, line: 96, baseType: !85, size: 32, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2680, file: !2681, line: 97, baseType: !85, size: 32, offset: 96)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2680, file: !2681, line: 98, baseType: !160, size: 128, offset: 128)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2680, file: !2681, line: 100, baseType: !117, size: 192, offset: 256)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2680, file: !2681, line: 103, baseType: !2146, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2680, file: !2681, line: 106, baseType: !2691, size: 192, offset: 512)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !793, line: 32, size: 192, elements: !2692)
!2692 = !{!2693, !2694}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2691, file: !793, line: 33, baseType: !160, size: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2691, file: !793, line: 34, baseType: !2695, size: 64, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2696, line: 25, baseType: !2697)
!2696 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2696, line: 23, size: 64, elements: !2698)
!2698 = !{!2699}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2697, file: !2696, line: 24, baseType: !2377, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2680, file: !2681, line: 109, baseType: !592, size: 64, offset: 704)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2680, file: !2681, line: 112, baseType: !85, size: 32, offset: 768)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2680, file: !2681, line: 114, baseType: !85, size: 32, offset: 800)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2680, file: !2681, line: 115, baseType: !2146, size: 64, offset: 832)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2680, file: !2681, line: 118, baseType: !85, size: 32, offset: 896)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2680, file: !2681, line: 119, baseType: !7, size: 32, offset: 928)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2680, file: !2681, line: 121, baseType: !2707, size: 64, offset: 960)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2681, line: 80, size: 448, elements: !2709)
!2709 = !{!2710, !2711, !2717}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2708, file: !2681, line: 81, baseType: !112, size: 32)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2708, file: !2681, line: 82, baseType: !2712, size: 128, offset: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2681, line: 75, size: 128, elements: !2713)
!2713 = !{!2714, !2715}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2712, file: !2681, line: 76, baseType: !2146, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2712, file: !2681, line: 77, baseType: !2716, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2708, file: !2681, line: 83, baseType: !1473, size: 256, offset: 192)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2680, file: !2681, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2680, file: !2681, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2680, file: !2681, line: 138, baseType: !7, size: 32, offset: 1056)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2680, file: !2681, line: 139, baseType: !160, size: 128, offset: 1088)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2680, file: !2681, line: 142, baseType: !2257, size: 512, offset: 1216)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2680, file: !2681, line: 143, baseType: !2265, size: 64, offset: 1728)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2680, file: !2681, line: 150, baseType: !2725, size: 256, offset: 1792)
!2725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2726, size: 256, elements: !2730)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2681, line: 38, size: 128, elements: !2727)
!2727 = !{!2728, !2729}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2726, file: !2681, line: 39, baseType: !384, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2726, file: !2681, line: 40, baseType: !384, size: 64, offset: 64)
!2730 = !{!2731}
!2731 = !DISubrange(count: 2)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2680, file: !2681, line: 156, baseType: !2733, size: 192, offset: 2048)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2681, line: 66, size: 192, elements: !2734)
!2734 = !{!2735}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2733, file: !2681, line: 67, baseType: !2736, size: 192)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2681, line: 47, size: 192, elements: !2737)
!2737 = !{!2738, !2739, !2740}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2736, file: !2681, line: 48, baseType: !207, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2736, file: !2681, line: 49, baseType: !207, size: 64, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2736, file: !2681, line: 50, baseType: !207, size: 64, offset: 128)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2680, file: !2681, line: 160, baseType: !2543, size: 640, offset: 2240)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2680, file: !2681, line: 163, baseType: !2743, size: 256, offset: 2880)
!2743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 256, elements: !307)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2680, file: !2681, line: 169, baseType: !579, size: 64, offset: 3136)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2680, file: !2681, line: 172, baseType: !85, size: 32, offset: 3200)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2680, file: !2681, line: 174, baseType: !2747, size: 64, offset: 3264)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2681, line: 174, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2680, file: !2681, line: 185, baseType: !2750, size: 64, offset: 3328)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !355, line: 860, baseType: !2751)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 853, size: 64, elements: !2752)
!2752 = !{!2753, !2754}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2751, file: !355, line: 858, baseType: !354, size: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2751, file: !355, line: 859, baseType: !122, size: 32, offset: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2680, file: !2681, line: 186, baseType: !384, size: 64, offset: 3392)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2680, file: !2681, line: 186, baseType: !384, size: 64, offset: 3456)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2680, file: !2681, line: 186, baseType: !384, size: 64, offset: 3520)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2680, file: !2681, line: 186, baseType: !384, size: 64, offset: 3584)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2680, file: !2681, line: 187, baseType: !384, size: 64, offset: 3648)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2680, file: !2681, line: 188, baseType: !384, size: 64, offset: 3712)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2680, file: !2681, line: 189, baseType: !2531, size: 192, offset: 3776)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2680, file: !2681, line: 190, baseType: !102, size: 64, offset: 3968)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2680, file: !2681, line: 190, baseType: !102, size: 64, offset: 4032)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2680, file: !2681, line: 190, baseType: !102, size: 64, offset: 4096)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2680, file: !2681, line: 190, baseType: !102, size: 64, offset: 4160)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2680, file: !2681, line: 191, baseType: !102, size: 64, offset: 4224)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2680, file: !2681, line: 191, baseType: !102, size: 64, offset: 4288)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2680, file: !2681, line: 191, baseType: !102, size: 64, offset: 4352)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2680, file: !2681, line: 191, baseType: !102, size: 64, offset: 4416)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2680, file: !2681, line: 192, baseType: !102, size: 64, offset: 4480)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2680, file: !2681, line: 192, baseType: !102, size: 64, offset: 4544)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2680, file: !2681, line: 192, baseType: !102, size: 64, offset: 4608)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2680, file: !2681, line: 192, baseType: !102, size: 64, offset: 4672)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2680, file: !2681, line: 193, baseType: !102, size: 64, offset: 4736)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2680, file: !2681, line: 193, baseType: !102, size: 64, offset: 4800)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2680, file: !2681, line: 194, baseType: !2777, size: 448, offset: 4864)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2778, line: 12, size: 448, elements: !2779)
!2778 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2779 = !{!2780, !2781, !2782, !2783, !2784, !2785, !2786}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2777, file: !2778, line: 15, baseType: !384, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2777, file: !2778, line: 17, baseType: !384, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2777, file: !2778, line: 19, baseType: !384, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2777, file: !2778, line: 21, baseType: !384, size: 64, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2777, file: !2778, line: 29, baseType: !384, size: 64, offset: 256)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2777, file: !2778, line: 35, baseType: !384, size: 64, offset: 320)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2777, file: !2778, line: 44, baseType: !384, size: 64, offset: 384)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2680, file: !2681, line: 202, baseType: !386, size: 64, offset: 5312)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2680, file: !2681, line: 213, baseType: !2789, size: 2048, offset: 5376)
!2789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2790, size: 2048, elements: !2566)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2791, line: 43, size: 128, elements: !2792)
!2791 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2792 = !{!2793, !2794}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2790, file: !2791, line: 44, baseType: !101, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2790, file: !2791, line: 45, baseType: !101, size: 64, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2680, file: !2681, line: 216, baseType: !2796, size: 448, offset: 7424)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2681, line: 30, size: 448, elements: !2797)
!2797 = !{!2798, !2799, !2800, !2801, !2802, !2803, !2804}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2796, file: !2681, line: 31, baseType: !85, size: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2796, file: !2681, line: 32, baseType: !521, size: 64, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2796, file: !2681, line: 33, baseType: !102, size: 64, offset: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2796, file: !2681, line: 34, baseType: !384, size: 64, offset: 192)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2796, file: !2681, line: 34, baseType: !384, size: 64, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2796, file: !2681, line: 35, baseType: !102, size: 64, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2796, file: !2681, line: 35, baseType: !102, size: 64, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2680, file: !2681, line: 219, baseType: !2806, size: 64, offset: 7872)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2681, line: 219, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2680, file: !2681, line: 222, baseType: !7, size: 32, offset: 7936)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2680, file: !2681, line: 223, baseType: !2810, size: 64, offset: 8000)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2681, line: 223, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2680, file: !2681, line: 230, baseType: !256, size: 8, offset: 8064)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2680, file: !2681, line: 231, baseType: !684, size: 16, offset: 8080)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2680, file: !2681, line: 232, baseType: !684, size: 16, offset: 8096)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2680, file: !2681, line: 234, baseType: !975, size: 64, offset: 8128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2680, file: !2681, line: 237, baseType: !294, size: 256, offset: 8192)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2680, file: !2681, line: 243, baseType: !201, size: 320, offset: 8448)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2147, file: !1613, line: 1111, baseType: !2819, size: 64, offset: 15424)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2681, line: 20, size: 16640, elements: !2821)
!2821 = !{!2822, !2823, !2824, !2825}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2820, file: !2681, line: 21, baseType: !122, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2820, file: !2681, line: 22, baseType: !583, size: 32, offset: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2820, file: !2681, line: 23, baseType: !117, size: 192, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2820, file: !2681, line: 24, baseType: !2826, size: 16384, offset: 256)
!2826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2827, size: 16384, elements: !2847)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !793, line: 51, size: 256, elements: !2828)
!2828 = !{!2829}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2827, file: !793, line: 52, baseType: !2830, size: 256)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !793, line: 37, size: 256, elements: !2831)
!2831 = !{!2832, !2839, !2840, !2846}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2830, file: !793, line: 39, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2834, line: 83, baseType: !2835)
!2834 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2834, line: 82, baseType: !2837)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{null, !85}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2830, file: !793, line: 40, baseType: !102, size: 64, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2830, file: !793, line: 46, baseType: !2841, size: 64, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2834, line: 86, baseType: !2842)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2834, line: 85, baseType: !2844)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{null}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2830, file: !793, line: 48, baseType: !2695, size: 64, offset: 192)
!2847 = !{!2848}
!2848 = !DISubrange(count: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2147, file: !1613, line: 1112, baseType: !2695, size: 64, offset: 15488)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2147, file: !1613, line: 1113, baseType: !2695, size: 64, offset: 15552)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2147, file: !1613, line: 1115, baseType: !2695, size: 64, offset: 15616)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2147, file: !1613, line: 1116, baseType: !2691, size: 192, offset: 15680)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2147, file: !1613, line: 1117, baseType: !102, size: 64, offset: 15872)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2147, file: !1613, line: 1118, baseType: !98, size: 64, offset: 15936)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2147, file: !1613, line: 1119, baseType: !7, size: 32, offset: 16000)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2147, file: !1613, line: 1121, baseType: !541, size: 64, offset: 16064)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2147, file: !1613, line: 1125, baseType: !2858, size: 64, offset: 16128)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1613, line: 43, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2147, file: !1613, line: 1127, baseType: !397, size: 32, offset: 16192)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2147, file: !1613, line: 1128, baseType: !7, size: 32, offset: 16224)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2147, file: !1613, line: 1130, baseType: !2863, size: 128, offset: 16256)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2864, line: 37, size: 128, elements: !2865)
!2864 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2865 = !{!2866, !2867, !2868}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2863, file: !2864, line: 38, baseType: !85, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2863, file: !2864, line: 39, baseType: !112, size: 32, offset: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2863, file: !2864, line: 40, baseType: !2869, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2864, line: 24, flags: DIFlagFwdDecl)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2147, file: !1613, line: 1131, baseType: !2872, size: 256, offset: 16384)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2873, line: 12, size: 256, elements: !2874)
!2873 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2874 = !{!2875, !2876, !2877, !2878}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2872, file: !2873, line: 13, baseType: !186, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2872, file: !2873, line: 14, baseType: !102, size: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2872, file: !2873, line: 15, baseType: !102, size: 64, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2872, file: !2873, line: 16, baseType: !256, size: 8, offset: 192)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2147, file: !1613, line: 1134, baseType: !384, size: 64, offset: 16640)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2147, file: !1613, line: 1135, baseType: !384, size: 64, offset: 16704)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2147, file: !1613, line: 1138, baseType: !122, size: 32, offset: 16768)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2147, file: !1613, line: 1141, baseType: !220, size: 32, offset: 16800)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2147, file: !1613, line: 1143, baseType: !2884, size: 64, offset: 16832)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1613, line: 735, size: 64, elements: !2885)
!2885 = !{!2886}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2884, file: !1613, line: 736, baseType: !2887, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2147, file: !1613, line: 1147, baseType: !1234, size: 128, offset: 16896)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2147, file: !1613, line: 1149, baseType: !2146, size: 64, offset: 17024)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2147, file: !1613, line: 1151, baseType: !2891, size: 64, offset: 17088)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1613, line: 1151, flags: DIFlagFwdDecl)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2147, file: !1613, line: 1188, baseType: !83, size: 64, offset: 17152)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2147, file: !1613, line: 1191, baseType: !2895, size: 64, offset: 17216)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1613, line: 44, flags: DIFlagFwdDecl)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2147, file: !1613, line: 1194, baseType: !2898, size: 64, offset: 17280)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1613, line: 45, flags: DIFlagFwdDecl)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2147, file: !1613, line: 1197, baseType: !2901, size: 64, offset: 17344)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1613, line: 61, flags: DIFlagFwdDecl)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2147, file: !1613, line: 1199, baseType: !2904, size: 64, offset: 17408)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2906, line: 99, size: 128, elements: !2907)
!2906 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2907 = !{!2908, !2909, !2910}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2905, file: !2906, line: 100, baseType: !205, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2905, file: !2906, line: 101, baseType: !112, size: 32, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2905, file: !2906, line: 103, baseType: !89, size: 16, offset: 96)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2147, file: !1613, line: 1202, baseType: !2912, size: 64, offset: 17472)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1613, line: 48, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2147, file: !1613, line: 1205, baseType: !102, size: 64, offset: 17536)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2147, file: !1613, line: 1206, baseType: !2916, size: 64, offset: 17600)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !793, line: 14, baseType: !2918)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !793, line: 12, size: 384, elements: !2919)
!2919 = !{!2920}
!2920 = !DIDerivedType(tag: DW_TAG_member, scope: !2918, file: !793, line: 13, baseType: !2921, size: 384)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2918, file: !793, line: 13, size: 384, elements: !2922)
!2922 = !{!2923, !2924, !2925, !2926}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2921, file: !793, line: 13, baseType: !85, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2921, file: !793, line: 13, baseType: !85, size: 32, offset: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2921, file: !793, line: 13, baseType: !85, size: 32, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2921, file: !793, line: 13, baseType: !2927, size: 256, offset: 128)
!2927 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2928, line: 37, size: 256, elements: !2929)
!2928 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2929 = !{!2930, !2935, !2948, !2954, !2963, !2990, !2995}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2927, file: !2928, line: 42, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2927, file: !2928, line: 39, size: 64, elements: !2932)
!2932 = !{!2933, !2934}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2931, file: !2928, line: 40, baseType: !2507, size: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2931, file: !2928, line: 41, baseType: !403, size: 32, offset: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2927, file: !2928, line: 50, baseType: !2936, size: 192)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2927, file: !2928, line: 45, size: 192, elements: !2937)
!2937 = !{!2938, !2940, !2941, !2947}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2936, file: !2928, line: 46, baseType: !2939, size: 32)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !100, line: 95, baseType: !85)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2936, file: !2928, line: 47, baseType: !85, size: 32, offset: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2936, file: !2928, line: 48, baseType: !2942, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2928, line: 11, baseType: !2943)
!2943 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2928, line: 8, size: 64, elements: !2944)
!2944 = !{!2945, !2946}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2943, file: !2928, line: 9, baseType: !85, size: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2943, file: !2928, line: 10, baseType: !83, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2936, file: !2928, line: 49, baseType: !85, size: 32, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2927, file: !2928, line: 57, baseType: !2949, size: 128)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2927, file: !2928, line: 53, size: 128, elements: !2950)
!2950 = !{!2951, !2952, !2953}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2949, file: !2928, line: 54, baseType: !2507, size: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2949, file: !2928, line: 55, baseType: !403, size: 32, offset: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2949, file: !2928, line: 56, baseType: !2942, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2927, file: !2928, line: 66, baseType: !2955, size: 256)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2927, file: !2928, line: 60, size: 256, elements: !2956)
!2956 = !{!2957, !2958, !2959, !2960, !2962}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2955, file: !2928, line: 61, baseType: !2507, size: 32)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2955, file: !2928, line: 62, baseType: !403, size: 32, offset: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2955, file: !2928, line: 63, baseType: !85, size: 32, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2955, file: !2928, line: 64, baseType: !2961, size: 64, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !100, line: 94, baseType: !842)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2955, file: !2928, line: 65, baseType: !2961, size: 64, offset: 192)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2927, file: !2928, line: 105, baseType: !2964, size: 256)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2927, file: !2928, line: 69, size: 256, elements: !2965)
!2965 = !{!2966, !2967}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2964, file: !2928, line: 70, baseType: !83, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, scope: !2964, file: !2928, line: 79, baseType: !2968, size: 192, offset: 64)
!2968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2964, file: !2928, line: 79, size: 192, elements: !2969)
!2969 = !{!2970, !2971, !2972, !2979, !2984}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2968, file: !2928, line: 81, baseType: !85, size: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2968, file: !2928, line: 86, baseType: !684, size: 16)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2968, file: !2928, line: 92, baseType: !2973, size: 192)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2968, file: !2928, line: 88, size: 192, elements: !2974)
!2974 = !{!2975, !2977, !2978}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2973, file: !2928, line: 89, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !2300)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2973, file: !2928, line: 90, baseType: !83, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2973, file: !2928, line: 91, baseType: !83, size: 64, offset: 128)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2968, file: !2928, line: 97, baseType: !2980, size: 96)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2968, file: !2928, line: 94, size: 96, elements: !2981)
!2981 = !{!2982, !2983}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2980, file: !2928, line: 95, baseType: !2976, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2980, file: !2928, line: 96, baseType: !264, size: 32, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2968, file: !2928, line: 103, baseType: !2985, size: 128)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2968, file: !2928, line: 99, size: 128, elements: !2986)
!2986 = !{!2987, !2988, !2989}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2985, file: !2928, line: 100, baseType: !102, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2985, file: !2928, line: 101, baseType: !264, size: 32, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2985, file: !2928, line: 102, baseType: !264, size: 32, offset: 96)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2927, file: !2928, line: 111, baseType: !2991, size: 128)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2927, file: !2928, line: 108, size: 128, elements: !2992)
!2992 = !{!2993, !2994}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2991, file: !2928, line: 109, baseType: !521, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2991, file: !2928, line: 110, baseType: !85, size: 32, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2927, file: !2928, line: 118, baseType: !2996, size: 128)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2927, file: !2928, line: 114, size: 128, elements: !2997)
!2997 = !{!2998, !2999, !3000}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2996, file: !2928, line: 115, baseType: !83, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2996, file: !2928, line: 116, baseType: !85, size: 32, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2996, file: !2928, line: 117, baseType: !7, size: 32, offset: 96)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2147, file: !1613, line: 1208, baseType: !2777, size: 448, offset: 17664)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2147, file: !1613, line: 1215, baseType: !384, size: 64, offset: 18112)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2147, file: !1613, line: 1217, baseType: !384, size: 64, offset: 18176)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2147, file: !1613, line: 1219, baseType: !384, size: 64, offset: 18240)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2147, file: !1613, line: 1223, baseType: !3006, size: 64, offset: 18304)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3007, line: 99, baseType: !3008)
!3007 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3007, line: 99, size: 64, elements: !3009)
!3009 = !{!3010}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3008, file: !3007, line: 99, baseType: !2377, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2147, file: !1613, line: 1225, baseType: !354, size: 32, offset: 18368)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2147, file: !1613, line: 1226, baseType: !85, size: 32, offset: 18400)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2147, file: !1613, line: 1227, baseType: !85, size: 32, offset: 18432)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2147, file: !1613, line: 1231, baseType: !3015, size: 64, offset: 18496)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1613, line: 1231, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2147, file: !1613, line: 1233, baseType: !160, size: 128, offset: 18560)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2147, file: !1613, line: 1240, baseType: !3019, size: 64, offset: 18688)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1613, line: 62, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2147, file: !1613, line: 1242, baseType: !3022, size: 64, offset: 18752)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3024, line: 392, size: 96, elements: !3025)
!3024 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3025 = !{!3026, !3032, !3034}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3023, file: !3024, line: 393, baseType: !3027, size: 32)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3024, line: 388, size: 32, elements: !3028)
!3028 = !{!3029}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3027, file: !3024, line: 389, baseType: !3030, size: 32)
!3030 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3031, line: 46, baseType: !263)
!3031 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3023, file: !3024, line: 394, baseType: !3033, size: 32, offset: 32)
!3033 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3031, line: 42, baseType: !322)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3023, file: !3024, line: 395, baseType: !3030, size: 32, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2147, file: !1613, line: 1244, baseType: !160, size: 128, offset: 18816)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2147, file: !1613, line: 1245, baseType: !3037, size: 64, offset: 18944)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1613, line: 51, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2147, file: !1613, line: 1246, baseType: !294, size: 256, offset: 19008)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2147, file: !1613, line: 1247, baseType: !7, size: 32, offset: 19264)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2147, file: !1613, line: 1250, baseType: !3042, size: 64, offset: 19328)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1613, line: 57, flags: DIFlagFwdDecl)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2147, file: !1613, line: 1251, baseType: !294, size: 256, offset: 19392)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2147, file: !1613, line: 1252, baseType: !160, size: 128, offset: 19648)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2147, file: !1613, line: 1259, baseType: !1559, size: 64, offset: 19776)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2147, file: !1613, line: 1260, baseType: !684, size: 16, offset: 19840)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2147, file: !1613, line: 1261, baseType: !684, size: 16, offset: 19856)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2147, file: !1613, line: 1314, baseType: !3050, size: 64, offset: 19904)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3052, line: 62, size: 256, align: 256, elements: !3053)
!3052 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3053 = !{!3054, !3055, !3056, !3057, !3058, !3059, !3060}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3051, file: !3052, line: 75, baseType: !264, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3051, file: !3052, line: 90, baseType: !264, size: 32, offset: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3051, file: !3052, line: 112, baseType: !385, size: 64, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3051, file: !3052, line: 132, baseType: !264, size: 32, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3051, file: !3052, line: 140, baseType: !264, size: 32, offset: 160)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3051, file: !3052, line: 149, baseType: !264, size: 32, offset: 192)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3051, file: !3052, line: 154, baseType: !3061, offset: 224)
!3061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, elements: !612)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2147, file: !1613, line: 1315, baseType: !263, size: 32, offset: 19968)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2147, file: !1613, line: 1316, baseType: !263, size: 32, offset: 20000)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2147, file: !1613, line: 1321, baseType: !102, size: 64, offset: 20032)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2147, file: !1613, line: 1325, baseType: !85, size: 32, offset: 20096)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2147, file: !1613, line: 1326, baseType: !85, size: 32, offset: 20128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2147, file: !1613, line: 1327, baseType: !85, size: 32, offset: 20160)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2147, file: !1613, line: 1328, baseType: !85, size: 32, offset: 20192)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2147, file: !1613, line: 1329, baseType: !538, size: 128, align: 64, offset: 20224)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2147, file: !1613, line: 1332, baseType: !3071, size: 128, offset: 20352)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3072, line: 51, size: 128, elements: !3073)
!3072 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3073 = !{!3074, !3079, !3080}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3071, file: !3072, line: 60, baseType: !3075, size: 64)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3076, line: 7, size: 64, elements: !3077)
!3076 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3077 = !{!3078}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3075, file: !3076, line: 12, baseType: !2374, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3071, file: !3072, line: 63, baseType: !256, size: 8, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3071, file: !3072, line: 70, baseType: !256, size: 8, offset: 72)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2147, file: !1613, line: 1335, baseType: !1611, size: 64, offset: 20480)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2147, file: !1613, line: 1337, baseType: !3083, size: 128, offset: 20544)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3072, line: 39, size: 128, elements: !3084)
!3084 = !{!3085, !3086, !3087}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3083, file: !3072, line: 40, baseType: !1203, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3083, file: !3072, line: 42, baseType: !264, size: 32, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3083, file: !3072, line: 43, baseType: !264, size: 32, offset: 96)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2147, file: !1613, line: 1340, baseType: !3089, size: 64, offset: 20672)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1613, line: 69, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2147, file: !1613, line: 1351, baseType: !85, size: 32, offset: 20736)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2147, file: !1613, line: 1352, baseType: !85, size: 32, offset: 20768)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2147, file: !1613, line: 1354, baseType: !102, size: 64, offset: 20800)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2147, file: !1613, line: 1364, baseType: !384, size: 64, offset: 20864)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2147, file: !1613, line: 1365, baseType: !384, size: 64, offset: 20928)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2147, file: !1613, line: 1412, baseType: !102, size: 64, offset: 20992)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2147, file: !1613, line: 1453, baseType: !3098, size: 64, offset: 21056)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1613, line: 1453, flags: DIFlagFwdDecl)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2147, file: !1613, line: 1457, baseType: !3101, size: 64, offset: 21120)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3103)
!3103 = !{!3104, !3105, !3124, !3127, !3128, !3161, !3171}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3102, file: !68, line: 62, baseType: !67, size: 32)
!3105 = !DIDerivedType(tag: DW_TAG_member, scope: !3102, file: !68, line: 64, baseType: !3106, size: 192, offset: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3102, file: !68, line: 64, size: 192, elements: !3107)
!3107 = !{!3108, !3119}
!3108 = !DIDerivedType(tag: DW_TAG_member, scope: !3106, file: !68, line: 65, baseType: !3109, size: 192)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !68, line: 65, size: 192, elements: !3110)
!3110 = !{!3111, !3118}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3109, file: !68, line: 66, baseType: !3112, size: 128)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3113, line: 50, size: 128, elements: !3114)
!3113 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3114 = !{!3115, !3116, !3117}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3112, file: !3113, line: 52, baseType: !102, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3112, file: !3113, line: 54, baseType: !7, size: 32, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3112, file: !3113, line: 55, baseType: !7, size: 32, offset: 96)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3109, file: !68, line: 67, baseType: !102, size: 64, offset: 128)
!3119 = !DIDerivedType(tag: DW_TAG_member, scope: !3106, file: !68, line: 70, baseType: !3120, size: 192)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3106, file: !68, line: 70, size: 192, elements: !3121)
!3121 = !{!3122, !3123}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3120, file: !68, line: 71, baseType: !538, size: 128, align: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3120, file: !68, line: 72, baseType: !102, size: 64, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3102, file: !68, line: 76, baseType: !3125, size: 64, offset: 256)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3102, file: !68, line: 77, baseType: !102, size: 64, offset: 320)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3102, file: !68, line: 79, baseType: !3129, size: 64, offset: 384)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3113, line: 25, size: 256, elements: !3131)
!3131 = !{!3132, !3138, !3142}
!3132 = !DIDerivedType(tag: DW_TAG_member, scope: !3130, file: !3113, line: 26, baseType: !3133, size: 128)
!3133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3130, file: !3113, line: 26, size: 128, elements: !3134)
!3134 = !{!3135, !3137}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3133, file: !3113, line: 27, baseType: !3136, size: 128)
!3136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 128, elements: !2566)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3133, file: !3113, line: 28, baseType: !3136, size: 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3130, file: !3113, line: 31, baseType: !3139, size: 64, offset: 128)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3141)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3113, line: 23, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, scope: !3130, file: !3113, line: 33, baseType: !3143, size: 64, offset: 192)
!3143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3130, file: !3113, line: 33, size: 64, elements: !3144)
!3144 = !{!3145, !3151, !3156}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3143, file: !3113, line: 38, baseType: !3146, size: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3143, file: !3113, line: 34, size: 64, elements: !3147)
!3147 = !{!3148, !3149, !3150}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3146, file: !3113, line: 35, baseType: !322, size: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3146, file: !3113, line: 36, baseType: !146, size: 8, offset: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3146, file: !3113, line: 37, baseType: !146, size: 8, offset: 40)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3143, file: !3113, line: 42, baseType: !3152, size: 16)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3143, file: !3113, line: 39, size: 16, elements: !3153)
!3153 = !{!3154, !3155}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3152, file: !3113, line: 40, baseType: !146, size: 8)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3152, file: !3113, line: 41, baseType: !146, size: 8, offset: 8)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3143, file: !3113, line: 46, baseType: !3157, size: 16)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3143, file: !3113, line: 43, size: 16, elements: !3158)
!3158 = !{!3159, !3160}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3157, file: !3113, line: 44, baseType: !146, size: 8)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3157, file: !3113, line: 45, baseType: !146, size: 8, offset: 8)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3102, file: !68, line: 81, baseType: !3162, size: 64, offset: 448)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3164)
!3164 = !{!3165, !3166, !3167, !3168, !3169, !3170}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3163, file: !68, line: 86, baseType: !3125, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3163, file: !68, line: 87, baseType: !102, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3163, file: !68, line: 88, baseType: !102, size: 64, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3163, file: !68, line: 89, baseType: !102, size: 64, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3163, file: !68, line: 90, baseType: !256, size: 8, offset: 256)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3163, file: !68, line: 92, baseType: !3162, size: 64, offset: 320)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3102, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2147, file: !1613, line: 1463, baseType: !3173, offset: 21184)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1613, line: 739, elements: !996)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2147, file: !1613, line: 1470, baseType: !538, size: 128, align: 64, offset: 21184)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2147, file: !1613, line: 1471, baseType: !583, size: 32, offset: 21312)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2147, file: !1613, line: 1472, baseType: !85, size: 32, offset: 21344)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2147, file: !1613, line: 1474, baseType: !2146, size: 64, offset: 21376)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2147, file: !1613, line: 1475, baseType: !3179, size: 320, offset: 21440)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3180, line: 11, size: 320, elements: !3181)
!3180 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3181 = !{!3182, !3183, !3184, !3189}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3179, file: !3180, line: 16, baseType: !596, size: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3179, file: !3180, line: 17, baseType: !102, size: 64, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3179, file: !3180, line: 18, baseType: !3185, size: 64, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{null, !3188}
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3179, file: !3180, line: 19, baseType: !263, size: 32, offset: 256)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2147, file: !1613, line: 1478, baseType: !3191, size: 64, offset: 21760)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1613, line: 1478, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2147, file: !1613, line: 1482, baseType: !583, size: 32, offset: 21824)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2147, file: !1613, line: 1489, baseType: !83, size: 64, offset: 21888)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2147, file: !1613, line: 1504, baseType: !83, size: 64, offset: 21952)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2147, file: !1613, line: 1505, baseType: !385, size: 64, offset: 22016)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2147, file: !1613, line: 1506, baseType: !384, size: 64, offset: 22080)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2147, file: !1613, line: 1507, baseType: !385, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2147, file: !1613, line: 1508, baseType: !385, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2147, file: !1613, line: 1509, baseType: !385, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2147, file: !1613, line: 1510, baseType: !538, size: 128, align: 64, offset: 22208)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2147, file: !1613, line: 1511, baseType: !85, size: 32, offset: 22336)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2147, file: !1613, line: 1515, baseType: !3204, size: 64, offset: 22400)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !533, line: 56, size: 64, elements: !3205)
!3205 = !{!3206}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3204, file: !533, line: 57, baseType: !536, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2147, file: !1613, line: 1518, baseType: !3204, size: 64, offset: 22464)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2147, file: !1613, line: 1528, baseType: !538, size: 128, align: 64, offset: 22528)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2147, file: !1613, line: 1552, baseType: !3210, size: 35328, offset: 23040)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3211, line: 430, size: 35328, elements: !3212)
!3211 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3212 = !{!3213, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3242, !3243, !3244, !3245, !3246, !3247, !3250, !3251, !3252, !3253}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3210, file: !3211, line: 432, baseType: !3214, size: 192)
!3214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3215, size: 192, elements: !303)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3216, line: 16, size: 64, elements: !3217)
!3216 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3217 = !{!3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3215, file: !3216, line: 17, baseType: !156, size: 16)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3215, file: !3216, line: 18, baseType: !156, size: 16, offset: 16)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3215, file: !3216, line: 19, baseType: !156, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3215, file: !3216, line: 19, baseType: !156, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3215, file: !3216, line: 19, baseType: !156, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3215, file: !3216, line: 19, baseType: !156, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3215, file: !3216, line: 19, baseType: !156, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3215, file: !3216, line: 20, baseType: !156, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3215, file: !3216, line: 20, baseType: !156, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3215, file: !3216, line: 20, baseType: !156, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3215, file: !3216, line: 20, baseType: !156, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3215, file: !3216, line: 20, baseType: !156, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3215, file: !3216, line: 20, baseType: !156, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3210, file: !3211, line: 436, baseType: !102, size: 64, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3210, file: !3211, line: 440, baseType: !89, size: 16, offset: 256)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3210, file: !3211, line: 441, baseType: !89, size: 16, offset: 272)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3210, file: !3211, line: 442, baseType: !89, size: 16, offset: 288)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3210, file: !3211, line: 443, baseType: !89, size: 16, offset: 304)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3210, file: !3211, line: 447, baseType: !102, size: 64, offset: 320)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3210, file: !3211, line: 448, baseType: !102, size: 64, offset: 384)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3210, file: !3211, line: 459, baseType: !3239, size: 256, offset: 448)
!3239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3240, size: 256, elements: !307)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3211, line: 428, flags: DIFlagFwdDecl)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3210, file: !3211, line: 461, baseType: !102, size: 64, offset: 704)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3210, file: !3211, line: 463, baseType: !102, size: 64, offset: 768)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3210, file: !3211, line: 465, baseType: !102, size: 64, offset: 832)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3210, file: !3211, line: 466, baseType: !102, size: 64, offset: 896)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3210, file: !3211, line: 467, baseType: !102, size: 64, offset: 960)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3210, file: !3211, line: 473, baseType: !3248, size: 64, offset: 1024)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3211, line: 10, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3210, file: !3211, line: 480, baseType: !102, size: 64, offset: 1088)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3210, file: !3211, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3210, file: !3211, line: 491, baseType: !263, size: 32, offset: 1184)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3210, file: !3211, line: 501, baseType: !3254, size: 33792, offset: 1536)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3255, line: 448, size: 33792, elements: !3256)
!3255 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3256 = !{!3257, !3258, !3259, !3423, !3424, !3430, !3431}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3254, file: !3255, line: 461, baseType: !7, size: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3254, file: !3255, line: 468, baseType: !102, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3254, file: !3255, line: 476, baseType: !3260, size: 64, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3255, line: 356, size: 33280, align: 512, elements: !3262)
!3262 = !{!3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3261, file: !3255, line: 358, baseType: !7, size: 32)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3261, file: !3255, line: 361, baseType: !7, size: 32, offset: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3261, file: !3255, line: 364, baseType: !384, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3261, file: !3255, line: 367, baseType: !384, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3261, file: !3255, line: 370, baseType: !384, size: 64, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3261, file: !3255, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3261, file: !3255, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3261, file: !3255, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3261, file: !3255, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3261, file: !3255, line: 397, baseType: !3273, size: 32768, offset: 512)
!3273 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3255, line: 348, size: 32768, elements: !3274)
!3274 = !{!3275, !3290, !3329, !3406, !3419}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3273, file: !3255, line: 349, baseType: !3276, size: 896)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3255, line: 12, size: 896, elements: !3277)
!3277 = !{!3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3289}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3276, file: !3255, line: 13, baseType: !263, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3276, file: !3255, line: 14, baseType: !263, size: 32, offset: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3276, file: !3255, line: 15, baseType: !263, size: 32, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3276, file: !3255, line: 16, baseType: !263, size: 32, offset: 96)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3276, file: !3255, line: 17, baseType: !263, size: 32, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3276, file: !3255, line: 18, baseType: !263, size: 32, offset: 160)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3276, file: !3255, line: 19, baseType: !263, size: 32, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3276, file: !3255, line: 22, baseType: !3286, size: 640, offset: 224)
!3286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 640, elements: !3287)
!3287 = !{!3288}
!3288 = !DISubrange(count: 20)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3276, file: !3255, line: 25, baseType: !263, size: 32, offset: 864)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3273, file: !3255, line: 350, baseType: !3291, size: 4096, align: 128)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3255, line: 34, size: 4096, align: 128, elements: !3292)
!3292 = !{!3293, !3294, !3295, !3296, !3297, !3312, !3313, !3314, !3318, !3320, !3324}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3291, file: !3255, line: 35, baseType: !156, size: 16)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3291, file: !3255, line: 36, baseType: !156, size: 16, offset: 16)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3291, file: !3255, line: 37, baseType: !156, size: 16, offset: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3291, file: !3255, line: 38, baseType: !156, size: 16, offset: 48)
!3297 = !DIDerivedType(tag: DW_TAG_member, scope: !3291, file: !3255, line: 39, baseType: !3298, size: 128, offset: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3291, file: !3255, line: 39, size: 128, elements: !3299)
!3299 = !{!3300, !3305}
!3300 = !DIDerivedType(tag: DW_TAG_member, scope: !3298, file: !3255, line: 40, baseType: !3301, size: 128)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3298, file: !3255, line: 40, size: 128, elements: !3302)
!3302 = !{!3303, !3304}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3301, file: !3255, line: 41, baseType: !384, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3301, file: !3255, line: 42, baseType: !384, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, scope: !3298, file: !3255, line: 44, baseType: !3306, size: 128)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3298, file: !3255, line: 44, size: 128, elements: !3307)
!3307 = !{!3308, !3309, !3310, !3311}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3306, file: !3255, line: 45, baseType: !263, size: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3306, file: !3255, line: 46, baseType: !263, size: 32, offset: 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3306, file: !3255, line: 47, baseType: !263, size: 32, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3306, file: !3255, line: 48, baseType: !263, size: 32, offset: 96)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3291, file: !3255, line: 51, baseType: !263, size: 32, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3291, file: !3255, line: 52, baseType: !263, size: 32, offset: 224)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3291, file: !3255, line: 55, baseType: !3315, size: 1024, offset: 256)
!3315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 1024, elements: !3316)
!3316 = !{!3317}
!3317 = !DISubrange(count: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3291, file: !3255, line: 58, baseType: !3319, size: 2048, offset: 1280)
!3319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 2048, elements: !2847)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3291, file: !3255, line: 60, baseType: !3321, size: 384, offset: 3328)
!3321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 384, elements: !3322)
!3322 = !{!3323}
!3323 = !DISubrange(count: 12)
!3324 = !DIDerivedType(tag: DW_TAG_member, scope: !3291, file: !3255, line: 62, baseType: !3325, size: 384, offset: 3712)
!3325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3291, file: !3255, line: 62, size: 384, elements: !3326)
!3326 = !{!3327, !3328}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3325, file: !3255, line: 63, baseType: !3321, size: 384)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3325, file: !3255, line: 64, baseType: !3321, size: 384)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3273, file: !3255, line: 351, baseType: !3330, size: 1088)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3255, line: 79, size: 1088, elements: !3331)
!3331 = !{!3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3405}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3330, file: !3255, line: 80, baseType: !263, size: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3330, file: !3255, line: 81, baseType: !263, size: 32, offset: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3330, file: !3255, line: 82, baseType: !263, size: 32, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3330, file: !3255, line: 83, baseType: !263, size: 32, offset: 96)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3330, file: !3255, line: 84, baseType: !263, size: 32, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3330, file: !3255, line: 85, baseType: !263, size: 32, offset: 160)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3330, file: !3255, line: 86, baseType: !263, size: 32, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3330, file: !3255, line: 88, baseType: !3286, size: 640, offset: 224)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3330, file: !3255, line: 89, baseType: !146, size: 8, offset: 864)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3330, file: !3255, line: 90, baseType: !146, size: 8, offset: 872)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3330, file: !3255, line: 91, baseType: !146, size: 8, offset: 880)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3330, file: !3255, line: 92, baseType: !146, size: 8, offset: 888)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3330, file: !3255, line: 93, baseType: !146, size: 8, offset: 896)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3330, file: !3255, line: 94, baseType: !146, size: 8, offset: 904)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3330, file: !3255, line: 95, baseType: !3347, size: 64, offset: 960)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3349, line: 11, size: 128, elements: !3350)
!3349 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3350 = !{!3351, !3352}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3348, file: !3349, line: 12, baseType: !521, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3348, file: !3349, line: 13, baseType: !3353, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3355, line: 103, size: 1344, elements: !3356)
!3355 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3356 = !{!3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3385, !3386, !3387}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3354, file: !3355, line: 109, baseType: !102, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3354, file: !3355, line: 110, baseType: !102, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3354, file: !3355, line: 111, baseType: !102, size: 64, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3354, file: !3355, line: 112, baseType: !102, size: 64, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3354, file: !3355, line: 113, baseType: !102, size: 64, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3354, file: !3355, line: 114, baseType: !102, size: 64, offset: 320)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3354, file: !3355, line: 117, baseType: !102, size: 64, offset: 384)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3354, file: !3355, line: 118, baseType: !102, size: 64, offset: 448)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3354, file: !3355, line: 119, baseType: !102, size: 64, offset: 512)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3354, file: !3355, line: 120, baseType: !102, size: 64, offset: 576)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3354, file: !3355, line: 121, baseType: !102, size: 64, offset: 640)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3354, file: !3355, line: 122, baseType: !102, size: 64, offset: 704)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3354, file: !3355, line: 123, baseType: !102, size: 64, offset: 768)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3354, file: !3355, line: 124, baseType: !102, size: 64, offset: 832)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3354, file: !3355, line: 125, baseType: !102, size: 64, offset: 896)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3354, file: !3355, line: 139, baseType: !102, size: 64, offset: 960)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3354, file: !3355, line: 142, baseType: !102, size: 64, offset: 1024)
!3374 = !DIDerivedType(tag: DW_TAG_member, scope: !3354, file: !3355, line: 144, baseType: !3375, size: 64, offset: 1088)
!3375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3354, file: !3355, line: 144, size: 64, elements: !3376)
!3376 = !{!3377, !3378, !3379}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3375, file: !3355, line: 146, baseType: !156, size: 16)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3375, file: !3355, line: 148, baseType: !384, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3375, file: !3355, line: 150, baseType: !3380, size: 64)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3355, line: 59, size: 64, elements: !3381)
!3381 = !{!3382, !3383, !3384}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3380, file: !3355, line: 61, baseType: !384, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3380, file: !3355, line: 63, baseType: !384, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3380, file: !3355, line: 65, baseType: !384, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3354, file: !3355, line: 153, baseType: !102, size: 64, offset: 1152)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3354, file: !3355, line: 154, baseType: !102, size: 64, offset: 1216)
!3387 = !DIDerivedType(tag: DW_TAG_member, scope: !3354, file: !3355, line: 156, baseType: !3388, size: 64, offset: 1280)
!3388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3354, file: !3355, line: 156, size: 64, elements: !3389)
!3389 = !{!3390, !3391, !3392}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3388, file: !3355, line: 158, baseType: !156, size: 16)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3388, file: !3355, line: 160, baseType: !384, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3388, file: !3355, line: 162, baseType: !3393, size: 64)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3355, line: 69, size: 64, elements: !3394)
!3394 = !{!3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3393, file: !3355, line: 71, baseType: !384, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3393, file: !3355, line: 73, baseType: !384, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3393, file: !3355, line: 75, baseType: !384, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3393, file: !3355, line: 77, baseType: !384, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3393, file: !3355, line: 80, baseType: !384, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3393, file: !3355, line: 83, baseType: !384, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3393, file: !3355, line: 86, baseType: !384, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3393, file: !3355, line: 88, baseType: !384, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3393, file: !3355, line: 93, baseType: !384, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3393, file: !3355, line: 100, baseType: !384, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3330, file: !3255, line: 96, baseType: !263, size: 32, offset: 1024)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3273, file: !3255, line: 352, baseType: !3407, size: 4608, align: 512)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3255, line: 333, size: 4608, align: 512, elements: !3408)
!3408 = !{!3409, !3410, !3417}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3407, file: !3255, line: 334, baseType: !3291, size: 4096, align: 128)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3407, file: !3255, line: 335, baseType: !3411, size: 512, offset: 4096)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3255, line: 312, size: 512, elements: !3412)
!3412 = !{!3413, !3414, !3415}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3411, file: !3255, line: 313, baseType: !384, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3411, file: !3255, line: 314, baseType: !384, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3411, file: !3255, line: 315, baseType: !3416, size: 384, offset: 128)
!3416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 384, elements: !702)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3407, file: !3255, line: 336, baseType: !3418, offset: 4608)
!3418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, elements: !612)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3273, file: !3255, line: 353, baseType: !3420, size: 32768)
!3420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 32768, elements: !3421)
!3421 = !{!3422}
!3422 = !DISubrange(count: 4096)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3254, file: !3255, line: 484, baseType: !3260, size: 64, offset: 192)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3254, file: !3255, line: 491, baseType: !3425, size: 128, offset: 256)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3255, line: 404, size: 128, elements: !3426)
!3426 = !{!3427, !3428, !3429}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3425, file: !3255, line: 424, baseType: !384, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3425, file: !3255, line: 432, baseType: !7, size: 32, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3425, file: !3255, line: 440, baseType: !7, size: 32, offset: 96)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3254, file: !3255, line: 498, baseType: !3425, size: 128, offset: 384)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3254, file: !3255, line: 508, baseType: !3261, size: 33280, align: 512, offset: 512)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2128, file: !2129, line: 16, baseType: !117, size: 192, offset: 512)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2128, file: !2129, line: 17, baseType: !112, size: 32, offset: 704)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1743, file: !46, line: 1240, baseType: !83, size: 64, offset: 6912)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1743, file: !46, line: 1243, baseType: !263, size: 32, offset: 6976)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1743, file: !46, line: 1245, baseType: !519, size: 64, offset: 7040)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1743, file: !46, line: 1246, baseType: !519, size: 64, offset: 7104)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1743, file: !46, line: 1248, baseType: !264, size: 32, offset: 7168)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1743, file: !46, line: 1249, baseType: !3440, size: 64, offset: 7232)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !46, line: 634, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1743, file: !46, line: 1252, baseType: !3443, size: 256, offset: 7296)
!3443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 256, elements: !3316)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1743, file: !46, line: 1253, baseType: !3445, size: 128, offset: 7552)
!3445 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3446, line: 21, baseType: !3447)
!3446 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3446, line: 19, size: 128, elements: !3448)
!3448 = !{!3449}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3447, file: !3446, line: 20, baseType: !3450, size: 128)
!3450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 128, elements: !2566)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1743, file: !46, line: 1255, baseType: !7, size: 32, offset: 7680)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1743, file: !46, line: 1261, baseType: !294, size: 256, offset: 7744)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1743, file: !46, line: 1267, baseType: !79, size: 64, offset: 8000)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1743, file: !46, line: 1269, baseType: !3455, size: 64, offset: 8064)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3457)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !350, line: 128, size: 1024, align: 512, elements: !3458)
!3458 = !{!3459, !3463, !3464, !3471, !3477, !3481, !3485, !3489, !3490, !3494, !3498, !3503, !3507}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3457, file: !350, line: 129, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!85, !348, !7}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3457, file: !350, line: 130, baseType: !3460, size: 64, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3457, file: !350, line: 131, baseType: !3465, size: 64, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!85, !3468, !3470}
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3457, file: !350, line: 132, baseType: !3472, size: 64, offset: 192)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!85, !3468, !7, !79, !3475}
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3457, file: !350, line: 134, baseType: !3478, size: 64, offset: 256)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!85, !3468}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3457, file: !350, line: 135, baseType: !3482, size: 64, offset: 320)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!85, !348}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3457, file: !350, line: 136, baseType: !3486, size: 64, offset: 384)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{null, !348}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3457, file: !350, line: 137, baseType: !3486, size: 64, offset: 448)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3457, file: !350, line: 138, baseType: !3491, size: 64, offset: 512)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{null, !348, !391}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3457, file: !350, line: 139, baseType: !3495, size: 64, offset: 576)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!186, !348, !186, !85}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3457, file: !350, line: 140, baseType: !3499, size: 64, offset: 640)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!343, !3502}
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3457, file: !350, line: 141, baseType: !3504, size: 64, offset: 704)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!85, !1665, !256}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3457, file: !350, line: 142, baseType: !3508, size: 64, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!348, !348, !3511}
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1743, file: !46, line: 1271, baseType: !3514, size: 448, offset: 8128)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1910, line: 63, size: 448, elements: !3515)
!3515 = !{!3516, !3521, !3522, !3523, !3524, !3525, !3526}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3514, file: !1910, line: 64, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!102, !3520, !1908}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3514, file: !1910, line: 66, baseType: !3517, size: 64, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3514, file: !1910, line: 69, baseType: !521, size: 64, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3514, file: !1910, line: 70, baseType: !85, size: 32, offset: 192)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3514, file: !1910, line: 71, baseType: !7, size: 32, offset: 224)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3514, file: !1910, line: 74, baseType: !160, size: 128, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3514, file: !1910, line: 85, baseType: !3527, size: 64, offset: 384)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1743, file: !46, line: 1274, baseType: !205, size: 64, offset: 8576)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1743, file: !46, line: 1280, baseType: !205, size: 64, offset: 8640)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1743, file: !46, line: 1283, baseType: !85, size: 32, offset: 8704)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1743, file: !46, line: 1286, baseType: !1405, size: 32, offset: 8736)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1743, file: !46, line: 1289, baseType: !3533, size: 64, offset: 8768)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !283, line: 18, flags: DIFlagFwdDecl)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1743, file: !46, line: 1290, baseType: !592, size: 64, offset: 8832)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1743, file: !46, line: 1297, baseType: !788, size: 64, offset: 8896)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1743, file: !46, line: 1304, baseType: !3538, size: 64, offset: 8960)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3539, line: 49, size: 64, elements: !3540)
!3539 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3540 = !{!3541}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3538, file: !3539, line: 50, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3539, line: 41, size: 512, align: 512, elements: !3544)
!3544 = !{!3545, !3546, !3551}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3543, file: !3539, line: 43, baseType: !122, size: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3543, file: !3539, line: 45, baseType: !3547, size: 192, offset: 64)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3539, line: 29, size: 192, elements: !3548)
!3548 = !{!3549, !3550}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3547, file: !3539, line: 30, baseType: !160, size: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3547, file: !3539, line: 32, baseType: !521, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3543, file: !3539, line: 46, baseType: !521, size: 64, offset: 256)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1743, file: !46, line: 1305, baseType: !3538, size: 64, offset: 9024)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1743, file: !46, line: 1306, baseType: !538, size: 128, align: 64, offset: 9088)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1743, file: !46, line: 1307, baseType: !282, size: 256, offset: 9216)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1743, file: !46, line: 1309, baseType: !294, size: 256, offset: 9472)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1743, file: !46, line: 1314, baseType: !85, size: 32, offset: 9728)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1743, file: !46, line: 1317, baseType: !122, size: 32, align: 512, offset: 10240)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1743, file: !46, line: 1318, baseType: !160, size: 128, offset: 10304)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1743, file: !46, line: 1320, baseType: !122, size: 32, offset: 10432)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1743, file: !46, line: 1321, baseType: !160, size: 128, offset: 10496)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !392, file: !46, line: 656, baseType: !1225, size: 64, offset: 512)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !392, file: !46, line: 659, baseType: !83, size: 64, offset: 576)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !392, file: !46, line: 663, baseType: !102, size: 64, offset: 640)
!3564 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !46, line: 671, baseType: !3565, size: 32, offset: 704)
!3565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !46, line: 671, size: 32, elements: !3566)
!3566 = !{!3567, !3569}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3565, file: !46, line: 672, baseType: !3568, size: 32)
!3568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3565, file: !46, line: 673, baseType: !7, size: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !392, file: !46, line: 675, baseType: !479, size: 32, offset: 736)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !392, file: !46, line: 676, baseType: !104, size: 64, offset: 768)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !392, file: !46, line: 677, baseType: !515, size: 128, offset: 832)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !392, file: !46, line: 678, baseType: !515, size: 128, offset: 960)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !392, file: !46, line: 679, baseType: !515, size: 128, offset: 1088)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !392, file: !46, line: 680, baseType: !122, size: 32, offset: 1216)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !392, file: !46, line: 681, baseType: !89, size: 16, offset: 1248)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !392, file: !46, line: 682, baseType: !146, size: 8, offset: 1264)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !392, file: !46, line: 683, baseType: !146, size: 8, offset: 1272)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !392, file: !46, line: 684, baseType: !2041, size: 64, offset: 1280)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !392, file: !46, line: 691, baseType: !102, size: 64, offset: 1344)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !392, file: !46, line: 692, baseType: !201, size: 320, offset: 1408)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !392, file: !46, line: 694, baseType: !102, size: 64, offset: 1728)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !392, file: !46, line: 695, baseType: !102, size: 64, offset: 1792)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !392, file: !46, line: 697, baseType: !596, size: 128, offset: 1856)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !392, file: !46, line: 698, baseType: !160, size: 128, offset: 1984)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !392, file: !46, line: 707, baseType: !160, size: 128, offset: 2112)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !392, file: !46, line: 708, baseType: !160, size: 128, offset: 2240)
!3588 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !46, line: 709, baseType: !3589, size: 128, offset: 2368)
!3589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !46, line: 709, size: 128, elements: !3590)
!3590 = !{!3591, !3592}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3589, file: !46, line: 710, baseType: !592, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3589, file: !46, line: 711, baseType: !538, size: 128, align: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !392, file: !46, line: 713, baseType: !207, size: 64, offset: 2496)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !392, file: !46, line: 714, baseType: !207, size: 64, offset: 2560)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !392, file: !46, line: 715, baseType: !112, size: 32, offset: 2624)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !392, file: !46, line: 716, baseType: !112, size: 32, offset: 2656)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !392, file: !46, line: 717, baseType: !112, size: 32, offset: 2688)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !392, file: !46, line: 719, baseType: !112, size: 32, offset: 2720)
!3599 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !46, line: 721, baseType: !3600, size: 64, offset: 2752)
!3600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !46, line: 721, size: 64, elements: !3601)
!3601 = !{!3602, !3603}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3600, file: !46, line: 722, baseType: !824, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3600, file: !46, line: 723, baseType: !1798, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !392, file: !46, line: 725, baseType: !3605, size: 64, offset: 2816)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !46, line: 725, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !392, file: !46, line: 726, baseType: !1226, size: 1536, align: 64, offset: 2880)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !392, file: !46, line: 727, baseType: !160, size: 128, offset: 4416)
!3609 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !46, line: 728, baseType: !3610, size: 64, offset: 4544)
!3610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !46, line: 728, size: 64, elements: !3611)
!3611 = !{!3612, !3613, !3616, !3617}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3610, file: !46, line: 729, baseType: !1611, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3610, file: !46, line: 730, baseType: !3614, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !46, line: 730, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3610, file: !46, line: 731, baseType: !186, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3610, file: !46, line: 732, baseType: !7, size: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !392, file: !46, line: 735, baseType: !264, size: 32, offset: 4608)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !392, file: !46, line: 738, baseType: !264, size: 32, offset: 4640)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !392, file: !46, line: 739, baseType: !3440, size: 64, offset: 4672)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !392, file: !46, line: 750, baseType: !83, size: 64, offset: 4736)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !349, file: !350, line: 91, baseType: !3623, size: 256, offset: 448)
!3623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !3316)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !349, file: !350, line: 94, baseType: !3625, size: 64, offset: 704)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3626, line: 25, size: 64, elements: !3627)
!3626 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3627 = !{!3628}
!3628 = !DIDerivedType(tag: DW_TAG_member, scope: !3625, file: !3626, line: 26, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3625, file: !3626, line: 26, size: 64, elements: !3630)
!3630 = !{!3631, !3632}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3629, file: !3626, line: 28, baseType: !385, size: 64, align: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, scope: !3629, file: !3626, line: 30, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3629, file: !3626, line: 30, size: 64, elements: !3634)
!3634 = !{!3635, !3636}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3633, file: !3626, line: 31, baseType: !122, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3633, file: !3626, line: 32, baseType: !85, size: 32, offset: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !349, file: !350, line: 95, baseType: !3455, size: 64, offset: 768)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !349, file: !350, line: 96, baseType: !1742, size: 64, offset: 832)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !349, file: !350, line: 97, baseType: !102, size: 64, offset: 896)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !349, file: !350, line: 98, baseType: !83, size: 64, offset: 960)
!3641 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !350, line: 100, baseType: !3642, size: 128, offset: 1024)
!3642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !350, line: 100, size: 128, elements: !3643)
!3643 = !{!3644, !3645}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3642, file: !350, line: 101, baseType: !160, size: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3642, file: !350, line: 102, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !349, file: !350, line: 104, baseType: !160, size: 128, offset: 1152)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !349, file: !350, line: 105, baseType: !160, size: 128, offset: 1280)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !349, file: !350, line: 113, baseType: !3650, size: 128, offset: 1408)
!3650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !350, line: 109, size: 128, elements: !3651)
!3651 = !{!3652, !3653, !3654}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3650, file: !350, line: 110, baseType: !596, size: 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3650, file: !350, line: 111, baseType: !364, size: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3650, file: !350, line: 112, baseType: !538, size: 128, align: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !344, file: !345, line: 72, baseType: !1742, size: 64, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !344, file: !345, line: 73, baseType: !85, size: 32, offset: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !344, file: !345, line: 74, baseType: !443, size: 64, offset: 192)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "mq_queues_count", scope: !191, file: !192, line: 59, baseType: !7, size: 32, offset: 6592)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "mq_queues_max", scope: !191, file: !192, line: 62, baseType: !7, size: 32, offset: 6624)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "mq_msg_max", scope: !191, file: !192, line: 63, baseType: !7, size: 32, offset: 6656)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "mq_msgsize_max", scope: !191, file: !192, line: 64, baseType: !7, size: 32, offset: 6688)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "mq_msg_default", scope: !191, file: !192, line: 65, baseType: !7, size: 32, offset: 6720)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mq_msgsize_default", scope: !191, file: !192, line: 66, baseType: !7, size: 32, offset: 6752)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "mq_set", scope: !191, file: !192, line: 68, baseType: !3665, size: 768, offset: 6784)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !75, line: 199, size: 768, elements: !3666)
!3666 = !{!3667, !3672}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !3665, file: !75, line: 200, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!85, !3671}
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3665, file: !75, line: 201, baseType: !3673, size: 704, offset: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !75, line: 193, size: 704, elements: !3674)
!3674 = !{!3675, !3722}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3673, file: !75, line: 195, baseType: !3676, size: 640)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !75, line: 173, size: 640, elements: !3677)
!3677 = !{!3678, !3690, !3691, !3692, !3712, !3713, !3715, !3721}
!3678 = !DIDerivedType(tag: DW_TAG_member, scope: !3676, file: !75, line: 174, baseType: !3679, size: 192)
!3679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3676, file: !75, line: 174, size: 192, elements: !3680)
!3680 = !{!3681, !3689}
!3681 = !DIDerivedType(tag: DW_TAG_member, scope: !3679, file: !75, line: 175, baseType: !3682, size: 192)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3679, file: !75, line: 175, size: 192, elements: !3683)
!3683 = !{!3684, !3685, !3686, !3687, !3688}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !3682, file: !75, line: 176, baseType: !96, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !3682, file: !75, line: 177, baseType: !85, size: 32, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3682, file: !75, line: 178, baseType: !85, size: 32, offset: 96)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3682, file: !75, line: 179, baseType: !85, size: 32, offset: 128)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !3682, file: !75, line: 180, baseType: !85, size: 32, offset: 160)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3679, file: !75, line: 182, baseType: !538, size: 128, align: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3676, file: !75, line: 184, baseType: !2523, size: 64, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !3676, file: !75, line: 185, baseType: !96, size: 64, offset: 256)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3676, file: !75, line: 186, baseType: !3693, size: 64, offset: 320)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !75, line: 204, size: 960, elements: !3695)
!3695 = !{!3696, !3697, !3701, !3708}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !3694, file: !75, line: 205, baseType: !3665, size: 768)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3694, file: !75, line: 206, baseType: !3698, size: 64, offset: 768)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!3671, !3693}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !3694, file: !75, line: 207, baseType: !3702, size: 64, offset: 832)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !3705, !3706, !3707}
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !3694, file: !75, line: 209, baseType: !3709, size: 64, offset: 896)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!85, !3705, !96}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3676, file: !75, line: 187, baseType: !3671, size: 64, offset: 384)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3676, file: !75, line: 188, baseType: !3714, size: 64, offset: 448)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3676, file: !75, line: 189, baseType: !3716, size: 64, offset: 512)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !75, line: 157, size: 256, elements: !3718)
!3718 = !{!3719, !3720}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3717, file: !75, line: 158, baseType: !658, size: 192, align: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3717, file: !75, line: 159, baseType: !3705, size: 64, offset: 192)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !3676, file: !75, line: 190, baseType: !592, size: 64, offset: 576)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3673, file: !75, line: 196, baseType: !1237, size: 64, offset: 640)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysctls", scope: !191, file: !192, line: 69, baseType: !3705, size: 64, offset: 7552)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_set", scope: !191, file: !192, line: 71, baseType: !3665, size: 768, offset: 7616)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_sysctls", scope: !191, file: !192, line: 72, baseType: !3705, size: 64, offset: 8384)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !191, file: !192, line: 75, baseType: !788, size: 64, offset: 8448)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !191, file: !192, line: 76, baseType: !791, size: 64, offset: 8512)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_llist", scope: !191, file: !192, line: 78, baseType: !532, size: 64, offset: 8576)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !191, file: !192, line: 80, baseType: !2619, size: 192, offset: 8640)
!3730 = !DIGlobalVariableExpression(var: !3731, expr: !DIExpression())
!3731 = distinct !DIGlobalVariable(scope: null, file: !3, line: 180, type: !3732, isLocal: true, isDefinition: true)
!3732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 112, elements: !3733)
!3733 = !{!3734}
!3734 = !DISubrange(count: 14)
!3735 = !DIGlobalVariableExpression(var: !3736, expr: !DIExpression())
!3736 = distinct !DIGlobalVariable(scope: null, file: !176, line: 480, type: !3737, isLocal: true, isDefinition: true)
!3737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 168, elements: !3738)
!3738 = !{!3739}
!3739 = !DISubrange(count: 21)
!3740 = !DIGlobalVariableExpression(var: !3741, expr: !DIExpression())
!3741 = distinct !DIGlobalVariable(scope: null, file: !3742, line: 249, type: !3743, isLocal: true, isDefinition: true)
!3742 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!3743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 224, elements: !3744)
!3744 = !{!3745}
!3745 = !DISubrange(count: 28)
!3746 = !DIGlobalVariableExpression(var: !3747, expr: !DIExpression())
!3747 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched183", scope: !3748, file: !1613, line: 2104, type: !83, isLocal: true, isDefinition: true)
!3748 = distinct !DISubprogram(name: "_cond_resched", scope: !1613, file: !1613, line: 2102, type: !3749, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!85}
!3751 = !{i32 7, !"Dwarf Version", i32 5}
!3752 = !{i32 2, !"Debug Info Version", i32 3}
!3753 = !{i32 1, !"wchar_size", i32 2}
!3754 = !{i32 8, !"cf-protection-branch", i32 1}
!3755 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3756 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3757 = !{i32 1, !"Code Model", i32 2}
!3758 = !{i32 1, !"override-stack-alignment", i32 8}
!3759 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3760 = distinct !DISubprogram(name: "load_msg", scope: !3, file: !3, line: 84, type: !3761, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3776)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!3763, !265, !98}
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msg_msg", file: !3765, line: 9, size: 384, elements: !3766)
!3765 = !DIFile(filename: "./include/linux/msg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fbe6806c75a65b8fab48bb9d7f1042da")
!3766 = !{!3767, !3768, !3769, !3770, !3775}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !3764, file: !3765, line: 10, baseType: !160, size: 128)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "m_type", scope: !3764, file: !3765, line: 11, baseType: !521, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "m_ts", scope: !3764, file: !3765, line: 12, baseType: !98, size: 64, offset: 192)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3764, file: !3765, line: 13, baseType: !3771, size: 64, offset: 256)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msg_msgseg", file: !3, line: 37, size: 64, elements: !3773)
!3773 = !{!3774}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3772, file: !3, line: 38, baseType: !3771, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3764, file: !3765, line: 14, baseType: !83, size: 64, offset: 320)
!3776 = !{!3777, !3778, !3779, !3780, !3781, !3782, !3783, !3785, !3786, !3791, !3792}
!3777 = !DILocalVariable(name: "src", arg: 1, scope: !3760, file: !3, line: 84, type: !265)
!3778 = !DILocalVariable(name: "len", arg: 2, scope: !3760, file: !3, line: 84, type: !98)
!3779 = !DILocalVariable(name: "msg", scope: !3760, file: !3, line: 86, type: !3763)
!3780 = !DILocalVariable(name: "seg", scope: !3760, file: !3, line: 87, type: !3771)
!3781 = !DILocalVariable(name: "err", scope: !3760, file: !3, line: 88, type: !85)
!3782 = !DILocalVariable(name: "alen", scope: !3760, file: !3, line: 89, type: !98)
!3783 = !DILocalVariable(name: "__UNIQUE_ID___x286", scope: !3784, file: !3, line: 95, type: !98)
!3784 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 95, column: 9)
!3785 = !DILocalVariable(name: "__UNIQUE_ID___y287", scope: !3784, file: !3, line: 95, type: !102)
!3786 = !DILocalVariable(name: "__UNIQUE_ID___x288", scope: !3787, file: !3, line: 102, type: !98)
!3787 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 102, column: 10)
!3788 = distinct !DILexicalBlock(scope: !3789, file: !3, line: 99, column: 54)
!3789 = distinct !DILexicalBlock(scope: !3790, file: !3, line: 99, column: 2)
!3790 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 99, column: 2)
!3791 = !DILocalVariable(name: "__UNIQUE_ID___y289", scope: !3787, file: !3, line: 102, type: !102)
!3792 = !DILabel(scope: !3760, name: "out_err", file: !3, line: 113)
!3793 = !DILocation(line: 84, column: 45, scope: !3760)
!3794 = !DILocation(line: 84, column: 57, scope: !3760)
!3795 = !DILocation(line: 86, column: 2, scope: !3760)
!3796 = !DILocation(line: 86, column: 18, scope: !3760)
!3797 = !DILocation(line: 87, column: 2, scope: !3760)
!3798 = !DILocation(line: 87, column: 21, scope: !3760)
!3799 = !DILocation(line: 88, column: 2, scope: !3760)
!3800 = !DILocation(line: 88, column: 6, scope: !3760)
!3801 = !DILocation(line: 89, column: 2, scope: !3760)
!3802 = !DILocation(line: 89, column: 9, scope: !3760)
!3803 = !DILocation(line: 91, column: 18, scope: !3760)
!3804 = !DILocation(line: 91, column: 8, scope: !3760)
!3805 = !DILocation(line: 91, column: 6, scope: !3760)
!3806 = !DILocation(line: 92, column: 6, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 92, column: 6)
!3808 = !DILocation(line: 92, column: 10, scope: !3807)
!3809 = !DILocation(line: 92, column: 6, scope: !3760)
!3810 = !DILocation(line: 93, column: 10, scope: !3807)
!3811 = !DILocation(line: 93, column: 3, scope: !3807)
!3812 = !DILocation(line: 95, column: 9, scope: !3784)
!3813 = !DILocation(line: 95, column: 9, scope: !3760)
!3814 = !DILocation(line: 95, column: 7, scope: !3760)
!3815 = !DILocation(line: 96, column: 21, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 96, column: 6)
!3817 = !DILocation(line: 96, column: 25, scope: !3816)
!3818 = !DILocation(line: 96, column: 30, scope: !3816)
!3819 = !DILocation(line: 96, column: 35, scope: !3816)
!3820 = !DILocation(line: 96, column: 6, scope: !3816)
!3821 = !DILocation(line: 96, column: 6, scope: !3760)
!3822 = !DILocation(line: 97, column: 3, scope: !3816)
!3823 = !DILocation(line: 99, column: 13, scope: !3790)
!3824 = !DILocation(line: 99, column: 18, scope: !3790)
!3825 = !DILocation(line: 99, column: 11, scope: !3790)
!3826 = !DILocation(line: 99, column: 7, scope: !3790)
!3827 = !DILocation(line: 99, column: 24, scope: !3789)
!3828 = !DILocation(line: 99, column: 28, scope: !3789)
!3829 = !DILocation(line: 99, column: 2, scope: !3790)
!3830 = !DILocation(line: 100, column: 10, scope: !3788)
!3831 = !DILocation(line: 100, column: 7, scope: !3788)
!3832 = !DILocation(line: 101, column: 24, scope: !3788)
!3833 = !DILocation(line: 101, column: 30, scope: !3788)
!3834 = !DILocation(line: 101, column: 28, scope: !3788)
!3835 = !DILocation(line: 101, column: 7, scope: !3788)
!3836 = !DILocation(line: 102, column: 10, scope: !3787)
!3837 = !DILocation(line: 102, column: 10, scope: !3788)
!3838 = !DILocation(line: 102, column: 8, scope: !3788)
!3839 = !DILocation(line: 103, column: 22, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 103, column: 7)
!3841 = !DILocation(line: 103, column: 26, scope: !3840)
!3842 = !DILocation(line: 103, column: 31, scope: !3840)
!3843 = !DILocation(line: 103, column: 36, scope: !3840)
!3844 = !DILocation(line: 103, column: 7, scope: !3840)
!3845 = !DILocation(line: 103, column: 7, scope: !3788)
!3846 = !DILocation(line: 104, column: 4, scope: !3840)
!3847 = !DILocation(line: 105, column: 2, scope: !3788)
!3848 = !DILocation(line: 99, column: 43, scope: !3789)
!3849 = !DILocation(line: 99, column: 48, scope: !3789)
!3850 = !DILocation(line: 99, column: 41, scope: !3789)
!3851 = !DILocation(line: 99, column: 2, scope: !3789)
!3852 = distinct !{!3852, !3829, !3853, !3854, !3855}
!3853 = !DILocation(line: 105, column: 2, scope: !3790)
!3854 = !{!"llvm.loop.mustprogress"}
!3855 = !{!"llvm.loop.unroll.disable"}
!3856 = !DILocation(line: 107, column: 31, scope: !3760)
!3857 = !DILocation(line: 107, column: 8, scope: !3760)
!3858 = !DILocation(line: 107, column: 6, scope: !3760)
!3859 = !DILocation(line: 108, column: 6, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 108, column: 6)
!3861 = !DILocation(line: 108, column: 6, scope: !3760)
!3862 = !DILocation(line: 109, column: 3, scope: !3860)
!3863 = !DILocation(line: 111, column: 9, scope: !3760)
!3864 = !DILocation(line: 111, column: 2, scope: !3760)
!3865 = !DILocation(line: 113, column: 1, scope: !3760)
!3866 = !DILocation(line: 114, column: 11, scope: !3760)
!3867 = !DILocation(line: 114, column: 2, scope: !3760)
!3868 = !DILocation(line: 115, column: 17, scope: !3760)
!3869 = !DILocation(line: 115, column: 9, scope: !3760)
!3870 = !DILocation(line: 115, column: 2, scope: !3760)
!3871 = !DILocation(line: 116, column: 1, scope: !3760)
!3872 = distinct !DISubprogram(name: "alloc_msg", scope: !3, file: !3, line: 46, type: !3873, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!3763, !98}
!3875 = !{!3876, !3877, !3878, !3880, !3881, !3883, !3884, !3886, !3888, !3889}
!3876 = !DILocalVariable(name: "len", arg: 1, scope: !3872, file: !3, line: 46, type: !98)
!3877 = !DILocalVariable(name: "msg", scope: !3872, file: !3, line: 48, type: !3763)
!3878 = !DILocalVariable(name: "pseg", scope: !3872, file: !3, line: 49, type: !3879)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3880 = !DILocalVariable(name: "alen", scope: !3872, file: !3, line: 50, type: !98)
!3881 = !DILocalVariable(name: "__UNIQUE_ID___x282", scope: !3882, file: !3, line: 52, type: !98)
!3882 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 52, column: 9)
!3883 = !DILocalVariable(name: "__UNIQUE_ID___y283", scope: !3882, file: !3, line: 52, type: !102)
!3884 = !DILocalVariable(name: "seg", scope: !3885, file: !3, line: 63, type: !3771)
!3885 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 62, column: 18)
!3886 = !DILocalVariable(name: "__UNIQUE_ID___x284", scope: !3887, file: !3, line: 67, type: !98)
!3887 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 67, column: 10)
!3888 = !DILocalVariable(name: "__UNIQUE_ID___y285", scope: !3887, file: !3, line: 67, type: !102)
!3889 = !DILabel(scope: !3872, name: "out_err", file: !3, line: 79)
!3890 = !DILocation(line: 46, column: 41, scope: !3872)
!3891 = !DILocation(line: 48, column: 2, scope: !3872)
!3892 = !DILocation(line: 48, column: 18, scope: !3872)
!3893 = !DILocation(line: 49, column: 2, scope: !3872)
!3894 = !DILocation(line: 49, column: 22, scope: !3872)
!3895 = !DILocation(line: 50, column: 2, scope: !3872)
!3896 = !DILocation(line: 50, column: 9, scope: !3872)
!3897 = !DILocation(line: 52, column: 9, scope: !3882)
!3898 = !DILocation(line: 52, column: 9, scope: !3872)
!3899 = !DILocation(line: 52, column: 7, scope: !3872)
!3900 = !DILocation(line: 53, column: 31, scope: !3872)
!3901 = !DILocation(line: 53, column: 29, scope: !3872)
!3902 = !DILocation(line: 53, column: 8, scope: !3872)
!3903 = !DILocation(line: 53, column: 6, scope: !3872)
!3904 = !DILocation(line: 54, column: 6, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 54, column: 6)
!3906 = !DILocation(line: 54, column: 10, scope: !3905)
!3907 = !DILocation(line: 54, column: 6, scope: !3872)
!3908 = !DILocation(line: 55, column: 3, scope: !3905)
!3909 = !DILocation(line: 57, column: 2, scope: !3872)
!3910 = !DILocation(line: 57, column: 7, scope: !3872)
!3911 = !DILocation(line: 57, column: 12, scope: !3872)
!3912 = !DILocation(line: 58, column: 2, scope: !3872)
!3913 = !DILocation(line: 58, column: 7, scope: !3872)
!3914 = !DILocation(line: 58, column: 16, scope: !3872)
!3915 = !DILocation(line: 60, column: 9, scope: !3872)
!3916 = !DILocation(line: 60, column: 6, scope: !3872)
!3917 = !DILocation(line: 61, column: 10, scope: !3872)
!3918 = !DILocation(line: 61, column: 15, scope: !3872)
!3919 = !DILocation(line: 61, column: 7, scope: !3872)
!3920 = !DILocation(line: 62, column: 2, scope: !3872)
!3921 = !DILocation(line: 62, column: 9, scope: !3872)
!3922 = !DILocation(line: 62, column: 13, scope: !3872)
!3923 = !DILocation(line: 63, column: 3, scope: !3885)
!3924 = !DILocation(line: 63, column: 22, scope: !3885)
!3925 = !DILocation(line: 65, column: 3, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 65, column: 3)
!3927 = !DILocation(line: 67, column: 10, scope: !3887)
!3928 = !DILocation(line: 67, column: 10, scope: !3885)
!3929 = !DILocation(line: 67, column: 8, scope: !3885)
!3930 = !DILocation(line: 68, column: 32, scope: !3885)
!3931 = !DILocation(line: 68, column: 30, scope: !3885)
!3932 = !DILocation(line: 68, column: 9, scope: !3885)
!3933 = !DILocation(line: 68, column: 7, scope: !3885)
!3934 = !DILocation(line: 69, column: 7, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 69, column: 7)
!3936 = !DILocation(line: 69, column: 11, scope: !3935)
!3937 = !DILocation(line: 69, column: 7, scope: !3885)
!3938 = !DILocation(line: 70, column: 4, scope: !3935)
!3939 = !DILocation(line: 71, column: 11, scope: !3885)
!3940 = !DILocation(line: 71, column: 4, scope: !3885)
!3941 = !DILocation(line: 71, column: 9, scope: !3885)
!3942 = !DILocation(line: 72, column: 3, scope: !3885)
!3943 = !DILocation(line: 72, column: 8, scope: !3885)
!3944 = !DILocation(line: 72, column: 13, scope: !3885)
!3945 = !DILocation(line: 73, column: 11, scope: !3885)
!3946 = !DILocation(line: 73, column: 16, scope: !3885)
!3947 = !DILocation(line: 73, column: 8, scope: !3885)
!3948 = !DILocation(line: 74, column: 10, scope: !3885)
!3949 = !DILocation(line: 74, column: 7, scope: !3885)
!3950 = !DILocation(line: 75, column: 2, scope: !3872)
!3951 = distinct !{!3951, !3920, !3950, !3854, !3855}
!3952 = !DILocation(line: 77, column: 9, scope: !3872)
!3953 = !DILocation(line: 77, column: 2, scope: !3872)
!3954 = !DILocation(line: 79, column: 1, scope: !3872)
!3955 = !DILocation(line: 80, column: 11, scope: !3872)
!3956 = !DILocation(line: 80, column: 2, scope: !3872)
!3957 = !DILocation(line: 81, column: 2, scope: !3872)
!3958 = !DILocation(line: 82, column: 1, scope: !3872)
!3959 = distinct !DISubprogram(name: "ERR_PTR", scope: !3960, file: !3960, line: 39, type: !3961, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3963)
!3960 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!83, !521}
!3963 = !{!3964}
!3964 = !DILocalVariable(name: "error", arg: 1, scope: !3959, file: !3960, line: 39, type: !521)
!3965 = !DILocation(line: 39, column: 48, scope: !3959)
!3966 = !DILocation(line: 41, column: 18, scope: !3959)
!3967 = !DILocation(line: 41, column: 9, scope: !3959)
!3968 = !DILocation(line: 41, column: 2, scope: !3959)
!3969 = distinct !DISubprogram(name: "copy_from_user", scope: !3970, file: !3970, line: 180, type: !3971, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3973)
!3970 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!102, !83, !265, !102}
!3973 = !{!3974, !3975, !3976}
!3974 = !DILocalVariable(name: "to", arg: 1, scope: !3969, file: !3970, line: 180, type: !83)
!3975 = !DILocalVariable(name: "from", arg: 2, scope: !3969, file: !3970, line: 180, type: !265)
!3976 = !DILocalVariable(name: "n", arg: 3, scope: !3969, file: !3970, line: 180, type: !102)
!3977 = !DILocation(line: 180, column: 22, scope: !3969)
!3978 = !DILocation(line: 180, column: 45, scope: !3969)
!3979 = !DILocation(line: 180, column: 65, scope: !3969)
!3980 = !DILocation(line: 182, column: 22, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3969, file: !3970, line: 182, column: 6)
!3982 = !DILocation(line: 182, column: 26, scope: !3981)
!3983 = !DILocation(line: 182, column: 6, scope: !3981)
!3984 = !DILocation(line: 182, column: 6, scope: !3969)
!3985 = !DILocation(line: 183, column: 23, scope: !3981)
!3986 = !DILocation(line: 183, column: 27, scope: !3981)
!3987 = !DILocation(line: 183, column: 33, scope: !3981)
!3988 = !DILocation(line: 183, column: 7, scope: !3981)
!3989 = !DILocation(line: 183, column: 5, scope: !3981)
!3990 = !DILocation(line: 183, column: 3, scope: !3981)
!3991 = !DILocation(line: 184, column: 9, scope: !3969)
!3992 = !DILocation(line: 184, column: 2, scope: !3969)
!3993 = !DISubprogram(name: "security_msg_msg_alloc", scope: !3994, file: !3994, line: 453, type: !3995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3994 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!85, !3763}
!3997 = distinct !DISubprogram(name: "free_msg", scope: !3, file: !3, line: 169, type: !3998, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4000)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{null, !3763}
!4000 = !{!4001, !4002, !4003}
!4001 = !DILocalVariable(name: "msg", arg: 1, scope: !3997, file: !3, line: 169, type: !3763)
!4002 = !DILocalVariable(name: "seg", scope: !3997, file: !3, line: 171, type: !3771)
!4003 = !DILocalVariable(name: "tmp", scope: !4004, file: !3, line: 178, type: !3771)
!4004 = distinct !DILexicalBlock(scope: !3997, file: !3, line: 177, column: 22)
!4005 = !DILocation(line: 169, column: 31, scope: !3997)
!4006 = !DILocation(line: 171, column: 2, scope: !3997)
!4007 = !DILocation(line: 171, column: 21, scope: !3997)
!4008 = !DILocation(line: 173, column: 24, scope: !3997)
!4009 = !DILocation(line: 173, column: 2, scope: !3997)
!4010 = !DILocation(line: 175, column: 8, scope: !3997)
!4011 = !DILocation(line: 175, column: 13, scope: !3997)
!4012 = !DILocation(line: 175, column: 6, scope: !3997)
!4013 = !DILocation(line: 176, column: 8, scope: !3997)
!4014 = !DILocation(line: 176, column: 2, scope: !3997)
!4015 = !DILocation(line: 177, column: 2, scope: !3997)
!4016 = !DILocation(line: 177, column: 9, scope: !3997)
!4017 = !DILocation(line: 177, column: 13, scope: !3997)
!4018 = !DILocation(line: 178, column: 3, scope: !4004)
!4019 = !DILocation(line: 178, column: 22, scope: !4004)
!4020 = !DILocation(line: 178, column: 28, scope: !4004)
!4021 = !DILocation(line: 178, column: 33, scope: !4004)
!4022 = !DILocation(line: 180, column: 3, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 180, column: 3)
!4024 = !DILocation(line: 181, column: 9, scope: !4004)
!4025 = !DILocation(line: 181, column: 3, scope: !4004)
!4026 = !DILocation(line: 182, column: 9, scope: !4004)
!4027 = !DILocation(line: 182, column: 7, scope: !4004)
!4028 = !DILocation(line: 183, column: 2, scope: !3997)
!4029 = distinct !{!4029, !4015, !4028, !3854, !3855}
!4030 = !DILocation(line: 184, column: 1, scope: !3997)
!4031 = distinct !DISubprogram(name: "copy_msg", scope: !3, file: !3, line: 145, type: !4032, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4034)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!3763, !3763, !3763}
!4034 = !{!4035, !4036}
!4035 = !DILocalVariable(name: "src", arg: 1, scope: !4031, file: !3, line: 145, type: !3763)
!4036 = !DILocalVariable(name: "dst", arg: 2, scope: !4031, file: !3, line: 145, type: !3763)
!4037 = !DILocation(line: 145, column: 42, scope: !4031)
!4038 = !DILocation(line: 145, column: 63, scope: !4031)
!4039 = !DILocation(line: 147, column: 9, scope: !4031)
!4040 = !DILocation(line: 147, column: 2, scope: !4031)
!4041 = distinct !DISubprogram(name: "store_msg", scope: !3, file: !3, line: 150, type: !4042, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4044)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!85, !83, !3763, !98}
!4044 = !{!4045, !4046, !4047, !4048, !4049, !4050, !4052, !4053, !4058}
!4045 = !DILocalVariable(name: "dest", arg: 1, scope: !4041, file: !3, line: 150, type: !83)
!4046 = !DILocalVariable(name: "msg", arg: 2, scope: !4041, file: !3, line: 150, type: !3763)
!4047 = !DILocalVariable(name: "len", arg: 3, scope: !4041, file: !3, line: 150, type: !98)
!4048 = !DILocalVariable(name: "alen", scope: !4041, file: !3, line: 152, type: !98)
!4049 = !DILocalVariable(name: "seg", scope: !4041, file: !3, line: 153, type: !3771)
!4050 = !DILocalVariable(name: "__UNIQUE_ID___x290", scope: !4051, file: !3, line: 155, type: !98)
!4051 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 155, column: 9)
!4052 = !DILocalVariable(name: "__UNIQUE_ID___y291", scope: !4051, file: !3, line: 155, type: !102)
!4053 = !DILocalVariable(name: "__UNIQUE_ID___x292", scope: !4054, file: !3, line: 162, type: !98)
!4054 = distinct !DILexicalBlock(scope: !4055, file: !3, line: 162, column: 10)
!4055 = distinct !DILexicalBlock(scope: !4056, file: !3, line: 159, column: 54)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 159, column: 2)
!4057 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 159, column: 2)
!4058 = !DILocalVariable(name: "__UNIQUE_ID___y293", scope: !4054, file: !3, line: 162, type: !102)
!4059 = !DILocation(line: 150, column: 28, scope: !4041)
!4060 = !DILocation(line: 150, column: 50, scope: !4041)
!4061 = !DILocation(line: 150, column: 62, scope: !4041)
!4062 = !DILocation(line: 152, column: 2, scope: !4041)
!4063 = !DILocation(line: 152, column: 9, scope: !4041)
!4064 = !DILocation(line: 153, column: 2, scope: !4041)
!4065 = !DILocation(line: 153, column: 21, scope: !4041)
!4066 = !DILocation(line: 155, column: 9, scope: !4051)
!4067 = !DILocation(line: 155, column: 9, scope: !4041)
!4068 = !DILocation(line: 155, column: 7, scope: !4041)
!4069 = !DILocation(line: 156, column: 19, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 156, column: 6)
!4071 = !DILocation(line: 156, column: 25, scope: !4070)
!4072 = !DILocation(line: 156, column: 29, scope: !4070)
!4073 = !DILocation(line: 156, column: 34, scope: !4070)
!4074 = !DILocation(line: 156, column: 6, scope: !4070)
!4075 = !DILocation(line: 156, column: 6, scope: !4041)
!4076 = !DILocation(line: 157, column: 3, scope: !4070)
!4077 = !DILocation(line: 159, column: 13, scope: !4057)
!4078 = !DILocation(line: 159, column: 18, scope: !4057)
!4079 = !DILocation(line: 159, column: 11, scope: !4057)
!4080 = !DILocation(line: 159, column: 7, scope: !4057)
!4081 = !DILocation(line: 159, column: 24, scope: !4056)
!4082 = !DILocation(line: 159, column: 28, scope: !4056)
!4083 = !DILocation(line: 159, column: 2, scope: !4057)
!4084 = !DILocation(line: 160, column: 10, scope: !4055)
!4085 = !DILocation(line: 160, column: 7, scope: !4055)
!4086 = !DILocation(line: 161, column: 25, scope: !4055)
!4087 = !DILocation(line: 161, column: 32, scope: !4055)
!4088 = !DILocation(line: 161, column: 30, scope: !4055)
!4089 = !DILocation(line: 161, column: 8, scope: !4055)
!4090 = !DILocation(line: 162, column: 10, scope: !4054)
!4091 = !DILocation(line: 162, column: 10, scope: !4055)
!4092 = !DILocation(line: 162, column: 8, scope: !4055)
!4093 = !DILocation(line: 163, column: 20, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4055, file: !3, line: 163, column: 7)
!4095 = !DILocation(line: 163, column: 26, scope: !4094)
!4096 = !DILocation(line: 163, column: 30, scope: !4094)
!4097 = !DILocation(line: 163, column: 35, scope: !4094)
!4098 = !DILocation(line: 163, column: 7, scope: !4094)
!4099 = !DILocation(line: 163, column: 7, scope: !4055)
!4100 = !DILocation(line: 164, column: 4, scope: !4094)
!4101 = !DILocation(line: 165, column: 2, scope: !4055)
!4102 = !DILocation(line: 159, column: 43, scope: !4056)
!4103 = !DILocation(line: 159, column: 48, scope: !4056)
!4104 = !DILocation(line: 159, column: 41, scope: !4056)
!4105 = !DILocation(line: 159, column: 2, scope: !4056)
!4106 = distinct !{!4106, !4083, !4107, !3854, !3855}
!4107 = !DILocation(line: 165, column: 2, scope: !4057)
!4108 = !DILocation(line: 166, column: 2, scope: !4041)
!4109 = !DILocation(line: 167, column: 1, scope: !4041)
!4110 = distinct !DISubprogram(name: "copy_to_user", scope: !3970, file: !3970, line: 188, type: !3971, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4111)
!4111 = !{!4112, !4113, !4114}
!4112 = !DILocalVariable(name: "to", arg: 1, scope: !4110, file: !3970, line: 188, type: !83)
!4113 = !DILocalVariable(name: "from", arg: 2, scope: !4110, file: !3970, line: 188, type: !265)
!4114 = !DILocalVariable(name: "n", arg: 3, scope: !4110, file: !3970, line: 188, type: !102)
!4115 = !DILocation(line: 188, column: 27, scope: !4110)
!4116 = !DILocation(line: 188, column: 43, scope: !4110)
!4117 = !DILocation(line: 188, column: 63, scope: !4110)
!4118 = !DILocation(line: 190, column: 22, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4110, file: !3970, line: 190, column: 6)
!4120 = !DILocation(line: 190, column: 28, scope: !4119)
!4121 = !DILocation(line: 190, column: 6, scope: !4119)
!4122 = !DILocation(line: 190, column: 6, scope: !4110)
!4123 = !DILocation(line: 191, column: 21, scope: !4119)
!4124 = !DILocation(line: 191, column: 25, scope: !4119)
!4125 = !DILocation(line: 191, column: 31, scope: !4119)
!4126 = !DILocation(line: 191, column: 7, scope: !4119)
!4127 = !DILocation(line: 191, column: 5, scope: !4119)
!4128 = !DILocation(line: 191, column: 3, scope: !4119)
!4129 = !DILocation(line: 192, column: 9, scope: !4110)
!4130 = !DILocation(line: 192, column: 2, scope: !4110)
!4131 = !DISubprogram(name: "security_msg_msg_free", scope: !3994, file: !3994, line: 454, type: !3998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4132 = !DISubprogram(name: "kfree", scope: !176, file: !176, line: 227, type: !4133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{null, !265}
!4135 = distinct !DISubprogram(name: "__might_resched", scope: !4136, file: !4136, line: 184, type: !4137, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4139)
!4136 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4137 = !DISubroutineType(types: !4138)
!4138 = !{null, !79, !85, !7}
!4139 = !{!4140, !4141, !4142}
!4140 = !DILocalVariable(name: "file", arg: 1, scope: !4135, file: !4136, line: 184, type: !79)
!4141 = !DILocalVariable(name: "line", arg: 2, scope: !4135, file: !4136, line: 184, type: !85)
!4142 = !DILocalVariable(name: "offsets", arg: 3, scope: !4135, file: !4136, line: 185, type: !7)
!4143 = !DILocation(line: 184, column: 50, scope: !4135)
!4144 = !DILocation(line: 184, column: 60, scope: !4135)
!4145 = !DILocation(line: 185, column: 23, scope: !4135)
!4146 = !DILocation(line: 185, column: 34, scope: !4135)
!4147 = !DILocation(line: 2104, column: 9, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !3748, file: !1613, line: 2104, column: 9)
!4149 = !DILocation(line: 2104, column: 9, scope: !3748)
!4150 = !DILocation(line: 2104, column: 2, scope: !3748)
!4151 = distinct !DISubprogram(name: "kmalloc", scope: !176, file: !176, line: 591, type: !4152, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4154)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!83, !98, !187}
!4154 = !{!4155, !4156, !4157}
!4155 = !DILocalVariable(name: "size", arg: 1, scope: !4151, file: !176, line: 591, type: !98)
!4156 = !DILocalVariable(name: "flags", arg: 2, scope: !4151, file: !176, line: 591, type: !187)
!4157 = !DILocalVariable(name: "index", scope: !4158, file: !176, line: 594, type: !7)
!4158 = distinct !DILexicalBlock(scope: !4159, file: !176, line: 593, column: 42)
!4159 = distinct !DILexicalBlock(scope: !4151, file: !176, line: 593, column: 6)
!4160 = !DILocation(line: 591, column: 61, scope: !4151)
!4161 = !DILocation(line: 591, column: 73, scope: !4151)
!4162 = !DILocation(line: 593, column: 27, scope: !4159)
!4163 = !DILocation(line: 593, column: 6, scope: !4159)
!4164 = !DILocation(line: 593, column: 33, scope: !4159)
!4165 = !DILocation(line: 593, column: 36, scope: !4159)
!4166 = !DILocation(line: 593, column: 6, scope: !4151)
!4167 = !DILocation(line: 594, column: 3, scope: !4158)
!4168 = !DILocation(line: 594, column: 16, scope: !4158)
!4169 = !DILocation(line: 596, column: 7, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4158, file: !176, line: 596, column: 7)
!4171 = !DILocation(line: 596, column: 12, scope: !4170)
!4172 = !DILocation(line: 596, column: 7, scope: !4158)
!4173 = !DILocation(line: 597, column: 25, scope: !4170)
!4174 = !DILocation(line: 597, column: 31, scope: !4170)
!4175 = !DILocation(line: 597, column: 11, scope: !4170)
!4176 = !DILocation(line: 597, column: 4, scope: !4170)
!4177 = !DILocation(line: 599, column: 11, scope: !4158)
!4178 = !DILocation(line: 599, column: 9, scope: !4158)
!4179 = !DILocation(line: 601, column: 33, scope: !4158)
!4180 = !DILocation(line: 601, column: 40, scope: !4158)
!4181 = !DILocation(line: 601, column: 20, scope: !4158)
!4182 = !DILocation(line: 601, column: 5, scope: !4158)
!4183 = !DILocation(line: 601, column: 51, scope: !4158)
!4184 = !DILocation(line: 602, column: 5, scope: !4158)
!4185 = !DILocation(line: 602, column: 12, scope: !4158)
!4186 = !DILocation(line: 600, column: 10, scope: !4158)
!4187 = !DILocation(line: 600, column: 3, scope: !4158)
!4188 = !DILocation(line: 603, column: 2, scope: !4159)
!4189 = !DILocation(line: 604, column: 19, scope: !4151)
!4190 = !DILocation(line: 604, column: 25, scope: !4151)
!4191 = !DILocation(line: 604, column: 9, scope: !4151)
!4192 = !DILocation(line: 604, column: 2, scope: !4151)
!4193 = !DILocation(line: 605, column: 1, scope: !4151)
!4194 = !DISubprogram(name: "kmalloc_large", scope: !176, file: !176, line: 531, type: !4152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4195 = distinct !DISubprogram(name: "__kmalloc_index", scope: !176, file: !176, line: 444, type: !4196, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4198)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!7, !98, !256}
!4198 = !{!4199, !4200}
!4199 = !DILocalVariable(name: "size", arg: 1, scope: !4195, file: !176, line: 444, type: !98)
!4200 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4195, file: !176, line: 445, type: !256)
!4201 = !DILocation(line: 444, column: 60, scope: !4195)
!4202 = !DILocation(line: 445, column: 16, scope: !4195)
!4203 = !DILocation(line: 447, column: 7, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 447, column: 6)
!4205 = !DILocation(line: 447, column: 6, scope: !4195)
!4206 = !DILocation(line: 448, column: 3, scope: !4204)
!4207 = !DILocation(line: 450, column: 6, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 450, column: 6)
!4209 = !DILocation(line: 450, column: 11, scope: !4208)
!4210 = !DILocation(line: 450, column: 6, scope: !4195)
!4211 = !DILocation(line: 451, column: 3, scope: !4208)
!4212 = !DILocation(line: 453, column: 32, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 453, column: 6)
!4214 = !DILocation(line: 453, column: 37, scope: !4213)
!4215 = !DILocation(line: 453, column: 42, scope: !4213)
!4216 = !DILocation(line: 453, column: 45, scope: !4213)
!4217 = !DILocation(line: 453, column: 50, scope: !4213)
!4218 = !DILocation(line: 453, column: 6, scope: !4195)
!4219 = !DILocation(line: 454, column: 3, scope: !4213)
!4220 = !DILocation(line: 455, column: 32, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 455, column: 6)
!4222 = !DILocation(line: 455, column: 37, scope: !4221)
!4223 = !DILocation(line: 455, column: 43, scope: !4221)
!4224 = !DILocation(line: 455, column: 46, scope: !4221)
!4225 = !DILocation(line: 455, column: 51, scope: !4221)
!4226 = !DILocation(line: 455, column: 6, scope: !4195)
!4227 = !DILocation(line: 456, column: 3, scope: !4221)
!4228 = !DILocation(line: 457, column: 6, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 457, column: 6)
!4230 = !DILocation(line: 457, column: 11, scope: !4229)
!4231 = !DILocation(line: 457, column: 6, scope: !4195)
!4232 = !DILocation(line: 457, column: 26, scope: !4229)
!4233 = !DILocation(line: 458, column: 6, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 458, column: 6)
!4235 = !DILocation(line: 458, column: 11, scope: !4234)
!4236 = !DILocation(line: 458, column: 6, scope: !4195)
!4237 = !DILocation(line: 458, column: 26, scope: !4234)
!4238 = !DILocation(line: 459, column: 6, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 459, column: 6)
!4240 = !DILocation(line: 459, column: 11, scope: !4239)
!4241 = !DILocation(line: 459, column: 6, scope: !4195)
!4242 = !DILocation(line: 459, column: 26, scope: !4239)
!4243 = !DILocation(line: 460, column: 6, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 460, column: 6)
!4245 = !DILocation(line: 460, column: 11, scope: !4244)
!4246 = !DILocation(line: 460, column: 6, scope: !4195)
!4247 = !DILocation(line: 460, column: 26, scope: !4244)
!4248 = !DILocation(line: 461, column: 6, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 461, column: 6)
!4250 = !DILocation(line: 461, column: 11, scope: !4249)
!4251 = !DILocation(line: 461, column: 6, scope: !4195)
!4252 = !DILocation(line: 461, column: 26, scope: !4249)
!4253 = !DILocation(line: 462, column: 6, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 462, column: 6)
!4255 = !DILocation(line: 462, column: 11, scope: !4254)
!4256 = !DILocation(line: 462, column: 6, scope: !4195)
!4257 = !DILocation(line: 462, column: 26, scope: !4254)
!4258 = !DILocation(line: 463, column: 6, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 463, column: 6)
!4260 = !DILocation(line: 463, column: 11, scope: !4259)
!4261 = !DILocation(line: 463, column: 6, scope: !4195)
!4262 = !DILocation(line: 463, column: 26, scope: !4259)
!4263 = !DILocation(line: 464, column: 6, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 464, column: 6)
!4265 = !DILocation(line: 464, column: 11, scope: !4264)
!4266 = !DILocation(line: 464, column: 6, scope: !4195)
!4267 = !DILocation(line: 464, column: 26, scope: !4264)
!4268 = !DILocation(line: 465, column: 6, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 465, column: 6)
!4270 = !DILocation(line: 465, column: 11, scope: !4269)
!4271 = !DILocation(line: 465, column: 6, scope: !4195)
!4272 = !DILocation(line: 465, column: 26, scope: !4269)
!4273 = !DILocation(line: 466, column: 6, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 466, column: 6)
!4275 = !DILocation(line: 466, column: 11, scope: !4274)
!4276 = !DILocation(line: 466, column: 6, scope: !4195)
!4277 = !DILocation(line: 466, column: 26, scope: !4274)
!4278 = !DILocation(line: 467, column: 6, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 467, column: 6)
!4280 = !DILocation(line: 467, column: 11, scope: !4279)
!4281 = !DILocation(line: 467, column: 6, scope: !4195)
!4282 = !DILocation(line: 467, column: 26, scope: !4279)
!4283 = !DILocation(line: 468, column: 6, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 468, column: 6)
!4285 = !DILocation(line: 468, column: 11, scope: !4284)
!4286 = !DILocation(line: 468, column: 6, scope: !4195)
!4287 = !DILocation(line: 468, column: 26, scope: !4284)
!4288 = !DILocation(line: 469, column: 6, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 469, column: 6)
!4290 = !DILocation(line: 469, column: 11, scope: !4289)
!4291 = !DILocation(line: 469, column: 6, scope: !4195)
!4292 = !DILocation(line: 469, column: 26, scope: !4289)
!4293 = !DILocation(line: 470, column: 6, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 470, column: 6)
!4295 = !DILocation(line: 470, column: 11, scope: !4294)
!4296 = !DILocation(line: 470, column: 6, scope: !4195)
!4297 = !DILocation(line: 470, column: 26, scope: !4294)
!4298 = !DILocation(line: 471, column: 6, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 471, column: 6)
!4300 = !DILocation(line: 471, column: 11, scope: !4299)
!4301 = !DILocation(line: 471, column: 6, scope: !4195)
!4302 = !DILocation(line: 471, column: 26, scope: !4299)
!4303 = !DILocation(line: 472, column: 6, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 472, column: 6)
!4305 = !DILocation(line: 472, column: 11, scope: !4304)
!4306 = !DILocation(line: 472, column: 6, scope: !4195)
!4307 = !DILocation(line: 472, column: 26, scope: !4304)
!4308 = !DILocation(line: 473, column: 6, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 473, column: 6)
!4310 = !DILocation(line: 473, column: 11, scope: !4309)
!4311 = !DILocation(line: 473, column: 6, scope: !4195)
!4312 = !DILocation(line: 473, column: 26, scope: !4309)
!4313 = !DILocation(line: 474, column: 6, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 474, column: 6)
!4315 = !DILocation(line: 474, column: 11, scope: !4314)
!4316 = !DILocation(line: 474, column: 6, scope: !4195)
!4317 = !DILocation(line: 474, column: 27, scope: !4314)
!4318 = !DILocation(line: 475, column: 6, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 475, column: 6)
!4320 = !DILocation(line: 475, column: 11, scope: !4319)
!4321 = !DILocation(line: 475, column: 6, scope: !4195)
!4322 = !DILocation(line: 475, column: 32, scope: !4319)
!4323 = !DILocation(line: 477, column: 50, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4195, file: !176, line: 477, column: 6)
!4325 = !{i8 0, i8 2}
!4326 = !DILocation(line: 477, column: 6, scope: !4195)
!4327 = !DILocation(line: 478, column: 3, scope: !4324)
!4328 = !DILocation(line: 478, column: 3, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4330, file: !176, line: 478, column: 3)
!4330 = distinct !DILexicalBlock(scope: !4324, file: !176, line: 478, column: 3)
!4331 = !{i32 -2141650002}
!4332 = !DILocation(line: 478, column: 3, scope: !4330)
!4333 = !DILocation(line: 480, column: 3, scope: !4324)
!4334 = !DILocation(line: 480, column: 3, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4324, file: !176, line: 480, column: 3)
!4336 = !DILocation(line: 480, column: 3, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4335, file: !176, line: 480, column: 3)
!4338 = !DILocation(line: 480, column: 3, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4335, file: !176, line: 480, column: 3)
!4340 = !{i64 2153317497, i64 2153317526, i64 2153317572, i64 2153317630, i64 2153317684, i64 2153317738, i64 2153317793, i64 2153317824}
!4341 = !DILocation(line: 483, column: 2, scope: !4195)
!4342 = !DILocation(line: 484, column: 1, scope: !4195)
!4343 = !DISubprogram(name: "kmalloc_trace", scope: !176, file: !176, line: 525, type: !4344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!83, !4346, !187, !98}
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4348, line: 325, flags: DIFlagFwdDecl)
!4348 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4349 = distinct !DISubprogram(name: "kmalloc_type", scope: !176, file: !176, line: 401, type: !4350, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4352)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!175, !187, !102}
!4352 = !{!4353, !4354}
!4353 = !DILocalVariable(name: "flags", arg: 1, scope: !4349, file: !176, line: 401, type: !187)
!4354 = !DILocalVariable(name: "caller", arg: 2, scope: !4349, file: !176, line: 401, type: !102)
!4355 = !DILocation(line: 401, column: 67, scope: !4349)
!4356 = !DILocation(line: 401, column: 88, scope: !4349)
!4357 = !DILocation(line: 407, column: 6, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4349, file: !176, line: 407, column: 6)
!4359 = !DILocation(line: 407, column: 6, scope: !4349)
!4360 = !DILocation(line: 413, column: 3, scope: !4358)
!4361 = !DILocation(line: 423, column: 38, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4349, file: !176, line: 423, column: 6)
!4363 = !DILocation(line: 423, column: 44, scope: !4362)
!4364 = !DILocation(line: 423, column: 6, scope: !4349)
!4365 = !DILocation(line: 424, column: 3, scope: !4362)
!4366 = !DILocation(line: 426, column: 3, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4349, file: !176, line: 425, column: 6)
!4368 = !DILocation(line: 429, column: 1, scope: !4349)
!4369 = !DISubprogram(name: "__kmalloc", scope: !176, file: !176, line: 488, type: !4152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4370 = !DISubprogram(name: "__compiletime_assert_245", scope: !176, file: !176, line: 478, type: !2844, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4371 = distinct !DISubprogram(name: "check_copy_size", scope: !3742, file: !3742, line: 237, type: !4372, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4374)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!256, !265, !98, !256}
!4374 = !{!4375, !4376, !4377, !4378, !4379, !4382}
!4375 = !DILocalVariable(name: "addr", arg: 1, scope: !4371, file: !3742, line: 237, type: !265)
!4376 = !DILocalVariable(name: "bytes", arg: 2, scope: !4371, file: !3742, line: 237, type: !98)
!4377 = !DILocalVariable(name: "is_source", arg: 3, scope: !4371, file: !3742, line: 237, type: !256)
!4378 = !DILocalVariable(name: "sz", scope: !4371, file: !3742, line: 239, type: !85)
!4379 = !DILocalVariable(name: "__ret_warn_on", scope: !4380, file: !3742, line: 249, type: !85)
!4380 = distinct !DILexicalBlock(scope: !4381, file: !3742, line: 249, column: 6)
!4381 = distinct !DILexicalBlock(scope: !4371, file: !3742, line: 249, column: 6)
!4382 = !DILocalVariable(name: "__flags", scope: !4383, file: !3742, line: 249, type: !85)
!4383 = distinct !DILexicalBlock(scope: !4384, file: !3742, line: 249, column: 6)
!4384 = distinct !DILexicalBlock(scope: !4380, file: !3742, line: 249, column: 6)
!4385 = !DILocation(line: 237, column: 29, scope: !4371)
!4386 = !DILocation(line: 237, column: 42, scope: !4371)
!4387 = !DILocation(line: 237, column: 54, scope: !4371)
!4388 = !DILocation(line: 239, column: 2, scope: !4371)
!4389 = !DILocation(line: 239, column: 6, scope: !4371)
!4390 = !DILocation(line: 239, column: 33, scope: !4371)
!4391 = !DILocation(line: 239, column: 11, scope: !4371)
!4392 = !DILocation(line: 240, column: 6, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4371, file: !3742, line: 240, column: 6)
!4394 = !DILocation(line: 0, scope: !4393)
!4395 = !DILocation(line: 240, column: 6, scope: !4371)
!4396 = !DILocation(line: 241, column: 29, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !3742, line: 241, column: 7)
!4398 = distinct !DILexicalBlock(scope: !4393, file: !3742, line: 240, column: 39)
!4399 = !DILocation(line: 241, column: 8, scope: !4397)
!4400 = !DILocation(line: 241, column: 7, scope: !4398)
!4401 = !DILocation(line: 242, column: 18, scope: !4397)
!4402 = !DILocation(line: 242, column: 22, scope: !4397)
!4403 = !DILocation(line: 242, column: 4, scope: !4397)
!4404 = !DILocation(line: 243, column: 12, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4397, file: !3742, line: 243, column: 12)
!4406 = !DILocation(line: 243, column: 12, scope: !4397)
!4407 = !DILocation(line: 244, column: 4, scope: !4405)
!4408 = !{i32 788200}
!4409 = !DILocation(line: 246, column: 4, scope: !4405)
!4410 = !{i32 788229}
!4411 = !DILocation(line: 247, column: 3, scope: !4398)
!4412 = !DILocation(line: 249, column: 6, scope: !4380)
!4413 = !DILocation(line: 249, column: 6, scope: !4384)
!4414 = !DILocation(line: 249, column: 6, scope: !4383)
!4415 = !DILocation(line: 249, column: 6, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4383, file: !3742, line: 249, column: 6)
!4417 = !DILocation(line: 249, column: 6, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4383, file: !3742, line: 249, column: 6)
!4419 = !{i64 2149440471, i64 2149440500, i64 2149440546, i64 2149440604, i64 2149440658, i64 2149440712, i64 2149440767, i64 2149440798, i64 2149441106, i64 2149441112, i64 2149441159, i64 2149441182, i64 2149441208}
!4420 = !DILocation(line: 249, column: 6, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4383, file: !3742, line: 249, column: 6)
!4422 = !DILocation(line: 249, column: 6, scope: !4381)
!4423 = !DILocation(line: 249, column: 6, scope: !4371)
!4424 = !DILocation(line: 250, column: 3, scope: !4381)
!4425 = !DILocation(line: 251, column: 20, scope: !4371)
!4426 = !DILocation(line: 251, column: 26, scope: !4371)
!4427 = !DILocation(line: 251, column: 33, scope: !4371)
!4428 = !DILocation(line: 251, column: 2, scope: !4371)
!4429 = !DILocation(line: 252, column: 2, scope: !4371)
!4430 = !DILocation(line: 253, column: 1, scope: !4371)
!4431 = !DISubprogram(name: "_copy_from_user", scope: !3970, file: !3970, line: 158, type: !3971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4432 = distinct !DISubprogram(name: "copy_overflow", scope: !3742, file: !3742, line: 230, type: !4433, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4435)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{null, !85, !102}
!4435 = !{!4436, !4437}
!4436 = !DILocalVariable(name: "size", arg: 1, scope: !4432, file: !3742, line: 230, type: !85)
!4437 = !DILocalVariable(name: "count", arg: 2, scope: !4432, file: !3742, line: 230, type: !102)
!4438 = !DILocation(line: 230, column: 38, scope: !4432)
!4439 = !DILocation(line: 230, column: 58, scope: !4432)
!4440 = !DILocation(line: 233, column: 19, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4432, file: !3742, line: 232, column: 6)
!4442 = !DILocation(line: 233, column: 25, scope: !4441)
!4443 = !DILocation(line: 233, column: 3, scope: !4441)
!4444 = !DILocation(line: 234, column: 1, scope: !4432)
!4445 = !DISubprogram(name: "__bad_copy_from", scope: !3742, file: !3742, line: 224, type: !2844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4446 = !DISubprogram(name: "__bad_copy_to", scope: !3742, file: !3742, line: 226, type: !2844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4447 = distinct !DISubprogram(name: "check_object_size", scope: !3742, file: !3742, line: 218, type: !4448, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4450)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{null, !265, !102, !256}
!4450 = !{!4451, !4452, !4453}
!4451 = !DILocalVariable(name: "ptr", arg: 1, scope: !4447, file: !3742, line: 218, type: !265)
!4452 = !DILocalVariable(name: "n", arg: 2, scope: !4447, file: !3742, line: 218, type: !102)
!4453 = !DILocalVariable(name: "to_user", arg: 3, scope: !4447, file: !3742, line: 219, type: !256)
!4454 = !DILocation(line: 218, column: 50, scope: !4447)
!4455 = !DILocation(line: 218, column: 69, scope: !4447)
!4456 = !DILocation(line: 219, column: 15, scope: !4447)
!4457 = !DILocation(line: 220, column: 3, scope: !4447)
!4458 = !DISubprogram(name: "__copy_overflow", scope: !3742, file: !3742, line: 228, type: !4433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4459 = !DISubprogram(name: "_copy_to_user", scope: !3970, file: !3970, line: 176, type: !3971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
