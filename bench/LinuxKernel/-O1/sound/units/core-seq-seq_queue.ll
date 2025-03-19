; ModuleID = 'sound/core/seq/seq_queue.c'
source_filename = "sound/core/seq/seq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.snd_seq_queue = type { i32, [64 x i8], ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, %struct.spinlock, %struct.spinlock, [3 x i64], i32, %struct.mutex, %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_event_cell = type { %union.anon.13, ptr, ptr }
%union.anon.13 = type { %struct.snd_seq_event }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.snd_seq_event_data }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_addr = type { i8, i8 }
%union.snd_seq_event_data = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.snd_seq_timer = type { i8, i32, i32, %struct.snd_seq_real_time, %struct.snd_seq_timer_tick, i32, i32, %struct.snd_timer_id, ptr, i32, i64, i32, i32, %struct.timespec64, %struct.spinlock }
%struct.snd_seq_timer_tick = type { i32, i64, i64 }
%struct.snd_timer_id = type { i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i64 }
%struct.snd_seq_queue_tempo = type { i32, i32, i32, i32, i32, [24 x i8] }
%struct.snd_seq_remove_events = type { i32, %union.snd_seq_timestamp, i8, %struct.snd_seq_addr, i8, i32, i8, [10 x i32] }
%struct.snd_seq_ev_queue_control = type { i8, [3 x i8], %union.anon.14 }
%union.anon.14 = type { %union.snd_seq_timestamp }
%struct.snd_seq_queue_skew = type { i32, i32 }
%struct.snd_info_buffer = type { ptr, i32, i32, i32, i32, i32 }

@num_queues = internal global i32 0, align 4, !dbg !0
@queue_list = internal global [32 x ptr] zeroinitializer, align 16, !dbg !3982
@queue_list_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !4787
@.str = private unnamed_addr constant [16 x i8] c"queue %d: [%s]\0A\00", align 1, !dbg !3942
@.str.1 = private unnamed_addr constant [25 x i8] c"owned by client    : %d\0A\00", align 1, !dbg !3944
@.str.2 = private unnamed_addr constant [25 x i8] c"lock status        : %s\0A\00", align 1, !dbg !3949
@.str.3 = private unnamed_addr constant [7 x i8] c"Locked\00", align 1, !dbg !3951
@.str.4 = private unnamed_addr constant [5 x i8] c"Free\00", align 1, !dbg !3954
@.str.5 = private unnamed_addr constant [25 x i8] c"queued time events : %d\0A\00", align 1, !dbg !3959
@.str.6 = private unnamed_addr constant [25 x i8] c"queued tick events : %d\0A\00", align 1, !dbg !3961
@.str.7 = private unnamed_addr constant [25 x i8] c"timer state        : %s\0A\00", align 1, !dbg !3963
@.str.8 = private unnamed_addr constant [8 x i8] c"Running\00", align 1, !dbg !3965
@.str.9 = private unnamed_addr constant [8 x i8] c"Stopped\00", align 1, !dbg !3967
@.str.10 = private unnamed_addr constant [25 x i8] c"timer PPQ          : %d\0A\00", align 1, !dbg !3969
@.str.11 = private unnamed_addr constant [25 x i8] c"current tempo      : %d\0A\00", align 1, !dbg !3971
@.str.12 = private unnamed_addr constant [25 x i8] c"current BPM        : %d\0A\00", align 1, !dbg !3973
@.str.13 = private unnamed_addr constant [32 x i8] c"current time       : %d.%09d s\0A\00", align 1, !dbg !3975
@.str.14 = private unnamed_addr constant [25 x i8] c"current tick       : %d\0A\00", align 1, !dbg !3977
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !3979
@.str.16 = private unnamed_addr constant [27 x i8] c"sound/core/seq/seq_queue.c\00", align 1, !dbg !4766
@queue_new.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4771
@.str.17 = private unnamed_addr constant [16 x i8] c"&q->timer_mutex\00", align 1, !dbg !4780
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.18 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4782

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_queue_get_cur_queues() #0 align 16 !dbg !4798 {
entry:
  %0 = load i32, ptr @num_queues, align 4, !dbg !4799
  ret i32 %0, !dbg !4800
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_queues_delete() #0 align 16 !dbg !4801 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4804
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4803, metadata !DIExpression()), !dbg !4805
  store i32 0, ptr %i, align 4, !dbg !4806
  br label %for.cond, !dbg !4808

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4809
  %cmp = icmp slt i32 %0, 32, !dbg !4811
  br i1 %cmp, label %for.body, label %for.end, !dbg !4812

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !4813
  %idxprom = sext i32 %1 to i64, !dbg !4816
  %arrayidx = getelementptr [32 x ptr], ptr @queue_list, i64 0, i64 %idxprom, !dbg !4816
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !4816
  %tobool = icmp ne ptr %2, null, !dbg !4816
  br i1 %tobool, label %if.then, label %if.end, !dbg !4817

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !dbg !4818
  %idxprom1 = sext i32 %3 to i64, !dbg !4819
  %arrayidx2 = getelementptr [32 x ptr], ptr @queue_list, i64 0, i64 %idxprom1, !dbg !4819
  %4 = load ptr, ptr %arrayidx2, align 8, !dbg !4819
  call void @queue_delete(ptr noundef %4) #16, !dbg !4820
  br label %if.end, !dbg !4820

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !4821

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !4822
  %inc = add i32 %5, 1, !dbg !4822
  store i32 %inc, ptr %i, align 4, !dbg !4822
  br label %for.cond, !dbg !4823, !llvm.loop !4824

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4828
  ret void, !dbg !4828
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queue_delete(ptr noundef %q) #0 align 16 !dbg !4829 {
entry:
  %q.addr = alloca ptr, align 8
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !4833, metadata !DIExpression()), !dbg !4834
  %0 = load ptr, ptr %q.addr, align 8, !dbg !4835
  %timer_mutex = getelementptr inbounds %struct.snd_seq_queue, ptr %0, i32 0, i32 16, !dbg !4836
  call void @mutex_lock(ptr noundef %timer_mutex) #16, !dbg !4837
  %1 = load ptr, ptr %q.addr, align 8, !dbg !4838
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 4, !dbg !4839
  %2 = load ptr, ptr %timer, align 8, !dbg !4839
  %call = call i32 @snd_seq_timer_stop(ptr noundef %2) #16, !dbg !4840
  %3 = load ptr, ptr %q.addr, align 8, !dbg !4841
  %call1 = call i32 @snd_seq_timer_close(ptr noundef %3) #16, !dbg !4842
  %4 = load ptr, ptr %q.addr, align 8, !dbg !4843
  %timer_mutex2 = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 16, !dbg !4844
  call void @mutex_unlock(ptr noundef %timer_mutex2) #16, !dbg !4845
  %5 = load ptr, ptr %q.addr, align 8, !dbg !4846
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %5, i32 0, i32 17, !dbg !4846
  call void @snd_use_lock_sync_helper(ptr noundef %use_lock, ptr noundef @.str.16, i32 noundef 137) #16, !dbg !4846
  %6 = load ptr, ptr %q.addr, align 8, !dbg !4847
  %tickq = getelementptr inbounds %struct.snd_seq_queue, ptr %6, i32 0, i32 2, !dbg !4848
  call void @snd_seq_prioq_delete(ptr noundef %tickq) #16, !dbg !4849
  %7 = load ptr, ptr %q.addr, align 8, !dbg !4850
  %timeq = getelementptr inbounds %struct.snd_seq_queue, ptr %7, i32 0, i32 3, !dbg !4851
  call void @snd_seq_prioq_delete(ptr noundef %timeq) #16, !dbg !4852
  %8 = load ptr, ptr %q.addr, align 8, !dbg !4853
  %timer3 = getelementptr inbounds %struct.snd_seq_queue, ptr %8, i32 0, i32 4, !dbg !4854
  call void @snd_seq_timer_delete(ptr noundef %timer3) #16, !dbg !4855
  %9 = load ptr, ptr %q.addr, align 8, !dbg !4856
  call void @kfree(ptr noundef %9) #16, !dbg !4857
  ret void, !dbg !4858
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_seq_queue_alloc(i32 noundef %client, i32 noundef %locked, i32 noundef %info_flags) #0 align 16 !dbg !4859 {
entry:
  %retval = alloca ptr, align 8
  %client.addr = alloca i32, align 4
  %locked.addr = alloca i32, align 4
  %info_flags.addr = alloca i32, align 4
  %q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !4863, metadata !DIExpression()), !dbg !4867
  store i32 %locked, ptr %locked.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %locked.addr, metadata !4864, metadata !DIExpression()), !dbg !4868
  store i32 %info_flags, ptr %info_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %info_flags.addr, metadata !4865, metadata !DIExpression()), !dbg !4869
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !4870
  call void @llvm.dbg.declare(metadata ptr %q, metadata !4866, metadata !DIExpression()), !dbg !4871
  %0 = load i32, ptr %client.addr, align 4, !dbg !4872
  %1 = load i32, ptr %locked.addr, align 4, !dbg !4873
  %call = call ptr @queue_new(i32 noundef %0, i32 noundef %1) #16, !dbg !4874
  store ptr %call, ptr %q, align 8, !dbg !4875
  %2 = load ptr, ptr %q, align 8, !dbg !4876
  %cmp = icmp eq ptr %2, null, !dbg !4878
  br i1 %cmp, label %if.then, label %if.end, !dbg !4879

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !4880
  store ptr %call1, ptr %retval, align 8, !dbg !4881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4881

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %info_flags.addr, align 4, !dbg !4882
  %4 = load ptr, ptr %q, align 8, !dbg !4883
  %info_flags2 = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 11, !dbg !4884
  store i32 %3, ptr %info_flags2, align 4, !dbg !4885
  %5 = load ptr, ptr %q, align 8, !dbg !4886
  %6 = load i32, ptr %client.addr, align 4, !dbg !4887
  call void @queue_use(ptr noundef %5, i32 noundef %6, i32 noundef 1) #16, !dbg !4888
  %7 = load ptr, ptr %q, align 8, !dbg !4889
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %7, i32 0, i32 17, !dbg !4889
  call void @atomic_inc(ptr noundef %use_lock) #16, !dbg !4889
  %8 = load ptr, ptr %q, align 8, !dbg !4890
  %call3 = call i32 @queue_list_add(ptr noundef %8) #16, !dbg !4892
  %cmp4 = icmp slt i32 %call3, 0, !dbg !4893
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !4894

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %q, align 8, !dbg !4895
  %use_lock6 = getelementptr inbounds %struct.snd_seq_queue, ptr %9, i32 0, i32 17, !dbg !4895
  call void @atomic_dec(ptr noundef %use_lock6) #16, !dbg !4895
  %10 = load ptr, ptr %q, align 8, !dbg !4897
  call void @queue_delete(ptr noundef %10) #16, !dbg !4898
  %call7 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !4899
  store ptr %call7, ptr %retval, align 8, !dbg !4900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4900

if.end8:                                          ; preds = %if.end
  %11 = load ptr, ptr %q, align 8, !dbg !4901
  store ptr %11, ptr %retval, align 8, !dbg !4902
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4902

cleanup:                                          ; preds = %if.end8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !4903
  %12 = load ptr, ptr %retval, align 8, !dbg !4903
  ret ptr %12, !dbg !4903
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @queue_new(i32 noundef %owner, i32 noundef %locked) #0 align 16 !dbg !4773 {
entry:
  %retval = alloca ptr, align 8
  %owner.addr = alloca i32, align 4
  %locked.addr = alloca i32, align 4
  %q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %.compoundliteral6 = alloca %struct.spinlock, align 4
  store i32 %owner, ptr %owner.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !4777, metadata !DIExpression()), !dbg !4904
  store i32 %locked, ptr %locked.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %locked.addr, metadata !4778, metadata !DIExpression()), !dbg !4905
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !4906
  call void @llvm.dbg.declare(metadata ptr %q, metadata !4779, metadata !DIExpression()), !dbg !4907
  %call = call noalias ptr @kzalloc(i64 noundef 192, i32 noundef 3264) #17, !dbg !4908
  store ptr %call, ptr %q, align 8, !dbg !4909
  %0 = load ptr, ptr %q, align 8, !dbg !4910
  %tobool = icmp ne ptr %0, null, !dbg !4910
  br i1 %tobool, label %if.end, label %if.then, !dbg !4912

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4913

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4914

do.body:                                          ; preds = %if.end
  %1 = load ptr, ptr %q, align 8, !dbg !4915
  %owner_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 12, !dbg !4915
  %call1 = call ptr @spinlock_check(ptr noundef %owner_lock) #16, !dbg !4915
  %2 = load ptr, ptr %q, align 8, !dbg !4915
  %owner_lock2 = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 12, !dbg !4915
  %3 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !4915
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %3, i32 0, i32 0, !dbg !4915
  %4 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !4915
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !4915
  store i32 0, ptr %counter, align 4, !dbg !4915
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %owner_lock2, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !4915
  br label %do.cond, !dbg !4915

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4915

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !4917

do.body3:                                         ; preds = %do.end
  %5 = load ptr, ptr %q, align 8, !dbg !4918
  %check_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %5, i32 0, i32 13, !dbg !4918
  %call4 = call ptr @spinlock_check(ptr noundef %check_lock) #16, !dbg !4918
  %6 = load ptr, ptr %q, align 8, !dbg !4918
  %check_lock5 = getelementptr inbounds %struct.snd_seq_queue, ptr %6, i32 0, i32 13, !dbg !4918
  %7 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral6, i32 0, i32 0, !dbg !4918
  %raw_lock7 = getelementptr inbounds %struct.raw_spinlock, ptr %7, i32 0, i32 0, !dbg !4918
  %8 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock7, i32 0, i32 0, !dbg !4918
  %counter8 = getelementptr inbounds %struct.atomic_t, ptr %8, i32 0, i32 0, !dbg !4918
  store i32 0, ptr %counter8, align 4, !dbg !4918
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %check_lock5, ptr align 4 %.compoundliteral6, i64 4, i1 false), !dbg !4918
  br label %do.cond9, !dbg !4918

do.cond9:                                         ; preds = %do.body3
  br label %do.end10, !dbg !4918

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !4920

do.body11:                                        ; preds = %do.end10
  %9 = load ptr, ptr %q, align 8, !dbg !4921
  %timer_mutex = getelementptr inbounds %struct.snd_seq_queue, ptr %9, i32 0, i32 16, !dbg !4921
  call void @__mutex_init(ptr noundef %timer_mutex, ptr noundef @.str.17, ptr noundef @queue_new.__key) #16, !dbg !4921
  br label %do.cond12, !dbg !4921

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4921

do.end13:                                         ; preds = %do.cond12
  %10 = load ptr, ptr %q, align 8, !dbg !4923
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %10, i32 0, i32 17, !dbg !4923
  call void @atomic_set(ptr noundef %use_lock, i32 noundef 0) #16, !dbg !4923
  %11 = load ptr, ptr %q, align 8, !dbg !4924
  %queue = getelementptr inbounds %struct.snd_seq_queue, ptr %11, i32 0, i32 0, !dbg !4925
  store i32 -1, ptr %queue, align 8, !dbg !4926
  %call14 = call ptr @snd_seq_prioq_new() #16, !dbg !4927
  %12 = load ptr, ptr %q, align 8, !dbg !4928
  %tickq = getelementptr inbounds %struct.snd_seq_queue, ptr %12, i32 0, i32 2, !dbg !4929
  store ptr %call14, ptr %tickq, align 8, !dbg !4930
  %call15 = call ptr @snd_seq_prioq_new() #16, !dbg !4931
  %13 = load ptr, ptr %q, align 8, !dbg !4932
  %timeq = getelementptr inbounds %struct.snd_seq_queue, ptr %13, i32 0, i32 3, !dbg !4933
  store ptr %call15, ptr %timeq, align 8, !dbg !4934
  %call16 = call ptr @snd_seq_timer_new() #16, !dbg !4935
  %14 = load ptr, ptr %q, align 8, !dbg !4936
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %14, i32 0, i32 4, !dbg !4937
  store ptr %call16, ptr %timer, align 8, !dbg !4938
  %15 = load ptr, ptr %q, align 8, !dbg !4939
  %tickq17 = getelementptr inbounds %struct.snd_seq_queue, ptr %15, i32 0, i32 2, !dbg !4941
  %16 = load ptr, ptr %tickq17, align 8, !dbg !4941
  %cmp = icmp eq ptr %16, null, !dbg !4942
  br i1 %cmp, label %if.then23, label %lor.lhs.false, !dbg !4943

lor.lhs.false:                                    ; preds = %do.end13
  %17 = load ptr, ptr %q, align 8, !dbg !4944
  %timeq18 = getelementptr inbounds %struct.snd_seq_queue, ptr %17, i32 0, i32 3, !dbg !4945
  %18 = load ptr, ptr %timeq18, align 8, !dbg !4945
  %cmp19 = icmp eq ptr %18, null, !dbg !4946
  br i1 %cmp19, label %if.then23, label %lor.lhs.false20, !dbg !4947

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %19 = load ptr, ptr %q, align 8, !dbg !4948
  %timer21 = getelementptr inbounds %struct.snd_seq_queue, ptr %19, i32 0, i32 4, !dbg !4949
  %20 = load ptr, ptr %timer21, align 8, !dbg !4949
  %cmp22 = icmp eq ptr %20, null, !dbg !4950
  br i1 %cmp22, label %if.then23, label %if.end27, !dbg !4951

if.then23:                                        ; preds = %lor.lhs.false20, %lor.lhs.false, %do.end13
  %21 = load ptr, ptr %q, align 8, !dbg !4952
  %tickq24 = getelementptr inbounds %struct.snd_seq_queue, ptr %21, i32 0, i32 2, !dbg !4954
  call void @snd_seq_prioq_delete(ptr noundef %tickq24) #16, !dbg !4955
  %22 = load ptr, ptr %q, align 8, !dbg !4956
  %timeq25 = getelementptr inbounds %struct.snd_seq_queue, ptr %22, i32 0, i32 3, !dbg !4957
  call void @snd_seq_prioq_delete(ptr noundef %timeq25) #16, !dbg !4958
  %23 = load ptr, ptr %q, align 8, !dbg !4959
  %timer26 = getelementptr inbounds %struct.snd_seq_queue, ptr %23, i32 0, i32 4, !dbg !4960
  call void @snd_seq_timer_delete(ptr noundef %timer26) #16, !dbg !4961
  %24 = load ptr, ptr %q, align 8, !dbg !4962
  call void @kfree(ptr noundef %24) #16, !dbg !4963
  store ptr null, ptr %retval, align 8, !dbg !4964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4964

if.end27:                                         ; preds = %lor.lhs.false20
  %25 = load i32, ptr %owner.addr, align 4, !dbg !4965
  %26 = load ptr, ptr %q, align 8, !dbg !4966
  %owner28 = getelementptr inbounds %struct.snd_seq_queue, ptr %26, i32 0, i32 5, !dbg !4967
  store i32 %25, ptr %owner28, align 8, !dbg !4968
  %27 = load i32, ptr %locked.addr, align 4, !dbg !4969
  %tobool29 = icmp ne i32 %27, 0, !dbg !4969
  %28 = load ptr, ptr %q, align 8, !dbg !4970
  %locked30 = getelementptr inbounds %struct.snd_seq_queue, ptr %28, i32 0, i32 6, !dbg !4971
  %frombool = zext i1 %tobool29 to i8, !dbg !4972
  store i8 %frombool, ptr %locked30, align 4, !dbg !4972
  %29 = load ptr, ptr %q, align 8, !dbg !4973
  %klocked = getelementptr inbounds %struct.snd_seq_queue, ptr %29, i32 0, i32 7, !dbg !4974
  store i8 0, ptr %klocked, align 1, !dbg !4975
  %30 = load ptr, ptr %q, align 8, !dbg !4976
  store ptr %30, ptr %retval, align 8, !dbg !4977
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4977

cleanup:                                          ; preds = %if.end27, %if.then23, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !4978
  %31 = load ptr, ptr %retval, align 8, !dbg !4978
  ret ptr %31, !dbg !4978
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !4979 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4984, metadata !DIExpression()), !dbg !4985
  %0 = load i64, ptr %error.addr, align 8, !dbg !4986
  %1 = inttoptr i64 %0 to ptr, !dbg !4987
  ret ptr %1, !dbg !4988
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queue_use(ptr noundef %queue, i32 noundef %client, i32 noundef %use) #0 align 16 !dbg !4989 {
entry:
  %queue.addr = alloca ptr, align 8
  %client.addr = alloca i32, align 4
  %use.addr = alloca i32, align 4
  store ptr %queue, ptr %queue.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %queue.addr, metadata !4993, metadata !DIExpression()), !dbg !4996
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !4994, metadata !DIExpression()), !dbg !4997
  store i32 %use, ptr %use.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %use.addr, metadata !4995, metadata !DIExpression()), !dbg !4998
  %0 = load i32, ptr %use.addr, align 4, !dbg !4999
  %tobool = icmp ne i32 %0, 0, !dbg !4999
  br i1 %tobool, label %if.then, label %if.else, !dbg !5001

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %client.addr, align 4, !dbg !5002
  %conv = sext i32 %1 to i64, !dbg !5002
  %2 = load ptr, ptr %queue.addr, align 8, !dbg !5005
  %clients_bitmap = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 14, !dbg !5006
  %arraydecay = getelementptr inbounds [3 x i64], ptr %clients_bitmap, i64 0, i64 0, !dbg !5005
  %call = call zeroext i1 @test_and_set_bit(i64 noundef %conv, ptr noundef %arraydecay) #16, !dbg !5007
  br i1 %call, label %if.end, label %if.then1, !dbg !5008

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %queue.addr, align 8, !dbg !5009
  %clients = getelementptr inbounds %struct.snd_seq_queue, ptr %3, i32 0, i32 15, !dbg !5010
  %4 = load i32, ptr %clients, align 8, !dbg !5011
  %inc = add i32 %4, 1, !dbg !5011
  store i32 %inc, ptr %clients, align 8, !dbg !5011
  br label %if.end, !dbg !5009

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end9, !dbg !5012

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %client.addr, align 4, !dbg !5013
  %conv2 = sext i32 %5 to i64, !dbg !5013
  %6 = load ptr, ptr %queue.addr, align 8, !dbg !5016
  %clients_bitmap3 = getelementptr inbounds %struct.snd_seq_queue, ptr %6, i32 0, i32 14, !dbg !5017
  %arraydecay4 = getelementptr inbounds [3 x i64], ptr %clients_bitmap3, i64 0, i64 0, !dbg !5016
  %call5 = call zeroext i1 @test_and_clear_bit(i64 noundef %conv2, ptr noundef %arraydecay4) #16, !dbg !5018
  br i1 %call5, label %if.then6, label %if.end8, !dbg !5019

if.then6:                                         ; preds = %if.else
  %7 = load ptr, ptr %queue.addr, align 8, !dbg !5020
  %clients7 = getelementptr inbounds %struct.snd_seq_queue, ptr %7, i32 0, i32 15, !dbg !5021
  %8 = load i32, ptr %clients7, align 8, !dbg !5022
  %dec = add i32 %8, -1, !dbg !5022
  store i32 %dec, ptr %clients7, align 8, !dbg !5022
  br label %if.end8, !dbg !5020

if.end8:                                          ; preds = %if.then6, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end
  %9 = load ptr, ptr %queue.addr, align 8, !dbg !5023
  %clients10 = getelementptr inbounds %struct.snd_seq_queue, ptr %9, i32 0, i32 15, !dbg !5025
  %10 = load i32, ptr %clients10, align 8, !dbg !5025
  %tobool11 = icmp ne i32 %10, 0, !dbg !5023
  br i1 %tobool11, label %if.then12, label %if.else19, !dbg !5026

if.then12:                                        ; preds = %if.end9
  %11 = load i32, ptr %use.addr, align 4, !dbg !5027
  %tobool13 = icmp ne i32 %11, 0, !dbg !5027
  br i1 %tobool13, label %land.lhs.true, label %if.end17, !dbg !5030

land.lhs.true:                                    ; preds = %if.then12
  %12 = load ptr, ptr %queue.addr, align 8, !dbg !5031
  %clients14 = getelementptr inbounds %struct.snd_seq_queue, ptr %12, i32 0, i32 15, !dbg !5032
  %13 = load i32, ptr %clients14, align 8, !dbg !5032
  %cmp = icmp eq i32 %13, 1, !dbg !5033
  br i1 %cmp, label %if.then16, label %if.end17, !dbg !5034

if.then16:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %queue.addr, align 8, !dbg !5035
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %14, i32 0, i32 4, !dbg !5036
  %15 = load ptr, ptr %timer, align 8, !dbg !5036
  call void @snd_seq_timer_defaults(ptr noundef %15) #16, !dbg !5037
  br label %if.end17, !dbg !5037

if.end17:                                         ; preds = %if.then16, %land.lhs.true, %if.then12
  %16 = load ptr, ptr %queue.addr, align 8, !dbg !5038
  %call18 = call i32 @snd_seq_timer_open(ptr noundef %16) #16, !dbg !5039
  br label %if.end21, !dbg !5040

if.else19:                                        ; preds = %if.end9
  %17 = load ptr, ptr %queue.addr, align 8, !dbg !5041
  %call20 = call i32 @snd_seq_timer_close(ptr noundef %17) #16, !dbg !5043
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.end17
  ret void, !dbg !5044
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #4 align 16 !dbg !5045 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5051, metadata !DIExpression()), !dbg !5052
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5053
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !5054
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5055
  call void @raw_atomic_inc(ptr noundef %1) #16, !dbg !5056
  ret void, !dbg !5057
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queue_list_add(ptr noundef %q) #0 align 16 !dbg !5058 {
entry:
  %retval = alloca i32, align 4
  %q.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !5062, metadata !DIExpression()), !dbg !5070
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5071
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5063, metadata !DIExpression()), !dbg !5072
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !5073
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5064, metadata !DIExpression()), !dbg !5074
  br label %do.body, !dbg !5075

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5076

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !5077
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5065, metadata !DIExpression()), !dbg !5077
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !5077
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5069, metadata !DIExpression()), !dbg !5077
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5077
  %conv = zext i1 %cmp to i32, !dbg !5077
  store i32 1, ptr %tmp, align 4, !dbg !5077
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !5078
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !5078
  %0 = load i32, ptr %tmp, align 4, !dbg !5077
  %call = call ptr @spinlock_check(ptr noundef @queue_list_lock) #16, !dbg !5078
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !5078
  store i64 %call2, ptr %flags, align 8, !dbg !5078
  br label %do.cond, !dbg !5078

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5078

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5076

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5076

do.end4:                                          ; preds = %do.cond3
  store i32 0, ptr %i, align 4, !dbg !5079
  br label %for.cond, !dbg !5081

for.cond:                                         ; preds = %for.inc, %do.end4
  %1 = load i32, ptr %i, align 4, !dbg !5082
  %cmp5 = icmp slt i32 %1, 32, !dbg !5084
  br i1 %cmp5, label %for.body, label %for.end, !dbg !5085

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !5086
  %idxprom = sext i32 %2 to i64, !dbg !5089
  %arrayidx = getelementptr [32 x ptr], ptr @queue_list, i64 0, i64 %idxprom, !dbg !5089
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !5089
  %tobool = icmp ne ptr %3, null, !dbg !5089
  br i1 %tobool, label %if.end, label %if.then, !dbg !5090

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %q.addr, align 8, !dbg !5091
  %5 = load i32, ptr %i, align 4, !dbg !5093
  %idxprom7 = sext i32 %5 to i64, !dbg !5094
  %arrayidx8 = getelementptr [32 x ptr], ptr @queue_list, i64 0, i64 %idxprom7, !dbg !5094
  store ptr %4, ptr %arrayidx8, align 8, !dbg !5095
  %6 = load i32, ptr %i, align 4, !dbg !5096
  %7 = load ptr, ptr %q.addr, align 8, !dbg !5097
  %queue = getelementptr inbounds %struct.snd_seq_queue, ptr %7, i32 0, i32 0, !dbg !5098
  store i32 %6, ptr %queue, align 8, !dbg !5099
  %8 = load i32, ptr @num_queues, align 4, !dbg !5100
  %inc = add i32 %8, 1, !dbg !5100
  store i32 %inc, ptr @num_queues, align 4, !dbg !5100
  %9 = load i64, ptr %flags, align 8, !dbg !5101
  call void @spin_unlock_irqrestore(ptr noundef @queue_list_lock, i64 noundef %9) #16, !dbg !5102
  %10 = load i32, ptr %i, align 4, !dbg !5103
  store i32 %10, ptr %retval, align 4, !dbg !5104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5104

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5105

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !dbg !5106
  %inc9 = add i32 %11, 1, !dbg !5106
  store i32 %inc9, ptr %i, align 4, !dbg !5106
  br label %for.cond, !dbg !5107, !llvm.loop !5108

for.end:                                          ; preds = %for.cond
  %12 = load i64, ptr %flags, align 8, !dbg !5110
  call void @spin_unlock_irqrestore(ptr noundef @queue_list_lock, i64 noundef %12) #16, !dbg !5111
  store i32 -1, ptr %retval, align 4, !dbg !5112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5112

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5113
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5113
  %13 = load i32, ptr %retval, align 4, !dbg !5113
  ret i32 %13, !dbg !5113
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #4 align 16 !dbg !5114 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5116, metadata !DIExpression()), !dbg !5117
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5118
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #16, !dbg !5119
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5120
  call void @raw_atomic_dec(ptr noundef %1) #16, !dbg !5121
  ret void, !dbg !5122
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_queue_delete(i32 noundef %client, i32 noundef %queueid) #0 align 16 !dbg !5123 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca i32, align 4
  %queueid.addr = alloca i32, align 4
  %q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !5127, metadata !DIExpression()), !dbg !5130
  store i32 %queueid, ptr %queueid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %queueid.addr, metadata !5128, metadata !DIExpression()), !dbg !5131
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !5132
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5129, metadata !DIExpression()), !dbg !5133
  %0 = load i32, ptr %queueid.addr, align 4, !dbg !5134
  %cmp = icmp slt i32 %0, 0, !dbg !5136
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5137

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %queueid.addr, align 4, !dbg !5138
  %cmp1 = icmp sge i32 %1, 32, !dbg !5139
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5140

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !5141
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5141

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %queueid.addr, align 4, !dbg !5142
  %3 = load i32, ptr %client.addr, align 4, !dbg !5143
  %call = call ptr @queue_list_remove(i32 noundef %2, i32 noundef %3) #16, !dbg !5144
  store ptr %call, ptr %q, align 8, !dbg !5145
  %4 = load ptr, ptr %q, align 8, !dbg !5146
  %cmp2 = icmp eq ptr %4, null, !dbg !5148
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5149

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5150

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %q, align 8, !dbg !5151
  call void @queue_delete(ptr noundef %5) #16, !dbg !5152
  store i32 0, ptr %retval, align 4, !dbg !5153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5153

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !5154
  %6 = load i32, ptr %retval, align 4, !dbg !5154
  ret i32 %6, !dbg !5154
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @queue_list_remove(i32 noundef %id, i32 noundef %client) #0 align 16 !dbg !5155 {
entry:
  %retval = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %client.addr = alloca i32, align 4
  %q = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5157, metadata !DIExpression()), !dbg !5166
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !5158, metadata !DIExpression()), !dbg !5167
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !5168
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5159, metadata !DIExpression()), !dbg !5169
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !5170
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5160, metadata !DIExpression()), !dbg !5171
  br label %do.body, !dbg !5172

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5173

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !5174
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5161, metadata !DIExpression()), !dbg !5174
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !5174
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5165, metadata !DIExpression()), !dbg !5174
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5174
  %conv = zext i1 %cmp to i32, !dbg !5174
  store i32 1, ptr %tmp, align 4, !dbg !5174
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !5175
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !5175
  %0 = load i32, ptr %tmp, align 4, !dbg !5174
  %call = call ptr @spinlock_check(ptr noundef @queue_list_lock) #16, !dbg !5175
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !5175
  store i64 %call2, ptr %flags, align 8, !dbg !5175
  br label %do.cond, !dbg !5175

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5175

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5173

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5173

do.end4:                                          ; preds = %do.cond3
  %1 = load i32, ptr %id.addr, align 4, !dbg !5176
  %idxprom = sext i32 %1 to i64, !dbg !5177
  %arrayidx = getelementptr [32 x ptr], ptr @queue_list, i64 0, i64 %idxprom, !dbg !5177
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !5177
  store ptr %2, ptr %q, align 8, !dbg !5178
  %3 = load ptr, ptr %q, align 8, !dbg !5179
  %tobool = icmp ne ptr %3, null, !dbg !5179
  br i1 %tobool, label %if.then, label %if.end12, !dbg !5181

if.then:                                          ; preds = %do.end4
  %4 = load ptr, ptr %q, align 8, !dbg !5182
  %owner_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 12, !dbg !5184
  call void @spin_lock(ptr noundef %owner_lock) #16, !dbg !5185
  %5 = load ptr, ptr %q, align 8, !dbg !5186
  %owner = getelementptr inbounds %struct.snd_seq_queue, ptr %5, i32 0, i32 5, !dbg !5188
  %6 = load i32, ptr %owner, align 8, !dbg !5188
  %7 = load i32, ptr %client.addr, align 4, !dbg !5189
  %cmp5 = icmp eq i32 %6, %7, !dbg !5190
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !5191

if.then7:                                         ; preds = %if.then
  %8 = load ptr, ptr %q, align 8, !dbg !5192
  %klocked = getelementptr inbounds %struct.snd_seq_queue, ptr %8, i32 0, i32 7, !dbg !5194
  store i8 1, ptr %klocked, align 1, !dbg !5195
  %9 = load ptr, ptr %q, align 8, !dbg !5196
  %owner_lock8 = getelementptr inbounds %struct.snd_seq_queue, ptr %9, i32 0, i32 12, !dbg !5197
  call void @spin_unlock(ptr noundef %owner_lock8) #16, !dbg !5198
  %10 = load i32, ptr %id.addr, align 4, !dbg !5199
  %idxprom9 = sext i32 %10 to i64, !dbg !5200
  %arrayidx10 = getelementptr [32 x ptr], ptr @queue_list, i64 0, i64 %idxprom9, !dbg !5200
  store ptr null, ptr %arrayidx10, align 8, !dbg !5201
  %11 = load i32, ptr @num_queues, align 4, !dbg !5202
  %dec = add i32 %11, -1, !dbg !5202
  store i32 %dec, ptr @num_queues, align 4, !dbg !5202
  %12 = load i64, ptr %flags, align 8, !dbg !5203
  call void @spin_unlock_irqrestore(ptr noundef @queue_list_lock, i64 noundef %12) #16, !dbg !5204
  %13 = load ptr, ptr %q, align 8, !dbg !5205
  store ptr %13, ptr %retval, align 8, !dbg !5206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5206

if.end:                                           ; preds = %if.then
  %14 = load ptr, ptr %q, align 8, !dbg !5207
  %owner_lock11 = getelementptr inbounds %struct.snd_seq_queue, ptr %14, i32 0, i32 12, !dbg !5208
  call void @spin_unlock(ptr noundef %owner_lock11) #16, !dbg !5209
  br label %if.end12, !dbg !5210

if.end12:                                         ; preds = %if.end, %do.end4
  %15 = load i64, ptr %flags, align 8, !dbg !5211
  call void @spin_unlock_irqrestore(ptr noundef @queue_list_lock, i64 noundef %15) #16, !dbg !5212
  store ptr null, ptr %retval, align 8, !dbg !5213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5213

cleanup:                                          ; preds = %if.end12, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5214
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !5214
  %16 = load ptr, ptr %retval, align 8, !dbg !5214
  ret ptr %16, !dbg !5214
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @queueptr(i32 noundef %queueid) #0 align 16 !dbg !5215 {
entry:
  %retval = alloca ptr, align 8
  %queueid.addr = alloca i32, align 4
  %q = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %queueid, ptr %queueid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %queueid.addr, metadata !5219, metadata !DIExpression()), !dbg !5227
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !5228
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5220, metadata !DIExpression()), !dbg !5229
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !5230
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5221, metadata !DIExpression()), !dbg !5231
  %0 = load i32, ptr %queueid.addr, align 4, !dbg !5232
  %cmp = icmp slt i32 %0, 0, !dbg !5234
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5235

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %queueid.addr, align 4, !dbg !5236
  %cmp1 = icmp sge i32 %1, 32, !dbg !5237
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5238

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !5239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5239

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !5240

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !5241

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5222, metadata !DIExpression()), !dbg !5242
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !5242
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5226, metadata !DIExpression()), !dbg !5242
  %cmp3 = icmp eq ptr %__dummy, %__dummy2, !dbg !5242
  %conv = zext i1 %cmp3 to i32, !dbg !5242
  store i32 1, ptr %tmp, align 4, !dbg !5242
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !5243
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !5243
  %2 = load i32, ptr %tmp, align 4, !dbg !5242
  %call = call ptr @spinlock_check(ptr noundef @queue_list_lock) #16, !dbg !5243
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !5243
  store i64 %call4, ptr %flags, align 8, !dbg !5243
  br label %do.cond, !dbg !5243

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5243

do.end:                                           ; preds = %do.cond
  br label %do.cond5, !dbg !5241

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !5241

do.end6:                                          ; preds = %do.cond5
  %3 = load i32, ptr %queueid.addr, align 4, !dbg !5244
  %idxprom = sext i32 %3 to i64, !dbg !5245
  %arrayidx = getelementptr [32 x ptr], ptr @queue_list, i64 0, i64 %idxprom, !dbg !5245
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !5245
  store ptr %4, ptr %q, align 8, !dbg !5246
  %5 = load ptr, ptr %q, align 8, !dbg !5247
  %tobool = icmp ne ptr %5, null, !dbg !5247
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !5249

if.then7:                                         ; preds = %do.end6
  %6 = load ptr, ptr %q, align 8, !dbg !5250
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %6, i32 0, i32 17, !dbg !5250
  call void @atomic_inc(ptr noundef %use_lock) #16, !dbg !5250
  br label %if.end8, !dbg !5250

if.end8:                                          ; preds = %if.then7, %do.end6
  %7 = load i64, ptr %flags, align 8, !dbg !5251
  call void @spin_unlock_irqrestore(ptr noundef @queue_list_lock, i64 noundef %7) #16, !dbg !5252
  %8 = load ptr, ptr %q, align 8, !dbg !5253
  store ptr %8, ptr %retval, align 8, !dbg !5254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5254

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5255
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !5255
  %9 = load ptr, ptr %retval, align 8, !dbg !5255
  ret ptr %9, !dbg !5255
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5256 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !5261 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5267, metadata !DIExpression()), !dbg !5268
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5269
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5270
  ret ptr %1, !dbg !5271
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !5272 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5276, metadata !DIExpression()), !dbg !5282
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5277, metadata !DIExpression()), !dbg !5283
  br label %do.body, !dbg !5284

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5278, metadata !DIExpression()), !dbg !5285
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5281, metadata !DIExpression()), !dbg !5285
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5285
  %conv = zext i1 %cmp to i32, !dbg !5285
  store i32 1, ptr %tmp, align 4, !dbg !5285
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !5286
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !5286
  %0 = load i32, ptr %tmp, align 4, !dbg !5285
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5286
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5286
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5286
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #16, !dbg !5286
  br label %do.end, !dbg !5286

do.end:                                           ; preds = %do.body
  ret void, !dbg !5287
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_seq_queue_find_name(ptr noundef %name) #0 align 16 !dbg !5288 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5292, metadata !DIExpression()), !dbg !5295
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5296
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5293, metadata !DIExpression()), !dbg !5297
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !5298
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5294, metadata !DIExpression()), !dbg !5299
  store i32 0, ptr %i, align 4, !dbg !5300
  br label %for.cond, !dbg !5302

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5303
  %cmp = icmp slt i32 %0, 32, !dbg !5305
  br i1 %cmp, label %for.body, label %for.end, !dbg !5306

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !5307
  %call = call ptr @queueptr(i32 noundef %1) #16, !dbg !5309
  store ptr %call, ptr %q, align 8, !dbg !5310
  %2 = load ptr, ptr %q, align 8, !dbg !5311
  %tobool = icmp ne ptr %2, null, !dbg !5311
  br i1 %tobool, label %if.then, label %if.end5, !dbg !5313

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %q, align 8, !dbg !5314
  %name1 = getelementptr inbounds %struct.snd_seq_queue, ptr %3, i32 0, i32 1, !dbg !5317
  %arraydecay = getelementptr inbounds [64 x i8], ptr %name1, i64 0, i64 0, !dbg !5314
  %4 = load ptr, ptr %name.addr, align 8, !dbg !5318
  %call2 = call i32 @strncmp(ptr noundef %arraydecay, ptr noundef %4, i64 noundef 64) #16, !dbg !5319
  %cmp3 = icmp eq i32 %call2, 0, !dbg !5320
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !5321

if.then4:                                         ; preds = %if.then
  %5 = load ptr, ptr %q, align 8, !dbg !5322
  store ptr %5, ptr %retval, align 8, !dbg !5323
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5323

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %q, align 8, !dbg !5324
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %6, i32 0, i32 17, !dbg !5324
  call void @atomic_dec(ptr noundef %use_lock) #16, !dbg !5324
  br label %if.end5, !dbg !5325

if.end5:                                          ; preds = %if.end, %for.body
  br label %for.inc, !dbg !5326

for.inc:                                          ; preds = %if.end5
  %7 = load i32, ptr %i, align 4, !dbg !5327
  %inc = add i32 %7, 1, !dbg !5327
  store i32 %inc, ptr %i, align 4, !dbg !5327
  br label %for.cond, !dbg !5328, !llvm.loop !5329

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !5331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5331

cleanup:                                          ; preds = %for.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !5332
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5332
  %8 = load ptr, ptr %retval, align 8, !dbg !5332
  ret ptr %8, !dbg !5332
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5333 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_check_queue(ptr noundef %q, i32 noundef %atomic, i32 noundef %hop) #0 align 16 !dbg !5337 {
entry:
  %q.addr = alloca ptr, align 8
  %atomic.addr = alloca i32, align 4
  %hop.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %cell = alloca ptr, align 8
  %cur_tick = alloca i32, align 4
  %cur_time = alloca %struct.snd_seq_real_time, align 4
  %processed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp21 = alloca %struct.snd_seq_real_time, align 4
  %__dummy38 = alloca i64, align 8
  %__dummy239 = alloca i64, align 8
  %tmp42 = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !5339, metadata !DIExpression()), !dbg !5359
  store i32 %atomic, ptr %atomic.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %atomic.addr, metadata !5340, metadata !DIExpression()), !dbg !5360
  store i32 %hop, ptr %hop.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hop.addr, metadata !5341, metadata !DIExpression()), !dbg !5361
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !5362
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5342, metadata !DIExpression()), !dbg !5363
  call void @llvm.lifetime.start.p0(i64 8, ptr %cell) #15, !dbg !5364
  call void @llvm.dbg.declare(metadata ptr %cell, metadata !5343, metadata !DIExpression()), !dbg !5365
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_tick) #15, !dbg !5366
  call void @llvm.dbg.declare(metadata ptr %cur_tick, metadata !5344, metadata !DIExpression()), !dbg !5367
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_time) #15, !dbg !5368
  call void @llvm.dbg.declare(metadata ptr %cur_time, metadata !5345, metadata !DIExpression()), !dbg !5369
  call void @llvm.lifetime.start.p0(i64 4, ptr %processed) #15, !dbg !5370
  call void @llvm.dbg.declare(metadata ptr %processed, metadata !5346, metadata !DIExpression()), !dbg !5371
  store i32 0, ptr %processed, align 4, !dbg !5371
  %0 = load ptr, ptr %q.addr, align 8, !dbg !5372
  %cmp = icmp eq ptr %0, null, !dbg !5374
  br i1 %cmp, label %if.then, label %if.end, !dbg !5375

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5376

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5377

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !5378

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !5379
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5347, metadata !DIExpression()), !dbg !5379
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !5379
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5351, metadata !DIExpression()), !dbg !5379
  %cmp2 = icmp eq ptr %__dummy, %__dummy2, !dbg !5379
  %conv = zext i1 %cmp2 to i32, !dbg !5379
  store i32 1, ptr %tmp, align 4, !dbg !5379
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !5380
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !5380
  %1 = load i32, ptr %tmp, align 4, !dbg !5379
  %2 = load ptr, ptr %q.addr, align 8, !dbg !5380
  %check_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 13, !dbg !5380
  %call = call ptr @spinlock_check(ptr noundef %check_lock) #16, !dbg !5380
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !5380
  store i64 %call3, ptr %flags, align 8, !dbg !5380
  br label %do.cond, !dbg !5380

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5380

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !5378

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5378

do.end5:                                          ; preds = %do.cond4
  %3 = load ptr, ptr %q.addr, align 8, !dbg !5381
  %check_blocked = getelementptr inbounds %struct.snd_seq_queue, ptr %3, i32 0, i32 9, !dbg !5383
  %4 = load i8, ptr %check_blocked, align 1, !dbg !5383, !range !5384, !noundef !1324
  %tobool = trunc i8 %4 to i1, !dbg !5383
  br i1 %tobool, label %if.then6, label %if.end8, !dbg !5385

if.then6:                                         ; preds = %do.end5
  %5 = load ptr, ptr %q.addr, align 8, !dbg !5386
  %check_again = getelementptr inbounds %struct.snd_seq_queue, ptr %5, i32 0, i32 8, !dbg !5388
  store i8 1, ptr %check_again, align 2, !dbg !5389
  %6 = load ptr, ptr %q.addr, align 8, !dbg !5390
  %check_lock7 = getelementptr inbounds %struct.snd_seq_queue, ptr %6, i32 0, i32 13, !dbg !5391
  %7 = load i64, ptr %flags, align 8, !dbg !5392
  call void @spin_unlock_irqrestore(ptr noundef %check_lock7, i64 noundef %7) #16, !dbg !5393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5394

if.end8:                                          ; preds = %do.end5
  %8 = load ptr, ptr %q.addr, align 8, !dbg !5395
  %check_blocked9 = getelementptr inbounds %struct.snd_seq_queue, ptr %8, i32 0, i32 9, !dbg !5396
  store i8 1, ptr %check_blocked9, align 1, !dbg !5397
  %9 = load ptr, ptr %q.addr, align 8, !dbg !5398
  %check_lock10 = getelementptr inbounds %struct.snd_seq_queue, ptr %9, i32 0, i32 13, !dbg !5399
  %10 = load i64, ptr %flags, align 8, !dbg !5400
  call void @spin_unlock_irqrestore(ptr noundef %check_lock10, i64 noundef %10) #16, !dbg !5401
  br label %__again, !dbg !5401

__again:                                          ; preds = %if.then56, %if.end8
  call void @llvm.dbg.label(metadata !5352), !dbg !5402
  %11 = load ptr, ptr %q.addr, align 8, !dbg !5403
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %11, i32 0, i32 4, !dbg !5404
  %12 = load ptr, ptr %timer, align 8, !dbg !5404
  %call11 = call i32 @snd_seq_timer_get_cur_tick(ptr noundef %12) #16, !dbg !5405
  store i32 %call11, ptr %cur_tick, align 4, !dbg !5406
  br label %for.cond, !dbg !5407

for.cond:                                         ; preds = %if.end20, %__again
  %13 = load ptr, ptr %q.addr, align 8, !dbg !5408
  %tickq = getelementptr inbounds %struct.snd_seq_queue, ptr %13, i32 0, i32 2, !dbg !5412
  %14 = load ptr, ptr %tickq, align 8, !dbg !5412
  %call12 = call ptr @snd_seq_prioq_cell_out(ptr noundef %14, ptr noundef %cur_tick) #16, !dbg !5413
  store ptr %call12, ptr %cell, align 8, !dbg !5414
  %15 = load ptr, ptr %cell, align 8, !dbg !5415
  %tobool13 = icmp ne ptr %15, null, !dbg !5415
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !5417

if.then14:                                        ; preds = %for.cond
  br label %for.end, !dbg !5418

if.end15:                                         ; preds = %for.cond
  %16 = load ptr, ptr %cell, align 8, !dbg !5419
  %17 = load i32, ptr %atomic.addr, align 4, !dbg !5420
  %18 = load i32, ptr %hop.addr, align 4, !dbg !5421
  %call16 = call i32 @snd_seq_dispatch_event(ptr noundef %16, i32 noundef %17, i32 noundef %18) #16, !dbg !5422
  %19 = load i32, ptr %processed, align 4, !dbg !5423
  %inc = add i32 %19, 1, !dbg !5423
  store i32 %inc, ptr %processed, align 4, !dbg !5423
  %cmp17 = icmp sge i32 %inc, 1000, !dbg !5425
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5426

if.then19:                                        ; preds = %if.end15
  br label %out, !dbg !5427

if.end20:                                         ; preds = %if.end15
  br label %for.cond, !dbg !5428, !llvm.loop !5429

for.end:                                          ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp21) #15, !dbg !5432
  %20 = load ptr, ptr %q.addr, align 8, !dbg !5433
  %timer22 = getelementptr inbounds %struct.snd_seq_queue, ptr %20, i32 0, i32 4, !dbg !5434
  %21 = load ptr, ptr %timer22, align 8, !dbg !5434
  %call23 = call i64 @snd_seq_timer_get_cur_time(ptr noundef %21, i1 noundef zeroext false) #16, !dbg !5432
  store i64 %call23, ptr %tmp21, align 4, !dbg !5432
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %cur_time, ptr align 4 %tmp21, i64 8, i1 false), !dbg !5432
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp21) #15, !dbg !5432
  br label %for.cond24, !dbg !5435

for.cond24:                                       ; preds = %if.end34, %for.end
  %22 = load ptr, ptr %q.addr, align 8, !dbg !5436
  %timeq = getelementptr inbounds %struct.snd_seq_queue, ptr %22, i32 0, i32 3, !dbg !5440
  %23 = load ptr, ptr %timeq, align 8, !dbg !5440
  %call25 = call ptr @snd_seq_prioq_cell_out(ptr noundef %23, ptr noundef %cur_time) #16, !dbg !5441
  store ptr %call25, ptr %cell, align 8, !dbg !5442
  %24 = load ptr, ptr %cell, align 8, !dbg !5443
  %tobool26 = icmp ne ptr %24, null, !dbg !5443
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !5445

if.then27:                                        ; preds = %for.cond24
  br label %for.end35, !dbg !5446

if.end28:                                         ; preds = %for.cond24
  %25 = load ptr, ptr %cell, align 8, !dbg !5447
  %26 = load i32, ptr %atomic.addr, align 4, !dbg !5448
  %27 = load i32, ptr %hop.addr, align 4, !dbg !5449
  %call29 = call i32 @snd_seq_dispatch_event(ptr noundef %25, i32 noundef %26, i32 noundef %27) #16, !dbg !5450
  %28 = load i32, ptr %processed, align 4, !dbg !5451
  %inc30 = add i32 %28, 1, !dbg !5451
  store i32 %inc30, ptr %processed, align 4, !dbg !5451
  %cmp31 = icmp sge i32 %inc30, 1000, !dbg !5453
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !5454

if.then33:                                        ; preds = %if.end28
  br label %out, !dbg !5455

if.end34:                                         ; preds = %if.end28
  br label %for.cond24, !dbg !5456, !llvm.loop !5457

for.end35:                                        ; preds = %if.then27
  br label %out, !dbg !5459

out:                                              ; preds = %for.end35, %if.then33, %if.then19
  call void @llvm.dbg.label(metadata !5353), !dbg !5460
  br label %do.body36, !dbg !5461

do.body36:                                        ; preds = %out
  br label %do.body37, !dbg !5462

do.body37:                                        ; preds = %do.body36
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy38) #15, !dbg !5463
  call void @llvm.dbg.declare(metadata ptr %__dummy38, metadata !5354, metadata !DIExpression()), !dbg !5463
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy239) #15, !dbg !5463
  call void @llvm.dbg.declare(metadata ptr %__dummy239, metadata !5358, metadata !DIExpression()), !dbg !5463
  %cmp40 = icmp eq ptr %__dummy38, %__dummy239, !dbg !5463
  %conv41 = zext i1 %cmp40 to i32, !dbg !5463
  store i32 1, ptr %tmp42, align 4, !dbg !5463
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy239) #15, !dbg !5464
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy38) #15, !dbg !5464
  %29 = load i32, ptr %tmp42, align 4, !dbg !5463
  %30 = load ptr, ptr %q.addr, align 8, !dbg !5464
  %check_lock43 = getelementptr inbounds %struct.snd_seq_queue, ptr %30, i32 0, i32 13, !dbg !5464
  %call44 = call ptr @spinlock_check(ptr noundef %check_lock43) #16, !dbg !5464
  %call45 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call44) #16, !dbg !5464
  store i64 %call45, ptr %flags, align 8, !dbg !5464
  br label %do.cond46, !dbg !5464

do.cond46:                                        ; preds = %do.body37
  br label %do.end47, !dbg !5464

do.end47:                                         ; preds = %do.cond46
  br label %do.cond48, !dbg !5462

do.cond48:                                        ; preds = %do.end47
  br label %do.end49, !dbg !5462

do.end49:                                         ; preds = %do.cond48
  %31 = load ptr, ptr %q.addr, align 8, !dbg !5465
  %check_again50 = getelementptr inbounds %struct.snd_seq_queue, ptr %31, i32 0, i32 8, !dbg !5467
  %32 = load i8, ptr %check_again50, align 2, !dbg !5467, !range !5384, !noundef !1324
  %tobool51 = trunc i8 %32 to i1, !dbg !5467
  br i1 %tobool51, label %if.then52, label %if.end59, !dbg !5468

if.then52:                                        ; preds = %do.end49
  %33 = load ptr, ptr %q.addr, align 8, !dbg !5469
  %check_again53 = getelementptr inbounds %struct.snd_seq_queue, ptr %33, i32 0, i32 8, !dbg !5471
  store i8 0, ptr %check_again53, align 2, !dbg !5472
  %34 = load i32, ptr %processed, align 4, !dbg !5473
  %cmp54 = icmp slt i32 %34, 1000, !dbg !5475
  br i1 %cmp54, label %if.then56, label %if.end58, !dbg !5476

if.then56:                                        ; preds = %if.then52
  %35 = load ptr, ptr %q.addr, align 8, !dbg !5477
  %check_lock57 = getelementptr inbounds %struct.snd_seq_queue, ptr %35, i32 0, i32 13, !dbg !5479
  %36 = load i64, ptr %flags, align 8, !dbg !5480
  call void @spin_unlock_irqrestore(ptr noundef %check_lock57, i64 noundef %36) #16, !dbg !5481
  br label %__again, !dbg !5482

if.end58:                                         ; preds = %if.then52
  br label %if.end59, !dbg !5483

if.end59:                                         ; preds = %if.end58, %do.end49
  %37 = load ptr, ptr %q.addr, align 8, !dbg !5484
  %check_blocked60 = getelementptr inbounds %struct.snd_seq_queue, ptr %37, i32 0, i32 9, !dbg !5485
  store i8 0, ptr %check_blocked60, align 1, !dbg !5486
  %38 = load ptr, ptr %q.addr, align 8, !dbg !5487
  %check_lock61 = getelementptr inbounds %struct.snd_seq_queue, ptr %38, i32 0, i32 13, !dbg !5488
  %39 = load i64, ptr %flags, align 8, !dbg !5489
  call void @spin_unlock_irqrestore(ptr noundef %check_lock61, i64 noundef %39) #16, !dbg !5490
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5491
  br label %cleanup, !dbg !5491

cleanup:                                          ; preds = %if.end59, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %processed) #15, !dbg !5491
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_time) #15, !dbg !5491
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_tick) #15, !dbg !5491
  call void @llvm.lifetime.end.p0(i64 8, ptr %cell) #15, !dbg !5491
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5491
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5491

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5492 dso_local i32 @snd_seq_timer_get_cur_tick(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5495 dso_local ptr @snd_seq_prioq_cell_out(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5498 dso_local i32 @snd_seq_dispatch_event(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5502 dso_local i64 @snd_seq_timer_get_cur_time(ptr noundef, i1 noundef zeroext) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_enqueue_event(ptr noundef %cell, i32 noundef %atomic, i32 noundef %hop) #0 align 16 !dbg !5505 {
entry:
  %retval = alloca i32, align 4
  %cell.addr = alloca ptr, align 8
  %atomic.addr = alloca i32, align 4
  %hop.addr = alloca i32, align 4
  %dest = alloca i32, align 4
  %err = alloca i32, align 4
  %q = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cell, ptr %cell.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cell.addr, metadata !5507, metadata !DIExpression()), !dbg !5516
  store i32 %atomic, ptr %atomic.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %atomic.addr, metadata !5508, metadata !DIExpression()), !dbg !5517
  store i32 %hop, ptr %hop.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hop.addr, metadata !5509, metadata !DIExpression()), !dbg !5518
  call void @llvm.lifetime.start.p0(i64 4, ptr %dest) #15, !dbg !5519
  call void @llvm.dbg.declare(metadata ptr %dest, metadata !5510, metadata !DIExpression()), !dbg !5520
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5519
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5511, metadata !DIExpression()), !dbg !5521
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !5522
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5512, metadata !DIExpression()), !dbg !5523
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5524
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5513, metadata !DIExpression()), !dbg !5524
  %0 = load ptr, ptr %cell.addr, align 8, !dbg !5524
  %tobool = icmp ne ptr %0, null, !dbg !5524
  %lnot = xor i1 %tobool, true, !dbg !5524
  %lnot1 = xor i1 %lnot, true, !dbg !5524
  %lnot2 = xor i1 %lnot1, true, !dbg !5524
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5524
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5524
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5524
  %tobool3 = icmp ne i32 %1, 0, !dbg !5524
  %lnot4 = xor i1 %tobool3, true, !dbg !5524
  %lnot6 = xor i1 %lnot4, true, !dbg !5524
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5524
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5524
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5524
  store i64 %expval, ptr %tmp, align 8, !dbg !5524
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5525
  %2 = load i64, ptr %tmp, align 8, !dbg !5524
  %tobool8 = icmp ne i64 %2, 0, !dbg !5525
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5526

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5527

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %cell.addr, align 8, !dbg !5528
  %4 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %3, i32 0, i32 0, !dbg !5529
  %queue = getelementptr inbounds %struct.snd_seq_event, ptr %4, i32 0, i32 3, !dbg !5530
  %5 = load i8, ptr %queue, align 1, !dbg !5530
  %conv9 = zext i8 %5 to i32, !dbg !5528
  store i32 %conv9, ptr %dest, align 4, !dbg !5531
  %6 = load i32, ptr %dest, align 4, !dbg !5532
  %call = call ptr @queueptr(i32 noundef %6) #16, !dbg !5533
  store ptr %call, ptr %q, align 8, !dbg !5534
  %7 = load ptr, ptr %q, align 8, !dbg !5535
  %cmp = icmp eq ptr %7, null, !dbg !5537
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !5538

if.then11:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5539

if.end12:                                         ; preds = %if.end
  %8 = load ptr, ptr %cell.addr, align 8, !dbg !5540
  %9 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %8, i32 0, i32 0, !dbg !5542
  %flags = getelementptr inbounds %struct.snd_seq_event, ptr %9, i32 0, i32 1, !dbg !5543
  %10 = load i8, ptr %flags, align 1, !dbg !5543
  %conv13 = zext i8 %10 to i32, !dbg !5540
  %and = and i32 %conv13, 2, !dbg !5544
  %cmp14 = icmp eq i32 %and, 2, !dbg !5545
  br i1 %cmp14, label %if.then16, label %if.end30, !dbg !5546

if.then16:                                        ; preds = %if.end12
  %11 = load ptr, ptr %cell.addr, align 8, !dbg !5547
  %12 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %11, i32 0, i32 0, !dbg !5549
  %flags17 = getelementptr inbounds %struct.snd_seq_event, ptr %12, i32 0, i32 1, !dbg !5550
  %13 = load i8, ptr %flags17, align 1, !dbg !5550
  %conv18 = zext i8 %13 to i32, !dbg !5547
  %and19 = and i32 %conv18, 1, !dbg !5551
  switch i32 %and19, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
  ], !dbg !5552

sw.bb:                                            ; preds = %if.then16
  %14 = load ptr, ptr %q, align 8, !dbg !5553
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %14, i32 0, i32 4, !dbg !5555
  %15 = load ptr, ptr %timer, align 8, !dbg !5555
  %tick = getelementptr inbounds %struct.snd_seq_timer, ptr %15, i32 0, i32 4, !dbg !5556
  %cur_tick = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %tick, i32 0, i32 0, !dbg !5557
  %16 = load i32, ptr %cur_tick, align 8, !dbg !5557
  %17 = load ptr, ptr %cell.addr, align 8, !dbg !5558
  %18 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %17, i32 0, i32 0, !dbg !5559
  %time = getelementptr inbounds %struct.snd_seq_event, ptr %18, i32 0, i32 4, !dbg !5560
  %19 = load i32, ptr %time, align 4, !dbg !5561
  %add = add i32 %19, %16, !dbg !5561
  store i32 %add, ptr %time, align 4, !dbg !5561
  br label %sw.epilog, !dbg !5562

sw.bb20:                                          ; preds = %if.then16
  %20 = load ptr, ptr %cell.addr, align 8, !dbg !5563
  %21 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %20, i32 0, i32 0, !dbg !5564
  %time21 = getelementptr inbounds %struct.snd_seq_event, ptr %21, i32 0, i32 4, !dbg !5565
  %22 = load ptr, ptr %q, align 8, !dbg !5566
  %timer22 = getelementptr inbounds %struct.snd_seq_queue, ptr %22, i32 0, i32 4, !dbg !5567
  %23 = load ptr, ptr %timer22, align 8, !dbg !5567
  %cur_time = getelementptr inbounds %struct.snd_seq_timer, ptr %23, i32 0, i32 3, !dbg !5568
  call void @snd_seq_inc_real_time(ptr noundef %time21, ptr noundef %cur_time) #16, !dbg !5569
  br label %sw.epilog, !dbg !5570

sw.epilog:                                        ; preds = %if.then16, %sw.bb20, %sw.bb
  %24 = load ptr, ptr %cell.addr, align 8, !dbg !5571
  %25 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %24, i32 0, i32 0, !dbg !5572
  %flags23 = getelementptr inbounds %struct.snd_seq_event, ptr %25, i32 0, i32 1, !dbg !5573
  %26 = load i8, ptr %flags23, align 1, !dbg !5574
  %conv24 = zext i8 %26 to i32, !dbg !5574
  %and25 = and i32 %conv24, -3, !dbg !5574
  %conv26 = trunc i32 %and25 to i8, !dbg !5574
  store i8 %conv26, ptr %flags23, align 1, !dbg !5574
  %27 = load ptr, ptr %cell.addr, align 8, !dbg !5575
  %28 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %27, i32 0, i32 0, !dbg !5576
  %flags27 = getelementptr inbounds %struct.snd_seq_event, ptr %28, i32 0, i32 1, !dbg !5577
  %29 = load i8, ptr %flags27, align 1, !dbg !5578
  %conv28 = zext i8 %29 to i32, !dbg !5578
  %or = or i32 %conv28, 0, !dbg !5578
  %conv29 = trunc i32 %or to i8, !dbg !5578
  store i8 %conv29, ptr %flags27, align 1, !dbg !5578
  br label %if.end30, !dbg !5579

if.end30:                                         ; preds = %sw.epilog, %if.end12
  %30 = load ptr, ptr %cell.addr, align 8, !dbg !5580
  %31 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %30, i32 0, i32 0, !dbg !5581
  %flags31 = getelementptr inbounds %struct.snd_seq_event, ptr %31, i32 0, i32 1, !dbg !5582
  %32 = load i8, ptr %flags31, align 1, !dbg !5582
  %conv32 = zext i8 %32 to i32, !dbg !5580
  %and33 = and i32 %conv32, 1, !dbg !5583
  switch i32 %and33, label %sw.default [
    i32 0, label %sw.bb34
    i32 1, label %sw.bb36
  ], !dbg !5584

sw.bb34:                                          ; preds = %if.end30
  %33 = load ptr, ptr %q, align 8, !dbg !5585
  %tickq = getelementptr inbounds %struct.snd_seq_queue, ptr %33, i32 0, i32 2, !dbg !5587
  %34 = load ptr, ptr %tickq, align 8, !dbg !5587
  %35 = load ptr, ptr %cell.addr, align 8, !dbg !5588
  %call35 = call i32 @snd_seq_prioq_cell_in(ptr noundef %34, ptr noundef %35) #16, !dbg !5589
  store i32 %call35, ptr %err, align 4, !dbg !5590
  br label %sw.epilog38, !dbg !5591

sw.bb36:                                          ; preds = %if.end30
  br label %sw.default, !dbg !5592

sw.default:                                       ; preds = %if.end30, %sw.bb36
  %36 = load ptr, ptr %q, align 8, !dbg !5593
  %timeq = getelementptr inbounds %struct.snd_seq_queue, ptr %36, i32 0, i32 3, !dbg !5594
  %37 = load ptr, ptr %timeq, align 8, !dbg !5594
  %38 = load ptr, ptr %cell.addr, align 8, !dbg !5595
  %call37 = call i32 @snd_seq_prioq_cell_in(ptr noundef %37, ptr noundef %38) #16, !dbg !5596
  store i32 %call37, ptr %err, align 4, !dbg !5597
  br label %sw.epilog38, !dbg !5598

sw.epilog38:                                      ; preds = %sw.default, %sw.bb34
  %39 = load i32, ptr %err, align 4, !dbg !5599
  %cmp39 = icmp slt i32 %39, 0, !dbg !5601
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !5602

if.then41:                                        ; preds = %sw.epilog38
  %40 = load ptr, ptr %q, align 8, !dbg !5603
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %40, i32 0, i32 17, !dbg !5603
  call void @atomic_dec(ptr noundef %use_lock) #16, !dbg !5603
  %41 = load i32, ptr %err, align 4, !dbg !5605
  store i32 %41, ptr %retval, align 4, !dbg !5606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5606

if.end42:                                         ; preds = %sw.epilog38
  %42 = load ptr, ptr %q, align 8, !dbg !5607
  %43 = load i32, ptr %atomic.addr, align 4, !dbg !5608
  %44 = load i32, ptr %hop.addr, align 4, !dbg !5609
  call void @snd_seq_check_queue(ptr noundef %42, i32 noundef %43, i32 noundef %44) #16, !dbg !5610
  %45 = load ptr, ptr %q, align 8, !dbg !5611
  %use_lock43 = getelementptr inbounds %struct.snd_seq_queue, ptr %45, i32 0, i32 17, !dbg !5611
  call void @atomic_dec(ptr noundef %use_lock43) #16, !dbg !5611
  store i32 0, ptr %retval, align 4, !dbg !5612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5612

cleanup:                                          ; preds = %if.end42, %if.then41, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !5613
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5613
  call void @llvm.lifetime.end.p0(i64 4, ptr %dest) #15, !dbg !5613
  %46 = load i32, ptr %retval, align 4, !dbg !5613
  ret i32 %46, !dbg !5613
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_seq_inc_real_time(ptr noundef %tm, ptr noundef %inc) #3 align 16 !dbg !5614 {
entry:
  %tm.addr = alloca ptr, align 8
  %inc.addr = alloca ptr, align 8
  store ptr %tm, ptr %tm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tm.addr, metadata !5619, metadata !DIExpression()), !dbg !5621
  store ptr %inc, ptr %inc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inc.addr, metadata !5620, metadata !DIExpression()), !dbg !5622
  %0 = load ptr, ptr %inc.addr, align 8, !dbg !5623
  %tv_sec = getelementptr inbounds %struct.snd_seq_real_time, ptr %0, i32 0, i32 0, !dbg !5624
  %1 = load i32, ptr %tv_sec, align 4, !dbg !5624
  %2 = load ptr, ptr %tm.addr, align 8, !dbg !5625
  %tv_sec1 = getelementptr inbounds %struct.snd_seq_real_time, ptr %2, i32 0, i32 0, !dbg !5626
  %3 = load i32, ptr %tv_sec1, align 4, !dbg !5627
  %add = add i32 %3, %1, !dbg !5627
  store i32 %add, ptr %tv_sec1, align 4, !dbg !5627
  %4 = load ptr, ptr %inc.addr, align 8, !dbg !5628
  %tv_nsec = getelementptr inbounds %struct.snd_seq_real_time, ptr %4, i32 0, i32 1, !dbg !5629
  %5 = load i32, ptr %tv_nsec, align 4, !dbg !5629
  %6 = load ptr, ptr %tm.addr, align 8, !dbg !5630
  %tv_nsec2 = getelementptr inbounds %struct.snd_seq_real_time, ptr %6, i32 0, i32 1, !dbg !5631
  %7 = load i32, ptr %tv_nsec2, align 4, !dbg !5632
  %add3 = add i32 %7, %5, !dbg !5632
  store i32 %add3, ptr %tv_nsec2, align 4, !dbg !5632
  %8 = load ptr, ptr %tm.addr, align 8, !dbg !5633
  call void @snd_seq_sanity_real_time(ptr noundef %8) #16, !dbg !5634
  ret void, !dbg !5635
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5636 dso_local i32 @snd_seq_prioq_cell_in(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_queue_check_access(i32 noundef %queueid, i32 noundef %client) #0 align 16 !dbg !5639 {
entry:
  %retval = alloca i32, align 4
  %queueid.addr = alloca i32, align 4
  %client.addr = alloca i32, align 4
  %q = alloca ptr, align 8
  %access_ok = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %queueid, ptr %queueid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %queueid.addr, metadata !5641, metadata !DIExpression()), !dbg !5651
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !5642, metadata !DIExpression()), !dbg !5652
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !5653
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5643, metadata !DIExpression()), !dbg !5654
  %0 = load i32, ptr %queueid.addr, align 4, !dbg !5655
  %call = call ptr @queueptr(i32 noundef %0) #16, !dbg !5656
  store ptr %call, ptr %q, align 8, !dbg !5654
  call void @llvm.lifetime.start.p0(i64 4, ptr %access_ok) #15, !dbg !5657
  call void @llvm.dbg.declare(metadata ptr %access_ok, metadata !5644, metadata !DIExpression()), !dbg !5658
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !5659
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5645, metadata !DIExpression()), !dbg !5660
  %1 = load ptr, ptr %q, align 8, !dbg !5661
  %tobool = icmp ne ptr %1, null, !dbg !5661
  br i1 %tobool, label %if.end, label %if.then, !dbg !5663

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5664
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5664

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5665

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !5666

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !5667
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5646, metadata !DIExpression()), !dbg !5667
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !5667
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5650, metadata !DIExpression()), !dbg !5667
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5667
  %conv = zext i1 %cmp to i32, !dbg !5667
  store i32 1, ptr %tmp, align 4, !dbg !5667
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !5668
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !5668
  %2 = load i32, ptr %tmp, align 4, !dbg !5667
  %3 = load ptr, ptr %q, align 8, !dbg !5668
  %owner_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %3, i32 0, i32 12, !dbg !5668
  %call2 = call ptr @spinlock_check(ptr noundef %owner_lock) #16, !dbg !5668
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #16, !dbg !5668
  store i64 %call3, ptr %flags, align 8, !dbg !5668
  br label %do.cond, !dbg !5668

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5668

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !5666

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5666

do.end5:                                          ; preds = %do.cond4
  %4 = load ptr, ptr %q, align 8, !dbg !5669
  %5 = load i32, ptr %client.addr, align 4, !dbg !5670
  %call6 = call i32 @check_access(ptr noundef %4, i32 noundef %5) #16, !dbg !5671
  store i32 %call6, ptr %access_ok, align 4, !dbg !5672
  %6 = load ptr, ptr %q, align 8, !dbg !5673
  %owner_lock7 = getelementptr inbounds %struct.snd_seq_queue, ptr %6, i32 0, i32 12, !dbg !5674
  %7 = load i64, ptr %flags, align 8, !dbg !5675
  call void @spin_unlock_irqrestore(ptr noundef %owner_lock7, i64 noundef %7) #16, !dbg !5676
  %8 = load ptr, ptr %q, align 8, !dbg !5677
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %8, i32 0, i32 17, !dbg !5677
  call void @atomic_dec(ptr noundef %use_lock) #16, !dbg !5677
  %9 = load i32, ptr %access_ok, align 4, !dbg !5678
  store i32 %9, ptr %retval, align 4, !dbg !5679
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5679

cleanup:                                          ; preds = %do.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5680
  call void @llvm.lifetime.end.p0(i64 4, ptr %access_ok) #15, !dbg !5680
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !5680
  %10 = load i32, ptr %retval, align 4, !dbg !5680
  ret i32 %10, !dbg !5680
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @check_access(ptr noundef %q, i32 noundef %client) #3 align 16 !dbg !5681 {
entry:
  %q.addr = alloca ptr, align 8
  %client.addr = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !5685, metadata !DIExpression()), !dbg !5687
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !5686, metadata !DIExpression()), !dbg !5688
  %0 = load ptr, ptr %q.addr, align 8, !dbg !5689
  %owner = getelementptr inbounds %struct.snd_seq_queue, ptr %0, i32 0, i32 5, !dbg !5690
  %1 = load i32, ptr %owner, align 8, !dbg !5690
  %2 = load i32, ptr %client.addr, align 4, !dbg !5691
  %cmp = icmp eq i32 %1, %2, !dbg !5692
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5693

lor.rhs:                                          ; preds = %entry
  %3 = load ptr, ptr %q.addr, align 8, !dbg !5694
  %locked = getelementptr inbounds %struct.snd_seq_queue, ptr %3, i32 0, i32 6, !dbg !5695
  %4 = load i8, ptr %locked, align 4, !dbg !5695, !range !5384, !noundef !1324
  %tobool = trunc i8 %4 to i1, !dbg !5695
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !5696

land.rhs:                                         ; preds = %lor.rhs
  %5 = load ptr, ptr %q.addr, align 8, !dbg !5697
  %klocked = getelementptr inbounds %struct.snd_seq_queue, ptr %5, i32 0, i32 7, !dbg !5698
  %6 = load i8, ptr %klocked, align 1, !dbg !5698, !range !5384, !noundef !1324
  %tobool1 = trunc i8 %6 to i1, !dbg !5698
  %lnot = xor i1 %tobool1, true, !dbg !5699
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %7 = phi i1 [ false, %lor.rhs ], [ %lnot, %land.rhs ], !dbg !5700
  br label %lor.end, !dbg !5693

lor.end:                                          ; preds = %land.end, %entry
  %8 = phi i1 [ true, %entry ], [ %7, %land.end ]
  %lor.ext = zext i1 %8 to i32, !dbg !5693
  ret i32 %lor.ext, !dbg !5701
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_queue_set_owner(i32 noundef %queueid, i32 noundef %client, i32 noundef %locked) #0 align 16 !dbg !5702 {
entry:
  %retval = alloca i32, align 4
  %queueid.addr = alloca i32, align 4
  %client.addr = alloca i32, align 4
  %locked.addr = alloca i32, align 4
  %q = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %queueid, ptr %queueid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %queueid.addr, metadata !5706, metadata !DIExpression()), !dbg !5716
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !5707, metadata !DIExpression()), !dbg !5717
  store i32 %locked, ptr %locked.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %locked.addr, metadata !5708, metadata !DIExpression()), !dbg !5718
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !5719
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5709, metadata !DIExpression()), !dbg !5720
  %0 = load i32, ptr %queueid.addr, align 4, !dbg !5721
  %call = call ptr @queueptr(i32 noundef %0) #16, !dbg !5722
  store ptr %call, ptr %q, align 8, !dbg !5720
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !5723
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5710, metadata !DIExpression()), !dbg !5724
  %1 = load ptr, ptr %q, align 8, !dbg !5725
  %cmp = icmp eq ptr %1, null, !dbg !5727
  br i1 %cmp, label %if.then, label %if.end, !dbg !5728

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5729

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %q, align 8, !dbg !5730
  %3 = load i32, ptr %client.addr, align 4, !dbg !5732
  %call1 = call i32 @queue_access_lock(ptr noundef %2, i32 noundef %3) #16, !dbg !5733
  %tobool = icmp ne i32 %call1, 0, !dbg !5733
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !5734

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %q, align 8, !dbg !5735
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 17, !dbg !5735
  call void @atomic_dec(ptr noundef %use_lock) #16, !dbg !5735
  store i32 -1, ptr %retval, align 4, !dbg !5737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5737

if.end3:                                          ; preds = %if.end
  br label %do.body, !dbg !5738

do.body:                                          ; preds = %if.end3
  br label %do.body4, !dbg !5739

do.body4:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !5740
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5711, metadata !DIExpression()), !dbg !5740
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !5740
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5715, metadata !DIExpression()), !dbg !5740
  %cmp5 = icmp eq ptr %__dummy, %__dummy2, !dbg !5740
  %conv = zext i1 %cmp5 to i32, !dbg !5740
  store i32 1, ptr %tmp, align 4, !dbg !5740
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !5741
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !5741
  %5 = load i32, ptr %tmp, align 4, !dbg !5740
  %6 = load ptr, ptr %q, align 8, !dbg !5741
  %owner_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %6, i32 0, i32 12, !dbg !5741
  %call6 = call ptr @spinlock_check(ptr noundef %owner_lock) #16, !dbg !5741
  %call7 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call6) #16, !dbg !5741
  store i64 %call7, ptr %flags, align 8, !dbg !5741
  br label %do.cond, !dbg !5741

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !5741

do.end:                                           ; preds = %do.cond
  br label %do.cond8, !dbg !5739

do.cond8:                                         ; preds = %do.end
  br label %do.end9, !dbg !5739

do.end9:                                          ; preds = %do.cond8
  %7 = load i32, ptr %locked.addr, align 4, !dbg !5742
  %tobool10 = icmp ne i32 %7, 0, !dbg !5742
  %8 = zext i1 %tobool10 to i64, !dbg !5742
  %cond = select i1 %tobool10, i32 1, i32 0, !dbg !5742
  %tobool11 = icmp ne i32 %cond, 0, !dbg !5742
  %9 = load ptr, ptr %q, align 8, !dbg !5743
  %locked12 = getelementptr inbounds %struct.snd_seq_queue, ptr %9, i32 0, i32 6, !dbg !5744
  %frombool = zext i1 %tobool11 to i8, !dbg !5745
  store i8 %frombool, ptr %locked12, align 4, !dbg !5745
  %10 = load i32, ptr %client.addr, align 4, !dbg !5746
  %11 = load ptr, ptr %q, align 8, !dbg !5747
  %owner = getelementptr inbounds %struct.snd_seq_queue, ptr %11, i32 0, i32 5, !dbg !5748
  store i32 %10, ptr %owner, align 8, !dbg !5749
  %12 = load ptr, ptr %q, align 8, !dbg !5750
  %owner_lock13 = getelementptr inbounds %struct.snd_seq_queue, ptr %12, i32 0, i32 12, !dbg !5751
  %13 = load i64, ptr %flags, align 8, !dbg !5752
  call void @spin_unlock_irqrestore(ptr noundef %owner_lock13, i64 noundef %13) #16, !dbg !5753
  %14 = load ptr, ptr %q, align 8, !dbg !5754
  call void @queue_access_unlock(ptr noundef %14) #16, !dbg !5755
  %15 = load ptr, ptr %q, align 8, !dbg !5756
  %use_lock14 = getelementptr inbounds %struct.snd_seq_queue, ptr %15, i32 0, i32 17, !dbg !5756
  call void @atomic_dec(ptr noundef %use_lock14) #16, !dbg !5756
  store i32 0, ptr %retval, align 4, !dbg !5757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5757

cleanup:                                          ; preds = %do.end9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5758
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !5758
  %16 = load i32, ptr %retval, align 4, !dbg !5758
  ret i32 %16, !dbg !5758
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queue_access_lock(ptr noundef %q, i32 noundef %client) #0 align 16 !dbg !5759 {
entry:
  %q.addr = alloca ptr, align 8
  %client.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %access_ok = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !5761, metadata !DIExpression()), !dbg !5770
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !5762, metadata !DIExpression()), !dbg !5771
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !5772
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5763, metadata !DIExpression()), !dbg !5773
  call void @llvm.lifetime.start.p0(i64 4, ptr %access_ok) #15, !dbg !5774
  call void @llvm.dbg.declare(metadata ptr %access_ok, metadata !5764, metadata !DIExpression()), !dbg !5775
  br label %do.body, !dbg !5776

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5777

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !5778
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5765, metadata !DIExpression()), !dbg !5778
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !5778
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5769, metadata !DIExpression()), !dbg !5778
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5778
  %conv = zext i1 %cmp to i32, !dbg !5778
  store i32 1, ptr %tmp, align 4, !dbg !5778
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !5779
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !5779
  %0 = load i32, ptr %tmp, align 4, !dbg !5778
  %1 = load ptr, ptr %q.addr, align 8, !dbg !5779
  %owner_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 12, !dbg !5779
  %call = call ptr @spinlock_check(ptr noundef %owner_lock) #16, !dbg !5779
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !5779
  store i64 %call2, ptr %flags, align 8, !dbg !5779
  br label %do.cond, !dbg !5779

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5779

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5777

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5777

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %q.addr, align 8, !dbg !5780
  %3 = load i32, ptr %client.addr, align 4, !dbg !5781
  %call5 = call i32 @check_access(ptr noundef %2, i32 noundef %3) #16, !dbg !5782
  store i32 %call5, ptr %access_ok, align 4, !dbg !5783
  %4 = load i32, ptr %access_ok, align 4, !dbg !5784
  %tobool = icmp ne i32 %4, 0, !dbg !5784
  br i1 %tobool, label %if.then, label %if.end, !dbg !5786

if.then:                                          ; preds = %do.end4
  %5 = load ptr, ptr %q.addr, align 8, !dbg !5787
  %klocked = getelementptr inbounds %struct.snd_seq_queue, ptr %5, i32 0, i32 7, !dbg !5788
  store i8 1, ptr %klocked, align 1, !dbg !5789
  br label %if.end, !dbg !5787

if.end:                                           ; preds = %if.then, %do.end4
  %6 = load ptr, ptr %q.addr, align 8, !dbg !5790
  %owner_lock6 = getelementptr inbounds %struct.snd_seq_queue, ptr %6, i32 0, i32 12, !dbg !5791
  %7 = load i64, ptr %flags, align 8, !dbg !5792
  call void @spin_unlock_irqrestore(ptr noundef %owner_lock6, i64 noundef %7) #16, !dbg !5793
  %8 = load i32, ptr %access_ok, align 4, !dbg !5794
  call void @llvm.lifetime.end.p0(i64 4, ptr %access_ok) #15, !dbg !5795
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5795
  ret i32 %8, !dbg !5796
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queue_access_unlock(ptr noundef %q) #3 align 16 !dbg !5797 {
entry:
  %q.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !5799, metadata !DIExpression()), !dbg !5806
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !5807
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5800, metadata !DIExpression()), !dbg !5808
  br label %do.body, !dbg !5809

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5810

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !5811
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5801, metadata !DIExpression()), !dbg !5811
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !5811
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5805, metadata !DIExpression()), !dbg !5811
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5811
  %conv = zext i1 %cmp to i32, !dbg !5811
  store i32 1, ptr %tmp, align 4, !dbg !5811
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !5812
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !5812
  %0 = load i32, ptr %tmp, align 4, !dbg !5811
  %1 = load ptr, ptr %q.addr, align 8, !dbg !5812
  %owner_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 12, !dbg !5812
  %call = call ptr @spinlock_check(ptr noundef %owner_lock) #16, !dbg !5812
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !5812
  store i64 %call2, ptr %flags, align 8, !dbg !5812
  br label %do.cond, !dbg !5812

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5812

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5810

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5810

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %q.addr, align 8, !dbg !5813
  %klocked = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 7, !dbg !5814
  store i8 0, ptr %klocked, align 1, !dbg !5815
  %3 = load ptr, ptr %q.addr, align 8, !dbg !5816
  %owner_lock5 = getelementptr inbounds %struct.snd_seq_queue, ptr %3, i32 0, i32 12, !dbg !5817
  %4 = load i64, ptr %flags, align 8, !dbg !5818
  call void @spin_unlock_irqrestore(ptr noundef %owner_lock5, i64 noundef %4) #16, !dbg !5819
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5820
  ret void, !dbg !5820
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_queue_timer_open(i32 noundef %queueid) #0 align 16 !dbg !5821 {
entry:
  %retval = alloca i32, align 4
  %queueid.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %queue = alloca ptr, align 8
  %tmr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %queueid, ptr %queueid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %queueid.addr, metadata !5823, metadata !DIExpression()), !dbg !5827
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #15, !dbg !5828
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5824, metadata !DIExpression()), !dbg !5829
  store i32 0, ptr %result, align 4, !dbg !5829
  call void @llvm.lifetime.start.p0(i64 8, ptr %queue) #15, !dbg !5830
  call void @llvm.dbg.declare(metadata ptr %queue, metadata !5825, metadata !DIExpression()), !dbg !5831
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmr) #15, !dbg !5832
  call void @llvm.dbg.declare(metadata ptr %tmr, metadata !5826, metadata !DIExpression()), !dbg !5833
  %0 = load i32, ptr %queueid.addr, align 4, !dbg !5834
  %call = call ptr @queueptr(i32 noundef %0) #16, !dbg !5835
  store ptr %call, ptr %queue, align 8, !dbg !5836
  %1 = load ptr, ptr %queue, align 8, !dbg !5837
  %cmp = icmp eq ptr %1, null, !dbg !5839
  br i1 %cmp, label %if.then, label %if.end, !dbg !5840

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5841

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %queue, align 8, !dbg !5842
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 4, !dbg !5843
  %3 = load ptr, ptr %timer, align 8, !dbg !5843
  store ptr %3, ptr %tmr, align 8, !dbg !5844
  %4 = load ptr, ptr %queue, align 8, !dbg !5845
  %call1 = call i32 @snd_seq_timer_open(ptr noundef %4) #16, !dbg !5846
  store i32 %call1, ptr %result, align 4, !dbg !5847
  %5 = load i32, ptr %result, align 4, !dbg !5848
  %cmp2 = icmp slt i32 %5, 0, !dbg !5850
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !5851

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %tmr, align 8, !dbg !5852
  call void @snd_seq_timer_defaults(ptr noundef %6) #16, !dbg !5854
  %7 = load ptr, ptr %queue, align 8, !dbg !5855
  %call4 = call i32 @snd_seq_timer_open(ptr noundef %7) #16, !dbg !5856
  store i32 %call4, ptr %result, align 4, !dbg !5857
  br label %if.end5, !dbg !5858

if.end5:                                          ; preds = %if.then3, %if.end
  %8 = load ptr, ptr %queue, align 8, !dbg !5859
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %8, i32 0, i32 17, !dbg !5859
  call void @atomic_dec(ptr noundef %use_lock) #16, !dbg !5859
  %9 = load i32, ptr %result, align 4, !dbg !5860
  store i32 %9, ptr %retval, align 4, !dbg !5861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5861

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmr) #15, !dbg !5862
  call void @llvm.lifetime.end.p0(i64 8, ptr %queue) #15, !dbg !5862
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #15, !dbg !5862
  %10 = load i32, ptr %retval, align 4, !dbg !5862
  ret i32 %10, !dbg !5862
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5863 dso_local i32 @snd_seq_timer_open(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5864 dso_local void @snd_seq_timer_defaults(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_queue_timer_close(i32 noundef %queueid) #0 align 16 !dbg !5867 {
entry:
  %retval = alloca i32, align 4
  %queueid.addr = alloca i32, align 4
  %queue = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %queueid, ptr %queueid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %queueid.addr, metadata !5869, metadata !DIExpression()), !dbg !5872
  call void @llvm.lifetime.start.p0(i64 8, ptr %queue) #15, !dbg !5873
  call void @llvm.dbg.declare(metadata ptr %queue, metadata !5870, metadata !DIExpression()), !dbg !5874
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #15, !dbg !5875
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5871, metadata !DIExpression()), !dbg !5876
  store i32 0, ptr %result, align 4, !dbg !5876
  %0 = load i32, ptr %queueid.addr, align 4, !dbg !5877
  %call = call ptr @queueptr(i32 noundef %0) #16, !dbg !5878
  store ptr %call, ptr %queue, align 8, !dbg !5879
  %1 = load ptr, ptr %queue, align 8, !dbg !5880
  %cmp = icmp eq ptr %1, null, !dbg !5882
  br i1 %cmp, label %if.then, label %if.end, !dbg !5883

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5884

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %queue, align 8, !dbg !5885
  %call1 = call i32 @snd_seq_timer_close(ptr noundef %2) #16, !dbg !5886
  %3 = load ptr, ptr %queue, align 8, !dbg !5887
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %3, i32 0, i32 17, !dbg !5887
  call void @atomic_dec(ptr noundef %use_lock) #16, !dbg !5887
  %4 = load i32, ptr %result, align 4, !dbg !5888
  store i32 %4, ptr %retval, align 4, !dbg !5889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5889

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #15, !dbg !5890
  call void @llvm.lifetime.end.p0(i64 8, ptr %queue) #15, !dbg !5890
  %5 = load i32, ptr %retval, align 4, !dbg !5890
  ret i32 %5, !dbg !5890
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5891 dso_local i32 @snd_seq_timer_close(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_queue_timer_set_tempo(i32 noundef %queueid, i32 noundef %client, ptr noundef %info) #0 align 16 !dbg !5892 {
entry:
  %retval = alloca i32, align 4
  %queueid.addr = alloca i32, align 4
  %client.addr = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %queueid, ptr %queueid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %queueid.addr, metadata !5908, metadata !DIExpression()), !dbg !5913
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !5909, metadata !DIExpression()), !dbg !5914
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5910, metadata !DIExpression()), !dbg !5915
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !5916
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5911, metadata !DIExpression()), !dbg !5917
  %0 = load i32, ptr %queueid.addr, align 4, !dbg !5918
  %call = call ptr @queueptr(i32 noundef %0) #16, !dbg !5919
  store ptr %call, ptr %q, align 8, !dbg !5917
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #15, !dbg !5920
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5912, metadata !DIExpression()), !dbg !5921
  %1 = load ptr, ptr %q, align 8, !dbg !5922
  %cmp = icmp eq ptr %1, null, !dbg !5924
  br i1 %cmp, label %if.then, label %if.end, !dbg !5925

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5926

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %q, align 8, !dbg !5927
  %3 = load i32, ptr %client.addr, align 4, !dbg !5929
  %call1 = call i32 @queue_access_lock(ptr noundef %2, i32 noundef %3) #16, !dbg !5930
  %tobool = icmp ne i32 %call1, 0, !dbg !5930
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !5931

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %q, align 8, !dbg !5932
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 17, !dbg !5932
  call void @atomic_dec(ptr noundef %use_lock) #16, !dbg !5932
  store i32 -1, ptr %retval, align 4, !dbg !5934
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5934

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %q, align 8, !dbg !5935
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %5, i32 0, i32 4, !dbg !5936
  %6 = load ptr, ptr %timer, align 8, !dbg !5936
  %7 = load ptr, ptr %info.addr, align 8, !dbg !5937
  %tempo = getelementptr inbounds %struct.snd_seq_queue_tempo, ptr %7, i32 0, i32 1, !dbg !5938
  %8 = load i32, ptr %tempo, align 4, !dbg !5938
  %9 = load ptr, ptr %info.addr, align 8, !dbg !5939
  %ppq = getelementptr inbounds %struct.snd_seq_queue_tempo, ptr %9, i32 0, i32 2, !dbg !5940
  %10 = load i32, ptr %ppq, align 4, !dbg !5940
  %call4 = call i32 @snd_seq_timer_set_tempo_ppq(ptr noundef %6, i32 noundef %8, i32 noundef %10) #16, !dbg !5941
  store i32 %call4, ptr %result, align 4, !dbg !5942
  %11 = load i32, ptr %result, align 4, !dbg !5943
  %cmp5 = icmp sge i32 %11, 0, !dbg !5945
  br i1 %cmp5, label %land.lhs.true, label %if.end11, !dbg !5946

land.lhs.true:                                    ; preds = %if.end3
  %12 = load ptr, ptr %info.addr, align 8, !dbg !5947
  %skew_base = getelementptr inbounds %struct.snd_seq_queue_tempo, ptr %12, i32 0, i32 4, !dbg !5948
  %13 = load i32, ptr %skew_base, align 4, !dbg !5948
  %cmp6 = icmp ugt i32 %13, 0, !dbg !5949
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !5950

if.then7:                                         ; preds = %land.lhs.true
  %14 = load ptr, ptr %q, align 8, !dbg !5951
  %timer8 = getelementptr inbounds %struct.snd_seq_queue, ptr %14, i32 0, i32 4, !dbg !5952
  %15 = load ptr, ptr %timer8, align 8, !dbg !5952
  %16 = load ptr, ptr %info.addr, align 8, !dbg !5953
  %skew_value = getelementptr inbounds %struct.snd_seq_queue_tempo, ptr %16, i32 0, i32 3, !dbg !5954
  %17 = load i32, ptr %skew_value, align 4, !dbg !5954
  %18 = load ptr, ptr %info.addr, align 8, !dbg !5955
  %skew_base9 = getelementptr inbounds %struct.snd_seq_queue_tempo, ptr %18, i32 0, i32 4, !dbg !5956
  %19 = load i32, ptr %skew_base9, align 4, !dbg !5956
  %call10 = call i32 @snd_seq_timer_set_skew(ptr noundef %15, i32 noundef %17, i32 noundef %19) #16, !dbg !5957
  store i32 %call10, ptr %result, align 4, !dbg !5958
  br label %if.end11, !dbg !5959

if.end11:                                         ; preds = %if.then7, %land.lhs.true, %if.end3
  %20 = load ptr, ptr %q, align 8, !dbg !5960
  call void @queue_access_unlock(ptr noundef %20) #16, !dbg !5961
  %21 = load ptr, ptr %q, align 8, !dbg !5962
  %use_lock12 = getelementptr inbounds %struct.snd_seq_queue, ptr %21, i32 0, i32 17, !dbg !5962
  call void @atomic_dec(ptr noundef %use_lock12) #16, !dbg !5962
  %22 = load i32, ptr %result, align 4, !dbg !5963
  store i32 %22, ptr %retval, align 4, !dbg !5964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5964

cleanup:                                          ; preds = %if.end11, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #15, !dbg !5965
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !5965
  %23 = load i32, ptr %retval, align 4, !dbg !5965
  ret i32 %23, !dbg !5965
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5966 dso_local i32 @snd_seq_timer_set_tempo_ppq(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5969 dso_local i32 @snd_seq_timer_set_skew(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_queue_use(i32 noundef %queueid, i32 noundef %client, i32 noundef %use) #0 align 16 !dbg !5972 {
entry:
  %retval = alloca i32, align 4
  %queueid.addr = alloca i32, align 4
  %client.addr = alloca i32, align 4
  %use.addr = alloca i32, align 4
  %queue = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %queueid, ptr %queueid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %queueid.addr, metadata !5974, metadata !DIExpression()), !dbg !5978
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !5975, metadata !DIExpression()), !dbg !5979
  store i32 %use, ptr %use.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %use.addr, metadata !5976, metadata !DIExpression()), !dbg !5980
  call void @llvm.lifetime.start.p0(i64 8, ptr %queue) #15, !dbg !5981
  call void @llvm.dbg.declare(metadata ptr %queue, metadata !5977, metadata !DIExpression()), !dbg !5982
  %0 = load i32, ptr %queueid.addr, align 4, !dbg !5983
  %call = call ptr @queueptr(i32 noundef %0) #16, !dbg !5984
  store ptr %call, ptr %queue, align 8, !dbg !5985
  %1 = load ptr, ptr %queue, align 8, !dbg !5986
  %cmp = icmp eq ptr %1, null, !dbg !5988
  br i1 %cmp, label %if.then, label %if.end, !dbg !5989

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5990

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %queue, align 8, !dbg !5991
  %timer_mutex = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 16, !dbg !5992
  call void @mutex_lock(ptr noundef %timer_mutex) #16, !dbg !5993
  %3 = load ptr, ptr %queue, align 8, !dbg !5994
  %4 = load i32, ptr %client.addr, align 4, !dbg !5995
  %5 = load i32, ptr %use.addr, align 4, !dbg !5996
  call void @queue_use(ptr noundef %3, i32 noundef %4, i32 noundef %5) #16, !dbg !5997
  %6 = load ptr, ptr %queue, align 8, !dbg !5998
  %timer_mutex1 = getelementptr inbounds %struct.snd_seq_queue, ptr %6, i32 0, i32 16, !dbg !5999
  call void @mutex_unlock(ptr noundef %timer_mutex1) #16, !dbg !6000
  %7 = load ptr, ptr %queue, align 8, !dbg !6001
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %7, i32 0, i32 17, !dbg !6001
  call void @atomic_dec(ptr noundef %use_lock) #16, !dbg !6001
  store i32 0, ptr %retval, align 4, !dbg !6002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6002

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %queue) #15, !dbg !6003
  %8 = load i32, ptr %retval, align 4, !dbg !6003
  ret i32 %8, !dbg !6003
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6004 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6008 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_queue_is_used(i32 noundef %queueid, i32 noundef %client) #0 align 16 !dbg !6009 {
entry:
  %retval = alloca i32, align 4
  %queueid.addr = alloca i32, align 4
  %client.addr = alloca i32, align 4
  %q = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %queueid, ptr %queueid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %queueid.addr, metadata !6011, metadata !DIExpression()), !dbg !6015
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !6012, metadata !DIExpression()), !dbg !6016
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !6017
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6013, metadata !DIExpression()), !dbg !6018
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #15, !dbg !6019
  call void @llvm.dbg.declare(metadata ptr %result, metadata !6014, metadata !DIExpression()), !dbg !6020
  %0 = load i32, ptr %queueid.addr, align 4, !dbg !6021
  %call = call ptr @queueptr(i32 noundef %0) #16, !dbg !6022
  store ptr %call, ptr %q, align 8, !dbg !6023
  %1 = load ptr, ptr %q, align 8, !dbg !6024
  %cmp = icmp eq ptr %1, null, !dbg !6026
  br i1 %cmp, label %if.then, label %if.end, !dbg !6027

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6028
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6028

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %client.addr, align 4, !dbg !6029
  %3 = call i1 @llvm.is.constant.i32(i32 %2), !dbg !6029
  br i1 %3, label %land.lhs.true, label %cond.false, !dbg !6029

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %q, align 8, !dbg !6029
  %clients_bitmap = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 14, !dbg !6029
  %arraydecay = getelementptr inbounds [3 x i64], ptr %clients_bitmap, i64 0, i64 0, !dbg !6029
  %5 = ptrtoint ptr %arraydecay to i64, !dbg !6029
  %cmp1 = icmp ne i64 %5, 0, !dbg !6029
  %conv = zext i1 %cmp1 to i32, !dbg !6029
  %6 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6029
  br i1 %6, label %land.lhs.true2, label %cond.false, !dbg !6029

land.lhs.true2:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %q, align 8, !dbg !6029
  %clients_bitmap3 = getelementptr inbounds %struct.snd_seq_queue, ptr %7, i32 0, i32 14, !dbg !6029
  %arraydecay4 = getelementptr inbounds [3 x i64], ptr %clients_bitmap3, i64 0, i64 0, !dbg !6029
  %8 = ptrtoint ptr %arraydecay4 to i64, !dbg !6029
  %cmp5 = icmp ne i64 %8, 0, !dbg !6029
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !6029

land.lhs.true7:                                   ; preds = %land.lhs.true2
  %9 = load ptr, ptr %q, align 8, !dbg !6029
  %clients_bitmap8 = getelementptr inbounds %struct.snd_seq_queue, ptr %9, i32 0, i32 14, !dbg !6029
  %arraydecay9 = getelementptr inbounds [3 x i64], ptr %clients_bitmap8, i64 0, i64 0, !dbg !6029
  %10 = load i64, ptr %arraydecay9, align 8, !dbg !6029
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !6029
  br i1 %11, label %cond.true, label %cond.false, !dbg !6029

cond.true:                                        ; preds = %land.lhs.true7
  %12 = load i32, ptr %client.addr, align 4, !dbg !6029
  %conv10 = sext i32 %12 to i64, !dbg !6029
  %13 = load ptr, ptr %q, align 8, !dbg !6029
  %clients_bitmap11 = getelementptr inbounds %struct.snd_seq_queue, ptr %13, i32 0, i32 14, !dbg !6029
  %arraydecay12 = getelementptr inbounds [3 x i64], ptr %clients_bitmap11, i64 0, i64 0, !dbg !6029
  %call13 = call zeroext i1 @const_test_bit(i64 noundef %conv10, ptr noundef %arraydecay12) #16, !dbg !6029
  %conv14 = zext i1 %call13 to i32, !dbg !6029
  br label %cond.end, !dbg !6029

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true2, %land.lhs.true, %if.end
  %14 = load i32, ptr %client.addr, align 4, !dbg !6029
  %conv15 = sext i32 %14 to i64, !dbg !6029
  %15 = load ptr, ptr %q, align 8, !dbg !6029
  %clients_bitmap16 = getelementptr inbounds %struct.snd_seq_queue, ptr %15, i32 0, i32 14, !dbg !6029
  %arraydecay17 = getelementptr inbounds [3 x i64], ptr %clients_bitmap16, i64 0, i64 0, !dbg !6029
  %call18 = call zeroext i1 @_test_bit(i64 noundef %conv15, ptr noundef %arraydecay17) #16, !dbg !6029
  %conv19 = zext i1 %call18 to i32, !dbg !6029
  br label %cond.end, !dbg !6029

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv14, %cond.true ], [ %conv19, %cond.false ], !dbg !6029
  %tobool = icmp ne i32 %cond, 0, !dbg !6029
  %16 = zext i1 %tobool to i64, !dbg !6029
  %cond20 = select i1 %tobool, i32 1, i32 0, !dbg !6029
  store i32 %cond20, ptr %result, align 4, !dbg !6030
  %17 = load ptr, ptr %q, align 8, !dbg !6031
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %17, i32 0, i32 17, !dbg !6031
  call void @atomic_dec(ptr noundef %use_lock) #16, !dbg !6031
  %18 = load i32, ptr %result, align 4, !dbg !6032
  store i32 %18, ptr %retval, align 4, !dbg !6033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6033

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #15, !dbg !6034
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !6034
  %19 = load i32, ptr %retval, align 4, !dbg !6034
  ret i32 %19, !dbg !6034
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6035 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6043, metadata !DIExpression()), !dbg !6048
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6044, metadata !DIExpression()), !dbg !6049
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !6050
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6045, metadata !DIExpression()), !dbg !6051
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6052
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6053
  %div = udiv i64 %1, 64, !dbg !6053
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6054
  store ptr %add.ptr, ptr %p, align 8, !dbg !6051
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !6055
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6046, metadata !DIExpression()), !dbg !6056
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6057
  %rem = urem i64 %2, 64, !dbg !6057
  %shl = shl i64 1, %rem, !dbg !6057
  store i64 %shl, ptr %mask, align 8, !dbg !6056
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !6058
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6047, metadata !DIExpression()), !dbg !6059
  %3 = load ptr, ptr %p, align 8, !dbg !6060
  %4 = load i64, ptr %3, align 8, !dbg !6061
  store i64 %4, ptr %val, align 8, !dbg !6059
  %5 = load i64, ptr %val, align 8, !dbg !6062
  %6 = load i64, ptr %mask, align 8, !dbg !6063
  %and = and i64 %5, %6, !dbg !6064
  %tobool = icmp ne i64 %and, 0, !dbg !6065
  %lnot = xor i1 %tobool, true, !dbg !6065
  %lnot1 = xor i1 %lnot, true, !dbg !6066
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !6067
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !6067
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !6067
  ret i1 %lnot1, !dbg !6068
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6069 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6072, metadata !DIExpression()), !dbg !6074
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6073, metadata !DIExpression()), !dbg !6075
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6076
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6077
  %div = udiv i64 %1, 64, !dbg !6077
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6078
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !6079
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6080
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6081
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !6082
  ret i1 %call, !dbg !6083
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_queue_client_leave(i32 noundef %client) #0 align 16 !dbg !6084 {
entry:
  %client.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca ptr, align 8
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !6086, metadata !DIExpression()), !dbg !6089
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6090
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6087, metadata !DIExpression()), !dbg !6091
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !6092
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6088, metadata !DIExpression()), !dbg !6093
  store i32 0, ptr %i, align 4, !dbg !6094
  br label %for.cond, !dbg !6096

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6097
  %cmp = icmp slt i32 %0, 32, !dbg !6099
  br i1 %cmp, label %for.body, label %for.end, !dbg !6100

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !6101
  %2 = load i32, ptr %client.addr, align 4, !dbg !6103
  %call = call ptr @queue_list_remove(i32 noundef %1, i32 noundef %2) #16, !dbg !6104
  store ptr %call, ptr %q, align 8, !dbg !6105
  %3 = load ptr, ptr %q, align 8, !dbg !6106
  %tobool = icmp ne ptr %3, null, !dbg !6106
  br i1 %tobool, label %if.then, label %if.end, !dbg !6108

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %q, align 8, !dbg !6109
  call void @queue_delete(ptr noundef %4) #16, !dbg !6110
  br label %if.end, !dbg !6110

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !6111

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !6112
  %inc = add i32 %5, 1, !dbg !6112
  store i32 %inc, ptr %i, align 4, !dbg !6112
  br label %for.cond, !dbg !6113, !llvm.loop !6114

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !6116
  br label %for.cond1, !dbg !6118

for.cond1:                                        ; preds = %for.inc30, %for.end
  %6 = load i32, ptr %i, align 4, !dbg !6119
  %cmp2 = icmp slt i32 %6, 32, !dbg !6121
  br i1 %cmp2, label %for.body3, label %for.end32, !dbg !6122

for.body3:                                        ; preds = %for.cond1
  %7 = load i32, ptr %i, align 4, !dbg !6123
  %call4 = call ptr @queueptr(i32 noundef %7) #16, !dbg !6125
  store ptr %call4, ptr %q, align 8, !dbg !6126
  %8 = load ptr, ptr %q, align 8, !dbg !6127
  %tobool5 = icmp ne ptr %8, null, !dbg !6127
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6129

if.then6:                                         ; preds = %for.body3
  br label %for.inc30, !dbg !6130

if.end7:                                          ; preds = %for.body3
  %9 = load i32, ptr %client.addr, align 4, !dbg !6131
  %10 = call i1 @llvm.is.constant.i32(i32 %9), !dbg !6131
  br i1 %10, label %land.lhs.true, label %cond.false, !dbg !6131

land.lhs.true:                                    ; preds = %if.end7
  %11 = load ptr, ptr %q, align 8, !dbg !6131
  %clients_bitmap = getelementptr inbounds %struct.snd_seq_queue, ptr %11, i32 0, i32 14, !dbg !6131
  %arraydecay = getelementptr inbounds [3 x i64], ptr %clients_bitmap, i64 0, i64 0, !dbg !6131
  %12 = ptrtoint ptr %arraydecay to i64, !dbg !6131
  %cmp8 = icmp ne i64 %12, 0, !dbg !6131
  %conv = zext i1 %cmp8 to i32, !dbg !6131
  %13 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6131
  br i1 %13, label %land.lhs.true9, label %cond.false, !dbg !6131

land.lhs.true9:                                   ; preds = %land.lhs.true
  %14 = load ptr, ptr %q, align 8, !dbg !6131
  %clients_bitmap10 = getelementptr inbounds %struct.snd_seq_queue, ptr %14, i32 0, i32 14, !dbg !6131
  %arraydecay11 = getelementptr inbounds [3 x i64], ptr %clients_bitmap10, i64 0, i64 0, !dbg !6131
  %15 = ptrtoint ptr %arraydecay11 to i64, !dbg !6131
  %cmp12 = icmp ne i64 %15, 0, !dbg !6131
  br i1 %cmp12, label %land.lhs.true14, label %cond.false, !dbg !6131

land.lhs.true14:                                  ; preds = %land.lhs.true9
  %16 = load ptr, ptr %q, align 8, !dbg !6131
  %clients_bitmap15 = getelementptr inbounds %struct.snd_seq_queue, ptr %16, i32 0, i32 14, !dbg !6131
  %arraydecay16 = getelementptr inbounds [3 x i64], ptr %clients_bitmap15, i64 0, i64 0, !dbg !6131
  %17 = load i64, ptr %arraydecay16, align 8, !dbg !6131
  %18 = call i1 @llvm.is.constant.i64(i64 %17), !dbg !6131
  br i1 %18, label %cond.true, label %cond.false, !dbg !6133

cond.true:                                        ; preds = %land.lhs.true14
  %19 = load i32, ptr %client.addr, align 4, !dbg !6131
  %conv17 = sext i32 %19 to i64, !dbg !6131
  %20 = load ptr, ptr %q, align 8, !dbg !6131
  %clients_bitmap18 = getelementptr inbounds %struct.snd_seq_queue, ptr %20, i32 0, i32 14, !dbg !6131
  %arraydecay19 = getelementptr inbounds [3 x i64], ptr %clients_bitmap18, i64 0, i64 0, !dbg !6131
  %call20 = call zeroext i1 @const_test_bit(i64 noundef %conv17, ptr noundef %arraydecay19) #16, !dbg !6131
  br i1 %call20, label %if.then27, label %if.end29, !dbg !6131

cond.false:                                       ; preds = %land.lhs.true14, %land.lhs.true9, %land.lhs.true, %if.end7
  %21 = load i32, ptr %client.addr, align 4, !dbg !6131
  %conv22 = sext i32 %21 to i64, !dbg !6131
  %22 = load ptr, ptr %q, align 8, !dbg !6131
  %clients_bitmap23 = getelementptr inbounds %struct.snd_seq_queue, ptr %22, i32 0, i32 14, !dbg !6131
  %arraydecay24 = getelementptr inbounds [3 x i64], ptr %clients_bitmap23, i64 0, i64 0, !dbg !6131
  %call25 = call zeroext i1 @_test_bit(i64 noundef %conv22, ptr noundef %arraydecay24) #16, !dbg !6131
  br i1 %call25, label %if.then27, label %if.end29, !dbg !6133

if.then27:                                        ; preds = %cond.false, %cond.true
  %23 = load ptr, ptr %q, align 8, !dbg !6134
  %tickq = getelementptr inbounds %struct.snd_seq_queue, ptr %23, i32 0, i32 2, !dbg !6136
  %24 = load ptr, ptr %tickq, align 8, !dbg !6136
  %25 = load i32, ptr %client.addr, align 4, !dbg !6137
  call void @snd_seq_prioq_leave(ptr noundef %24, i32 noundef %25, i32 noundef 0) #16, !dbg !6138
  %26 = load ptr, ptr %q, align 8, !dbg !6139
  %timeq = getelementptr inbounds %struct.snd_seq_queue, ptr %26, i32 0, i32 3, !dbg !6140
  %27 = load ptr, ptr %timeq, align 8, !dbg !6140
  %28 = load i32, ptr %client.addr, align 4, !dbg !6141
  call void @snd_seq_prioq_leave(ptr noundef %27, i32 noundef %28, i32 noundef 0) #16, !dbg !6142
  %29 = load ptr, ptr %q, align 8, !dbg !6143
  %queue = getelementptr inbounds %struct.snd_seq_queue, ptr %29, i32 0, i32 0, !dbg !6144
  %30 = load i32, ptr %queue, align 8, !dbg !6144
  %31 = load i32, ptr %client.addr, align 4, !dbg !6145
  %call28 = call i32 @snd_seq_queue_use(i32 noundef %30, i32 noundef %31, i32 noundef 0) #16, !dbg !6146
  br label %if.end29, !dbg !6147

if.end29:                                         ; preds = %if.then27, %cond.false, %cond.true
  %32 = load ptr, ptr %q, align 8, !dbg !6148
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %32, i32 0, i32 17, !dbg !6148
  call void @atomic_dec(ptr noundef %use_lock) #16, !dbg !6148
  br label %for.inc30, !dbg !6149

for.inc30:                                        ; preds = %if.end29, %if.then6
  %33 = load i32, ptr %i, align 4, !dbg !6150
  %inc31 = add i32 %33, 1, !dbg !6150
  store i32 %inc31, ptr %i, align 4, !dbg !6150
  br label %for.cond1, !dbg !6151, !llvm.loop !6152

for.end32:                                        ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !6154
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6154
  ret void, !dbg !6154
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6155 dso_local void @snd_seq_prioq_leave(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_queue_client_leave_cells(i32 noundef %client) #0 align 16 !dbg !6158 {
entry:
  %client.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca ptr, align 8
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !6160, metadata !DIExpression()), !dbg !6163
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6164
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6161, metadata !DIExpression()), !dbg !6165
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !6166
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6162, metadata !DIExpression()), !dbg !6167
  store i32 0, ptr %i, align 4, !dbg !6168
  br label %for.cond, !dbg !6170

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6171
  %cmp = icmp slt i32 %0, 32, !dbg !6173
  br i1 %cmp, label %for.body, label %for.end, !dbg !6174

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !6175
  %call = call ptr @queueptr(i32 noundef %1) #16, !dbg !6177
  store ptr %call, ptr %q, align 8, !dbg !6178
  %2 = load ptr, ptr %q, align 8, !dbg !6179
  %tobool = icmp ne ptr %2, null, !dbg !6179
  br i1 %tobool, label %if.end, label %if.then, !dbg !6181

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !6182

if.end:                                           ; preds = %for.body
  %3 = load ptr, ptr %q, align 8, !dbg !6183
  %tickq = getelementptr inbounds %struct.snd_seq_queue, ptr %3, i32 0, i32 2, !dbg !6184
  %4 = load ptr, ptr %tickq, align 8, !dbg !6184
  %5 = load i32, ptr %client.addr, align 4, !dbg !6185
  call void @snd_seq_prioq_leave(ptr noundef %4, i32 noundef %5, i32 noundef 0) #16, !dbg !6186
  %6 = load ptr, ptr %q, align 8, !dbg !6187
  %timeq = getelementptr inbounds %struct.snd_seq_queue, ptr %6, i32 0, i32 3, !dbg !6188
  %7 = load ptr, ptr %timeq, align 8, !dbg !6188
  %8 = load i32, ptr %client.addr, align 4, !dbg !6189
  call void @snd_seq_prioq_leave(ptr noundef %7, i32 noundef %8, i32 noundef 0) #16, !dbg !6190
  %9 = load ptr, ptr %q, align 8, !dbg !6191
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %9, i32 0, i32 17, !dbg !6191
  call void @atomic_dec(ptr noundef %use_lock) #16, !dbg !6191
  br label %for.inc, !dbg !6192

for.inc:                                          ; preds = %if.end, %if.then
  %10 = load i32, ptr %i, align 4, !dbg !6193
  %inc = add i32 %10, 1, !dbg !6193
  store i32 %inc, ptr %i, align 4, !dbg !6193
  br label %for.cond, !dbg !6194, !llvm.loop !6195

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !6197
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6197
  ret void, !dbg !6197
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_queue_remove_cells(i32 noundef %client, ptr noundef %info) #0 align 16 !dbg !6198 {
entry:
  %client.addr = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %q = alloca ptr, align 8
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !6216, metadata !DIExpression()), !dbg !6220
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6217, metadata !DIExpression()), !dbg !6221
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6222
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6218, metadata !DIExpression()), !dbg !6223
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !6224
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6219, metadata !DIExpression()), !dbg !6225
  store i32 0, ptr %i, align 4, !dbg !6226
  br label %for.cond, !dbg !6228

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6229
  %cmp = icmp slt i32 %0, 32, !dbg !6231
  br i1 %cmp, label %for.body, label %for.end, !dbg !6232

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !6233
  %call = call ptr @queueptr(i32 noundef %1) #16, !dbg !6235
  store ptr %call, ptr %q, align 8, !dbg !6236
  %2 = load ptr, ptr %q, align 8, !dbg !6237
  %tobool = icmp ne ptr %2, null, !dbg !6237
  br i1 %tobool, label %if.end, label %if.then, !dbg !6239

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !6240

if.end:                                           ; preds = %for.body
  %3 = load i32, ptr %client.addr, align 4, !dbg !6241
  %4 = call i1 @llvm.is.constant.i32(i32 %3), !dbg !6241
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !6241

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %q, align 8, !dbg !6241
  %clients_bitmap = getelementptr inbounds %struct.snd_seq_queue, ptr %5, i32 0, i32 14, !dbg !6241
  %arraydecay = getelementptr inbounds [3 x i64], ptr %clients_bitmap, i64 0, i64 0, !dbg !6241
  %6 = ptrtoint ptr %arraydecay to i64, !dbg !6241
  %cmp1 = icmp ne i64 %6, 0, !dbg !6241
  %conv = zext i1 %cmp1 to i32, !dbg !6241
  %7 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6241
  br i1 %7, label %land.lhs.true2, label %cond.false, !dbg !6241

land.lhs.true2:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %q, align 8, !dbg !6241
  %clients_bitmap3 = getelementptr inbounds %struct.snd_seq_queue, ptr %8, i32 0, i32 14, !dbg !6241
  %arraydecay4 = getelementptr inbounds [3 x i64], ptr %clients_bitmap3, i64 0, i64 0, !dbg !6241
  %9 = ptrtoint ptr %arraydecay4 to i64, !dbg !6241
  %cmp5 = icmp ne i64 %9, 0, !dbg !6241
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !6241

land.lhs.true7:                                   ; preds = %land.lhs.true2
  %10 = load ptr, ptr %q, align 8, !dbg !6241
  %clients_bitmap8 = getelementptr inbounds %struct.snd_seq_queue, ptr %10, i32 0, i32 14, !dbg !6241
  %arraydecay9 = getelementptr inbounds [3 x i64], ptr %clients_bitmap8, i64 0, i64 0, !dbg !6241
  %11 = load i64, ptr %arraydecay9, align 8, !dbg !6241
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !6241
  br i1 %12, label %cond.true, label %cond.false, !dbg !6243

cond.true:                                        ; preds = %land.lhs.true7
  %13 = load i32, ptr %client.addr, align 4, !dbg !6241
  %conv10 = sext i32 %13 to i64, !dbg !6241
  %14 = load ptr, ptr %q, align 8, !dbg !6241
  %clients_bitmap11 = getelementptr inbounds %struct.snd_seq_queue, ptr %14, i32 0, i32 14, !dbg !6241
  %arraydecay12 = getelementptr inbounds [3 x i64], ptr %clients_bitmap11, i64 0, i64 0, !dbg !6241
  %call13 = call zeroext i1 @const_test_bit(i64 noundef %conv10, ptr noundef %arraydecay12) #16, !dbg !6241
  br i1 %call13, label %land.lhs.true20, label %if.end27, !dbg !6241

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true2, %land.lhs.true, %if.end
  %15 = load i32, ptr %client.addr, align 4, !dbg !6241
  %conv15 = sext i32 %15 to i64, !dbg !6241
  %16 = load ptr, ptr %q, align 8, !dbg !6241
  %clients_bitmap16 = getelementptr inbounds %struct.snd_seq_queue, ptr %16, i32 0, i32 14, !dbg !6241
  %arraydecay17 = getelementptr inbounds [3 x i64], ptr %clients_bitmap16, i64 0, i64 0, !dbg !6241
  %call18 = call zeroext i1 @_test_bit(i64 noundef %conv15, ptr noundef %arraydecay17) #16, !dbg !6241
  br i1 %call18, label %land.lhs.true20, label %if.end27, !dbg !6243

land.lhs.true20:                                  ; preds = %cond.false, %cond.true
  %17 = load ptr, ptr %info.addr, align 8, !dbg !6244
  %remove_mode = getelementptr inbounds %struct.snd_seq_remove_events, ptr %17, i32 0, i32 0, !dbg !6245
  %18 = load i32, ptr %remove_mode, align 4, !dbg !6245
  %and = and i32 %18, 4, !dbg !6246
  %tobool21 = icmp ne i32 %and, 0, !dbg !6246
  br i1 %tobool21, label %lor.lhs.false, label %if.then26, !dbg !6247

lor.lhs.false:                                    ; preds = %land.lhs.true20
  %19 = load ptr, ptr %q, align 8, !dbg !6248
  %queue = getelementptr inbounds %struct.snd_seq_queue, ptr %19, i32 0, i32 0, !dbg !6249
  %20 = load i32, ptr %queue, align 8, !dbg !6249
  %21 = load ptr, ptr %info.addr, align 8, !dbg !6250
  %queue22 = getelementptr inbounds %struct.snd_seq_remove_events, ptr %21, i32 0, i32 2, !dbg !6251
  %22 = load i8, ptr %queue22, align 4, !dbg !6251
  %conv23 = zext i8 %22 to i32, !dbg !6250
  %cmp24 = icmp eq i32 %20, %conv23, !dbg !6252
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !6253

if.then26:                                        ; preds = %lor.lhs.false, %land.lhs.true20
  %23 = load ptr, ptr %q, align 8, !dbg !6254
  %tickq = getelementptr inbounds %struct.snd_seq_queue, ptr %23, i32 0, i32 2, !dbg !6256
  %24 = load ptr, ptr %tickq, align 8, !dbg !6256
  %25 = load i32, ptr %client.addr, align 4, !dbg !6257
  %26 = load ptr, ptr %info.addr, align 8, !dbg !6258
  call void @snd_seq_prioq_remove_events(ptr noundef %24, i32 noundef %25, ptr noundef %26) #16, !dbg !6259
  %27 = load ptr, ptr %q, align 8, !dbg !6260
  %timeq = getelementptr inbounds %struct.snd_seq_queue, ptr %27, i32 0, i32 3, !dbg !6261
  %28 = load ptr, ptr %timeq, align 8, !dbg !6261
  %29 = load i32, ptr %client.addr, align 4, !dbg !6262
  %30 = load ptr, ptr %info.addr, align 8, !dbg !6263
  call void @snd_seq_prioq_remove_events(ptr noundef %28, i32 noundef %29, ptr noundef %30) #16, !dbg !6264
  br label %if.end27, !dbg !6265

if.end27:                                         ; preds = %if.then26, %lor.lhs.false, %cond.false, %cond.true
  %31 = load ptr, ptr %q, align 8, !dbg !6266
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %31, i32 0, i32 17, !dbg !6266
  call void @atomic_dec(ptr noundef %use_lock) #16, !dbg !6266
  br label %for.inc, !dbg !6267

for.inc:                                          ; preds = %if.end27, %if.then
  %32 = load i32, ptr %i, align 4, !dbg !6268
  %inc = add i32 %32, 1, !dbg !6268
  store i32 %inc, ptr %i, align 4, !dbg !6268
  br label %for.cond, !dbg !6269, !llvm.loop !6270

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !6272
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6272
  ret void, !dbg !6272
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6273 dso_local void @snd_seq_prioq_remove_events(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_control_queue(ptr noundef %ev, i32 noundef %atomic, i32 noundef %hop) #0 align 16 !dbg !6276 {
entry:
  %retval = alloca i32, align 4
  %ev.addr = alloca ptr, align 8
  %atomic.addr = alloca i32, align 4
  %hop.addr = alloca i32, align 4
  %q = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ev, ptr %ev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ev.addr, metadata !6280, metadata !DIExpression()), !dbg !6287
  store i32 %atomic, ptr %atomic.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %atomic.addr, metadata !6281, metadata !DIExpression()), !dbg !6288
  store i32 %hop, ptr %hop.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hop.addr, metadata !6282, metadata !DIExpression()), !dbg !6289
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !6290
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6283, metadata !DIExpression()), !dbg !6291
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6292
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6284, metadata !DIExpression()), !dbg !6292
  %0 = load ptr, ptr %ev.addr, align 8, !dbg !6292
  %tobool = icmp ne ptr %0, null, !dbg !6292
  %lnot = xor i1 %tobool, true, !dbg !6292
  %lnot1 = xor i1 %lnot, true, !dbg !6292
  %lnot2 = xor i1 %lnot1, true, !dbg !6292
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6292
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6292
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !6292
  %tobool3 = icmp ne i32 %1, 0, !dbg !6292
  %lnot4 = xor i1 %tobool3, true, !dbg !6292
  %lnot6 = xor i1 %lnot4, true, !dbg !6292
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6292
  %conv = sext i32 %lnot.ext7 to i64, !dbg !6292
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6292
  store i64 %expval, ptr %tmp, align 8, !dbg !6292
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6293
  %2 = load i64, ptr %tmp, align 8, !dbg !6292
  %tobool8 = icmp ne i64 %2, 0, !dbg !6293
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6294

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6295

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ev.addr, align 8, !dbg !6296
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %3, i32 0, i32 7, !dbg !6297
  %queue = getelementptr inbounds %struct.snd_seq_ev_queue_control, ptr %data, i32 0, i32 0, !dbg !6298
  %4 = load i8, ptr %queue, align 4, !dbg !6298
  %conv9 = zext i8 %4 to i32, !dbg !6296
  %call = call ptr @queueptr(i32 noundef %conv9) #16, !dbg !6299
  store ptr %call, ptr %q, align 8, !dbg !6300
  %5 = load ptr, ptr %q, align 8, !dbg !6301
  %cmp = icmp eq ptr %5, null, !dbg !6303
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !6304

if.then11:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6305

if.end12:                                         ; preds = %if.end
  %6 = load ptr, ptr %q, align 8, !dbg !6306
  %7 = load ptr, ptr %ev.addr, align 8, !dbg !6308
  %source = getelementptr inbounds %struct.snd_seq_event, ptr %7, i32 0, i32 5, !dbg !6309
  %client = getelementptr inbounds %struct.snd_seq_addr, ptr %source, i32 0, i32 0, !dbg !6310
  %8 = load i8, ptr %client, align 4, !dbg !6310
  %conv13 = zext i8 %8 to i32, !dbg !6308
  %call14 = call i32 @queue_access_lock(ptr noundef %6, i32 noundef %conv13) #16, !dbg !6311
  %tobool15 = icmp ne i32 %call14, 0, !dbg !6311
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !6312

if.then16:                                        ; preds = %if.end12
  %9 = load ptr, ptr %q, align 8, !dbg !6313
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %9, i32 0, i32 17, !dbg !6313
  call void @atomic_dec(ptr noundef %use_lock) #16, !dbg !6313
  store i32 -1, ptr %retval, align 4, !dbg !6315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6315

if.end17:                                         ; preds = %if.end12
  %10 = load ptr, ptr %q, align 8, !dbg !6316
  %11 = load ptr, ptr %ev.addr, align 8, !dbg !6317
  %12 = load i32, ptr %atomic.addr, align 4, !dbg !6318
  %13 = load i32, ptr %hop.addr, align 4, !dbg !6319
  call void @snd_seq_queue_process_event(ptr noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13) #16, !dbg !6320
  %14 = load ptr, ptr %q, align 8, !dbg !6321
  call void @queue_access_unlock(ptr noundef %14) #16, !dbg !6322
  %15 = load ptr, ptr %q, align 8, !dbg !6323
  %use_lock18 = getelementptr inbounds %struct.snd_seq_queue, ptr %15, i32 0, i32 17, !dbg !6323
  call void @atomic_dec(ptr noundef %use_lock18) #16, !dbg !6323
  store i32 0, ptr %retval, align 4, !dbg !6324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6324

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !6325
  %16 = load i32, ptr %retval, align 4, !dbg !6325
  ret i32 %16, !dbg !6325
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_seq_queue_process_event(ptr noundef %q, ptr noundef %ev, i32 noundef %atomic, i32 noundef %hop) #0 align 16 !dbg !6326 {
entry:
  %q.addr = alloca ptr, align 8
  %ev.addr = alloca ptr, align 8
  %atomic.addr = alloca i32, align 4
  %hop.addr = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !6330, metadata !DIExpression()), !dbg !6334
  store ptr %ev, ptr %ev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ev.addr, metadata !6331, metadata !DIExpression()), !dbg !6335
  store i32 %atomic, ptr %atomic.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %atomic.addr, metadata !6332, metadata !DIExpression()), !dbg !6336
  store i32 %hop, ptr %hop.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hop.addr, metadata !6333, metadata !DIExpression()), !dbg !6337
  %0 = load ptr, ptr %ev.addr, align 8, !dbg !6338
  %type = getelementptr inbounds %struct.snd_seq_event, ptr %0, i32 0, i32 0, !dbg !6339
  %1 = load i8, ptr %type, align 4, !dbg !6339
  %conv = zext i8 %1 to i32, !dbg !6338
  switch i32 %conv, label %sw.epilog [
    i32 30, label %sw.bb
    i32 31, label %sw.bb5
    i32 32, label %sw.bb11
    i32 35, label %sw.bb14
    i32 33, label %sw.bb17
    i32 34, label %sw.bb25
    i32 38, label %sw.bb34
  ], !dbg !6340

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %q.addr, align 8, !dbg !6341
  %tickq = getelementptr inbounds %struct.snd_seq_queue, ptr %2, i32 0, i32 2, !dbg !6343
  %3 = load ptr, ptr %tickq, align 8, !dbg !6343
  %4 = load ptr, ptr %ev.addr, align 8, !dbg !6344
  %source = getelementptr inbounds %struct.snd_seq_event, ptr %4, i32 0, i32 5, !dbg !6345
  %client = getelementptr inbounds %struct.snd_seq_addr, ptr %source, i32 0, i32 0, !dbg !6346
  %5 = load i8, ptr %client, align 4, !dbg !6346
  %conv1 = zext i8 %5 to i32, !dbg !6344
  call void @snd_seq_prioq_leave(ptr noundef %3, i32 noundef %conv1, i32 noundef 1) #16, !dbg !6347
  %6 = load ptr, ptr %q.addr, align 8, !dbg !6348
  %timeq = getelementptr inbounds %struct.snd_seq_queue, ptr %6, i32 0, i32 3, !dbg !6349
  %7 = load ptr, ptr %timeq, align 8, !dbg !6349
  %8 = load ptr, ptr %ev.addr, align 8, !dbg !6350
  %source2 = getelementptr inbounds %struct.snd_seq_event, ptr %8, i32 0, i32 5, !dbg !6351
  %client3 = getelementptr inbounds %struct.snd_seq_addr, ptr %source2, i32 0, i32 0, !dbg !6352
  %9 = load i8, ptr %client3, align 4, !dbg !6352
  %conv4 = zext i8 %9 to i32, !dbg !6350
  call void @snd_seq_prioq_leave(ptr noundef %7, i32 noundef %conv4, i32 noundef 1) #16, !dbg !6353
  %10 = load ptr, ptr %q.addr, align 8, !dbg !6354
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %10, i32 0, i32 4, !dbg !6356
  %11 = load ptr, ptr %timer, align 8, !dbg !6356
  %call = call i32 @snd_seq_timer_start(ptr noundef %11) #16, !dbg !6357
  %tobool = icmp ne i32 %call, 0, !dbg !6357
  br i1 %tobool, label %if.end, label %if.then, !dbg !6358

if.then:                                          ; preds = %sw.bb
  %12 = load ptr, ptr %q.addr, align 8, !dbg !6359
  %13 = load ptr, ptr %ev.addr, align 8, !dbg !6360
  %14 = load i32, ptr %atomic.addr, align 4, !dbg !6361
  %15 = load i32, ptr %hop.addr, align 4, !dbg !6362
  call void @queue_broadcast_event(ptr noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15) #16, !dbg !6363
  br label %if.end, !dbg !6363

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog, !dbg !6364

sw.bb5:                                           ; preds = %entry
  %16 = load ptr, ptr %q.addr, align 8, !dbg !6365
  %timer6 = getelementptr inbounds %struct.snd_seq_queue, ptr %16, i32 0, i32 4, !dbg !6367
  %17 = load ptr, ptr %timer6, align 8, !dbg !6367
  %call7 = call i32 @snd_seq_timer_continue(ptr noundef %17) #16, !dbg !6368
  %tobool8 = icmp ne i32 %call7, 0, !dbg !6368
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !6369

if.then9:                                         ; preds = %sw.bb5
  %18 = load ptr, ptr %q.addr, align 8, !dbg !6370
  %19 = load ptr, ptr %ev.addr, align 8, !dbg !6371
  %20 = load i32, ptr %atomic.addr, align 4, !dbg !6372
  %21 = load i32, ptr %hop.addr, align 4, !dbg !6373
  call void @queue_broadcast_event(ptr noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21) #16, !dbg !6374
  br label %if.end10, !dbg !6374

if.end10:                                         ; preds = %if.then9, %sw.bb5
  br label %sw.epilog, !dbg !6375

sw.bb11:                                          ; preds = %entry
  %22 = load ptr, ptr %q.addr, align 8, !dbg !6376
  %timer12 = getelementptr inbounds %struct.snd_seq_queue, ptr %22, i32 0, i32 4, !dbg !6377
  %23 = load ptr, ptr %timer12, align 8, !dbg !6377
  %call13 = call i32 @snd_seq_timer_stop(ptr noundef %23) #16, !dbg !6378
  %24 = load ptr, ptr %q.addr, align 8, !dbg !6379
  %25 = load ptr, ptr %ev.addr, align 8, !dbg !6380
  %26 = load i32, ptr %atomic.addr, align 4, !dbg !6381
  %27 = load i32, ptr %hop.addr, align 4, !dbg !6382
  call void @queue_broadcast_event(ptr noundef %24, ptr noundef %25, i32 noundef %26, i32 noundef %27) #16, !dbg !6383
  br label %sw.epilog, !dbg !6384

sw.bb14:                                          ; preds = %entry
  %28 = load ptr, ptr %q.addr, align 8, !dbg !6385
  %timer15 = getelementptr inbounds %struct.snd_seq_queue, ptr %28, i32 0, i32 4, !dbg !6386
  %29 = load ptr, ptr %timer15, align 8, !dbg !6386
  %30 = load ptr, ptr %ev.addr, align 8, !dbg !6387
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %30, i32 0, i32 7, !dbg !6388
  %param = getelementptr inbounds %struct.snd_seq_ev_queue_control, ptr %data, i32 0, i32 2, !dbg !6389
  %31 = load i32, ptr %param, align 4, !dbg !6390
  %call16 = call i32 @snd_seq_timer_set_tempo(ptr noundef %29, i32 noundef %31) #16, !dbg !6391
  %32 = load ptr, ptr %q.addr, align 8, !dbg !6392
  %33 = load ptr, ptr %ev.addr, align 8, !dbg !6393
  %34 = load i32, ptr %atomic.addr, align 4, !dbg !6394
  %35 = load i32, ptr %hop.addr, align 4, !dbg !6395
  call void @queue_broadcast_event(ptr noundef %32, ptr noundef %33, i32 noundef %34, i32 noundef %35) #16, !dbg !6396
  br label %sw.epilog, !dbg !6397

sw.bb17:                                          ; preds = %entry
  %36 = load ptr, ptr %q.addr, align 8, !dbg !6398
  %timer18 = getelementptr inbounds %struct.snd_seq_queue, ptr %36, i32 0, i32 4, !dbg !6400
  %37 = load ptr, ptr %timer18, align 8, !dbg !6400
  %38 = load ptr, ptr %ev.addr, align 8, !dbg !6401
  %data19 = getelementptr inbounds %struct.snd_seq_event, ptr %38, i32 0, i32 7, !dbg !6402
  %param20 = getelementptr inbounds %struct.snd_seq_ev_queue_control, ptr %data19, i32 0, i32 2, !dbg !6403
  %39 = load i32, ptr %param20, align 4, !dbg !6404
  %call21 = call i32 @snd_seq_timer_set_position_tick(ptr noundef %37, i32 noundef %39) #16, !dbg !6405
  %cmp = icmp eq i32 %call21, 0, !dbg !6406
  br i1 %cmp, label %if.then23, label %if.end24, !dbg !6407

if.then23:                                        ; preds = %sw.bb17
  %40 = load ptr, ptr %q.addr, align 8, !dbg !6408
  %41 = load ptr, ptr %ev.addr, align 8, !dbg !6410
  %42 = load i32, ptr %atomic.addr, align 4, !dbg !6411
  %43 = load i32, ptr %hop.addr, align 4, !dbg !6412
  call void @queue_broadcast_event(ptr noundef %40, ptr noundef %41, i32 noundef %42, i32 noundef %43) #16, !dbg !6413
  br label %if.end24, !dbg !6414

if.end24:                                         ; preds = %if.then23, %sw.bb17
  br label %sw.epilog, !dbg !6415

sw.bb25:                                          ; preds = %entry
  %44 = load ptr, ptr %q.addr, align 8, !dbg !6416
  %timer26 = getelementptr inbounds %struct.snd_seq_queue, ptr %44, i32 0, i32 4, !dbg !6418
  %45 = load ptr, ptr %timer26, align 8, !dbg !6418
  %46 = load ptr, ptr %ev.addr, align 8, !dbg !6419
  %data27 = getelementptr inbounds %struct.snd_seq_event, ptr %46, i32 0, i32 7, !dbg !6420
  %param28 = getelementptr inbounds %struct.snd_seq_ev_queue_control, ptr %data27, i32 0, i32 2, !dbg !6421
  %47 = load i64, ptr %param28, align 4, !dbg !6422
  %call29 = call i32 @snd_seq_timer_set_position_time(ptr noundef %45, i64 %47) #16, !dbg !6422
  %cmp30 = icmp eq i32 %call29, 0, !dbg !6423
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !6424

if.then32:                                        ; preds = %sw.bb25
  %48 = load ptr, ptr %q.addr, align 8, !dbg !6425
  %49 = load ptr, ptr %ev.addr, align 8, !dbg !6427
  %50 = load i32, ptr %atomic.addr, align 4, !dbg !6428
  %51 = load i32, ptr %hop.addr, align 4, !dbg !6429
  call void @queue_broadcast_event(ptr noundef %48, ptr noundef %49, i32 noundef %50, i32 noundef %51) #16, !dbg !6430
  br label %if.end33, !dbg !6431

if.end33:                                         ; preds = %if.then32, %sw.bb25
  br label %sw.epilog, !dbg !6432

sw.bb34:                                          ; preds = %entry
  %52 = load ptr, ptr %q.addr, align 8, !dbg !6433
  %timer35 = getelementptr inbounds %struct.snd_seq_queue, ptr %52, i32 0, i32 4, !dbg !6435
  %53 = load ptr, ptr %timer35, align 8, !dbg !6435
  %54 = load ptr, ptr %ev.addr, align 8, !dbg !6436
  %data36 = getelementptr inbounds %struct.snd_seq_event, ptr %54, i32 0, i32 7, !dbg !6437
  %param37 = getelementptr inbounds %struct.snd_seq_ev_queue_control, ptr %data36, i32 0, i32 2, !dbg !6438
  %value = getelementptr inbounds %struct.snd_seq_queue_skew, ptr %param37, i32 0, i32 0, !dbg !6439
  %55 = load i32, ptr %value, align 4, !dbg !6439
  %56 = load ptr, ptr %ev.addr, align 8, !dbg !6440
  %data38 = getelementptr inbounds %struct.snd_seq_event, ptr %56, i32 0, i32 7, !dbg !6441
  %param39 = getelementptr inbounds %struct.snd_seq_ev_queue_control, ptr %data38, i32 0, i32 2, !dbg !6442
  %base = getelementptr inbounds %struct.snd_seq_queue_skew, ptr %param39, i32 0, i32 1, !dbg !6443
  %57 = load i32, ptr %base, align 4, !dbg !6443
  %call40 = call i32 @snd_seq_timer_set_skew(ptr noundef %53, i32 noundef %55, i32 noundef %57) #16, !dbg !6444
  %cmp41 = icmp eq i32 %call40, 0, !dbg !6445
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !6446

if.then43:                                        ; preds = %sw.bb34
  %58 = load ptr, ptr %q.addr, align 8, !dbg !6447
  %59 = load ptr, ptr %ev.addr, align 8, !dbg !6449
  %60 = load i32, ptr %atomic.addr, align 4, !dbg !6450
  %61 = load i32, ptr %hop.addr, align 4, !dbg !6451
  call void @queue_broadcast_event(ptr noundef %58, ptr noundef %59, i32 noundef %60, i32 noundef %61) #16, !dbg !6452
  br label %if.end44, !dbg !6453

if.end44:                                         ; preds = %if.then43, %sw.bb34
  br label %sw.epilog, !dbg !6454

sw.epilog:                                        ; preds = %entry, %if.end44, %if.end33, %if.end24, %sw.bb14, %sw.bb11, %if.end10, %if.end
  ret void, !dbg !6455
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_info_queues_read(ptr noundef %entry1, ptr noundef %buffer) #0 align 16 !dbg !6456 {
entry:
  %entry.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %bpm = alloca i32, align 4
  %q = alloca ptr, align 8
  %tmr = alloca ptr, align 8
  %locked = alloca i8, align 1
  %owner = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6458, metadata !DIExpression()), !dbg !6466
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !6459, metadata !DIExpression()), !dbg !6467
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6468
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6460, metadata !DIExpression()), !dbg !6469
  call void @llvm.lifetime.start.p0(i64 4, ptr %bpm) #15, !dbg !6468
  call void @llvm.dbg.declare(metadata ptr %bpm, metadata !6461, metadata !DIExpression()), !dbg !6470
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !6471
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6462, metadata !DIExpression()), !dbg !6472
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmr) #15, !dbg !6473
  call void @llvm.dbg.declare(metadata ptr %tmr, metadata !6463, metadata !DIExpression()), !dbg !6474
  call void @llvm.lifetime.start.p0(i64 1, ptr %locked) #15, !dbg !6475
  call void @llvm.dbg.declare(metadata ptr %locked, metadata !6464, metadata !DIExpression()), !dbg !6476
  call void @llvm.lifetime.start.p0(i64 4, ptr %owner) #15, !dbg !6477
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !6465, metadata !DIExpression()), !dbg !6478
  store i32 0, ptr %i, align 4, !dbg !6479
  br label %for.cond, !dbg !6481

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6482
  %cmp = icmp slt i32 %0, 32, !dbg !6484
  br i1 %cmp, label %for.body, label %for.end, !dbg !6485

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !6486
  %call = call ptr @queueptr(i32 noundef %1) #16, !dbg !6488
  store ptr %call, ptr %q, align 8, !dbg !6489
  %2 = load ptr, ptr %q, align 8, !dbg !6490
  %tobool = icmp ne ptr %2, null, !dbg !6490
  br i1 %tobool, label %if.end, label %if.then, !dbg !6492

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !6493

if.end:                                           ; preds = %for.body
  %3 = load ptr, ptr %q, align 8, !dbg !6494
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %3, i32 0, i32 4, !dbg !6495
  %4 = load ptr, ptr %timer, align 8, !dbg !6495
  store ptr %4, ptr %tmr, align 8, !dbg !6496
  %5 = load ptr, ptr %tmr, align 8, !dbg !6497
  %tempo = getelementptr inbounds %struct.snd_seq_timer, ptr %5, i32 0, i32 1, !dbg !6499
  %6 = load i32, ptr %tempo, align 4, !dbg !6499
  %tobool2 = icmp ne i32 %6, 0, !dbg !6497
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !6500

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %tmr, align 8, !dbg !6501
  %tempo4 = getelementptr inbounds %struct.snd_seq_timer, ptr %7, i32 0, i32 1, !dbg !6502
  %8 = load i32, ptr %tempo4, align 4, !dbg !6502
  %div = udiv i32 60000000, %8, !dbg !6503
  store i32 %div, ptr %bpm, align 4, !dbg !6504
  br label %if.end5, !dbg !6505

if.else:                                          ; preds = %if.end
  store i32 0, ptr %bpm, align 4, !dbg !6506
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %9 = load ptr, ptr %q, align 8, !dbg !6507
  %owner_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %9, i32 0, i32 12, !dbg !6508
  call void @spin_lock_irq(ptr noundef %owner_lock) #16, !dbg !6509
  %10 = load ptr, ptr %q, align 8, !dbg !6510
  %locked6 = getelementptr inbounds %struct.snd_seq_queue, ptr %10, i32 0, i32 6, !dbg !6511
  %11 = load i8, ptr %locked6, align 4, !dbg !6511, !range !5384, !noundef !1324
  %tobool7 = trunc i8 %11 to i1, !dbg !6511
  %frombool = zext i1 %tobool7 to i8, !dbg !6512
  store i8 %frombool, ptr %locked, align 1, !dbg !6512
  %12 = load ptr, ptr %q, align 8, !dbg !6513
  %owner8 = getelementptr inbounds %struct.snd_seq_queue, ptr %12, i32 0, i32 5, !dbg !6514
  %13 = load i32, ptr %owner8, align 8, !dbg !6514
  store i32 %13, ptr %owner, align 4, !dbg !6515
  %14 = load ptr, ptr %q, align 8, !dbg !6516
  %owner_lock9 = getelementptr inbounds %struct.snd_seq_queue, ptr %14, i32 0, i32 12, !dbg !6517
  call void @spin_unlock_irq(ptr noundef %owner_lock9) #16, !dbg !6518
  %15 = load ptr, ptr %buffer.addr, align 8, !dbg !6519
  %buffer10 = getelementptr inbounds %struct.snd_info_buffer, ptr %15, i32 0, i32 0, !dbg !6519
  %16 = load ptr, ptr %buffer10, align 8, !dbg !6519
  %17 = load ptr, ptr %q, align 8, !dbg !6519
  %queue = getelementptr inbounds %struct.snd_seq_queue, ptr %17, i32 0, i32 0, !dbg !6519
  %18 = load i32, ptr %queue, align 8, !dbg !6519
  %19 = load ptr, ptr %q, align 8, !dbg !6519
  %name = getelementptr inbounds %struct.snd_seq_queue, ptr %19, i32 0, i32 1, !dbg !6519
  %arraydecay = getelementptr inbounds [64 x i8], ptr %name, i64 0, i64 0, !dbg !6519
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef @.str, i32 noundef %18, ptr noundef %arraydecay) #16, !dbg !6519
  %20 = load ptr, ptr %buffer.addr, align 8, !dbg !6520
  %buffer11 = getelementptr inbounds %struct.snd_info_buffer, ptr %20, i32 0, i32 0, !dbg !6520
  %21 = load ptr, ptr %buffer11, align 8, !dbg !6520
  %22 = load i32, ptr %owner, align 4, !dbg !6520
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef @.str.1, i32 noundef %22) #16, !dbg !6520
  %23 = load ptr, ptr %buffer.addr, align 8, !dbg !6521
  %buffer12 = getelementptr inbounds %struct.snd_info_buffer, ptr %23, i32 0, i32 0, !dbg !6521
  %24 = load ptr, ptr %buffer12, align 8, !dbg !6521
  %25 = load i8, ptr %locked, align 1, !dbg !6521, !range !5384, !noundef !1324
  %tobool13 = trunc i8 %25 to i1, !dbg !6521
  %26 = zext i1 %tobool13 to i64, !dbg !6521
  %cond = select i1 %tobool13, ptr @.str.3, ptr @.str.4, !dbg !6521
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef @.str.2, ptr noundef %cond) #16, !dbg !6521
  %27 = load ptr, ptr %buffer.addr, align 8, !dbg !6522
  %buffer14 = getelementptr inbounds %struct.snd_info_buffer, ptr %27, i32 0, i32 0, !dbg !6522
  %28 = load ptr, ptr %buffer14, align 8, !dbg !6522
  %29 = load ptr, ptr %q, align 8, !dbg !6522
  %timeq = getelementptr inbounds %struct.snd_seq_queue, ptr %29, i32 0, i32 3, !dbg !6522
  %30 = load ptr, ptr %timeq, align 8, !dbg !6522
  %call15 = call i32 @snd_seq_prioq_avail(ptr noundef %30) #16, !dbg !6522
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %28, ptr noundef @.str.5, i32 noundef %call15) #16, !dbg !6522
  %31 = load ptr, ptr %buffer.addr, align 8, !dbg !6523
  %buffer16 = getelementptr inbounds %struct.snd_info_buffer, ptr %31, i32 0, i32 0, !dbg !6523
  %32 = load ptr, ptr %buffer16, align 8, !dbg !6523
  %33 = load ptr, ptr %q, align 8, !dbg !6523
  %tickq = getelementptr inbounds %struct.snd_seq_queue, ptr %33, i32 0, i32 2, !dbg !6523
  %34 = load ptr, ptr %tickq, align 8, !dbg !6523
  %call17 = call i32 @snd_seq_prioq_avail(ptr noundef %34) #16, !dbg !6523
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef @.str.6, i32 noundef %call17) #16, !dbg !6523
  %35 = load ptr, ptr %buffer.addr, align 8, !dbg !6524
  %buffer18 = getelementptr inbounds %struct.snd_info_buffer, ptr %35, i32 0, i32 0, !dbg !6524
  %36 = load ptr, ptr %buffer18, align 8, !dbg !6524
  %37 = load ptr, ptr %tmr, align 8, !dbg !6524
  %bf.load = load i8, ptr %37, align 8, !dbg !6524
  %bf.clear = and i8 %bf.load, 1, !dbg !6524
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6524
  %tobool19 = icmp ne i32 %bf.cast, 0, !dbg !6524
  %38 = zext i1 %tobool19 to i64, !dbg !6524
  %cond20 = select i1 %tobool19, ptr @.str.8, ptr @.str.9, !dbg !6524
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %36, ptr noundef @.str.7, ptr noundef %cond20) #16, !dbg !6524
  %39 = load ptr, ptr %buffer.addr, align 8, !dbg !6525
  %buffer21 = getelementptr inbounds %struct.snd_info_buffer, ptr %39, i32 0, i32 0, !dbg !6525
  %40 = load ptr, ptr %buffer21, align 8, !dbg !6525
  %41 = load ptr, ptr %tmr, align 8, !dbg !6525
  %ppq = getelementptr inbounds %struct.snd_seq_timer, ptr %41, i32 0, i32 2, !dbg !6525
  %42 = load i32, ptr %ppq, align 8, !dbg !6525
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %40, ptr noundef @.str.10, i32 noundef %42) #16, !dbg !6525
  %43 = load ptr, ptr %buffer.addr, align 8, !dbg !6526
  %buffer22 = getelementptr inbounds %struct.snd_info_buffer, ptr %43, i32 0, i32 0, !dbg !6526
  %44 = load ptr, ptr %buffer22, align 8, !dbg !6526
  %45 = load ptr, ptr %tmr, align 8, !dbg !6526
  %tempo23 = getelementptr inbounds %struct.snd_seq_timer, ptr %45, i32 0, i32 1, !dbg !6526
  %46 = load i32, ptr %tempo23, align 4, !dbg !6526
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %44, ptr noundef @.str.11, i32 noundef %46) #16, !dbg !6526
  %47 = load ptr, ptr %buffer.addr, align 8, !dbg !6527
  %buffer24 = getelementptr inbounds %struct.snd_info_buffer, ptr %47, i32 0, i32 0, !dbg !6527
  %48 = load ptr, ptr %buffer24, align 8, !dbg !6527
  %49 = load i32, ptr %bpm, align 4, !dbg !6527
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %48, ptr noundef @.str.12, i32 noundef %49) #16, !dbg !6527
  %50 = load ptr, ptr %buffer.addr, align 8, !dbg !6528
  %buffer25 = getelementptr inbounds %struct.snd_info_buffer, ptr %50, i32 0, i32 0, !dbg !6528
  %51 = load ptr, ptr %buffer25, align 8, !dbg !6528
  %52 = load ptr, ptr %tmr, align 8, !dbg !6528
  %cur_time = getelementptr inbounds %struct.snd_seq_timer, ptr %52, i32 0, i32 3, !dbg !6528
  %tv_sec = getelementptr inbounds %struct.snd_seq_real_time, ptr %cur_time, i32 0, i32 0, !dbg !6528
  %53 = load i32, ptr %tv_sec, align 4, !dbg !6528
  %54 = load ptr, ptr %tmr, align 8, !dbg !6528
  %cur_time26 = getelementptr inbounds %struct.snd_seq_timer, ptr %54, i32 0, i32 3, !dbg !6528
  %tv_nsec = getelementptr inbounds %struct.snd_seq_real_time, ptr %cur_time26, i32 0, i32 1, !dbg !6528
  %55 = load i32, ptr %tv_nsec, align 4, !dbg !6528
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %51, ptr noundef @.str.13, i32 noundef %53, i32 noundef %55) #16, !dbg !6528
  %56 = load ptr, ptr %buffer.addr, align 8, !dbg !6529
  %buffer27 = getelementptr inbounds %struct.snd_info_buffer, ptr %56, i32 0, i32 0, !dbg !6529
  %57 = load ptr, ptr %buffer27, align 8, !dbg !6529
  %58 = load ptr, ptr %tmr, align 8, !dbg !6529
  %tick = getelementptr inbounds %struct.snd_seq_timer, ptr %58, i32 0, i32 4, !dbg !6529
  %cur_tick = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %tick, i32 0, i32 0, !dbg !6529
  %59 = load i32, ptr %cur_tick, align 8, !dbg !6529
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %57, ptr noundef @.str.14, i32 noundef %59) #16, !dbg !6529
  %60 = load ptr, ptr %buffer.addr, align 8, !dbg !6530
  %buffer28 = getelementptr inbounds %struct.snd_info_buffer, ptr %60, i32 0, i32 0, !dbg !6530
  %61 = load ptr, ptr %buffer28, align 8, !dbg !6530
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %61, ptr noundef @.str.15) #16, !dbg !6530
  %62 = load ptr, ptr %q, align 8, !dbg !6531
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %62, i32 0, i32 17, !dbg !6531
  call void @atomic_dec(ptr noundef %use_lock) #16, !dbg !6531
  br label %for.inc, !dbg !6532

for.inc:                                          ; preds = %if.end5, %if.then
  %63 = load i32, ptr %i, align 4, !dbg !6533
  %inc = add i32 %63, 1, !dbg !6533
  store i32 %inc, ptr %i, align 4, !dbg !6533
  br label %for.cond, !dbg !6534, !llvm.loop !6535

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %owner) #15, !dbg !6537
  call void @llvm.lifetime.end.p0(i64 1, ptr %locked) #15, !dbg !6537
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmr) #15, !dbg !6537
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !6537
  call void @llvm.lifetime.end.p0(i64 4, ptr %bpm) #15, !dbg !6537
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6537
  ret void, !dbg !6537
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #4 align 16 !dbg !6538 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6542, metadata !DIExpression()), !dbg !6543
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6544
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6544
  call void @_raw_spin_lock_irq(ptr noundef %1) #16, !dbg !6544
  ret void, !dbg !6545
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #4 align 16 !dbg !6546 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6548, metadata !DIExpression()), !dbg !6549
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6550
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6550
  call void @_raw_spin_unlock_irq(ptr noundef %1) #16, !dbg !6550
  ret void, !dbg !6551
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6552 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6555 dso_local i32 @snd_seq_prioq_avail(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6558 dso_local i32 @snd_seq_timer_stop(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6561 dso_local void @snd_use_lock_sync_helper(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6565 dso_local void @snd_seq_prioq_delete(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6569 dso_local void @snd_seq_timer_delete(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6573 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6576 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6580, metadata !DIExpression()), !dbg !6582
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6581, metadata !DIExpression()), !dbg !6583
  %0 = load i64, ptr %size.addr, align 8, !dbg !6584
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6585
  %or = or i32 %1, 256, !dbg !6586
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !6587
  ret ptr %call, !dbg !6588
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6589 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !6593 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6597, metadata !DIExpression()), !dbg !6599
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6598, metadata !DIExpression()), !dbg !6600
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6601
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #16, !dbg !6602
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6603
  %2 = load i32, ptr %i.addr, align 4, !dbg !6604
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #16, !dbg !6605
  ret void, !dbg !6606
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6607 dso_local ptr @snd_seq_prioq_new() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6610 dso_local ptr @snd_seq_timer_new() #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6613 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6615, metadata !DIExpression()), !dbg !6620
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6616, metadata !DIExpression()), !dbg !6621
  %0 = load i64, ptr %size.addr, align 8, !dbg !6622
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6623
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6624

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6625
  %tobool = icmp ne i64 %2, 0, !dbg !6625
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6626

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6627
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6617, metadata !DIExpression()), !dbg !6628
  %3 = load i64, ptr %size.addr, align 8, !dbg !6629
  %cmp = icmp ugt i64 %3, 8192, !dbg !6631
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6632

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6633
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6634
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !6635
  store ptr %call, ptr %retval, align 8, !dbg !6636
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6636

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6637
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !6637
  store i32 %call2, ptr %index, align 4, !dbg !6638
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6639
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6640
  %9 = ptrtoint ptr %8 to i64, !dbg !6640
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !6641
  %idxprom = zext i32 %call3 to i64, !dbg !6642
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6642
  %10 = load i32, ptr %index, align 4, !dbg !6643
  %idxprom4 = zext i32 %10 to i64, !dbg !6642
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6642
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6642
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6644
  %13 = load i64, ptr %size.addr, align 8, !dbg !6645
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !6646
  store ptr %call6, ptr %retval, align 8, !dbg !6647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6647

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6648
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6649
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6650
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !6651
  store ptr %call8, ptr %retval, align 8, !dbg !6652
  br label %return, !dbg !6652

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6653
  ret ptr %16, !dbg !6653
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6654 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !6655 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6659, metadata !DIExpression()), !dbg !6661
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6660, metadata !DIExpression()), !dbg !6662
  %0 = load i64, ptr %size.addr, align 8, !dbg !6663
  %tobool = icmp ne i64 %0, 0, !dbg !6663
  br i1 %tobool, label %if.end, label %if.then, !dbg !6665

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6666
  br label %return, !dbg !6666

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6667
  %cmp = icmp ule i64 %1, 8, !dbg !6669
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6670

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6671
  br label %return, !dbg !6671

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6672
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6674
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6675

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6676
  %cmp4 = icmp ule i64 %3, 96, !dbg !6677
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6678

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6679
  br label %return, !dbg !6679

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6680
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6682
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6683

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6684
  %cmp9 = icmp ule i64 %5, 192, !dbg !6685
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6686

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6687
  br label %return, !dbg !6687

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6688
  %cmp12 = icmp ule i64 %6, 8, !dbg !6690
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6691

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6692
  br label %return, !dbg !6692

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6693
  %cmp15 = icmp ule i64 %7, 16, !dbg !6695
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6696

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6697
  br label %return, !dbg !6697

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6698
  %cmp18 = icmp ule i64 %8, 32, !dbg !6700
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6701

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6702
  br label %return, !dbg !6702

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6703
  %cmp21 = icmp ule i64 %9, 64, !dbg !6705
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6706

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6707
  br label %return, !dbg !6707

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6708
  %cmp24 = icmp ule i64 %10, 128, !dbg !6710
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6711

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6712
  br label %return, !dbg !6712

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6713
  %cmp27 = icmp ule i64 %11, 256, !dbg !6715
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6716

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6717
  br label %return, !dbg !6717

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6718
  %cmp30 = icmp ule i64 %12, 512, !dbg !6720
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6721

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6722
  br label %return, !dbg !6722

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6723
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6725
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6726

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6727
  br label %return, !dbg !6727

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6728
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6730
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6731

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6732
  br label %return, !dbg !6732

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6733
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6735
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6736

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6737
  br label %return, !dbg !6737

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6738
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6740
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6741

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6742
  br label %return, !dbg !6742

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6743
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6745
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6746

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6747
  br label %return, !dbg !6747

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6748
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6750
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6751

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6752
  br label %return, !dbg !6752

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6753
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6755
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6756

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6757
  br label %return, !dbg !6757

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6758
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6760
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6761

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6762
  br label %return, !dbg !6762

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6763
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6765
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6766

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6767
  br label %return, !dbg !6767

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6768
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6770
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6771

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6772
  br label %return, !dbg !6772

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6773
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6775
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6776

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6777
  br label %return, !dbg !6777

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6778
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6780
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6781

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6782
  br label %return, !dbg !6782

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6783, !range !5384, !noundef !1324
  %tobool69 = trunc i8 %25 to i1, !dbg !6783
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6785

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6786

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #19, !dbg !6787, !srcloc !6790
  unreachable, !dbg !6787

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6791

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6792

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6793

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6795

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6793

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.18, i32 480, i32 0, i64 12) #15, !dbg !6797, !srcloc !6799
  br label %do.end75, !dbg !6797

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6793

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6800
  br label %return, !dbg !6800

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6801
  ret i32 %26, !dbg !6801
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6802 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !6807 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6811, metadata !DIExpression()), !dbg !6813
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6812, metadata !DIExpression()), !dbg !6814
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6815
  %and = and i32 %0, 17, !dbg !6815
  %cmp = icmp eq i32 %and, 0, !dbg !6815
  %lnot = xor i1 %cmp, true, !dbg !6815
  %lnot1 = xor i1 %lnot, true, !dbg !6815
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6815
  %conv = sext i32 %lnot.ext to i64, !dbg !6815
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6815
  %tobool = icmp ne i64 %expval, 0, !dbg !6815
  br i1 %tobool, label %if.then, label %if.end, !dbg !6817

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6818
  br label %return, !dbg !6818

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6819
  %and2 = and i32 %1, 1, !dbg !6821
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6821
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6822

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6823
  br label %return, !dbg !6823

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6824
  br label %return, !dbg !6824

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6826
  ret i32 %2, !dbg !6826
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6827 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6828 dso_local void @__compiletime_assert_117() #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6829 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6837, metadata !DIExpression()), !dbg !6839
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6838, metadata !DIExpression()), !dbg !6840
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6841
  %1 = load i64, ptr %size.addr, align 8, !dbg !6842
  %conv = trunc i64 %1 to i32, !dbg !6842
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !6843
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6844
  %3 = load i64, ptr %size.addr, align 8, !dbg !6844
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #16, !dbg !6844
  ret void, !dbg !6845
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !6846 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6849, metadata !DIExpression()), !dbg !6851
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6850, metadata !DIExpression()), !dbg !6852
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6853
  %1 = load i32, ptr %i.addr, align 4, !dbg !6854
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #16, !dbg !6855
  ret void, !dbg !6856
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !6857 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6862, metadata !DIExpression()), !dbg !6864
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6863, metadata !DIExpression()), !dbg !6865
  ret i1 true, !dbg !6866
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !6867 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6872, metadata !DIExpression()), !dbg !6875
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6873, metadata !DIExpression()), !dbg !6876
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6874, metadata !DIExpression()), !dbg !6877
  ret void, !dbg !6878
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !6879 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6882, metadata !DIExpression()), !dbg !6884
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6883, metadata !DIExpression()), !dbg !6885
  br label %do.body, !dbg !6886

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6887
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6887
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6887
  store volatile i32 %0, ptr %counter, align 4, !dbg !6887
  br label %do.end, !dbg !6887

do.end:                                           ; preds = %do.body
  ret void, !dbg !6889
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6890 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6892, metadata !DIExpression()), !dbg !6894
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6893, metadata !DIExpression()), !dbg !6895
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6896
  %1 = load i64, ptr %size.addr, align 8, !dbg !6897
  %conv = trunc i64 %1 to i32, !dbg !6897
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !6898
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6899
  %3 = load i64, ptr %size.addr, align 8, !dbg !6899
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !6899
  ret void, !dbg !6900
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #4 align 16 !dbg !6901 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6903, metadata !DIExpression()), !dbg !6904
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6905
  call void @arch_atomic_inc(ptr noundef %0) #16, !dbg !6906
  ret void, !dbg !6907
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #4 align 16 !dbg !6908 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6910, metadata !DIExpression()), !dbg !6911
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6912
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6913
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #15, !dbg !6914, !srcloc !6915
  ret void, !dbg !6916
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #4 align 16 !dbg !6917 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6919, metadata !DIExpression()), !dbg !6920
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6921
  call void @arch_atomic_dec(ptr noundef %0) #16, !dbg !6922
  ret void, !dbg !6923
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #4 align 16 !dbg !6924 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6926, metadata !DIExpression()), !dbg !6927
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6928
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6929
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #15, !dbg !6930, !srcloc !6931
  ret void, !dbg !6932
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !6933 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6935, metadata !DIExpression()), !dbg !6936
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6937
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6937
  call void @_raw_spin_lock(ptr noundef %1) #16, !dbg !6937
  ret void, !dbg !6938
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !6939 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6941, metadata !DIExpression()), !dbg !6942
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6943
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6943
  call void @_raw_spin_unlock(ptr noundef %1) #16, !dbg !6943
  ret void, !dbg !6944
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6945 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6948 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6949 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_seq_sanity_real_time(ptr noundef %tm) #3 align 16 !dbg !6952 {
entry:
  %tm.addr = alloca ptr, align 8
  store ptr %tm, ptr %tm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tm.addr, metadata !6956, metadata !DIExpression()), !dbg !6957
  br label %while.cond, !dbg !6958

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %tm.addr, align 8, !dbg !6959
  %tv_nsec = getelementptr inbounds %struct.snd_seq_real_time, ptr %0, i32 0, i32 1, !dbg !6960
  %1 = load i32, ptr %tv_nsec, align 4, !dbg !6960
  %cmp = icmp uge i32 %1, 1000000000, !dbg !6961
  br i1 %cmp, label %while.body, label %while.end, !dbg !6958

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %tm.addr, align 8, !dbg !6962
  %tv_nsec1 = getelementptr inbounds %struct.snd_seq_real_time, ptr %2, i32 0, i32 1, !dbg !6964
  %3 = load i32, ptr %tv_nsec1, align 4, !dbg !6965
  %sub = sub i32 %3, 1000000000, !dbg !6965
  store i32 %sub, ptr %tv_nsec1, align 4, !dbg !6965
  %4 = load ptr, ptr %tm.addr, align 8, !dbg !6966
  %tv_sec = getelementptr inbounds %struct.snd_seq_real_time, ptr %4, i32 0, i32 0, !dbg !6967
  %5 = load i32, ptr %tv_sec, align 4, !dbg !6968
  %inc = add i32 %5, 1, !dbg !6968
  store i32 %inc, ptr %tv_sec, align 4, !dbg !6968
  br label %while.cond, !dbg !6958, !llvm.loop !6969

while.end:                                        ; preds = %while.cond
  ret void, !dbg !6971
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6972 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6978, metadata !DIExpression()), !dbg !6980
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6979, metadata !DIExpression()), !dbg !6981
  br label %do.body, !dbg !6982

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6983

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6985
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6986
  %div = sdiv i64 %1, 64, !dbg !6986
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6987
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !6988
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6989
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6990
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !6991
  ret i1 %call, !dbg !6992
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6993 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6995, metadata !DIExpression()), !dbg !6997
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6996, metadata !DIExpression()), !dbg !6998
  br label %do.body, !dbg !6999

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7000

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7002
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7003
  %div = sdiv i64 %1, 64, !dbg !7003
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7004
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !7005
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7006
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7007
  %call = call zeroext i1 @arch_test_and_clear_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !7008
  ret i1 %call, !dbg !7009
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7010 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7013, metadata !DIExpression()), !dbg !7017
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7014, metadata !DIExpression()), !dbg !7018
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !7019
  call void @llvm.dbg.declare(metadata ptr %c, metadata !7015, metadata !DIExpression()), !dbg !7019
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7019
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7019
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #15, !dbg !7019, !srcloc !7020
  %3 = icmp ult i8 %2, 2, !dbg !7019
  call void @llvm.assume(i1 %3), !dbg !7019
  store i8 %2, ptr %c, align 1, !dbg !7019
  %4 = load i8, ptr %c, align 1, !dbg !7019, !range !5384, !noundef !1324
  %tobool = trunc i8 %4 to i1, !dbg !7019
  %frombool = zext i1 %tobool to i8, !dbg !7019
  store i8 %frombool, ptr %tmp, align 1, !dbg !7019
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !7021
  %5 = load i8, ptr %tmp, align 1, !dbg !7019, !range !5384, !noundef !1324
  %tobool1 = trunc i8 %5 to i1, !dbg !7019
  ret i1 %tobool1, !dbg !7022
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7023 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7025, metadata !DIExpression()), !dbg !7029
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7026, metadata !DIExpression()), !dbg !7030
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !7031
  call void @llvm.dbg.declare(metadata ptr %c, metadata !7027, metadata !DIExpression()), !dbg !7031
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7031
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7031
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #15, !dbg !7031, !srcloc !7032
  %3 = icmp ult i8 %2, 2, !dbg !7031
  call void @llvm.assume(i1 %3), !dbg !7031
  store i8 %2, ptr %c, align 1, !dbg !7031
  %4 = load i8, ptr %c, align 1, !dbg !7031, !range !5384, !noundef !1324
  %tobool = trunc i8 %4 to i1, !dbg !7031
  %frombool = zext i1 %tobool to i8, !dbg !7031
  store i8 %frombool, ptr %tmp, align 1, !dbg !7031
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !7033
  %5 = load i8, ptr %tmp, align 1, !dbg !7031, !range !5384, !noundef !1324
  %tobool1 = trunc i8 %5 to i1, !dbg !7031
  ret i1 %tobool1, !dbg !7034
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !7035 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7037, metadata !DIExpression()), !dbg !7039
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7038, metadata !DIExpression()), !dbg !7040
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7041
  %1 = load i64, ptr %size.addr, align 8, !dbg !7042
  %conv = trunc i64 %1 to i32, !dbg !7042
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #16, !dbg !7043
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7044
  %3 = load i64, ptr %size.addr, align 8, !dbg !7044
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #16, !dbg !7044
  ret void, !dbg !7045
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7046 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7048, metadata !DIExpression()), !dbg !7050
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7049, metadata !DIExpression()), !dbg !7051
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7052
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7053
  br i1 %1, label %cond.true, label %cond.false, !dbg !7053

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7054
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7055
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !7056
  %conv = zext i1 %call to i32, !dbg !7056
  br label %cond.end, !dbg !7053

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7057
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7058
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #16, !dbg !7059
  %conv2 = zext i1 %call1 to i32, !dbg !7059
  br label %cond.end, !dbg !7053

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7053
  %tobool = icmp ne i32 %cond, 0, !dbg !7053
  ret i1 %tobool, !dbg !7060
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7061 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7063, metadata !DIExpression()), !dbg !7065
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7064, metadata !DIExpression()), !dbg !7066
  ret i1 true, !dbg !7067
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7068 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7072, metadata !DIExpression()), !dbg !7074
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7073, metadata !DIExpression()), !dbg !7075
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7076
  %and = and i64 %0, 63, !dbg !7077
  %shl = shl i64 1, %and, !dbg !7078
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7079
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7080
  %shr = ashr i64 %2, 6, !dbg !7081
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7079
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7079
  %and1 = and i64 %shl, %3, !dbg !7082
  %cmp = icmp ne i64 %and1, 0, !dbg !7083
  ret i1 %cmp, !dbg !7084
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !7085 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7087, metadata !DIExpression()), !dbg !7090
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7088, metadata !DIExpression()), !dbg !7091
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !7092
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7089, metadata !DIExpression()), !dbg !7093
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7094
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7095
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !7096, !srcloc !7097
  %3 = icmp ult i8 %2, 2, !dbg !7096
  call void @llvm.assume(i1 %3), !dbg !7096
  store i8 %2, ptr %oldbit, align 1, !dbg !7096
  %4 = load i8, ptr %oldbit, align 1, !dbg !7098, !range !5384, !noundef !1324
  %tobool = trunc i8 %4 to i1, !dbg !7098
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !7099
  ret i1 %tobool, !dbg !7100
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7101 dso_local i32 @snd_seq_timer_start(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queue_broadcast_event(ptr noundef %q, ptr noundef %ev, i32 noundef %atomic, i32 noundef %hop) #0 align 16 !dbg !7102 {
entry:
  %q.addr = alloca ptr, align 8
  %ev.addr = alloca ptr, align 8
  %atomic.addr = alloca i32, align 4
  %hop.addr = alloca i32, align 4
  %sev = alloca %struct.snd_seq_event, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !7104, metadata !DIExpression()), !dbg !7109
  store ptr %ev, ptr %ev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ev.addr, metadata !7105, metadata !DIExpression()), !dbg !7110
  store i32 %atomic, ptr %atomic.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %atomic.addr, metadata !7106, metadata !DIExpression()), !dbg !7111
  store i32 %hop, ptr %hop.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hop.addr, metadata !7107, metadata !DIExpression()), !dbg !7112
  call void @llvm.lifetime.start.p0(i64 28, ptr %sev) #15, !dbg !7113
  call void @llvm.dbg.declare(metadata ptr %sev, metadata !7108, metadata !DIExpression()), !dbg !7114
  %0 = load ptr, ptr %ev.addr, align 8, !dbg !7115
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %sev, ptr align 4 %0, i64 28, i1 false), !dbg !7116
  %flags = getelementptr inbounds %struct.snd_seq_event, ptr %sev, i32 0, i32 1, !dbg !7117
  store i8 0, ptr %flags, align 1, !dbg !7118
  %1 = load ptr, ptr %q.addr, align 8, !dbg !7119
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %1, i32 0, i32 4, !dbg !7120
  %2 = load ptr, ptr %timer, align 8, !dbg !7120
  %tick = getelementptr inbounds %struct.snd_seq_timer, ptr %2, i32 0, i32 4, !dbg !7121
  %cur_tick = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %tick, i32 0, i32 0, !dbg !7122
  %3 = load i32, ptr %cur_tick, align 8, !dbg !7122
  %time = getelementptr inbounds %struct.snd_seq_event, ptr %sev, i32 0, i32 4, !dbg !7123
  store i32 %3, ptr %time, align 4, !dbg !7124
  %4 = load ptr, ptr %q.addr, align 8, !dbg !7125
  %queue = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 0, !dbg !7126
  %5 = load i32, ptr %queue, align 8, !dbg !7126
  %conv = trunc i32 %5 to i8, !dbg !7125
  %queue1 = getelementptr inbounds %struct.snd_seq_event, ptr %sev, i32 0, i32 3, !dbg !7127
  store i8 %conv, ptr %queue1, align 1, !dbg !7128
  %6 = load ptr, ptr %q.addr, align 8, !dbg !7129
  %queue2 = getelementptr inbounds %struct.snd_seq_queue, ptr %6, i32 0, i32 0, !dbg !7130
  %7 = load i32, ptr %queue2, align 8, !dbg !7130
  %conv3 = trunc i32 %7 to i8, !dbg !7129
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %sev, i32 0, i32 7, !dbg !7131
  %queue4 = getelementptr inbounds %struct.snd_seq_ev_queue_control, ptr %data, i32 0, i32 0, !dbg !7132
  store i8 %conv3, ptr %queue4, align 4, !dbg !7133
  %source = getelementptr inbounds %struct.snd_seq_event, ptr %sev, i32 0, i32 5, !dbg !7134
  %client = getelementptr inbounds %struct.snd_seq_addr, ptr %source, i32 0, i32 0, !dbg !7135
  store i8 0, ptr %client, align 4, !dbg !7136
  %source5 = getelementptr inbounds %struct.snd_seq_event, ptr %sev, i32 0, i32 5, !dbg !7137
  %port = getelementptr inbounds %struct.snd_seq_addr, ptr %source5, i32 0, i32 1, !dbg !7138
  store i8 0, ptr %port, align 1, !dbg !7139
  %dest = getelementptr inbounds %struct.snd_seq_event, ptr %sev, i32 0, i32 6, !dbg !7140
  %client6 = getelementptr inbounds %struct.snd_seq_addr, ptr %dest, i32 0, i32 0, !dbg !7141
  store i8 -2, ptr %client6, align 2, !dbg !7142
  %8 = load i32, ptr %atomic.addr, align 4, !dbg !7143
  %9 = load i32, ptr %hop.addr, align 4, !dbg !7144
  %call = call i32 @snd_seq_kernel_client_dispatch(i32 noundef 0, ptr noundef %sev, i32 noundef %8, i32 noundef %9) #16, !dbg !7145
  call void @llvm.lifetime.end.p0(i64 28, ptr %sev) #15, !dbg !7146
  ret void, !dbg !7146
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7147 dso_local i32 @snd_seq_timer_continue(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7148 dso_local i32 @snd_seq_timer_set_tempo(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7151 dso_local i32 @snd_seq_timer_set_position_tick(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7154 dso_local i32 @snd_seq_timer_set_position_time(ptr noundef, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7157 dso_local i32 @snd_seq_kernel_client_dispatch(i32 noundef, ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7160 dso_local void @_raw_spin_lock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7161 dso_local void @_raw_spin_unlock_irq(ptr noundef) #5 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796}
!llvm.ident = !{!4797}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "num_queues", scope: !2, file: !3, line: 40, type: !85, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/seq/.seq_queue.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/seq/snd-seq\22 -D KBUILD_BASENAME=\22seq_queue\22 -D KBUILD_MODNAME=\22snd_seq\22 -D __KBUILD_MODNAME=kmod_snd_seq -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/seq/seq_queue.ll sound/core/seq/seq_queue.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !132, globals: !3941, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/core/seq/seq_queue.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "44e1aff2356253aa88ada4bfedab2d3e")
!4 = !{!5, !13, !18, !26, !32, !37, !43, !50, !57, !63, !69, !76, !84, !92, !101, !106, !111, !117, !122}
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
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !64, line: 45, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!67 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!68 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !70, line: 487, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!73 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!74 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!75 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !77, line: 620, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!80 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!81 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!82 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!83 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !77, line: 597, baseType: !85, size: 32, elements: !86)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!88 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!89 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!90 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!91 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !70, line: 547, baseType: !7, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100}
!94 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!95 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!96 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!97 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!98 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!99 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!100 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !70, line: 564, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!104 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!105 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !70, line: 577, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!109 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!110 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !70, line: 503, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!114 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!115 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!116 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 10, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "false", value: 0)
!121 = !DIEnumerator(name: "true", value: 1)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !123, line: 364, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!124 = !{!125, !126, !127, !128, !129, !130, !131}
!125 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!126 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!127 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!128 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!129 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!130 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!131 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!132 = !{!133, !134, !137, !139, !854, !136, !3939, !2013}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !135, line: 42, baseType: !136)
!135 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!136 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !141, line: 17, size: 960, elements: !142)
!141 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!142 = !{!143, !146, !151, !152, !153, !154, !158, !159, !219, !241, !242, !3938}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !140, file: !141, line: 18, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !140, file: !141, line: 19, baseType: !147, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !135, line: 61, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !149, line: 72, baseType: !150)
!149 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !149, line: 16, baseType: !136)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !140, file: !141, line: 20, baseType: !147, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !140, file: !141, line: 21, baseType: !147, size: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !140, file: !141, line: 22, baseType: !147, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !140, file: !141, line: 23, baseType: !155, size: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !135, line: 52, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !149, line: 88, baseType: !157)
!157 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !140, file: !141, line: 24, baseType: !155, size: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !140, file: !141, line: 25, baseType: !160, size: 256, offset: 448)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !161, line: 66, size: 256, elements: !162)
!161 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!162 = !{!163, !174, !208, !213}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !160, file: !161, line: 67, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !165, line: 13, baseType: !166)
!165 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !135, line: 181, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 179, size: 64, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !167, file: !135, line: 180, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !171, line: 22, baseType: !172)
!171 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !173, line: 30, baseType: !157)
!173 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!174 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !160, file: !161, line: 68, baseType: !175, size: 32, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !176, line: 23, baseType: !177)
!176 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !176, line: 14, size: 32, elements: !178)
!178 = !{!179}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !177, file: !176, line: 15, baseType: !180, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !181, line: 44, baseType: !182)
!181 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !181, line: 14, size: 32, elements: !183)
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, scope: !182, file: !181, line: 15, baseType: !185, size: 32)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !182, file: !181, line: 15, size: 32, elements: !186)
!186 = !{!187, !192, !200}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !185, file: !181, line: 16, baseType: !188, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !135, line: 174, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 172, size: 32, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !189, file: !135, line: 173, baseType: !85, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !181, line: 24, baseType: !193, size: 16)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !181, line: 24, size: 16, elements: !194)
!194 = !{!195, !199}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !193, file: !181, line: 25, baseType: !196, size: 8)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !171, line: 17, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !173, line: 21, baseType: !198)
!198 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !193, file: !181, line: 26, baseType: !196, size: 8, offset: 8)
!200 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !181, line: 28, baseType: !201, size: 32)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !181, line: 28, size: 32, elements: !202)
!202 = !{!203, !207}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !201, file: !181, line: 29, baseType: !204, size: 16)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !171, line: 19, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !173, line: 24, baseType: !206)
!206 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !201, file: !181, line: 30, baseType: !204, size: 16, offset: 16)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !160, file: !161, line: 70, baseType: !209, size: 32, offset: 96)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !210, line: 15, size: 32, elements: !211)
!210 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !209, file: !210, line: 20, baseType: !188, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !160, file: !161, line: 72, baseType: !214, size: 128, offset: 128)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !135, line: 190, size: 128, elements: !215)
!215 = !{!216, !218}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !135, line: 191, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !214, file: !135, line: 191, baseType: !217, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !140, file: !141, line: 26, baseType: !220, size: 64, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !141, line: 32, size: 256, elements: !223)
!223 = !{!224, !229, !233, !237}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !222, file: !141, line: 33, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!133, !139, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !222, file: !141, line: 34, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !139, !133}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !141, line: 35, baseType: !234, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!133, !139, !133, !228}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !222, file: !141, line: 36, baseType: !238, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!85, !139, !133}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !140, file: !141, line: 27, baseType: !85, size: 32, offset: 768)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !140, file: !141, line: 28, baseType: !243, size: 64, offset: 832)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !246)
!246 = !{!247, !266, !275, !277, !278, !279, !280, !281, !362, !588, !597, !3928, !3929, !3930, !3931, !3932, !3933, !3935, !3936, !3937}
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !14, line: 995, baseType: !248, size: 128)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !245, file: !14, line: 995, size: 128, elements: !249)
!249 = !{!250, !256, !265}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !248, file: !14, line: 996, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !252, line: 60, size: 64, elements: !253)
!252 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !251, file: !252, line: 61, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !248, file: !14, line: 997, baseType: !257, size: 128, align: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !135, line: 232, size: 128, align: 64, elements: !258)
!258 = !{!259, !261}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !135, line: 233, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !257, file: !135, line: 234, baseType: !262, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !260}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !248, file: !14, line: 998, baseType: !7, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !245, file: !14, line: 1005, baseType: !267, size: 32, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !268, line: 29, baseType: !269)
!268 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !268, line: 17, size: 32, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !268, line: 18, baseType: !272, size: 32)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !268, line: 18, size: 32, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !272, file: !268, line: 19, baseType: !177, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !245, file: !14, line: 1006, baseType: !276, size: 32, offset: 160)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !135, line: 156, baseType: !7)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !245, file: !14, line: 1007, baseType: !164, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !245, file: !14, line: 1008, baseType: !160, size: 256, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !245, file: !14, line: 1009, baseType: !155, size: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !245, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !245, file: !14, line: 1011, baseType: !282, size: 256, offset: 640)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !283)
!283 = !{!284, !307, !351, !352, !360, !361}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !282, file: !14, line: 949, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !286, line: 34, baseType: !287)
!286 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 25, size: 64, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !287, file: !286, line: 26, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !291, line: 27, baseType: !292)
!291 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !291, line: 13, size: 64, elements: !293)
!293 = !{!294, !306}
!294 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !291, line: 14, baseType: !295, size: 32)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !291, line: 14, size: 32, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !295, file: !291, line: 15, baseType: !188, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !291, line: 16, baseType: !299, size: 32)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !295, file: !291, line: 16, size: 32, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !299, file: !291, line: 18, baseType: !196, size: 8)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !299, file: !291, line: 19, baseType: !303, size: 24, offset: 8)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 24, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 3)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !292, file: !291, line: 26, baseType: !180, size: 32, offset: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !282, file: !14, line: 950, baseType: !308, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !310)
!310 = !{!311, !317, !318, !319, !332, !333, !340, !341}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !309, file: !19, line: 61, baseType: !312, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !313, line: 113, baseType: !314)
!313 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !313, line: 111, size: 32, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !314, file: !313, line: 112, baseType: !188, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !309, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !309, file: !19, line: 63, baseType: !267, size: 32, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !309, file: !19, line: 65, baseType: !320, size: 256, offset: 128)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 256, elements: !330)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !135, line: 194, size: 64, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !321, file: !135, line: 195, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !135, line: 198, size: 128, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !135, line: 199, baseType: !324, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !325, file: !135, line: 199, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!330 = !{!331}
!331 = !DISubrange(count: 4)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !309, file: !19, line: 66, baseType: !321, size: 64, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !309, file: !19, line: 68, baseType: !334, size: 192, offset: 448)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !335, line: 41, baseType: !336)
!335 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !335, line: 37, size: 192, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !336, file: !335, line: 38, baseType: !267, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !336, file: !335, line: 39, baseType: !214, size: 128, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !309, file: !19, line: 69, baseType: !257, size: 128, align: 64, offset: 640)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !309, file: !19, line: 70, baseType: !342, offset: 768)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, elements: !349)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !343, file: !19, line: 55, baseType: !85, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !343, file: !19, line: 56, baseType: !347, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!349 = !{!350}
!350 = !DISubrange(count: -1)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !282, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !282, file: !14, line: 952, baseType: !353, size: 32, offset: 160)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !354, line: 23, baseType: !355)
!354 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 21, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !355, file: !354, line: 22, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !135, line: 37, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !149, line: 49, baseType: !7)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !282, file: !14, line: 952, baseType: !353, size: 32, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !282, file: !14, line: 953, baseType: !85, size: 32, offset: 224)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !245, file: !14, line: 1012, baseType: !363, size: 64, offset: 896)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !366, line: 110, size: 1472, elements: !367)
!366 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!367 = !{!368, !369, !370, !377, !378, !379, !380, !381, !382, !383, !384, !393, !394, !395, !396, !397, !398, !532, !533, !534, !535, !536, !567, !571, !575, !583}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !365, file: !366, line: 111, baseType: !164, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !365, file: !366, line: 112, baseType: !353, size: 32, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !365, file: !366, line: 113, baseType: !371, size: 32, offset: 96)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !354, line: 28, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 26, size: 32, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !372, file: !354, line: 27, baseType: !375, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !135, line: 38, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !149, line: 50, baseType: !7)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !365, file: !366, line: 114, baseType: !353, size: 32, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !365, file: !366, line: 115, baseType: !371, size: 32, offset: 160)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !365, file: !366, line: 116, baseType: !353, size: 32, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !365, file: !366, line: 117, baseType: !371, size: 32, offset: 224)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !365, file: !366, line: 118, baseType: !353, size: 32, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !365, file: !366, line: 119, baseType: !371, size: 32, offset: 288)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !365, file: !366, line: 120, baseType: !7, size: 32, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !365, file: !366, line: 121, baseType: !385, size: 64, offset: 384)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !386, line: 24, baseType: !387)
!386 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !386, line: 24, size: 64, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !387, file: !386, line: 24, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !171, line: 23, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !173, line: 31, baseType: !392)
!392 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !365, file: !366, line: 122, baseType: !385, size: 64, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !365, file: !366, line: 123, baseType: !385, size: 64, offset: 512)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !365, file: !366, line: 124, baseType: !385, size: 64, offset: 576)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !365, file: !366, line: 125, baseType: !385, size: 64, offset: 640)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !365, file: !366, line: 127, baseType: !198, size: 8, offset: 704)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !365, file: !366, line: 129, baseType: !399, size: 64, offset: 768)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !401, line: 195, size: 1728, elements: !402)
!401 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!402 = !{!403, !404, !409, !421, !430, !433, !434, !441, !442, !443, !444, !449, !450, !451, !453, !454, !496, !517}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !400, file: !401, line: 196, baseType: !312, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !400, file: !401, line: 197, baseType: !405, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !401, line: 28, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !135, line: 104, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !171, line: 20, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !173, line: 26, baseType: !85)
!409 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !401, line: 198, baseType: !410, size: 192, offset: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !401, line: 198, size: 192, elements: !411)
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !410, file: !401, line: 199, baseType: !214, size: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !410, file: !401, line: 200, baseType: !414, size: 192, align: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !415, line: 5, size: 192, align: 64, elements: !416)
!415 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!416 = !{!417, !418, !420}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !414, file: !415, line: 6, baseType: !136, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !414, file: !415, line: 7, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !414, file: !415, line: 8, baseType: !419, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !400, file: !401, line: 205, baseType: !422, size: 320, offset: 256)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !423, line: 48, size: 320, elements: !424)
!423 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!424 = !{!425, !426, !427, !428, !429}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !422, file: !423, line: 49, baseType: !164, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !422, file: !423, line: 55, baseType: !164, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !422, file: !423, line: 57, baseType: !209, size: 32, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !422, file: !423, line: 59, baseType: !175, size: 32, offset: 160)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !422, file: !423, line: 60, baseType: !214, size: 128, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !400, file: !401, line: 206, baseType: !431, size: 64, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !401, line: 206, flags: DIFlagFwdDecl)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !400, file: !401, line: 207, baseType: !133, size: 64, offset: 640)
!434 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !401, line: 208, baseType: !435, size: 64, offset: 704)
!435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !401, line: 208, size: 64, elements: !436)
!436 = !{!437, !440}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !435, file: !401, line: 209, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !439, line: 8, baseType: !172)
!439 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!440 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !435, file: !401, line: 210, baseType: !438, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !400, file: !401, line: 212, baseType: !438, size: 64, offset: 768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !400, file: !401, line: 213, baseType: !353, size: 32, offset: 832)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !400, file: !401, line: 214, baseType: !371, size: 32, offset: 864)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !400, file: !401, line: 215, baseType: !445, size: 32, offset: 896)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !401, line: 31, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !135, line: 110, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !171, line: 21, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !173, line: 27, baseType: !7)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !400, file: !401, line: 216, baseType: !206, size: 16, offset: 928)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !400, file: !401, line: 217, baseType: !206, size: 16, offset: 944)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !400, file: !401, line: 221, baseType: !452, size: 16, offset: 960)
!452 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !401, line: 228, baseType: !136, size: 64, offset: 1024)
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !401, line: 245, baseType: !455, size: 320, offset: 1088)
!455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !401, line: 245, size: 320, elements: !456)
!456 = !{!457, !488}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !455, file: !401, line: 246, baseType: !458, size: 320)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !401, line: 114, size: 320, elements: !459)
!459 = !{!460, !461, !473, !476, !485}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !458, file: !401, line: 116, baseType: !136, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !401, line: 117, baseType: !462, size: 64, offset: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !458, file: !401, line: 117, size: 64, elements: !463)
!463 = !{!464, !472}
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !401, line: 118, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !401, line: 118, size: 64, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !465, file: !401, line: 120, baseType: !204, size: 16)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !465, file: !401, line: 121, baseType: !469, size: 48, offset: 16)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 48, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 6)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !462, file: !401, line: 127, baseType: !136, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !458, file: !401, line: 129, baseType: !474, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !401, line: 102, flags: DIFlagFwdDecl)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !458, file: !401, line: 130, baseType: !477, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !401, line: 108, size: 192, elements: !479)
!479 = !{!480, !481, !482}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !478, file: !401, line: 109, baseType: !257, size: 128, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !478, file: !401, line: 110, baseType: !312, size: 32, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !478, file: !401, line: 111, baseType: !483, size: 8, offset: 160)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !135, line: 35, baseType: !484)
!484 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !458, file: !401, line: 131, baseType: !486, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!488 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !401, line: 247, baseType: !489, size: 320)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !455, file: !401, line: 247, size: 320, elements: !490)
!490 = !{!491, !492, !493, !494, !495}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !489, file: !401, line: 248, baseType: !136, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !489, file: !401, line: 249, baseType: !136, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !489, file: !401, line: 250, baseType: !474, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !489, file: !401, line: 251, baseType: !477, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !489, file: !401, line: 252, baseType: !144, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !401, line: 260, baseType: !497, size: 256, offset: 1408)
!497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !401, line: 260, size: 256, elements: !498)
!498 = !{!499, !505}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !497, file: !401, line: 261, baseType: !500, size: 256)
!500 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !401, line: 134, size: 256, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !500, file: !401, line: 135, baseType: !133, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !500, file: !401, line: 136, baseType: !504, size: 256)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 256, elements: !330)
!505 = !DIDerivedType(tag: DW_TAG_member, scope: !497, file: !401, line: 262, baseType: !506, size: 256)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !497, file: !401, line: 262, size: 256, elements: !507)
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !506, file: !401, line: 264, baseType: !214, size: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !506, file: !401, line: 265, baseType: !510, size: 128, offset: 128)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !511, line: 22, size: 128, elements: !512)
!511 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!512 = !{!513, !516}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !510, file: !511, line: 23, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !511, line: 23, flags: DIFlagFwdDecl)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !510, file: !511, line: 24, baseType: !136, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !400, file: !401, line: 280, baseType: !518, size: 64, offset: 1664)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !401, line: 176, size: 192, elements: !520)
!520 = !{!521, !530, !531}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !519, file: !401, line: 177, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !401, line: 171, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!85, !399, !526, !528, !399}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !519, file: !401, line: 178, baseType: !399, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !519, file: !401, line: 179, baseType: !474, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !365, file: !366, line: 130, baseType: !399, size: 64, offset: 832)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !365, file: !366, line: 131, baseType: !399, size: 64, offset: 896)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !365, file: !366, line: 132, baseType: !399, size: 64, offset: 960)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !365, file: !366, line: 135, baseType: !133, size: 64, offset: 1024)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !365, file: !366, line: 137, baseType: !537, size: 64, offset: 1088)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !539, line: 14, size: 1088, elements: !540)
!539 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!540 = !{!541, !542, !551, !552, !553, !554, !555, !556}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !538, file: !539, line: 15, baseType: !312, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !538, file: !539, line: 17, baseType: !543, size: 320, offset: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !544, line: 22, size: 320, elements: !545)
!544 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!545 = !{!546, !547, !548, !549}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !543, file: !544, line: 23, baseType: !175, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !543, file: !544, line: 24, baseType: !170, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !543, file: !544, line: 26, baseType: !214, size: 128, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !543, file: !544, line: 28, baseType: !550, size: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !538, file: !539, line: 19, baseType: !136, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !538, file: !539, line: 20, baseType: !164, size: 64, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !538, file: !539, line: 23, baseType: !325, size: 128, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !538, file: !539, line: 24, baseType: !353, size: 32, offset: 640)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !538, file: !539, line: 29, baseType: !164, size: 64, offset: 704)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !538, file: !539, line: 36, baseType: !557, size: 320, offset: 768)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !558, line: 15, size: 320, elements: !559)
!558 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!559 = !{!560, !561, !562, !563, !564, !565, !566}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !557, file: !558, line: 16, baseType: !175, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !557, file: !558, line: 18, baseType: !85, size: 32, offset: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !557, file: !558, line: 19, baseType: !85, size: 32, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !557, file: !558, line: 20, baseType: !85, size: 32, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !557, file: !558, line: 21, baseType: !85, size: 32, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !557, file: !558, line: 22, baseType: !136, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !557, file: !558, line: 23, baseType: !136, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !365, file: !366, line: 138, baseType: !568, size: 64, offset: 1152)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !570, line: 901, flags: DIFlagFwdDecl)
!570 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !365, file: !366, line: 139, baseType: !572, size: 64, offset: 1216)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !574, line: 16, flags: DIFlagFwdDecl)
!574 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!575 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !365, file: !366, line: 140, baseType: !576, size: 64, offset: 1280)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !366, line: 25, size: 64, elements: !578)
!578 = !{!579, !580, !581}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !577, file: !366, line: 26, baseType: !188, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !577, file: !366, line: 27, baseType: !85, size: 32, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !577, file: !366, line: 28, baseType: !582, offset: 64)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, elements: !349)
!583 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !366, line: 142, baseType: !584, size: 128, offset: 1344)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !366, line: 142, size: 128, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !584, file: !366, line: 143, baseType: !85, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !584, file: !366, line: 144, baseType: !257, size: 128, align: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !245, file: !14, line: 1013, baseType: !589, size: 256, offset: 960)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !589, file: !14, line: 971, baseType: !136, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !589, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !589, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !589, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !589, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !589, file: !14, line: 976, baseType: !155, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !245, file: !14, line: 1014, baseType: !598, size: 128, offset: 1216)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !599, line: 8, size: 128, elements: !600)
!599 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!600 = !{!601, !3927}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !598, file: !599, line: 9, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !604, line: 70, size: 256, elements: !605)
!604 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!605 = !{!606, !3924, !3925, !3926}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !603, file: !604, line: 71, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !609, line: 82, size: 1536, elements: !610)
!609 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!610 = !{!611, !612, !622, !630, !631, !646, !3892, !3894, !3907, !3908, !3909, !3910, !3911, !3916, !3917, !3918}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !608, file: !609, line: 84, baseType: !7, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !608, file: !609, line: 85, baseType: !613, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !614, line: 275, baseType: !615)
!614 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !614, line: 275, size: 32, elements: !616)
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !615, file: !614, line: 275, baseType: !618, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !614, line: 69, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !614, line: 64, size: 32, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !619, file: !614, line: 65, baseType: !7, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !608, file: !609, line: 86, baseType: !623, size: 128, offset: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !624, line: 38, size: 128, elements: !625)
!624 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!625 = !{!626, !628}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !623, file: !624, line: 39, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !623, file: !624, line: 39, baseType: !629, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !608, file: !609, line: 87, baseType: !607, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !608, file: !609, line: 88, baseType: !632, size: 128, offset: 256)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !609, line: 49, size: 128, elements: !633)
!633 = !{!634, !643}
!634 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !609, line: 50, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !609, line: 50, size: 64, elements: !636)
!636 = !{!637, !642}
!637 = !DIDerivedType(tag: DW_TAG_member, scope: !635, file: !609, line: 51, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !635, file: !609, line: 51, size: 64, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !638, file: !609, line: 52, baseType: !447, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !638, file: !609, line: 52, baseType: !447, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !635, file: !609, line: 54, baseType: !390, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !632, file: !609, line: 56, baseType: !644, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !608, file: !609, line: 89, baseType: !647, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !649)
!649 = !{!650, !652, !653, !654, !655, !656, !657, !660, !661, !857, !3708, !3709, !3710, !3711, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3874, !3877, !3878, !3879, !3888, !3889, !3890, !3891}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !648, file: !14, line: 642, baseType: !651, size: 16)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !135, line: 24, baseType: !206)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !648, file: !14, line: 643, baseType: !206, size: 16, offset: 16)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !648, file: !14, line: 644, baseType: !353, size: 32, offset: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !648, file: !14, line: 645, baseType: !214, size: 128, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !648, file: !14, line: 646, baseType: !371, size: 32, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !648, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !648, file: !14, line: 650, baseType: !658, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !648, file: !14, line: 651, baseType: !658, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !648, file: !14, line: 654, baseType: !662, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !665)
!665 = !{!666, !670, !683, !689, !693, !697, !701, !705, !709, !713, !717, !718, !724, !728, !767, !798, !805, !811, !815, !819, !823, !827, !831, !837, !841}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !664, file: !14, line: 1967, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!607, !647, !607, !7}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !664, file: !14, line: 1968, baseType: !671, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!486, !607, !647, !674}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !676, line: 10, size: 128, elements: !677)
!676 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!677 = !{!678, !682}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !675, file: !676, line: 11, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !133}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !675, file: !676, line: 12, baseType: !133, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !664, file: !14, line: 1969, baseType: !684, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!85, !687, !647, !85}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !386, line: 42, flags: DIFlagFwdDecl)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !664, file: !14, line: 1970, baseType: !690, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!658, !647, !85, !483}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !664, file: !14, line: 1972, baseType: !694, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!85, !607, !144, !85}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !664, file: !14, line: 1974, baseType: !698, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!85, !687, !647, !607, !651, !483}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !664, file: !14, line: 1976, baseType: !702, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!85, !607, !647, !607}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !664, file: !14, line: 1977, baseType: !706, size: 64, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!85, !647, !607}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !664, file: !14, line: 1978, baseType: !710, size: 64, offset: 512)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!85, !687, !647, !607, !486}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !664, file: !14, line: 1980, baseType: !714, size: 64, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!85, !687, !647, !607, !651}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !664, file: !14, line: 1982, baseType: !706, size: 64, offset: 640)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !664, file: !14, line: 1983, baseType: !719, size: 64, offset: 704)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!85, !687, !647, !607, !651, !722}
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !135, line: 21, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !135, line: 18, baseType: !447)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !664, file: !14, line: 1985, baseType: !725, size: 64, offset: 768)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!85, !687, !647, !607, !647, !607, !7}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !664, file: !14, line: 1987, baseType: !729, size: 64, offset: 832)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!85, !687, !607, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !734)
!734 = !{!735, !736, !737, !747, !756, !757, !763, !764, !765}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !733, file: !14, line: 227, baseType: !7, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !733, file: !14, line: 228, baseType: !651, size: 16, offset: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, scope: !733, file: !14, line: 241, baseType: !738, size: 32, offset: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !733, file: !14, line: 241, size: 32, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !738, file: !14, line: 242, baseType: !353, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !738, file: !14, line: 243, baseType: !742, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !743, line: 16, baseType: !744)
!743 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !743, line: 14, size: 32, elements: !745)
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !744, file: !743, line: 15, baseType: !358, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !733, file: !14, line: 245, baseType: !748, size: 32, offset: 96)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !733, file: !14, line: 245, size: 32, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !748, file: !14, line: 246, baseType: !371, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !748, file: !14, line: 247, baseType: !752, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !743, line: 20, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !743, line: 18, size: 32, elements: !754)
!754 = !{!755}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !753, file: !743, line: 19, baseType: !375, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !733, file: !14, line: 249, baseType: !155, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !733, file: !14, line: 250, baseType: !758, size: 128, offset: 192)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !439, line: 13, size: 128, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !758, file: !439, line: 14, baseType: !438, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !758, file: !439, line: 15, baseType: !762, size: 64, offset: 64)
!762 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !733, file: !14, line: 251, baseType: !758, size: 128, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !733, file: !14, line: 252, baseType: !758, size: 128, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !733, file: !14, line: 259, baseType: !766, size: 64, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !664, file: !14, line: 1988, baseType: !768, size: 64, offset: 896)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!85, !687, !771, !773, !447, !7}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !775, line: 22, size: 1280, elements: !776)
!775 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !774, file: !775, line: 23, baseType: !447, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !774, file: !775, line: 24, baseType: !651, size: 16, offset: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !774, file: !775, line: 25, baseType: !7, size: 32, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !774, file: !775, line: 26, baseType: !446, size: 32, offset: 96)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !774, file: !775, line: 27, baseType: !390, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !774, file: !775, line: 28, baseType: !390, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !774, file: !775, line: 41, baseType: !390, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !774, file: !775, line: 42, baseType: !722, size: 32, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !774, file: !775, line: 43, baseType: !722, size: 32, offset: 352)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !774, file: !775, line: 44, baseType: !353, size: 32, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !774, file: !775, line: 45, baseType: !371, size: 32, offset: 416)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !774, file: !775, line: 46, baseType: !155, size: 64, offset: 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !774, file: !775, line: 47, baseType: !758, size: 128, offset: 512)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !774, file: !775, line: 48, baseType: !758, size: 128, offset: 640)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !774, file: !775, line: 49, baseType: !758, size: 128, offset: 768)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !774, file: !775, line: 50, baseType: !758, size: 128, offset: 896)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !774, file: !775, line: 51, baseType: !390, size: 64, offset: 1024)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !774, file: !775, line: 52, baseType: !390, size: 64, offset: 1088)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !774, file: !775, line: 53, baseType: !447, size: 32, offset: 1152)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !774, file: !775, line: 54, baseType: !447, size: 32, offset: 1184)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !774, file: !775, line: 55, baseType: !390, size: 64, offset: 1216)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !664, file: !14, line: 1990, baseType: !799, size: 64, offset: 960)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!802, !607, !144, !147}
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !135, line: 66, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !149, line: 73, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !149, line: 15, baseType: !762)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !664, file: !14, line: 1991, baseType: !806, size: 64, offset: 1024)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!85, !647, !809, !390, !390}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !664, file: !14, line: 1993, baseType: !812, size: 64, offset: 1088)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!85, !647, !85}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !664, file: !14, line: 1994, baseType: !816, size: 64, offset: 1152)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!85, !647, !607, !766, !7, !651}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !664, file: !14, line: 1997, baseType: !820, size: 64, offset: 1216)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!85, !687, !647, !766, !651}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !664, file: !14, line: 1999, baseType: !824, size: 64, offset: 1280)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!658, !687, !607, !85}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !664, file: !14, line: 2001, baseType: !828, size: 64, offset: 1344)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!85, !687, !607, !658, !85}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !664, file: !14, line: 2003, baseType: !832, size: 64, offset: 1408)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!85, !687, !607, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !664, file: !14, line: 2005, baseType: !838, size: 64, offset: 1472)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!85, !607, !835}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !664, file: !14, line: 2006, baseType: !842, size: 64, offset: 1536)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!845, !647}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !847)
!847 = !{!848, !856}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !846, file: !14, line: 3193, baseType: !849, size: 128)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !850, line: 296, size: 128, elements: !851)
!850 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!851 = !{!852, !853, !855}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !849, file: !850, line: 297, baseType: !267, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !849, file: !850, line: 299, baseType: !854, size: 32, offset: 32)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !135, line: 154, baseType: !7)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !849, file: !850, line: 300, baseType: !133, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !846, file: !14, line: 3194, baseType: !447, size: 32, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !648, file: !14, line: 655, baseType: !858, size: 64, offset: 448)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !860)
!860 = !{!861, !862, !863, !864, !865, !866, !2042, !2174, !2214, !2297, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2314, !2318, !2319, !2322, !2325, !2328, !2331, !2332, !2333, !2374, !3583, !3584, !3585, !3586, !3587, !3588, !3591, !3593, !3600, !3601, !3602, !3603, !3662, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !859, file: !14, line: 1191, baseType: !214, size: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !859, file: !14, line: 1192, baseType: !722, size: 32, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !859, file: !14, line: 1193, baseType: !198, size: 8, offset: 160)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !859, file: !14, line: 1194, baseType: !136, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !859, file: !14, line: 1195, baseType: !155, size: 64, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !859, file: !14, line: 1196, baseType: !867, size: 64, offset: 320)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !869)
!869 = !{!870, !871, !872, !879, !883, !887, !891, !2030, !2031, !2032, !2034, !2035, !2036, !2038, !2039, !2040, !2041}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !868, file: !14, line: 2367, baseType: !486, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !868, file: !14, line: 2368, baseType: !85, size: 32, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !868, file: !14, line: 2376, baseType: !873, size: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!85, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !878, line: 32, flags: DIFlagFwdDecl)
!878 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!879 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !868, file: !14, line: 2377, baseType: !880, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !882)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !868, file: !14, line: 2378, baseType: !884, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!607, !867, !85, !486, !133}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !868, file: !14, line: 2380, baseType: !888, size: 64, offset: 320)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !858}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !868, file: !14, line: 2381, baseType: !892, size: 64, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !894)
!894 = !{!895, !896, !897, !901, !1686, !1712, !1713, !1714, !1715, !1719, !1722, !1723, !1724, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1792, !1796, !1816, !1834, !1835, !1836, !1837, !1846, !1869, !1870, !1873, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1887, !1888, !1988, !1996, !1997, !1998, !2000, !2004, !2005, !2009, !2010, !2011, !2012, !2014, !2015, !2016, !2023, !2024, !2025, !2029}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !893, file: !6, line: 403, baseType: !5, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !893, file: !6, line: 406, baseType: !214, size: 128, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !893, file: !6, line: 409, baseType: !898, size: 448, offset: 192)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 448, elements: !899)
!899 = !{!900}
!900 = !DISubrange(count: 56)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !893, file: !6, line: 417, baseType: !902, size: 768, offset: 640)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !903)
!903 = !{!904, !1669, !1670, !1671, !1674}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !902, file: !6, line: 46, baseType: !905, size: 512)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !906, line: 64, size: 512, elements: !907)
!906 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!907 = !{!908, !909, !910, !912, !956, !1555, !1659, !1664, !1665, !1666, !1667, !1668}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !905, file: !906, line: 65, baseType: !486, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !905, file: !906, line: 66, baseType: !214, size: 128, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !905, file: !906, line: 67, baseType: !911, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !905, file: !906, line: 68, baseType: !913, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !906, line: 168, size: 768, elements: !915)
!915 = !{!916, !917, !918, !919}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !914, file: !906, line: 169, baseType: !214, size: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !914, file: !906, line: 170, baseType: !267, size: 32, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !914, file: !906, line: 171, baseType: !905, size: 512, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !914, file: !906, line: 172, baseType: !920, size: 64, offset: 704)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !906, line: 133, size: 192, elements: !923)
!923 = !{!924, !931, !936}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !922, file: !906, line: 134, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !926)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!85, !929}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !905)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !922, file: !906, line: 135, baseType: !932, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!486, !929}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !922, file: !906, line: 136, baseType: !937, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !938)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!85, !929, !941}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !906, line: 125, size: 20736, elements: !943)
!943 = !{!944, !946, !950, !951, !955}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !942, file: !906, line: 126, baseType: !945, size: 192)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 192, elements: !304)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !942, file: !906, line: 127, baseType: !947, size: 4096, offset: 192)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 4096, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !942, file: !906, line: 128, baseType: !85, size: 32, offset: 4288)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !942, file: !906, line: 129, baseType: !952, size: 16384, offset: 4320)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 16384, elements: !953)
!953 = !{!954}
!954 = !DISubrange(count: 2048)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !942, file: !906, line: 130, baseType: !85, size: 32, offset: 20704)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !905, file: !906, line: 69, baseType: !957, size: 64, offset: 320)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !906, line: 116, size: 384, elements: !960)
!960 = !{!961, !965, !984, !1517, !1545, !1549}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !959, file: !906, line: 117, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !911}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !959, file: !906, line: 118, baseType: !966, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !969, line: 254, size: 128, elements: !970)
!969 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!970 = !{!971, !980}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !968, file: !969, line: 255, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!802, !911, !975, !144}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !969, line: 30, size: 128, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !976, file: !969, line: 31, baseType: !486, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !976, file: !969, line: 32, baseType: !651, size: 16, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !968, file: !969, line: 256, baseType: !981, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!802, !911, !975, !486, !147}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !959, file: !906, line: 119, baseType: !985, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !988)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !969, line: 84, size: 320, elements: !989)
!989 = !{!990, !991, !995, !1513, !1515}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !988, file: !969, line: 85, baseType: !486, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !988, file: !969, line: 86, baseType: !992, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!651, !911, !975, !85}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !988, file: !969, line: 88, baseType: !996, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!651, !911, !999, !85}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !969, line: 175, size: 512, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1281, !1285, !1286}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1000, file: !969, line: 176, baseType: !976, size: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1000, file: !969, line: 177, baseType: !147, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1000, file: !969, line: 178, baseType: !133, size: 64, offset: 192)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1000, file: !969, line: 179, baseType: !1006, size: 64, offset: 256)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!1009}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017, !1025, !1026, !1027, !1273, !1274, !1275, !1278, !1279, !1280}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1010, file: !14, line: 473, baseType: !647, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1010, file: !14, line: 474, baseType: !849, size: 128, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1010, file: !14, line: 475, baseType: !422, size: 320, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1010, file: !14, line: 476, baseType: !854, size: 32, offset: 512)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1010, file: !14, line: 477, baseType: !188, size: 32, offset: 544)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1010, file: !14, line: 482, baseType: !1018, size: 128, offset: 576)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !415, line: 26, size: 128, elements: !1019)
!1019 = !{!1020, !1024}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1018, file: !415, line: 27, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !415, line: 12, size: 64, elements: !1022)
!1022 = !{!1023}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1021, file: !415, line: 13, baseType: !419, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1018, file: !415, line: 28, baseType: !419, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1010, file: !14, line: 483, baseType: !136, size: 64, offset: 704)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1010, file: !14, line: 484, baseType: !136, size: 64, offset: 768)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1010, file: !14, line: 485, baseType: !1028, size: 64, offset: 832)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !1031)
!1031 = !{!1032, !1098, !1168, !1172, !1176, !1182, !1188, !1192, !1197, !1201, !1205, !1209, !1237, !1241, !1245, !1249, !1254, !1258, !1265, !1269}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1030, file: !14, line: 405, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!85, !1036, !1096}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !570, line: 74, size: 512, align: 128, elements: !1038)
!1038 = !{!1039, !1040, !1090, !1095}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1037, file: !570, line: 75, baseType: !136, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !570, line: 83, baseType: !1041, size: 320, offset: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !570, line: 83, size: 320, elements: !1042)
!1042 = !{!1043, !1064, !1078, !1082, !1089}
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !570, line: 84, baseType: !1044, size: 320)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !570, line: 84, size: 320, elements: !1045)
!1045 = !{!1046, !1057, !1058, !1063}
!1046 = !DIDerivedType(tag: DW_TAG_member, scope: !1044, file: !570, line: 90, baseType: !1047, size: 128)
!1047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1044, file: !570, line: 90, size: 128, elements: !1048)
!1048 = !{!1049, !1050, !1055, !1056}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1047, file: !570, line: 91, baseType: !214, size: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !570, line: 94, baseType: !1051, size: 128)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1047, file: !570, line: 94, size: 128, elements: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1051, file: !570, line: 96, baseType: !133, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1051, file: !570, line: 98, baseType: !7, size: 32, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1047, file: !570, line: 102, baseType: !214, size: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1047, file: !570, line: 103, baseType: !214, size: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1044, file: !570, line: 106, baseType: !1009, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1044, file: !570, line: 107, baseType: !1059, size: 64, offset: 192)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1044, file: !570, line: 107, size: 64, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1059, file: !570, line: 108, baseType: !136, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1059, file: !570, line: 109, baseType: !136, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1044, file: !570, line: 117, baseType: !136, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !570, line: 119, baseType: !1065, size: 320)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !570, line: 119, size: 320, elements: !1066)
!1066 = !{!1067, !1068, !1071, !1072, !1073}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1065, file: !570, line: 124, baseType: !136, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1065, file: !570, line: 125, baseType: !1069, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !570, line: 125, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1065, file: !570, line: 126, baseType: !136, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1065, file: !570, line: 127, baseType: !136, size: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !570, line: 128, baseType: !1074, size: 64, offset: 256)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !570, line: 128, size: 64, elements: !1075)
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1074, file: !570, line: 133, baseType: !136, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1074, file: !570, line: 138, baseType: !164, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !570, line: 141, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !570, line: 141, size: 64, elements: !1080)
!1080 = !{!1081}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1079, file: !570, line: 142, baseType: !136, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !570, line: 144, baseType: !1083, size: 128)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !570, line: 144, size: 128, elements: !1084)
!1084 = !{!1085, !1088}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1083, file: !570, line: 146, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !570, line: 146, flags: DIFlagFwdDecl)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1083, file: !570, line: 147, baseType: !133, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1041, file: !570, line: 161, baseType: !257, size: 128, align: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !570, line: 164, baseType: !1091, size: 32, offset: 384)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !570, line: 164, size: 32, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1091, file: !570, line: 169, baseType: !188, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1091, file: !570, line: 177, baseType: !7, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1037, file: !570, line: 181, baseType: !188, size: 32, offset: 416)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1030, file: !14, line: 406, baseType: !1099, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!85, !766, !1102}
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !570, line: 293, size: 1536, elements: !1104)
!1104 = !{!1105, !1135, !1149}
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !570, line: 295, baseType: !1106, size: 512)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1103, file: !570, line: 295, size: 512, elements: !1107)
!1107 = !{!1108, !1134}
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !570, line: 296, baseType: !1109, size: 448)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1106, file: !570, line: 296, size: 448, elements: !1110)
!1110 = !{!1111, !1112, !1121, !1122, !1123, !1132, !1133}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1109, file: !570, line: 298, baseType: !136, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !570, line: 299, baseType: !1113, size: 128, offset: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1109, file: !570, line: 299, size: 128, elements: !1114)
!1114 = !{!1115, !1116}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1113, file: !570, line: 300, baseType: !214, size: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !570, line: 302, baseType: !1117, size: 128)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1113, file: !570, line: 302, size: 128, elements: !1118)
!1118 = !{!1119, !1120}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1117, file: !570, line: 303, baseType: !133, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1117, file: !570, line: 305, baseType: !7, size: 32, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1109, file: !570, line: 310, baseType: !1009, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1109, file: !570, line: 311, baseType: !136, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !570, line: 312, baseType: !1124, size: 64, offset: 320)
!1124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1109, file: !570, line: 312, size: 64, elements: !1125)
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1124, file: !570, line: 313, baseType: !133, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1124, file: !570, line: 314, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !570, line: 257, baseType: !1129)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !570, line: 255, size: 64, elements: !1130)
!1130 = !{!1131}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1129, file: !570, line: 256, baseType: !136, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1109, file: !570, line: 316, baseType: !188, size: 32, offset: 384)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1109, file: !570, line: 317, baseType: !188, size: 32, offset: 416)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1106, file: !570, line: 323, baseType: !1037, size: 512, align: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !570, line: 325, baseType: !1136, size: 512, offset: 512)
!1136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1103, file: !570, line: 325, size: 512, elements: !1137)
!1137 = !{!1138, !1148}
!1138 = !DIDerivedType(tag: DW_TAG_member, scope: !1136, file: !570, line: 326, baseType: !1139, size: 320)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1136, file: !570, line: 326, size: 320, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144, !1145, !1146, !1147}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1139, file: !570, line: 327, baseType: !136, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1139, file: !570, line: 328, baseType: !136, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1139, file: !570, line: 329, baseType: !136, size: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1139, file: !570, line: 331, baseType: !188, size: 32, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1139, file: !570, line: 332, baseType: !188, size: 32, offset: 224)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1139, file: !570, line: 333, baseType: !188, size: 32, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1139, file: !570, line: 335, baseType: !7, size: 32, offset: 288)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1136, file: !570, line: 339, baseType: !1037, size: 512, align: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !570, line: 341, baseType: !1150, size: 512, offset: 1024)
!1150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1103, file: !570, line: 341, size: 512, elements: !1151)
!1151 = !{!1152, !1161, !1167}
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !570, line: 342, baseType: !1153, size: 384)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1150, file: !570, line: 342, size: 384, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1153, file: !570, line: 343, baseType: !136, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1153, file: !570, line: 344, baseType: !136, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1153, file: !570, line: 346, baseType: !133, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1153, file: !570, line: 347, baseType: !133, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1153, file: !570, line: 348, baseType: !133, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1153, file: !570, line: 349, baseType: !133, size: 64, offset: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !570, line: 352, baseType: !1162, size: 256)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1150, file: !570, line: 352, size: 256, elements: !1163)
!1163 = !{!1164, !1165, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1162, file: !570, line: 353, baseType: !136, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1162, file: !570, line: 354, baseType: !136, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1162, file: !570, line: 356, baseType: !214, size: 128, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1150, file: !570, line: 359, baseType: !1037, size: 512, align: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1030, file: !14, line: 409, baseType: !1169, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!85, !1009, !1096}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1030, file: !14, line: 412, baseType: !1173, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!483, !1009, !1102}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1030, file: !14, line: 414, baseType: !1177, size: 64, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{null, !1180}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1030, file: !14, line: 416, baseType: !1183, size: 64, offset: 320)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!85, !766, !1009, !155, !7, !1186, !1187}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1030, file: !14, line: 419, baseType: !1189, size: 64, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!85, !766, !1009, !155, !7, !7, !1036, !133}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1030, file: !14, line: 424, baseType: !1193, size: 64, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!1196, !1009, !1196}
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !135, line: 131, baseType: !390)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1030, file: !14, line: 425, baseType: !1198, size: 64, offset: 512)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !1102, !147, !147}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1030, file: !14, line: 426, baseType: !1202, size: 64, offset: 576)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!483, !1102, !854}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1030, file: !14, line: 427, baseType: !1206, size: 64, offset: 640)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !1102}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1030, file: !14, line: 428, baseType: !1210, size: 64, offset: 704)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!802, !1213, !1235}
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1215)
!1215 = !{!1216, !1217, !1218, !1222, !1223, !1224, !1225}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1214, file: !14, line: 374, baseType: !766, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1214, file: !14, line: 375, baseType: !155, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1214, file: !14, line: 376, baseType: !1219, size: 64, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null, !1213, !762}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1214, file: !14, line: 377, baseType: !133, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1214, file: !14, line: 378, baseType: !85, size: 32, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1214, file: !14, line: 379, baseType: !204, size: 16, offset: 288)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !14, line: 380, baseType: !1226, size: 64, offset: 320)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !14, line: 380, size: 64, elements: !1227)
!1227 = !{!1228, !1231}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1226, file: !14, line: 386, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1226, file: !14, line: 395, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!802, !133}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1030, file: !14, line: 433, baseType: !1238, size: 64, offset: 768)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!85, !1009, !1102, !1102, !50}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1030, file: !14, line: 435, baseType: !1242, size: 64, offset: 832)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!85, !1102}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1030, file: !14, line: 436, baseType: !1246, size: 64, offset: 896)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!483, !1102, !147, !147}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1030, file: !14, line: 438, baseType: !1250, size: 64, offset: 960)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !1102, !1253, !1253}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1030, file: !14, line: 439, baseType: !1255, size: 64, offset: 1024)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!85, !1009, !1036}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1030, file: !14, line: 442, baseType: !1259, size: 64, offset: 1088)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!85, !1262, !766, !1264}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1030, file: !14, line: 444, baseType: !1266, size: 64, offset: 1152)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !766}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1030, file: !14, line: 445, baseType: !1270, size: 64, offset: 1216)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!85, !1213, !1235}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1010, file: !14, line: 486, baseType: !136, size: 64, offset: 896)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1010, file: !14, line: 487, baseType: !422, size: 320, offset: 960)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1010, file: !14, line: 488, baseType: !1276, size: 32, offset: 1280)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1277, line: 8, baseType: !447)
!1277 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1010, file: !14, line: 489, baseType: !267, size: 32, offset: 1312)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1010, file: !14, line: 490, baseType: !214, size: 128, offset: 1344)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1010, file: !14, line: 491, baseType: !133, size: 64, offset: 1472)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1000, file: !969, line: 180, baseType: !1282, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!802, !766, !911, !999, !144, !155, !147}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1000, file: !969, line: 182, baseType: !1282, size: 64, offset: 384)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1000, file: !969, line: 184, baseType: !1287, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!85, !766, !911, !999, !1290}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !570, line: 625, size: 1344, elements: !1292)
!1292 = !{!1293, !1302, !1471, !1477, !1484, !1485, !1490, !1491, !1496, !1497, !1500, !1504, !1505, !1506, !1507, !1508, !1511}
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !570, line: 628, baseType: !1294, size: 128)
!1294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1291, file: !570, line: 628, size: 128, elements: !1295)
!1295 = !{!1296, !1301}
!1296 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !570, line: 629, baseType: !1297, size: 128)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !570, line: 629, size: 128, elements: !1298)
!1298 = !{!1299, !1300}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1297, file: !570, line: 631, baseType: !136, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1297, file: !570, line: 632, baseType: !136, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1294, file: !570, line: 635, baseType: !257, size: 128, align: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1291, file: !570, line: 639, baseType: !1303, size: 64, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !570, line: 733, size: 10240, elements: !1305)
!1305 = !{!1306, !1469}
!1306 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !570, line: 734, baseType: !1307, size: 10240)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !570, line: 734, size: 10240, elements: !1308)
!1308 = !{!1309, !1313, !1327, !1331, !1332, !1333, !1334, !1335, !1336, !1345, !1346, !1347, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1386, !1388, !1391, !1438, !1439, !1440, !1443, !1444, !1445, !1448, !1449, !1450, !1456, !1457}
!1309 = !DIDerivedType(tag: DW_TAG_member, scope: !1307, file: !570, line: 739, baseType: !1310, size: 512, align: 512)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1307, file: !570, line: 739, size: 512, align: 512, elements: !1311)
!1311 = !{!1312}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1310, file: !570, line: 747, baseType: !188, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1307, file: !570, line: 750, baseType: !1314, size: 128, offset: 512)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1315, line: 218, size: 128, elements: !1316)
!1315 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1316 = !{!1317, !1325, !1326}
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1314, file: !1315, line: 219, baseType: !1318, size: 32)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1314, file: !1315, line: 219, size: 32, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1318, file: !1315, line: 220, baseType: !267, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1318, file: !1315, line: 221, baseType: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1315, line: 197, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1315, line: 197, elements: !1324)
!1324 = !{}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1314, file: !1315, line: 223, baseType: !7, size: 32, offset: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1314, file: !1315, line: 224, baseType: !133, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1307, file: !570, line: 752, baseType: !1328, size: 64, offset: 640)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!136, !766, !136, !136, !136, !136}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1307, file: !570, line: 756, baseType: !136, size: 64, offset: 704)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1307, file: !570, line: 757, baseType: !136, size: 64, offset: 768)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1307, file: !570, line: 760, baseType: !136, size: 64, offset: 832)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1307, file: !570, line: 761, baseType: !136, size: 64, offset: 896)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1307, file: !570, line: 763, baseType: !136, size: 64, offset: 960)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1307, file: !570, line: 764, baseType: !1337, size: 64, offset: 1024)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1339, line: 299, baseType: !1340)
!1339 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1339, line: 299, size: 64, elements: !1341)
!1341 = !{!1342}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1340, file: !1339, line: 299, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1344, line: 18, baseType: !136)
!1344 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1307, file: !570, line: 773, baseType: !188, size: 32, offset: 1088)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1307, file: !570, line: 785, baseType: !188, size: 32, offset: 1120)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1307, file: !570, line: 795, baseType: !1348, size: 64, offset: 1152)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !570, line: 726, size: 128, elements: !1350)
!1350 = !{!1351, !1352}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1349, file: !570, line: 727, baseType: !390, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1349, file: !570, line: 728, baseType: !85, size: 32, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1307, file: !570, line: 801, baseType: !136, size: 64, offset: 1216)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1307, file: !570, line: 804, baseType: !164, size: 64, offset: 1280)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1307, file: !570, line: 806, baseType: !85, size: 32, offset: 1344)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1307, file: !570, line: 808, baseType: !267, size: 32, offset: 1376)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1307, file: !570, line: 823, baseType: !422, size: 320, offset: 1408)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1307, file: !570, line: 825, baseType: !214, size: 128, offset: 1728)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1307, file: !570, line: 845, baseType: !85, size: 32, offset: 1856)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1307, file: !570, line: 849, baseType: !136, size: 64, offset: 1920)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1307, file: !570, line: 850, baseType: !136, size: 64, offset: 1984)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1307, file: !570, line: 852, baseType: !136, size: 64, offset: 2048)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1307, file: !570, line: 853, baseType: !136, size: 64, offset: 2112)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1307, file: !570, line: 854, baseType: !166, size: 64, offset: 2176)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1307, file: !570, line: 855, baseType: !136, size: 64, offset: 2240)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1307, file: !570, line: 856, baseType: !136, size: 64, offset: 2304)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1307, file: !570, line: 857, baseType: !136, size: 64, offset: 2368)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1307, file: !570, line: 858, baseType: !136, size: 64, offset: 2432)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1307, file: !570, line: 865, baseType: !618, size: 32, offset: 2496)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1307, file: !570, line: 867, baseType: !267, size: 32, offset: 2528)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1307, file: !570, line: 869, baseType: !136, size: 64, offset: 2560)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1307, file: !570, line: 869, baseType: !136, size: 64, offset: 2624)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1307, file: !570, line: 869, baseType: !136, size: 64, offset: 2688)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1307, file: !570, line: 869, baseType: !136, size: 64, offset: 2752)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1307, file: !570, line: 870, baseType: !136, size: 64, offset: 2816)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1307, file: !570, line: 870, baseType: !136, size: 64, offset: 2880)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1307, file: !570, line: 870, baseType: !136, size: 64, offset: 2944)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1307, file: !570, line: 871, baseType: !136, size: 64, offset: 3008)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1307, file: !570, line: 871, baseType: !136, size: 64, offset: 3072)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1307, file: !570, line: 871, baseType: !136, size: 64, offset: 3136)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1307, file: !570, line: 871, baseType: !136, size: 64, offset: 3200)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1307, file: !570, line: 873, baseType: !1383, size: 3328, offset: 3264)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 3328, elements: !1384)
!1384 = !{!1385}
!1385 = !DISubrange(count: 52)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1307, file: !570, line: 875, baseType: !1387, size: 1280, offset: 6592)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 1280, elements: !330)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1307, file: !570, line: 877, baseType: !1389, size: 64, offset: 7872)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !570, line: 877, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1307, file: !570, line: 880, baseType: !1392, size: 1088, offset: 7936)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1393, line: 72, baseType: !1394)
!1393 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1393, line: 23, size: 1088, elements: !1395)
!1395 = !{!1396, !1397, !1398, !1399, !1400, !1403, !1404, !1405, !1406, !1433, !1434, !1435}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1394, file: !1393, line: 28, baseType: !390, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1394, file: !1393, line: 38, baseType: !166, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1394, file: !1393, line: 40, baseType: !136, size: 64, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1394, file: !1393, line: 43, baseType: !422, size: 320, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1394, file: !1393, line: 44, baseType: !1401, size: 64, offset: 512)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1393, line: 44, flags: DIFlagFwdDecl)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1394, file: !1393, line: 48, baseType: !136, size: 64, offset: 576)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1394, file: !1393, line: 59, baseType: !160, size: 256, offset: 640)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1394, file: !1393, line: 60, baseType: !133, size: 64, offset: 896)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1394, file: !1393, line: 61, baseType: !1407, size: 64, offset: 960)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1409)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1410, line: 13, size: 1216, elements: !1411)
!1410 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1411 = !{!1412, !1413, !1414, !1415, !1416, !1417, !1418, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1409, file: !1410, line: 14, baseType: !133, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1409, file: !1410, line: 15, baseType: !136, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1409, file: !1410, line: 17, baseType: !136, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1409, file: !1410, line: 17, baseType: !136, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1409, file: !1410, line: 18, baseType: !136, size: 64, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1409, file: !1410, line: 18, baseType: !136, size: 64, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1409, file: !1410, line: 19, baseType: !1419, size: 64, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1409, file: !1410, line: 21, baseType: !762, size: 64, offset: 448)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1409, file: !1410, line: 23, baseType: !762, size: 64, offset: 512)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1409, file: !1410, line: 24, baseType: !762, size: 64, offset: 576)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1409, file: !1410, line: 25, baseType: !762, size: 64, offset: 640)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1409, file: !1410, line: 26, baseType: !762, size: 64, offset: 704)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1409, file: !1410, line: 27, baseType: !762, size: 64, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1409, file: !1410, line: 28, baseType: !762, size: 64, offset: 832)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1409, file: !1410, line: 29, baseType: !762, size: 64, offset: 896)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1409, file: !1410, line: 30, baseType: !762, size: 64, offset: 960)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1409, file: !1410, line: 31, baseType: !762, size: 64, offset: 1024)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1409, file: !1410, line: 32, baseType: !762, size: 64, offset: 1088)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1409, file: !1410, line: 33, baseType: !762, size: 64, offset: 1152)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1394, file: !1393, line: 63, baseType: !188, size: 32, offset: 1024)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1394, file: !1393, line: 69, baseType: !204, size: 16, offset: 1056)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1394, file: !1393, line: 70, baseType: !1436, size: 16, offset: 1072)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !171, line: 18, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !173, line: 23, baseType: !452)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1307, file: !570, line: 882, baseType: !136, size: 64, offset: 9024)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1307, file: !570, line: 885, baseType: !267, size: 32, offset: 9088)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1307, file: !570, line: 886, baseType: !1441, size: 64, offset: 9152)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !570, line: 732, flags: DIFlagFwdDecl)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1307, file: !570, line: 901, baseType: !568, size: 64, offset: 9216)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1307, file: !570, line: 904, baseType: !766, size: 64, offset: 9280)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1307, file: !570, line: 906, baseType: !1446, size: 64, offset: 9344)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !570, line: 906, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1307, file: !570, line: 930, baseType: !188, size: 32, offset: 9408)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1307, file: !570, line: 933, baseType: !188, size: 32, offset: 9440)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1307, file: !570, line: 935, baseType: !1451, size: 64, offset: 9472)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1452)
!1452 = !{!1453}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1451, file: !44, line: 104, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1307, file: !570, line: 940, baseType: !164, size: 64, offset: 9536)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1307, file: !570, line: 942, baseType: !1458, size: 256, offset: 9600)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1459, line: 98, size: 256, elements: !1460)
!1459 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1460 = !{!1461, !1462, !1463}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1458, file: !1459, line: 99, baseType: !164, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1458, file: !1459, line: 100, baseType: !214, size: 128, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1458, file: !1459, line: 101, baseType: !1464, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1459, line: 21, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{null, !1468}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1304, file: !570, line: 986, baseType: !1470, offset: 10240)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, elements: !349)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1291, file: !570, line: 640, baseType: !1472, size: 64, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1339, line: 297, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1339, line: 297, size: 64, elements: !1474)
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1473, file: !1339, line: 297, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1344, line: 19, baseType: !136)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !570, line: 646, baseType: !1478, size: 64, offset: 256)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1291, file: !570, line: 646, size: 64, elements: !1479)
!1479 = !{!1480, !1483}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1478, file: !570, line: 647, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !570, line: 542, baseType: !136)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1478, file: !570, line: 648, baseType: !1482, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1291, file: !570, line: 666, baseType: !85, size: 32, offset: 320)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1291, file: !570, line: 667, baseType: !1486, size: 64, offset: 384)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !570, line: 579, size: 320, elements: !1488)
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1487, file: !570, line: 580, baseType: !422, size: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1291, file: !570, line: 670, baseType: !483, size: 8, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1291, file: !570, line: 681, baseType: !1492, size: 256, offset: 512)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1291, file: !570, line: 678, size: 256, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1492, file: !570, line: 679, baseType: !414, size: 192, align: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1492, file: !570, line: 680, baseType: !136, size: 64, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1291, file: !570, line: 689, baseType: !214, size: 128, offset: 768)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1291, file: !570, line: 691, baseType: !1498, size: 64, offset: 896)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !570, line: 691, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1291, file: !570, line: 694, baseType: !1501, size: 64, offset: 960)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1503)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !570, line: 694, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1291, file: !570, line: 697, baseType: !136, size: 64, offset: 1024)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1291, file: !570, line: 699, baseType: !766, size: 64, offset: 1088)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1291, file: !570, line: 700, baseType: !133, size: 64, offset: 1152)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1291, file: !570, line: 711, baseType: !164, size: 64, offset: 1216)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1291, file: !570, line: 717, baseType: !1509, size: 64, offset: 1280)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !570, line: 717, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1291, file: !570, line: 722, baseType: !1512, offset: 1344)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !570, line: 570, elements: !1324)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !988, file: !969, line: 90, baseType: !1514, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !988, file: !969, line: 91, baseType: !1516, size: 64, offset: 256)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !959, file: !906, line: 120, baseType: !1518, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!1521, !929}
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !1524)
!1524 = !{!1525, !1526, !1530, !1534, !1540, !1544}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1523, file: !58, line: 40, baseType: !57, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1523, file: !58, line: 41, baseType: !1527, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!483}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1523, file: !58, line: 42, baseType: !1531, size: 64, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!133}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1523, file: !58, line: 43, baseType: !1535, size: 64, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1419, !1538}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1523, file: !58, line: 44, baseType: !1541, size: 64, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!1419}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1523, file: !58, line: 45, baseType: !679, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !959, file: !906, line: 121, baseType: !1546, size: 64, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!1419, !929}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !959, file: !906, line: 122, baseType: !1550, size: 64, offset: 320)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !929, !1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !905, file: !906, line: 70, baseType: !1556, size: 64, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !878, line: 190, size: 1152, elements: !1558)
!1558 = !{!1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1651, !1652, !1653, !1654, !1655, !1658}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1557, file: !878, line: 191, baseType: !188, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1557, file: !878, line: 192, baseType: !188, size: 32, offset: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1557, file: !878, line: 202, baseType: !1556, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1557, file: !878, line: 203, baseType: !486, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1557, file: !878, line: 205, baseType: !414, size: 192, align: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1557, file: !878, line: 207, baseType: !1419, size: 64, offset: 384)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1557, file: !878, line: 208, baseType: !7, size: 32, offset: 448)
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1557, file: !878, line: 209, baseType: !1567, size: 256, offset: 512)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1557, file: !878, line: 209, size: 256, elements: !1568)
!1568 = !{!1569, !1578, !1582}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1567, file: !878, line: 210, baseType: !1570, size: 256)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !878, line: 153, size: 256, elements: !1571)
!1571 = !{!1572, !1573, !1574, !1577}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1570, file: !878, line: 154, baseType: !136, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1570, file: !878, line: 156, baseType: !1021, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1570, file: !878, line: 162, baseType: !1575, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !878, line: 162, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1570, file: !878, line: 167, baseType: !136, size: 64, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1567, file: !878, line: 211, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !878, line: 170, size: 64, elements: !1580)
!1580 = !{!1581}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1579, file: !878, line: 171, baseType: !1556, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1567, file: !878, line: 212, baseType: !1583, size: 256)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !878, line: 174, size: 256, elements: !1584)
!1584 = !{!1585, !1646, !1649, !1650}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1583, file: !878, line: 175, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !878, line: 271, size: 768, elements: !1589)
!1589 = !{!1590, !1610, !1614, !1615, !1616, !1617, !1618, !1622, !1623, !1624, !1625, !1642}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1588, file: !878, line: 276, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!85, !1594}
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !878, line: 251, size: 1216, elements: !1596)
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1595, file: !878, line: 253, baseType: !1556, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1595, file: !878, line: 254, baseType: !766, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1595, file: !878, line: 255, baseType: !139, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1595, file: !878, line: 256, baseType: !133, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1595, file: !878, line: 259, baseType: !160, size: 256, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1595, file: !878, line: 260, baseType: !160, size: 256, offset: 512)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1595, file: !878, line: 261, baseType: !85, size: 32, offset: 768)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1595, file: !878, line: 262, baseType: !214, size: 128, offset: 832)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1595, file: !878, line: 263, baseType: !144, size: 64, offset: 960)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1595, file: !878, line: 265, baseType: !147, size: 64, offset: 1024)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1595, file: !878, line: 266, baseType: !483, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1595, file: !878, line: 267, baseType: !483, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1595, file: !878, line: 268, baseType: !1501, size: 64, offset: 1152)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1588, file: !878, line: 277, baseType: !1611, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !1594}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1588, file: !878, line: 290, baseType: !238, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1588, file: !878, line: 292, baseType: !225, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1588, file: !878, line: 293, baseType: !234, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1588, file: !878, line: 294, baseType: !230, size: 64, offset: 320)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1588, file: !878, line: 296, baseType: !1619, size: 64, offset: 384)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!802, !1594, !144, !147, !155}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1588, file: !878, line: 306, baseType: !147, size: 64, offset: 448)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1588, file: !878, line: 313, baseType: !483, size: 8, offset: 512)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1588, file: !878, line: 314, baseType: !1619, size: 64, offset: 576)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1588, file: !878, line: 317, baseType: !1626, size: 64, offset: 640)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!1629, !1594, !1631}
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1630, line: 59, baseType: !7)
!1630 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1633, line: 37, size: 128, elements: !1634)
!1633 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1634 = !{!1635, !1641}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1632, file: !1633, line: 38, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1633, line: 31, baseType: !1637)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !766, !1640, !1631}
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1632, file: !1633, line: 39, baseType: !1629, size: 32, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1588, file: !878, line: 320, baseType: !1643, size: 64, offset: 704)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!85, !1594, !1290}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1583, file: !878, line: 176, baseType: !1647, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !878, line: 35, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1583, file: !878, line: 177, baseType: !155, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1583, file: !878, line: 178, baseType: !1556, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1557, file: !878, line: 215, baseType: !133, size: 64, offset: 768)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1557, file: !878, line: 221, baseType: !390, size: 64, offset: 832)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1557, file: !878, line: 223, baseType: !206, size: 16, offset: 896)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1557, file: !878, line: 224, baseType: !651, size: 16, offset: 912)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1557, file: !878, line: 225, baseType: !1656, size: 64, offset: 960)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !878, line: 36, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1557, file: !878, line: 227, baseType: !257, size: 128, align: 64, offset: 1024)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !905, file: !906, line: 71, baseType: !1660, size: 32, offset: 448)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1661, line: 19, size: 32, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1662 = !{!1663}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1660, file: !1661, line: 20, baseType: !312, size: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !905, file: !906, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !905, file: !906, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !905, file: !906, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !905, file: !906, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !905, file: !906, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !902, file: !6, line: 47, baseType: !892, size: 64, offset: 512)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !902, file: !6, line: 48, baseType: !911, size: 64, offset: 576)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !902, file: !6, line: 49, baseType: !1672, size: 64, offset: 640)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !902, file: !6, line: 50, baseType: !1675, size: 64, offset: 704)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1677, line: 26, size: 256, elements: !1678)
!1677 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1676, file: !1677, line: 27, baseType: !7, size: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1676, file: !1677, line: 28, baseType: !1681, size: 192, offset: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1682, line: 43, size: 192, elements: !1683)
!1682 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1681, file: !1682, line: 44, baseType: !175, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1681, file: !1682, line: 45, baseType: !214, size: 128, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !893, file: !6, line: 418, baseType: !1687, size: 64, offset: 1408)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1689)
!1689 = !{!1690, !1691, !1696, !1700, !1704, !1708}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1688, file: !6, line: 54, baseType: !976, size: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1688, file: !6, line: 55, baseType: !1692, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!802, !1687, !1695, !144}
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1688, file: !6, line: 57, baseType: !1697, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!802, !1687, !1695, !486, !147}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1688, file: !6, line: 59, baseType: !1701, size: 64, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{null, !892, !486}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1688, file: !6, line: 60, baseType: !1705, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!85, !892}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1688, file: !6, line: 61, baseType: !1709, size: 64, offset: 384)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{null, !892}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !893, file: !6, line: 419, baseType: !486, size: 64, offset: 1472)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !893, file: !6, line: 420, baseType: !486, size: 64, offset: 1536)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !893, file: !6, line: 421, baseType: !911, size: 64, offset: 1600)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !893, file: !6, line: 424, baseType: !1716, size: 64, offset: 1664)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1718)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !893, file: !6, line: 425, baseType: !1720, size: 64, offset: 1728)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !893, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !893, file: !6, line: 435, baseType: !160, size: 256, offset: 1856)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !893, file: !6, line: 437, baseType: !1725, size: 64, offset: 2112)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1727, line: 69, size: 320, elements: !1728)
!1727 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1728 = !{!1729, !1730, !1731, !1748, !1750, !1754, !1755}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1726, file: !1727, line: 70, baseType: !486, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1726, file: !1727, line: 71, baseType: !892, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1726, file: !1727, line: 72, baseType: !1732, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1734)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1727, line: 47, size: 256, elements: !1735)
!1735 = !{!1736, !1737, !1743, !1747}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1734, file: !1727, line: 49, baseType: !7, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1734, file: !1727, line: 51, baseType: !1738, size: 64, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!85, !486, !1741}
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1726)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1734, file: !1727, line: 53, baseType: !1744, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!85, !144, !1741}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1734, file: !1727, line: 55, baseType: !679, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1726, file: !1727, line: 73, baseType: !1749, size: 16, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1726, file: !1727, line: 74, baseType: !1751, size: 8, offset: 208)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !171, line: 16, baseType: !1752)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !173, line: 20, baseType: !1753)
!1753 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1726, file: !1727, line: 75, baseType: !196, size: 8, offset: 216)
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1726, file: !1727, line: 76, baseType: !1756, size: 64, offset: 256)
!1756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1726, file: !1727, line: 76, size: 64, elements: !1757)
!1757 = !{!1758, !1759, !1766}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1756, file: !1727, line: 77, baseType: !133, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1756, file: !1727, line: 78, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1762)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1727, line: 86, size: 128, elements: !1763)
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1762, file: !1727, line: 87, baseType: !7, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1762, file: !1727, line: 88, baseType: !144, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1756, file: !1727, line: 79, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1769)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1727, line: 92, size: 256, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1775, !1776}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1769, file: !1727, line: 94, baseType: !7, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1769, file: !1727, line: 95, baseType: !7, size: 32, offset: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1769, file: !1727, line: 96, baseType: !1774, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1769, file: !1727, line: 97, baseType: !1732, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1769, file: !1727, line: 98, baseType: !133, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !893, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !893, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !893, file: !6, line: 442, baseType: !1716, size: 64, offset: 2240)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !893, file: !6, line: 443, baseType: !1720, size: 64, offset: 2304)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !893, file: !6, line: 444, baseType: !483, size: 8, offset: 2368)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !893, file: !6, line: 451, baseType: !483, size: 8, offset: 2376)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !893, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !893, file: !6, line: 455, baseType: !1785, size: 64, offset: 2432)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1787, line: 23, size: 96, elements: !1788)
!1787 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1788 = !{!1789, !1790, !1791}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1786, file: !1787, line: 24, baseType: !85, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1786, file: !1787, line: 24, baseType: !85, size: 32, offset: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1786, file: !1787, line: 24, baseType: !85, size: 32, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !893, file: !6, line: 458, baseType: !1793, size: 64, offset: 2496)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!85}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !893, file: !6, line: 460, baseType: !1797, size: 4032, align: 512, offset: 2560)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1798, size: 4032, elements: !1814)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1799)
!1799 = !{!1800, !1801, !1802}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1798, file: !6, line: 363, baseType: !133, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1798, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1798, file: !6, line: 367, baseType: !1803, size: 448, offset: 128)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1804)
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1803, file: !6, line: 320, baseType: !892, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1803, file: !6, line: 321, baseType: !1807, size: 384, offset: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1808, line: 40, size: 384, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1809 = !{!1810}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1807, file: !1808, line: 41, baseType: !1811, size: 384, align: 64)
!1811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 384, align: 64, elements: !1812)
!1812 = !{!1813}
!1813 = !DISubrange(count: 2)
!1814 = !{!1815}
!1815 = !DISubrange(count: 7)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !893, file: !6, line: 463, baseType: !1817, size: 192, offset: 6592)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1818, line: 8, size: 192, elements: !1819)
!1818 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1819 = !{!1820, !1821, !1823}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1817, file: !1818, line: 10, baseType: !7, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1817, file: !1818, line: 11, baseType: !1822, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1817, file: !1818, line: 12, baseType: !1824, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1826, line: 59, size: 48, elements: !1827)
!1826 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1827 = !{!1828, !1829, !1830, !1831, !1832, !1833}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1825, file: !1826, line: 60, baseType: !1436, size: 16)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1825, file: !1826, line: 61, baseType: !1436, size: 16, offset: 16)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1825, file: !1826, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1825, file: !1826, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1825, file: !1826, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1825, file: !1826, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !893, file: !6, line: 465, baseType: !136, size: 64, offset: 6784)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !893, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !893, file: !6, line: 470, baseType: !214, size: 128, offset: 6912)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !893, file: !6, line: 471, baseType: !1838, size: 64, offset: 7040)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1840, line: 33, size: 96, elements: !1841)
!1840 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1841 = !{!1842, !1843, !1844, !1845}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1839, file: !1840, line: 37, baseType: !85, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1839, file: !1840, line: 43, baseType: !85, size: 32, offset: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1839, file: !1840, line: 45, baseType: !206, size: 16, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1839, file: !1840, line: 47, baseType: !206, size: 16, offset: 80)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !893, file: !6, line: 476, baseType: !1847, size: 64, offset: 7104)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1849)
!1849 = !{!1850, !1866, !1867, !1868}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1848, file: !6, line: 379, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1853, line: 204, baseType: !1854)
!1853 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1853, line: 197, size: 192, elements: !1855)
!1855 = !{!1856, !1858, !1859, !1860, !1862, !1864}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1854, file: !1853, line: 198, baseType: !1857, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1853, line: 21, baseType: !448)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1854, file: !1853, line: 199, baseType: !198, size: 8, offset: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1854, file: !1853, line: 200, baseType: !198, size: 8, offset: 40)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1854, file: !1853, line: 201, baseType: !1861, size: 16, offset: 48)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1853, line: 17, baseType: !205)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1854, file: !1853, line: 202, baseType: !1863, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1853, line: 16, baseType: !391)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1854, file: !1853, line: 203, baseType: !1865, size: 64, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1853, line: 22, baseType: !391)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1848, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1848, file: !6, line: 381, baseType: !144, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1848, file: !6, line: 382, baseType: !144, size: 64, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !893, file: !6, line: 477, baseType: !1848, size: 256, offset: 7168)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !893, file: !6, line: 480, baseType: !1871, size: 64, offset: 7424)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !893, file: !6, line: 483, baseType: !1874, size: 64, offset: 7488)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !893, file: !6, line: 488, baseType: !144, size: 64, offset: 7552)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !893, file: !6, line: 492, baseType: !133, size: 64, offset: 7616)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !893, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !893, file: !6, line: 495, baseType: !133, size: 64, offset: 7744)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !893, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !893, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !893, file: !6, line: 500, baseType: !1883, size: 64, offset: 7872)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1885, line: 45, baseType: !1886)
!1885 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !893, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !893, file: !6, line: 504, baseType: !1889, size: 64, offset: 8000)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1892, line: 96, size: 192, elements: !1893)
!1892 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1893 = !{!1894, !1895, !1949, !1952}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1891, file: !1892, line: 97, baseType: !7, size: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1891, file: !1892, line: 98, baseType: !1896, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1892, line: 24, size: 3072, elements: !1898)
!1898 = !{!1899, !1901, !1902, !1903, !1904, !1918, !1919, !1920, !1921, !1933, !1934, !1935, !1946, !1947, !1948}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1897, file: !1892, line: 26, baseType: !1900, size: 128)
!1900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, elements: !1812)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1897, file: !1892, line: 27, baseType: !1900, size: 128, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1897, file: !1892, line: 28, baseType: !85, size: 32, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1897, file: !1892, line: 31, baseType: !267, size: 32, align: 512, offset: 512)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1897, file: !1892, line: 32, baseType: !1905, size: 960, offset: 576)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1906, line: 206, size: 960, elements: !1907)
!1906 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1907 = !{!1908, !1909, !1912, !1914, !1915, !1917}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1905, file: !1906, line: 207, baseType: !260, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1905, file: !1906, line: 208, baseType: !1910, size: 256, offset: 64)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1911, size: 256, elements: !330)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1905, file: !1906, line: 209, baseType: !1913, size: 256, offset: 320)
!1913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 256, elements: !330)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1905, file: !1906, line: 213, baseType: !762, size: 64, offset: 576)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1905, file: !1906, line: 215, baseType: !1916, size: 256, offset: 640)
!1916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, size: 256, elements: !330)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1905, file: !1906, line: 216, baseType: !196, size: 8, offset: 896)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1897, file: !1892, line: 33, baseType: !136, size: 64, offset: 1536)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1897, file: !1892, line: 34, baseType: !136, size: 64, offset: 1600)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1897, file: !1892, line: 35, baseType: !483, size: 8, offset: 1664)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1897, file: !1892, line: 36, baseType: !1922, size: 320, offset: 1728)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1923, line: 11, size: 320, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1924 = !{!1925, !1926, !1927, !1932}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1922, file: !1923, line: 16, baseType: !325, size: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1922, file: !1923, line: 17, baseType: !136, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1922, file: !1923, line: 18, baseType: !1928, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !1931}
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1922, file: !1923, line: 19, baseType: !447, size: 32, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1897, file: !1892, line: 37, baseType: !1458, size: 256, offset: 2048)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1897, file: !1892, line: 38, baseType: !257, size: 128, align: 64, offset: 2304)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1897, file: !1892, line: 39, baseType: !1936, size: 64, offset: 2432)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1892, line: 49, size: 768, elements: !1938)
!1938 = !{!1939, !1940, !1941, !1942, !1943, !1944, !1945}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1937, file: !1892, line: 50, baseType: !267, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1937, file: !1892, line: 51, baseType: !1913, size: 256, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1937, file: !1892, line: 53, baseType: !1913, size: 256, offset: 320)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1937, file: !1892, line: 54, baseType: !136, size: 64, offset: 576)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1937, file: !1892, line: 55, baseType: !1936, size: 64, offset: 640)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1937, file: !1892, line: 56, baseType: !85, size: 32, offset: 704)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1937, file: !1892, line: 57, baseType: !85, size: 32, offset: 736)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1897, file: !1892, line: 40, baseType: !136, size: 64, offset: 2496)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1897, file: !1892, line: 42, baseType: !85, size: 32, offset: 2560)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1897, file: !1892, line: 43, baseType: !1890, size: 64, offset: 2624)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1891, file: !1892, line: 99, baseType: !1950, offset: 128)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1951, line: 211, elements: !1324)
!1951 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1891, file: !1892, line: 100, baseType: !1953, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1892, line: 63, size: 3008, elements: !1955)
!1955 = !{!1956, !1957, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1987}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1954, file: !1892, line: 64, baseType: !1936, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1954, file: !1892, line: 65, baseType: !1958, size: 192, offset: 64)
!1958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1936, size: 192, elements: !304)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1954, file: !1892, line: 67, baseType: !85, size: 32, offset: 256)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1954, file: !1892, line: 68, baseType: !160, size: 256, offset: 320)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1954, file: !1892, line: 69, baseType: !267, size: 32, offset: 576)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1954, file: !1892, line: 70, baseType: !160, size: 256, offset: 640)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1954, file: !1892, line: 71, baseType: !136, size: 64, offset: 896)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1954, file: !1892, line: 72, baseType: !136, size: 64, offset: 960)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1954, file: !1892, line: 73, baseType: !136, size: 64, offset: 1024)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1954, file: !1892, line: 74, baseType: !136, size: 64, offset: 1088)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1954, file: !1892, line: 75, baseType: !136, size: 64, offset: 1152)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1954, file: !1892, line: 76, baseType: !136, size: 64, offset: 1216)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1954, file: !1892, line: 77, baseType: !136, size: 64, offset: 1280)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1954, file: !1892, line: 78, baseType: !136, size: 64, offset: 1344)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1954, file: !1892, line: 79, baseType: !483, size: 8, offset: 1408)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1954, file: !1892, line: 80, baseType: !136, size: 64, offset: 1472)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1954, file: !1892, line: 81, baseType: !160, size: 256, offset: 1536)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1954, file: !1892, line: 82, baseType: !1676, size: 256, offset: 1792)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1954, file: !1892, line: 84, baseType: !188, size: 32, offset: 2048)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1954, file: !1892, line: 87, baseType: !136, size: 64, offset: 2112)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1954, file: !1892, line: 88, baseType: !136, size: 64, offset: 2176)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1954, file: !1892, line: 89, baseType: !1979, size: 704, offset: 2240)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1459, line: 111, size: 704, elements: !1980)
!1980 = !{!1981, !1982, !1983, !1986}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1979, file: !1459, line: 112, baseType: !1458, size: 256)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1979, file: !1459, line: 113, baseType: !1922, size: 320, offset: 256)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1979, file: !1459, line: 116, baseType: !1984, size: 64, offset: 576)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1459, line: 18, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1979, file: !1459, line: 117, baseType: !85, size: 32, offset: 640)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1954, file: !1892, line: 90, baseType: !1890, size: 64, offset: 2944)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !893, file: !6, line: 515, baseType: !1989, size: 64, offset: 8064)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1991, line: 117, size: 128, elements: !1992)
!1991 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1992 = !{!1993, !1994, !1995}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1990, file: !1991, line: 118, baseType: !407, size: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1990, file: !1991, line: 119, baseType: !407, size: 32, offset: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1990, file: !1991, line: 120, baseType: !762, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !893, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !893, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !893, file: !6, line: 520, baseType: !1999, size: 64, offset: 8192)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !893, file: !6, line: 523, baseType: !2001, size: 64, offset: 8256)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !893, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !893, file: !6, line: 525, baseType: !2006, size: 64, offset: 8384)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !893, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !893, file: !6, line: 533, baseType: !133, size: 64, offset: 8512)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !893, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !893, file: !6, line: 535, baseType: !2013, size: 64, offset: 8640)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !893, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !893, file: !6, line: 539, baseType: !85, size: 32, offset: 8736)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !893, file: !6, line: 540, baseType: !2017, size: 64, offset: 8768)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2019, line: 32, size: 64, elements: !2020)
!2019 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2020 = !{!2021, !2022}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2018, file: !2019, line: 33, baseType: !407, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2018, file: !2019, line: 34, baseType: !407, size: 32, offset: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !893, file: !6, line: 563, baseType: !214, size: 128, offset: 8832)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !893, file: !6, line: 565, baseType: !214, size: 128, offset: 8960)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !893, file: !6, line: 568, baseType: !2026, size: 64, offset: 9088)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !893, file: !6, line: 570, baseType: !188, size: 32, offset: 9152)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !868, file: !14, line: 2382, baseType: !867, size: 64, offset: 448)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !868, file: !14, line: 2383, baseType: !321, size: 64, offset: 512)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !868, file: !14, line: 2385, baseType: !2033, offset: 576)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1951, line: 206, elements: !1324)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !868, file: !14, line: 2386, baseType: !2033, offset: 576)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !868, file: !14, line: 2387, baseType: !2033, offset: 576)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !868, file: !14, line: 2388, baseType: !2037, offset: 576)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2033, elements: !304)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !868, file: !14, line: 2390, baseType: !2033, offset: 576)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !868, file: !14, line: 2391, baseType: !2033, offset: 576)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !868, file: !14, line: 2392, baseType: !2033, offset: 576)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !868, file: !14, line: 2393, baseType: !2033, offset: 576)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !859, file: !14, line: 1197, baseType: !2043, size: 64, offset: 384)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2045)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !2046)
!2046 = !{!2047, !2051, !2055, !2056, !2060, !2064, !2068, !2069, !2070, !2074, !2078, !2082, !2083, !2084, !2090, !2094, !2095, !2099, !2100, !2101, !2102, !2106, !2110, !2157, !2172, !2173}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2045, file: !14, line: 2058, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!647, !858}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2045, file: !14, line: 2059, baseType: !2052, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null, !647}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2045, file: !14, line: 2060, baseType: !2052, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2045, file: !14, line: 2062, baseType: !2057, size: 64, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !647, !85}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2045, file: !14, line: 2063, baseType: !2061, size: 64, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!85, !647, !1096}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2045, file: !14, line: 2064, baseType: !2065, size: 64, offset: 320)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!85, !647}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2045, file: !14, line: 2065, baseType: !2052, size: 64, offset: 384)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2045, file: !14, line: 2066, baseType: !888, size: 64, offset: 448)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2045, file: !14, line: 2067, baseType: !2071, size: 64, offset: 512)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!85, !858, !85}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2045, file: !14, line: 2068, baseType: !2075, size: 64, offset: 576)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!85, !858, !13}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2045, file: !14, line: 2069, baseType: !2079, size: 64, offset: 640)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!85, !858}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2045, file: !14, line: 2070, baseType: !2075, size: 64, offset: 704)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2045, file: !14, line: 2071, baseType: !2079, size: 64, offset: 768)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2045, file: !14, line: 2072, baseType: !2085, size: 64, offset: 832)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!85, !607, !2088}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2045, file: !14, line: 2073, baseType: !2091, size: 64, offset: 896)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!85, !858, !1822, !144}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2045, file: !14, line: 2074, baseType: !888, size: 64, offset: 960)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2045, file: !14, line: 2076, baseType: !2096, size: 64, offset: 1024)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!85, !139, !607}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2045, file: !14, line: 2077, baseType: !2096, size: 64, offset: 1088)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2045, file: !14, line: 2078, baseType: !2096, size: 64, offset: 1152)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2045, file: !14, line: 2079, baseType: !2096, size: 64, offset: 1216)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2045, file: !14, line: 2081, baseType: !2103, size: 64, offset: 1280)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!802, !858, !85, !144, !147, !155}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2045, file: !14, line: 2082, baseType: !2107, size: 64, offset: 1344)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!802, !858, !85, !486, !147, !155}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2045, file: !14, line: 2083, baseType: !2111, size: 64, offset: 1408)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!2114, !647}
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !27, line: 296, size: 1664, elements: !2117)
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2142, !2143, !2144}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2116, file: !27, line: 297, baseType: !325, size: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2116, file: !27, line: 298, baseType: !214, size: 128, offset: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2116, file: !27, line: 299, baseType: !214, size: 128, offset: 256)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2116, file: !27, line: 300, baseType: !214, size: 128, offset: 384)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2116, file: !27, line: 301, baseType: !160, size: 256, offset: 512)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2116, file: !27, line: 302, baseType: !267, size: 32, offset: 768)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2116, file: !27, line: 303, baseType: !188, size: 32, offset: 800)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2116, file: !27, line: 304, baseType: !858, size: 64, offset: 832)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2116, file: !27, line: 305, baseType: !2127, size: 64, offset: 896)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !27, line: 68, size: 64, elements: !2128)
!2128 = !{!2129, !2141}
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !2127, file: !27, line: 69, baseType: !2130, size: 32)
!2130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2127, file: !27, line: 69, size: 32, elements: !2131)
!2131 = !{!2132, !2133, !2134}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2130, file: !27, line: 70, baseType: !353, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2130, file: !27, line: 71, baseType: !371, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2130, file: !27, line: 72, baseType: !2135, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2136, line: 24, baseType: !2137)
!2136 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2136, line: 22, size: 32, elements: !2138)
!2138 = !{!2139}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2137, file: !2136, line: 23, baseType: !2140, size: 32)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2136, line: 20, baseType: !359)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2127, file: !27, line: 74, baseType: !26, size: 32, offset: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2116, file: !27, line: 306, baseType: !155, size: 64, offset: 960)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2116, file: !27, line: 307, baseType: !136, size: 64, offset: 1024)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2116, file: !27, line: 308, baseType: !2145, size: 576, offset: 1088)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !27, line: 205, size: 576, elements: !2146)
!2146 = !{!2147, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2145, file: !27, line: 206, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !27, line: 66, baseType: !157)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2145, file: !27, line: 207, baseType: !2148, size: 64, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2145, file: !27, line: 208, baseType: !2148, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2145, file: !27, line: 209, baseType: !2148, size: 64, offset: 192)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2145, file: !27, line: 210, baseType: !2148, size: 64, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2145, file: !27, line: 211, baseType: !2148, size: 64, offset: 320)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2145, file: !27, line: 212, baseType: !2148, size: 64, offset: 384)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2145, file: !27, line: 213, baseType: !438, size: 64, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2145, file: !27, line: 214, baseType: !438, size: 64, offset: 512)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2045, file: !14, line: 2085, baseType: !2158, size: 64, offset: 1472)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!762, !858, !2161}
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2163, line: 15, size: 256, elements: !2164)
!2163 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2164 = !{!2165, !2166, !2167, !2168, !2169}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2162, file: !2163, line: 16, baseType: !854, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2162, file: !2163, line: 19, baseType: !85, size: 32, offset: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2162, file: !2163, line: 26, baseType: !136, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2162, file: !2163, line: 33, baseType: !136, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2162, file: !2163, line: 36, baseType: !2170, size: 64, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !570, line: 33, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2045, file: !14, line: 2087, baseType: !2158, size: 64, offset: 1536)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2045, file: !14, line: 2089, baseType: !888, size: 64, offset: 1600)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !859, file: !14, line: 1198, baseType: !2175, size: 64, offset: 448)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2177)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !27, line: 324, size: 704, elements: !2178)
!2178 = !{!2179, !2183, !2187, !2191, !2192, !2193, !2194, !2195, !2200, !2205, !2209}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2177, file: !27, line: 325, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!85, !2115}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2177, file: !27, line: 326, baseType: !2184, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!2115, !858, !85}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2177, file: !27, line: 327, baseType: !2188, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{null, !2115}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2177, file: !27, line: 328, baseType: !2180, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2177, file: !27, line: 329, baseType: !2180, size: 64, offset: 256)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2177, file: !27, line: 330, baseType: !2180, size: 64, offset: 320)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2177, file: !27, line: 331, baseType: !2071, size: 64, offset: 384)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2177, file: !27, line: 334, baseType: !2196, size: 64, offset: 448)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!2199, !647}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2177, file: !27, line: 335, baseType: !2201, size: 64, offset: 512)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!85, !647, !2204}
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2177, file: !27, line: 337, baseType: !2206, size: 64, offset: 576)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!85, !647, !2199}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2177, file: !27, line: 339, baseType: !2210, size: 64, offset: 640)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!85, !858, !2213}
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !859, file: !14, line: 1199, baseType: !2215, size: 64, offset: 512)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2217)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !27, line: 430, size: 704, elements: !2218)
!2218 = !{!2219, !2223, !2224, !2228, !2229, !2230, !2245, !2268, !2272, !2273, !2296}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2217, file: !27, line: 431, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!85, !858, !85, !85, !771}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2217, file: !27, line: 432, baseType: !2071, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2217, file: !27, line: 433, baseType: !2225, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!85, !858, !7}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2217, file: !27, line: 434, baseType: !2225, size: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2217, file: !27, line: 435, baseType: !2071, size: 64, offset: 256)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2217, file: !27, line: 436, baseType: !2231, size: 64, offset: 320)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!85, !858, !85, !2234}
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !27, line: 417, size: 256, elements: !2236)
!2236 = !{!2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2235, file: !27, line: 418, baseType: !85, size: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2235, file: !27, line: 419, baseType: !7, size: 32, offset: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2235, file: !27, line: 420, baseType: !7, size: 32, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2235, file: !27, line: 422, baseType: !7, size: 32, offset: 96)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2235, file: !27, line: 423, baseType: !7, size: 32, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2235, file: !27, line: 424, baseType: !7, size: 32, offset: 160)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2235, file: !27, line: 425, baseType: !7, size: 32, offset: 192)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2235, file: !27, line: 426, baseType: !7, size: 32, offset: 224)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2217, file: !27, line: 437, baseType: !2246, size: 64, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!85, !858, !2127, !2249}
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !27, line: 345, size: 960, elements: !2251)
!2251 = !{!2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2250, file: !27, line: 346, baseType: !85, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2250, file: !27, line: 347, baseType: !390, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2250, file: !27, line: 348, baseType: !390, size: 64, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2250, file: !27, line: 349, baseType: !390, size: 64, offset: 192)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2250, file: !27, line: 350, baseType: !390, size: 64, offset: 256)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2250, file: !27, line: 351, baseType: !390, size: 64, offset: 320)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2250, file: !27, line: 352, baseType: !390, size: 64, offset: 384)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2250, file: !27, line: 353, baseType: !170, size: 64, offset: 448)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2250, file: !27, line: 355, baseType: !170, size: 64, offset: 512)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2250, file: !27, line: 356, baseType: !85, size: 32, offset: 576)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2250, file: !27, line: 357, baseType: !85, size: 32, offset: 608)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2250, file: !27, line: 358, baseType: !390, size: 64, offset: 640)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2250, file: !27, line: 359, baseType: !390, size: 64, offset: 704)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2250, file: !27, line: 360, baseType: !390, size: 64, offset: 768)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2250, file: !27, line: 361, baseType: !170, size: 64, offset: 832)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2250, file: !27, line: 362, baseType: !85, size: 32, offset: 896)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2217, file: !27, line: 438, baseType: !2269, size: 64, offset: 448)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!85, !858, !2213, !2249}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2217, file: !27, line: 440, baseType: !2246, size: 64, offset: 512)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2217, file: !27, line: 441, baseType: !2274, size: 64, offset: 576)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!85, !858, !2277}
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !27, line: 411, size: 1408, elements: !2279)
!2279 = !{!2280, !2281}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2278, file: !27, line: 412, baseType: !7, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2278, file: !27, line: 413, baseType: !2282, size: 1344, offset: 64)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2283, size: 1344, elements: !304)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !27, line: 397, size: 448, elements: !2284)
!2284 = !{!2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2295}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2283, file: !27, line: 398, baseType: !7, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2283, file: !27, line: 399, baseType: !7, size: 32, offset: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2283, file: !27, line: 401, baseType: !7, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2283, file: !27, line: 402, baseType: !7, size: 32, offset: 96)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2283, file: !27, line: 403, baseType: !7, size: 32, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2283, file: !27, line: 404, baseType: !7, size: 32, offset: 160)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2283, file: !27, line: 405, baseType: !7, size: 32, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2283, file: !27, line: 406, baseType: !392, size: 64, offset: 256)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2283, file: !27, line: 407, baseType: !2294, size: 64, offset: 320)
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !135, line: 132, baseType: !390)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2283, file: !27, line: 408, baseType: !2294, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2217, file: !27, line: 442, baseType: !2225, size: 64, offset: 640)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !859, file: !14, line: 1200, baseType: !2298, size: 64, offset: 576)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2300)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !859, file: !14, line: 1201, baseType: !136, size: 64, offset: 640)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !859, file: !14, line: 1202, baseType: !136, size: 64, offset: 704)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !859, file: !14, line: 1203, baseType: !136, size: 64, offset: 768)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !859, file: !14, line: 1204, baseType: !607, size: 64, offset: 832)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !859, file: !14, line: 1205, baseType: !422, size: 320, offset: 896)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !859, file: !14, line: 1206, baseType: !85, size: 32, offset: 1216)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !859, file: !14, line: 1207, baseType: !188, size: 32, offset: 1248)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !859, file: !14, line: 1209, baseType: !133, size: 64, offset: 1280)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !859, file: !14, line: 1211, baseType: !2310, size: 64, offset: 1344)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2313)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !859, file: !14, line: 1223, baseType: !2315, size: 64, offset: 1408)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !624, line: 34, size: 64, elements: !2316)
!2316 = !{!2317}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2315, file: !624, line: 35, baseType: !627, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !859, file: !14, line: 1224, baseType: !214, size: 128, offset: 1472)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !859, file: !14, line: 1225, baseType: !2320, size: 64, offset: 1600)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !859, file: !14, line: 1226, baseType: !2323, size: 64, offset: 1664)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !859, file: !14, line: 1227, baseType: !2326, size: 64, offset: 1728)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !859, file: !14, line: 1228, baseType: !2329, size: 64, offset: 1792)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !859, file: !14, line: 1229, baseType: !325, size: 128, offset: 1856)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !859, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !859, file: !14, line: 1231, baseType: !2334, size: 2496, offset: 2048)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !27, line: 521, size: 2496, elements: !2335)
!2335 = !{!2336, !2337, !2338, !2340, !2372}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2334, file: !27, line: 522, baseType: !7, size: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2334, file: !27, line: 523, baseType: !422, size: 320, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2334, file: !27, line: 524, baseType: !2339, size: 192, offset: 384)
!2339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 192, elements: !304)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2334, file: !27, line: 525, baseType: !2341, size: 1728, offset: 576)
!2341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2342, size: 1728, elements: !304)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !27, line: 222, size: 576, elements: !2343)
!2343 = !{!2344, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2342, file: !27, line: 223, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !27, line: 445, size: 256, elements: !2347)
!2347 = !{!2348, !2349, !2362, !2363}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2346, file: !27, line: 446, baseType: !85, size: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2346, file: !27, line: 447, baseType: !2350, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2352)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !27, line: 312, size: 512, elements: !2353)
!2353 = !{!2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2352, file: !27, line: 313, baseType: !2071, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2352, file: !27, line: 314, baseType: !2071, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2352, file: !27, line: 315, baseType: !2071, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2352, file: !27, line: 316, baseType: !2071, size: 64, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2352, file: !27, line: 317, baseType: !2180, size: 64, offset: 256)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2352, file: !27, line: 318, baseType: !2180, size: 64, offset: 320)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2352, file: !27, line: 319, baseType: !2180, size: 64, offset: 384)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2352, file: !27, line: 320, baseType: !2210, size: 64, offset: 448)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2346, file: !27, line: 448, baseType: !892, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2346, file: !27, line: 449, baseType: !2345, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2342, file: !27, line: 224, baseType: !85, size: 32, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2342, file: !27, line: 226, baseType: !214, size: 128, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2342, file: !27, line: 227, baseType: !136, size: 64, offset: 256)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2342, file: !27, line: 228, baseType: !7, size: 32, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2342, file: !27, line: 229, baseType: !7, size: 32, offset: 352)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2342, file: !27, line: 230, baseType: !2148, size: 64, offset: 384)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2342, file: !27, line: 231, baseType: !2148, size: 64, offset: 448)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2342, file: !27, line: 232, baseType: !133, size: 64, offset: 512)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2334, file: !27, line: 526, baseType: !2373, size: 192, offset: 2304)
!2373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2350, size: 192, elements: !304)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !859, file: !14, line: 1233, baseType: !2375, size: 2368, offset: 4544)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2376)
!2376 = !{!2377, !2378, !2379}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2375, file: !14, line: 1185, baseType: !206, size: 16)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2375, file: !14, line: 1186, baseType: !206, size: 16, offset: 16)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2375, file: !14, line: 1187, baseType: !2380, size: 2304, offset: 64)
!2380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2381, size: 2304, elements: !304)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2382, line: 12, size: 768, elements: !2383)
!2382 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2383 = !{!2384, !2392, !2393, !3581, !3582}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2381, file: !2382, line: 13, baseType: !2385, size: 384)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2386, line: 17, size: 384, elements: !2387)
!2386 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2387 = !{!2388, !2389, !2390, !2391}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2385, file: !2386, line: 18, baseType: !85, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2385, file: !2386, line: 19, baseType: !85, size: 32, offset: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2385, file: !2386, line: 20, baseType: !334, size: 192, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2385, file: !2386, line: 22, baseType: !257, size: 128, align: 64, offset: 256)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2381, file: !2382, line: 14, baseType: !1774, size: 64, offset: 384)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2381, file: !2382, line: 15, baseType: !2394, size: 64, offset: 448)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2395, line: 16, size: 64, elements: !2396)
!2395 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2396 = !{!2397}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2394, file: !2395, line: 17, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2400, line: 746, size: 58368, elements: !2401)
!2400 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2401 = !{!2402, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2482, !2493, !2581, !2585, !2588, !2619, !2620, !2621, !2622, !2633, !2635, !2636, !2637, !2638, !2639, !2640, !2651, !2652, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2669, !2670, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2763, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2811, !2817, !2818, !2819, !2820, !2821, !2825, !2828, !2835, !2840, !2843, !2846, !2849, !2852, !2990, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3028, !3029, !3030, !3039, !3047, !3048, !3049, !3050, !3051, !3056, !3057, !3058, !3061, !3062, !3065, !3068, !3071, !3079, !3082, !3083, !3169, !3170, !3171, !3172, !3173, !3179, !3180, !3181, !3182, !3185, !3186, !3189, !3192, !3193, !3196, !3197, !3198, !3201, !3202, !3203, !3204, !3205, !3206, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3238, !3241, !3247, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3259, !3331, !3333, !3334, !3335, !3336, !3337, !3338, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3356, !3357, !3358}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2399, file: !2400, line: 752, baseType: !2403, size: 192)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2404, line: 56, size: 192, elements: !2405)
!2404 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2405 = !{!2406, !2407, !2408, !2409}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2403, file: !2404, line: 57, baseType: !136, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2403, file: !2404, line: 58, baseType: !136, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2403, file: !2404, line: 59, baseType: !447, size: 32, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2403, file: !2404, line: 61, baseType: !447, size: 32, offset: 160)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2399, file: !2400, line: 754, baseType: !7, size: 32, offset: 192)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2399, file: !2400, line: 767, baseType: !133, size: 64, offset: 256)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2399, file: !2400, line: 768, baseType: !312, size: 32, offset: 320)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2399, file: !2400, line: 770, baseType: !7, size: 32, offset: 352)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2399, file: !2400, line: 771, baseType: !7, size: 32, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2399, file: !2400, line: 774, baseType: !85, size: 32, offset: 416)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2399, file: !2400, line: 775, baseType: !2417, size: 128, offset: 448)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2418, line: 58, size: 128, elements: !2419)
!2418 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2419 = !{!2420, !2421, !2426, !2427}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2417, file: !2418, line: 59, baseType: !251, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, scope: !2417, file: !2418, line: 60, baseType: !2422, size: 32, offset: 64)
!2422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2417, file: !2418, line: 60, size: 32, elements: !2423)
!2423 = !{!2424, !2425}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2422, file: !2418, line: 61, baseType: !7, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2422, file: !2418, line: 62, baseType: !188, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2417, file: !2418, line: 65, baseType: !204, size: 16, offset: 96)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2417, file: !2418, line: 65, baseType: !204, size: 16, offset: 112)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2399, file: !2400, line: 776, baseType: !7, size: 32, offset: 576)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2399, file: !2400, line: 777, baseType: !136, size: 64, offset: 640)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2399, file: !2400, line: 778, baseType: !2398, size: 64, offset: 704)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2399, file: !2400, line: 787, baseType: !85, size: 32, offset: 768)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2399, file: !2400, line: 788, baseType: !85, size: 32, offset: 800)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2399, file: !2400, line: 790, baseType: !85, size: 32, offset: 832)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2399, file: !2400, line: 792, baseType: !85, size: 32, offset: 864)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2399, file: !2400, line: 793, baseType: !85, size: 32, offset: 896)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2399, file: !2400, line: 794, baseType: !85, size: 32, offset: 928)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2399, file: !2400, line: 795, baseType: !7, size: 32, offset: 960)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2399, file: !2400, line: 797, baseType: !2439, size: 2048, offset: 1024)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2400, line: 551, size: 2048, elements: !2440)
!2440 = !{!2441, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2461, !2464, !2465, !2466}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2439, file: !2400, line: 553, baseType: !2442, size: 128)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2400, line: 411, size: 128, elements: !2443)
!2443 = !{!2444, !2445}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2442, file: !2400, line: 412, baseType: !136, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2442, file: !2400, line: 413, baseType: !447, size: 32, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2439, file: !2400, line: 554, baseType: !414, size: 192, align: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2439, file: !2400, line: 555, baseType: !390, size: 64, offset: 320)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2439, file: !2400, line: 556, baseType: !390, size: 64, offset: 384)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2439, file: !2400, line: 558, baseType: !214, size: 128, offset: 448)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2439, file: !2400, line: 559, baseType: !7, size: 32, offset: 576)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2439, file: !2400, line: 561, baseType: !390, size: 64, offset: 640)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2439, file: !2400, line: 562, baseType: !390, size: 64, offset: 704)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2439, file: !2400, line: 563, baseType: !390, size: 64, offset: 768)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2439, file: !2400, line: 564, baseType: !390, size: 64, offset: 832)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2439, file: !2400, line: 565, baseType: !170, size: 64, offset: 896)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2439, file: !2400, line: 566, baseType: !390, size: 64, offset: 960)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2439, file: !2400, line: 568, baseType: !390, size: 64, offset: 1024)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2439, file: !2400, line: 571, baseType: !85, size: 32, offset: 1088)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2439, file: !2400, line: 572, baseType: !2460, size: 64, offset: 1152)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2439, file: !2400, line: 574, baseType: !2462, size: 64, offset: 1216)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2400, line: 49, flags: DIFlagFwdDecl)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2439, file: !2400, line: 576, baseType: !2462, size: 64, offset: 1280)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2439, file: !2400, line: 578, baseType: !136, size: 64, offset: 1344)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2439, file: !2400, line: 588, baseType: !2467, size: 512, align: 512, offset: 1536)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2400, line: 497, size: 512, align: 512, elements: !2468)
!2468 = !{!2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2467, file: !2400, line: 498, baseType: !390, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2467, file: !2400, line: 499, baseType: !390, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2467, file: !2400, line: 500, baseType: !390, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2467, file: !2400, line: 501, baseType: !447, size: 32, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2467, file: !2400, line: 502, baseType: !447, size: 32, offset: 224)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2467, file: !2400, line: 503, baseType: !136, size: 64, offset: 256)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2467, file: !2400, line: 504, baseType: !136, size: 64, offset: 320)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2467, file: !2400, line: 505, baseType: !136, size: 64, offset: 384)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2467, file: !2400, line: 506, baseType: !2478, size: 64, align: 64, offset: 448)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2400, line: 445, size: 64, align: 64, elements: !2479)
!2479 = !{!2480, !2481}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2478, file: !2400, line: 446, baseType: !7, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2478, file: !2400, line: 447, baseType: !7, size: 32, offset: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2399, file: !2400, line: 798, baseType: !2483, size: 384, offset: 3072)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2400, line: 592, size: 384, elements: !2484)
!2484 = !{!2485, !2486, !2487, !2488, !2489, !2490, !2491}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2483, file: !2400, line: 593, baseType: !214, size: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2483, file: !2400, line: 594, baseType: !136, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2483, file: !2400, line: 595, baseType: !136, size: 64, offset: 192)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2483, file: !2400, line: 596, baseType: !7, size: 32, offset: 256)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2483, file: !2400, line: 597, baseType: !206, size: 16, offset: 288)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2483, file: !2400, line: 598, baseType: !206, size: 16, offset: 304)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2483, file: !2400, line: 600, baseType: !2492, size: 64, offset: 320)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2399, file: !2400, line: 799, baseType: !2494, size: 1792, offset: 3456)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2400, line: 610, size: 1792, elements: !2495)
!2495 = !{!2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2578, !2579}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2494, file: !2400, line: 611, baseType: !414, size: 192, align: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2494, file: !2400, line: 618, baseType: !390, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2494, file: !2400, line: 619, baseType: !390, size: 64, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2494, file: !2400, line: 620, baseType: !390, size: 64, offset: 320)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2494, file: !2400, line: 621, baseType: !390, size: 64, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2494, file: !2400, line: 622, baseType: !390, size: 64, offset: 448)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2494, file: !2400, line: 629, baseType: !170, size: 64, offset: 512)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2494, file: !2400, line: 630, baseType: !390, size: 64, offset: 576)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2494, file: !2400, line: 631, baseType: !7, size: 32, offset: 640)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2494, file: !2400, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2494, file: !2400, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2494, file: !2400, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2494, file: !2400, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2494, file: !2400, line: 662, baseType: !2510, size: 512, offset: 704)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !2511)
!2511 = !{!2512, !2520, !2521, !2526, !2574, !2575, !2576, !2577}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2510, file: !33, line: 119, baseType: !2513, size: 256)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2514, line: 9, size: 256, elements: !2515)
!2514 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2515 = !{!2516, !2517}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2513, file: !2514, line: 10, baseType: !414, size: 192, align: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2513, file: !2514, line: 11, baseType: !2518, size: 64, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2519, line: 29, baseType: !170)
!2519 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2510, file: !33, line: 120, baseType: !2518, size: 64, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2510, file: !33, line: 121, baseType: !2522, size: 64, offset: 320)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!32, !2525}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2510, file: !33, line: 122, baseType: !2527, size: 64, offset: 384)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !2529)
!2529 = !{!2530, !2555, !2556, !2559, !2564, !2565, !2569, !2573}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2528, file: !33, line: 160, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !2533)
!2533 = !{!2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2532, file: !33, line: 216, baseType: !175, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2532, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2532, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2532, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2532, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2532, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2532, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2532, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2532, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2532, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2532, file: !33, line: 227, baseType: !206, size: 16, offset: 192)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2532, file: !33, line: 228, baseType: !206, size: 16, offset: 208)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2532, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2532, file: !33, line: 235, baseType: !2518, size: 64, offset: 256)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2532, file: !33, line: 236, baseType: !2525, size: 64, offset: 320)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2532, file: !33, line: 237, baseType: !2518, size: 64, offset: 384)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2532, file: !33, line: 238, baseType: !2525, size: 64, offset: 448)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2532, file: !33, line: 239, baseType: !2552, size: 4096, align: 512, offset: 512)
!2552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2528, size: 4096, align: 512, elements: !2553)
!2553 = !{!2554}
!2554 = !DISubrange(count: 8)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2528, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2528, file: !33, line: 162, baseType: !2557, size: 32, offset: 96)
!2557 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !135, line: 32, baseType: !2558)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !149, line: 96, baseType: !85)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2528, file: !33, line: 163, baseType: !2560, size: 32, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !614, line: 274, baseType: !2561)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !614, line: 274, size: 32, elements: !2562)
!2562 = !{!2563}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2561, file: !614, line: 274, baseType: !618, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2528, file: !33, line: 164, baseType: !2525, size: 64, offset: 192)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2528, file: !33, line: 165, baseType: !2566, size: 128, offset: 256)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2514, line: 14, size: 128, elements: !2567)
!2567 = !{!2568}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2566, file: !2514, line: 15, baseType: !1018, size: 128)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2528, file: !33, line: 166, baseType: !2570, size: 64, offset: 384)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!2518}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2528, file: !33, line: 167, baseType: !2518, size: 64, offset: 448)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2510, file: !33, line: 123, baseType: !196, size: 8, offset: 448)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2510, file: !33, line: 124, baseType: !196, size: 8, offset: 456)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2510, file: !33, line: 125, baseType: !196, size: 8, offset: 464)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2510, file: !33, line: 126, baseType: !196, size: 8, offset: 472)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2494, file: !2400, line: 671, baseType: !2510, size: 512, offset: 1216)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2494, file: !2400, line: 679, baseType: !2580, size: 64, offset: 1728)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2399, file: !2400, line: 800, baseType: !2582, size: 64, offset: 5248)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2584)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2400, line: 800, flags: DIFlagFwdDecl)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2399, file: !2400, line: 809, baseType: !2586, size: 64, offset: 5312)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2400, line: 70, flags: DIFlagFwdDecl)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2399, file: !2400, line: 825, baseType: !2589, size: 2048, align: 512, offset: 5632)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2400, line: 509, size: 2048, align: 512, elements: !2590)
!2590 = !{!2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2589, file: !2400, line: 511, baseType: !390, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2589, file: !2400, line: 512, baseType: !390, size: 64, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2589, file: !2400, line: 513, baseType: !390, size: 64, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2589, file: !2400, line: 514, baseType: !390, size: 64, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2589, file: !2400, line: 515, baseType: !390, size: 64, offset: 256)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2589, file: !2400, line: 516, baseType: !390, size: 64, offset: 320)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2589, file: !2400, line: 518, baseType: !390, size: 64, offset: 384)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2589, file: !2400, line: 519, baseType: !390, size: 64, offset: 448)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2589, file: !2400, line: 520, baseType: !170, size: 64, offset: 512)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2589, file: !2400, line: 522, baseType: !390, size: 64, offset: 576)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2589, file: !2400, line: 523, baseType: !390, size: 64, offset: 640)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2589, file: !2400, line: 524, baseType: !170, size: 64, offset: 704)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2589, file: !2400, line: 526, baseType: !170, size: 64, offset: 768)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2589, file: !2400, line: 527, baseType: !390, size: 64, offset: 832)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2589, file: !2400, line: 529, baseType: !390, size: 64, offset: 896)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2589, file: !2400, line: 530, baseType: !390, size: 64, offset: 960)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2589, file: !2400, line: 531, baseType: !390, size: 64, offset: 1024)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2589, file: !2400, line: 532, baseType: !390, size: 64, offset: 1088)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2589, file: !2400, line: 533, baseType: !390, size: 64, offset: 1152)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2589, file: !2400, line: 535, baseType: !390, size: 64, offset: 1216)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2589, file: !2400, line: 536, baseType: !390, size: 64, offset: 1280)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2589, file: !2400, line: 537, baseType: !390, size: 64, offset: 1344)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2589, file: !2400, line: 538, baseType: !390, size: 64, offset: 1408)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2589, file: !2400, line: 539, baseType: !390, size: 64, offset: 1472)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2589, file: !2400, line: 540, baseType: !390, size: 64, offset: 1536)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2589, file: !2400, line: 541, baseType: !390, size: 64, offset: 1600)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2589, file: !2400, line: 542, baseType: !390, size: 64, offset: 1664)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2589, file: !2400, line: 543, baseType: !390, size: 64, offset: 1728)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2399, file: !2400, line: 833, baseType: !7, size: 32, offset: 7680)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2399, file: !2400, line: 836, baseType: !7, size: 32, offset: 7712)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2399, file: !2400, line: 837, baseType: !85, size: 32, offset: 7744)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2399, file: !2400, line: 838, baseType: !2623, size: 64, offset: 7808)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2625)
!2625 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2626, line: 19, baseType: !2627)
!2626 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2626, line: 19, size: 64, elements: !2628)
!2628 = !{!2629}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2627, file: !2626, line: 19, baseType: !2630, size: 64)
!2630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 64, elements: !2631)
!2631 = !{!2632}
!2632 = !DISubrange(count: 1)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2399, file: !2400, line: 839, baseType: !2634, size: 64, offset: 7872)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2399, file: !2400, line: 840, baseType: !2625, size: 64, offset: 7936)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2399, file: !2400, line: 841, baseType: !133, size: 64, offset: 8000)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2399, file: !2400, line: 843, baseType: !206, size: 16, offset: 8064)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2399, file: !2400, line: 845, baseType: !206, size: 16, offset: 8080)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2399, file: !2400, line: 848, baseType: !85, size: 32, offset: 8096)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2399, file: !2400, line: 849, baseType: !2641, size: 32, offset: 8128)
!2641 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2400, line: 718, size: 32, elements: !2642)
!2642 = !{!2643, !2650}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2641, file: !2400, line: 724, baseType: !2644, size: 32)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2641, file: !2400, line: 719, size: 32, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2644, file: !2400, line: 720, baseType: !196, size: 8)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2644, file: !2400, line: 721, baseType: !196, size: 8, offset: 8)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2644, file: !2400, line: 722, baseType: !196, size: 8, offset: 16)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2644, file: !2400, line: 723, baseType: !196, size: 8, offset: 24)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2641, file: !2400, line: 725, baseType: !447, size: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2399, file: !2400, line: 850, baseType: !214, size: 128, offset: 8192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2399, file: !2400, line: 851, baseType: !2653, size: 64, offset: 8320)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2400, line: 60, flags: DIFlagFwdDecl)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2399, file: !2400, line: 855, baseType: !136, size: 64, offset: 8384)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2399, file: !2400, line: 856, baseType: !196, size: 8, offset: 8448)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2399, file: !2400, line: 857, baseType: !196, size: 8, offset: 8456)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2399, file: !2400, line: 858, baseType: !85, size: 32, offset: 8480)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2399, file: !2400, line: 859, baseType: !214, size: 128, offset: 8512)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2399, file: !2400, line: 860, baseType: !85, size: 32, offset: 8640)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2399, file: !2400, line: 861, baseType: !214, size: 128, offset: 8704)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2399, file: !2400, line: 873, baseType: !2663, size: 256, offset: 8832)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2400, line: 376, size: 256, elements: !2664)
!2664 = !{!2665, !2666, !2667, !2668}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2663, file: !2400, line: 381, baseType: !136, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2663, file: !2400, line: 384, baseType: !392, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2663, file: !2400, line: 389, baseType: !392, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2663, file: !2400, line: 392, baseType: !392, size: 64, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2399, file: !2400, line: 875, baseType: !214, size: 128, offset: 9088)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2399, file: !2400, line: 877, baseType: !2671, size: 320, offset: 9216)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2672, line: 86, size: 320, elements: !2673)
!2672 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2673 = !{!2674, !2675, !2676}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2671, file: !2672, line: 87, baseType: !85, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2671, file: !2672, line: 88, baseType: !214, size: 128, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2671, file: !2672, line: 89, baseType: !214, size: 128, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2399, file: !2400, line: 878, baseType: !414, size: 192, align: 64, offset: 9536)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2399, file: !2400, line: 881, baseType: !1303, size: 64, offset: 9728)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2399, file: !2400, line: 882, baseType: !1303, size: 64, offset: 9792)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2399, file: !2400, line: 884, baseType: !85, size: 32, offset: 9856)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2399, file: !2400, line: 885, baseType: !85, size: 32, offset: 9888)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2399, file: !2400, line: 886, baseType: !85, size: 32, offset: 9920)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2399, file: !2400, line: 888, baseType: !85, size: 32, offset: 9952)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2399, file: !2400, line: 890, baseType: !136, size: 64, offset: 9984)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2399, file: !2400, line: 893, baseType: !7, size: 32, offset: 10048)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2399, file: !2400, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2399, file: !2400, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2399, file: !2400, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2399, file: !2400, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2399, file: !2400, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2399, file: !2400, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2399, file: !2400, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2399, file: !2400, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2399, file: !2400, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2399, file: !2400, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2399, file: !2400, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2399, file: !2400, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2399, file: !2400, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2399, file: !2400, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2399, file: !2400, line: 969, baseType: !136, size: 64, offset: 10176)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2399, file: !2400, line: 971, baseType: !2702, size: 448, offset: 10240)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !2703)
!2703 = !{!2704, !2705, !2710}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2702, file: !38, line: 26, baseType: !136, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2702, file: !38, line: 27, baseType: !2706, size: 64, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!762, !2709}
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, scope: !2702, file: !38, line: 28, baseType: !2711, size: 320, offset: 128)
!2711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2702, file: !38, line: 28, size: 320, elements: !2712)
!2712 = !{!2713, !2723, !2748}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2711, file: !38, line: 37, baseType: !2714, size: 320)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2711, file: !38, line: 30, size: 320, elements: !2715)
!2715 = !{!2716, !2718, !2719, !2720, !2721, !2722}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2714, file: !38, line: 31, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2714, file: !38, line: 32, baseType: !447, size: 32, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2714, file: !38, line: 33, baseType: !447, size: 32, offset: 96)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2714, file: !38, line: 34, baseType: !447, size: 32, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2714, file: !38, line: 35, baseType: !390, size: 64, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2714, file: !38, line: 36, baseType: !2717, size: 64, offset: 256)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2711, file: !38, line: 47, baseType: !2724, size: 192)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2711, file: !38, line: 39, size: 192, elements: !2725)
!2725 = !{!2726, !2727, !2728, !2747}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2724, file: !38, line: 40, baseType: !2557, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2724, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, scope: !2724, file: !38, line: 42, baseType: !2729, size: 64, offset: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2724, file: !38, line: 42, size: 64, elements: !2730)
!2730 = !{!2731, !2739}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2729, file: !38, line: 43, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2734, line: 7, size: 128, elements: !2735)
!2734 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2735 = !{!2736, !2738}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2733, file: !2734, line: 8, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !149, line: 93, baseType: !157)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2733, file: !2734, line: 9, baseType: !157, size: 64, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2729, file: !38, line: 44, baseType: !2740, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2742, line: 7, size: 64, elements: !2743)
!2742 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2743 = !{!2744, !2746}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2741, file: !2742, line: 8, baseType: !2745, size: 32)
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2742, line: 5, baseType: !407)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2741, file: !2742, line: 9, baseType: !407, size: 32, offset: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2724, file: !38, line: 46, baseType: !390, size: 64, offset: 128)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2711, file: !38, line: 55, baseType: !2749, size: 256)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2711, file: !38, line: 49, size: 256, elements: !2750)
!2750 = !{!2751, !2759, !2760, !2761, !2762}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2749, file: !38, line: 50, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2754, line: 36, size: 64, elements: !2755)
!2754 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2755 = !{!2756, !2757, !2758}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2753, file: !2754, line: 37, baseType: !85, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2753, file: !2754, line: 38, baseType: !452, size: 16, offset: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2753, file: !2754, line: 39, baseType: !452, size: 16, offset: 48)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2749, file: !38, line: 51, baseType: !85, size: 32, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2749, file: !38, line: 52, baseType: !85, size: 32, offset: 96)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2749, file: !38, line: 53, baseType: !136, size: 64, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2749, file: !38, line: 54, baseType: !136, size: 64, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2399, file: !2400, line: 973, baseType: !2764, size: 32, offset: 10688)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !135, line: 27, baseType: !2765)
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !149, line: 28, baseType: !85)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2399, file: !2400, line: 974, baseType: !2764, size: 32, offset: 10720)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2399, file: !2400, line: 978, baseType: !136, size: 64, offset: 10752)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2399, file: !2400, line: 987, baseType: !2398, size: 64, offset: 10816)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2399, file: !2400, line: 990, baseType: !2398, size: 64, offset: 10880)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2399, file: !2400, line: 995, baseType: !214, size: 128, offset: 10944)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2399, file: !2400, line: 996, baseType: !214, size: 128, offset: 11072)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2399, file: !2400, line: 997, baseType: !2398, size: 64, offset: 11200)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2399, file: !2400, line: 1005, baseType: !214, size: 128, offset: 11264)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2399, file: !2400, line: 1006, baseType: !214, size: 128, offset: 11392)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2399, file: !2400, line: 1009, baseType: !308, size: 64, offset: 11520)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2399, file: !2400, line: 1010, baseType: !2777, size: 512, offset: 11584)
!2777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 512, elements: !330)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2399, file: !2400, line: 1011, baseType: !214, size: 128, offset: 12096)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2399, file: !2400, line: 1012, baseType: !214, size: 128, offset: 12224)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2399, file: !2400, line: 1014, baseType: !1675, size: 64, offset: 12352)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2399, file: !2400, line: 1017, baseType: !1822, size: 64, offset: 12416)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2399, file: !2400, line: 1020, baseType: !1822, size: 64, offset: 12480)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2399, file: !2400, line: 1023, baseType: !133, size: 64, offset: 12544)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2399, file: !2400, line: 1025, baseType: !390, size: 64, offset: 12608)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2399, file: !2400, line: 1026, baseType: !390, size: 64, offset: 12672)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2399, file: !2400, line: 1031, baseType: !390, size: 64, offset: 12736)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2399, file: !2400, line: 1032, baseType: !2788, size: 192, offset: 12800)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2400, line: 324, size: 192, elements: !2789)
!2789 = !{!2790, !2791, !2792}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2788, file: !2400, line: 326, baseType: !390, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2788, file: !2400, line: 327, baseType: !390, size: 64, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2788, file: !2400, line: 328, baseType: !175, size: 32, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2399, file: !2400, line: 1041, baseType: !136, size: 64, offset: 12992)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2399, file: !2400, line: 1042, baseType: !136, size: 64, offset: 13056)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2399, file: !2400, line: 1045, baseType: !390, size: 64, offset: 13120)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2399, file: !2400, line: 1048, baseType: !390, size: 64, offset: 13184)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2399, file: !2400, line: 1051, baseType: !136, size: 64, offset: 13248)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2399, file: !2400, line: 1052, baseType: !136, size: 64, offset: 13312)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2399, file: !2400, line: 1055, baseType: !2800, size: 640, offset: 13376)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2801, line: 132, size: 640, elements: !2802)
!2801 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2802 = !{!2803, !2809, !2810}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2800, file: !2801, line: 133, baseType: !2804, size: 576)
!2804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2805, size: 576, elements: !304)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2801, line: 117, size: 192, elements: !2806)
!2806 = !{!2807, !2808}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2805, file: !2801, line: 118, baseType: !390, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2805, file: !2801, line: 119, baseType: !2566, size: 128, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2800, file: !2801, line: 134, baseType: !7, size: 32, offset: 576)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2800, file: !2801, line: 135, baseType: !7, size: 32, offset: 608)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2399, file: !2400, line: 1058, baseType: !2812, size: 448, offset: 14016)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2801, line: 144, size: 448, elements: !2813)
!2813 = !{!2814, !2815, !2816}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2812, file: !2801, line: 145, baseType: !257, size: 128, align: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2812, file: !2801, line: 146, baseType: !160, size: 256, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2812, file: !2801, line: 147, baseType: !7, size: 32, offset: 384)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2399, file: !2400, line: 1064, baseType: !363, size: 64, offset: 14464)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2399, file: !2400, line: 1067, baseType: !363, size: 64, offset: 14528)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2399, file: !2400, line: 1070, baseType: !363, size: 64, offset: 14592)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2399, file: !2400, line: 1074, baseType: !399, size: 64, offset: 14656)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2399, file: !2400, line: 1084, baseType: !2822, size: 128, offset: 14720)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 128, elements: !2823)
!2823 = !{!2824}
!2824 = !DISubrange(count: 16)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2399, file: !2400, line: 1086, baseType: !2826, size: 64, offset: 14848)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2400, line: 55, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2399, file: !2400, line: 1089, baseType: !2829, size: 64, offset: 14912)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2830, line: 12, size: 64, elements: !2831)
!2830 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2831 = !{!2832}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2829, file: !2830, line: 13, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2830, line: 8, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2399, file: !2400, line: 1090, baseType: !2836, size: 128, offset: 14976)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2837, line: 13, size: 128, elements: !2838)
!2837 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2838 = !{!2839}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2836, file: !2837, line: 14, baseType: !214, size: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2399, file: !2400, line: 1097, baseType: !2841, size: 64, offset: 15104)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2400, line: 50, flags: DIFlagFwdDecl)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2399, file: !2400, line: 1100, baseType: !2844, size: 64, offset: 15168)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2400, line: 1100, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2399, file: !2400, line: 1103, baseType: !2847, size: 64, offset: 15232)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2400, line: 53, flags: DIFlagFwdDecl)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2399, file: !2400, line: 1107, baseType: !2850, size: 64, offset: 15296)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2400, line: 56, flags: DIFlagFwdDecl)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2399, file: !2400, line: 1110, baseType: !2853, size: 64, offset: 15360)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2855, line: 93, size: 8768, elements: !2856)
!2855 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2856 = !{!2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2904, !2913, !2914, !2916, !2917, !2918, !2921, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2959, !2960, !2967, !2977, !2980, !2981, !2984, !2985, !2986, !2987, !2988, !2989}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2854, file: !2855, line: 94, baseType: !312, size: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2854, file: !2855, line: 95, baseType: !188, size: 32, offset: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2854, file: !2855, line: 96, baseType: !85, size: 32, offset: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2854, file: !2855, line: 97, baseType: !85, size: 32, offset: 96)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2854, file: !2855, line: 98, baseType: !214, size: 128, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2854, file: !2855, line: 100, baseType: !334, size: 192, offset: 256)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2854, file: !2855, line: 103, baseType: !2398, size: 64, offset: 448)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2854, file: !2855, line: 106, baseType: !2865, size: 192, offset: 512)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !574, line: 32, size: 192, elements: !2866)
!2866 = !{!2867, !2868}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2865, file: !574, line: 33, baseType: !214, size: 128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2865, file: !574, line: 34, baseType: !2869, size: 64, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2870, line: 25, baseType: !2871)
!2870 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2870, line: 23, size: 64, elements: !2872)
!2872 = !{!2873}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2871, file: !2870, line: 24, baseType: !2630, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2854, file: !2855, line: 109, baseType: !321, size: 64, offset: 704)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2854, file: !2855, line: 112, baseType: !85, size: 32, offset: 768)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2854, file: !2855, line: 114, baseType: !85, size: 32, offset: 800)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2854, file: !2855, line: 115, baseType: !2398, size: 64, offset: 832)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2854, file: !2855, line: 118, baseType: !85, size: 32, offset: 896)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2854, file: !2855, line: 119, baseType: !7, size: 32, offset: 928)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2854, file: !2855, line: 121, baseType: !2881, size: 64, offset: 960)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2855, line: 80, size: 448, elements: !2883)
!2883 = !{!2884, !2885, !2891}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2882, file: !2855, line: 81, baseType: !188, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2882, file: !2855, line: 82, baseType: !2886, size: 128, offset: 64)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2855, line: 75, size: 128, elements: !2887)
!2887 = !{!2888, !2889}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2886, file: !2855, line: 76, baseType: !2398, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2886, file: !2855, line: 77, baseType: !2890, size: 64, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2882, file: !2855, line: 83, baseType: !1676, size: 256, offset: 192)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2854, file: !2855, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2854, file: !2855, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2854, file: !2855, line: 138, baseType: !7, size: 32, offset: 1056)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2854, file: !2855, line: 139, baseType: !214, size: 128, offset: 1088)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2854, file: !2855, line: 142, baseType: !2510, size: 512, offset: 1216)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2854, file: !2855, line: 143, baseType: !2518, size: 64, offset: 1728)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2854, file: !2855, line: 150, baseType: !2899, size: 256, offset: 1792)
!2899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2900, size: 256, elements: !1812)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2855, line: 38, size: 128, elements: !2901)
!2901 = !{!2902, !2903}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2900, file: !2855, line: 39, baseType: !390, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2900, file: !2855, line: 40, baseType: !390, size: 64, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2854, file: !2855, line: 156, baseType: !2905, size: 192, offset: 2048)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2855, line: 66, size: 192, elements: !2906)
!2906 = !{!2907}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2905, file: !2855, line: 67, baseType: !2908, size: 192)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2855, line: 47, size: 192, elements: !2909)
!2909 = !{!2910, !2911, !2912}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2908, file: !2855, line: 48, baseType: !166, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2908, file: !2855, line: 49, baseType: !166, size: 64, offset: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2908, file: !2855, line: 50, baseType: !166, size: 64, offset: 128)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2854, file: !2855, line: 160, baseType: !2800, size: 640, offset: 2240)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2854, file: !2855, line: 163, baseType: !2915, size: 256, offset: 2880)
!2915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 256, elements: !330)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2854, file: !2855, line: 169, baseType: !308, size: 64, offset: 3136)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2854, file: !2855, line: 172, baseType: !85, size: 32, offset: 3200)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2854, file: !2855, line: 174, baseType: !2919, size: 64, offset: 3264)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2855, line: 174, flags: DIFlagFwdDecl)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2854, file: !2855, line: 185, baseType: !2922, size: 64, offset: 3328)
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !614, line: 860, baseType: !2923)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 853, size: 64, elements: !2924)
!2924 = !{!2925, !2926}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2923, file: !614, line: 858, baseType: !613, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2923, file: !614, line: 859, baseType: !267, size: 32, offset: 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2854, file: !2855, line: 186, baseType: !390, size: 64, offset: 3392)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2854, file: !2855, line: 186, baseType: !390, size: 64, offset: 3456)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2854, file: !2855, line: 186, baseType: !390, size: 64, offset: 3520)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2854, file: !2855, line: 186, baseType: !390, size: 64, offset: 3584)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2854, file: !2855, line: 187, baseType: !390, size: 64, offset: 3648)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2854, file: !2855, line: 188, baseType: !390, size: 64, offset: 3712)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2854, file: !2855, line: 189, baseType: !2788, size: 192, offset: 3776)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2854, file: !2855, line: 190, baseType: !136, size: 64, offset: 3968)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2854, file: !2855, line: 190, baseType: !136, size: 64, offset: 4032)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2854, file: !2855, line: 190, baseType: !136, size: 64, offset: 4096)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2854, file: !2855, line: 190, baseType: !136, size: 64, offset: 4160)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2854, file: !2855, line: 191, baseType: !136, size: 64, offset: 4224)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2854, file: !2855, line: 191, baseType: !136, size: 64, offset: 4288)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2854, file: !2855, line: 191, baseType: !136, size: 64, offset: 4352)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2854, file: !2855, line: 191, baseType: !136, size: 64, offset: 4416)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2854, file: !2855, line: 192, baseType: !136, size: 64, offset: 4480)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2854, file: !2855, line: 192, baseType: !136, size: 64, offset: 4544)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2854, file: !2855, line: 192, baseType: !136, size: 64, offset: 4608)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2854, file: !2855, line: 192, baseType: !136, size: 64, offset: 4672)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2854, file: !2855, line: 193, baseType: !136, size: 64, offset: 4736)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2854, file: !2855, line: 193, baseType: !136, size: 64, offset: 4800)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2854, file: !2855, line: 194, baseType: !2949, size: 448, offset: 4864)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2950, line: 12, size: 448, elements: !2951)
!2950 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2951 = !{!2952, !2953, !2954, !2955, !2956, !2957, !2958}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2949, file: !2950, line: 15, baseType: !390, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2949, file: !2950, line: 17, baseType: !390, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2949, file: !2950, line: 19, baseType: !390, size: 64, offset: 128)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2949, file: !2950, line: 21, baseType: !390, size: 64, offset: 192)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2949, file: !2950, line: 29, baseType: !390, size: 64, offset: 256)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2949, file: !2950, line: 35, baseType: !390, size: 64, offset: 320)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2949, file: !2950, line: 44, baseType: !390, size: 64, offset: 384)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2854, file: !2855, line: 202, baseType: !392, size: 64, offset: 5312)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2854, file: !2855, line: 213, baseType: !2961, size: 2048, offset: 5376)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2962, size: 2048, elements: !2823)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2963, line: 43, size: 128, elements: !2964)
!2963 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2964 = !{!2965, !2966}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2962, file: !2963, line: 44, baseType: !150, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2962, file: !2963, line: 45, baseType: !150, size: 64, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2854, file: !2855, line: 216, baseType: !2968, size: 448, offset: 7424)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2855, line: 30, size: 448, elements: !2969)
!2969 = !{!2970, !2971, !2972, !2973, !2974, !2975, !2976}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2968, file: !2855, line: 31, baseType: !85, size: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2968, file: !2855, line: 32, baseType: !762, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2968, file: !2855, line: 33, baseType: !136, size: 64, offset: 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2968, file: !2855, line: 34, baseType: !390, size: 64, offset: 192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2968, file: !2855, line: 34, baseType: !390, size: 64, offset: 256)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2968, file: !2855, line: 35, baseType: !136, size: 64, offset: 320)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2968, file: !2855, line: 35, baseType: !136, size: 64, offset: 384)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2854, file: !2855, line: 219, baseType: !2978, size: 64, offset: 7872)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2855, line: 219, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2854, file: !2855, line: 222, baseType: !7, size: 32, offset: 7936)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2854, file: !2855, line: 223, baseType: !2982, size: 64, offset: 8000)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2855, line: 223, flags: DIFlagFwdDecl)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2854, file: !2855, line: 230, baseType: !483, size: 8, offset: 8064)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2854, file: !2855, line: 231, baseType: !452, size: 16, offset: 8080)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2854, file: !2855, line: 232, baseType: !452, size: 16, offset: 8096)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2854, file: !2855, line: 234, baseType: !1303, size: 64, offset: 8128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2854, file: !2855, line: 237, baseType: !160, size: 256, offset: 8192)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2854, file: !2855, line: 243, baseType: !422, size: 320, offset: 8448)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2399, file: !2400, line: 1111, baseType: !2991, size: 64, offset: 15424)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2855, line: 20, size: 16640, elements: !2993)
!2993 = !{!2994, !2995, !2996, !2997}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2992, file: !2855, line: 21, baseType: !267, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2992, file: !2855, line: 22, baseType: !312, size: 32, offset: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2992, file: !2855, line: 23, baseType: !334, size: 192, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2992, file: !2855, line: 24, baseType: !2998, size: 16384, offset: 256)
!2998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2999, size: 16384, elements: !948)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !574, line: 51, size: 256, elements: !3000)
!3000 = !{!3001}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2999, file: !574, line: 52, baseType: !3002, size: 256)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !574, line: 37, size: 256, elements: !3003)
!3003 = !{!3004, !3011, !3012, !3016}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3002, file: !574, line: 39, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3006, line: 83, baseType: !3007)
!3006 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3006, line: 82, baseType: !3009)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !85}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3002, file: !574, line: 40, baseType: !136, size: 64, offset: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3002, file: !574, line: 46, baseType: !3013, size: 64, offset: 128)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3006, line: 86, baseType: !3014)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3006, line: 85, baseType: !2027)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3002, file: !574, line: 48, baseType: !2869, size: 64, offset: 192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2399, file: !2400, line: 1112, baseType: !2869, size: 64, offset: 15488)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2399, file: !2400, line: 1113, baseType: !2869, size: 64, offset: 15552)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2399, file: !2400, line: 1115, baseType: !2869, size: 64, offset: 15616)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2399, file: !2400, line: 1116, baseType: !2865, size: 192, offset: 15680)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2399, file: !2400, line: 1117, baseType: !136, size: 64, offset: 15872)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2399, file: !2400, line: 1118, baseType: !147, size: 64, offset: 15936)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2399, file: !2400, line: 1119, baseType: !7, size: 32, offset: 16000)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2399, file: !2400, line: 1121, baseType: !260, size: 64, offset: 16064)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2399, file: !2400, line: 1125, baseType: !3026, size: 64, offset: 16128)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2400, line: 43, flags: DIFlagFwdDecl)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2399, file: !2400, line: 1127, baseType: !353, size: 32, offset: 16192)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2399, file: !2400, line: 1128, baseType: !7, size: 32, offset: 16224)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2399, file: !2400, line: 1130, baseType: !3031, size: 128, offset: 16256)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3032, line: 37, size: 128, elements: !3033)
!3032 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3033 = !{!3034, !3035, !3036}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3031, file: !3032, line: 38, baseType: !85, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3031, file: !3032, line: 39, baseType: !188, size: 32, offset: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3031, file: !3032, line: 40, baseType: !3037, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3032, line: 24, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2399, file: !2400, line: 1131, baseType: !3040, size: 256, offset: 16384)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3041, line: 12, size: 256, elements: !3042)
!3041 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3042 = !{!3043, !3044, !3045, !3046}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3040, file: !3041, line: 13, baseType: !144, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3040, file: !3041, line: 14, baseType: !136, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3040, file: !3041, line: 15, baseType: !136, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3040, file: !3041, line: 16, baseType: !483, size: 8, offset: 192)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2399, file: !2400, line: 1134, baseType: !390, size: 64, offset: 16640)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2399, file: !2400, line: 1135, baseType: !390, size: 64, offset: 16704)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2399, file: !2400, line: 1138, baseType: !267, size: 32, offset: 16768)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2399, file: !2400, line: 1141, baseType: !175, size: 32, offset: 16800)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2399, file: !2400, line: 1143, baseType: !3052, size: 64, offset: 16832)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2400, line: 735, size: 64, elements: !3053)
!3053 = !{!3054}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3052, file: !2400, line: 736, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2399, file: !2400, line: 1147, baseType: !1018, size: 128, offset: 16896)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2399, file: !2400, line: 1149, baseType: !2398, size: 64, offset: 17024)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2399, file: !2400, line: 1151, baseType: !3059, size: 64, offset: 17088)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2400, line: 1151, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2399, file: !2400, line: 1188, baseType: !133, size: 64, offset: 17152)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2399, file: !2400, line: 1191, baseType: !3063, size: 64, offset: 17216)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2400, line: 44, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2399, file: !2400, line: 1194, baseType: !3066, size: 64, offset: 17280)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2400, line: 45, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2399, file: !2400, line: 1197, baseType: !3069, size: 64, offset: 17344)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2400, line: 61, flags: DIFlagFwdDecl)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2399, file: !2400, line: 1199, baseType: !3072, size: 64, offset: 17408)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3074, line: 99, size: 128, elements: !3075)
!3074 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3075 = !{!3076, !3077, !3078}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3073, file: !3074, line: 100, baseType: !164, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3073, file: !3074, line: 101, baseType: !188, size: 32, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3073, file: !3074, line: 103, baseType: !206, size: 16, offset: 96)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2399, file: !2400, line: 1202, baseType: !3080, size: 64, offset: 17472)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2400, line: 48, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2399, file: !2400, line: 1205, baseType: !136, size: 64, offset: 17536)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2399, file: !2400, line: 1206, baseType: !3084, size: 64, offset: 17600)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !574, line: 14, baseType: !3086)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !574, line: 12, size: 384, elements: !3087)
!3087 = !{!3088}
!3088 = !DIDerivedType(tag: DW_TAG_member, scope: !3086, file: !574, line: 13, baseType: !3089, size: 384)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3086, file: !574, line: 13, size: 384, elements: !3090)
!3090 = !{!3091, !3092, !3093, !3094}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3089, file: !574, line: 13, baseType: !85, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3089, file: !574, line: 13, baseType: !85, size: 32, offset: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3089, file: !574, line: 13, baseType: !85, size: 32, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3089, file: !574, line: 13, baseType: !3095, size: 256, offset: 128)
!3095 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3096, line: 37, size: 256, elements: !3097)
!3096 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3097 = !{!3098, !3103, !3116, !3122, !3131, !3158, !3163}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3095, file: !3096, line: 42, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3095, file: !3096, line: 39, size: 64, elements: !3100)
!3100 = !{!3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3099, file: !3096, line: 40, baseType: !2765, size: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3099, file: !3096, line: 41, baseType: !359, size: 32, offset: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3095, file: !3096, line: 50, baseType: !3104, size: 192)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3095, file: !3096, line: 45, size: 192, elements: !3105)
!3105 = !{!3106, !3108, !3109, !3115}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3104, file: !3096, line: 46, baseType: !3107, size: 32)
!3107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !149, line: 95, baseType: !85)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3104, file: !3096, line: 47, baseType: !85, size: 32, offset: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3104, file: !3096, line: 48, baseType: !3110, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3096, line: 11, baseType: !3111)
!3111 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3096, line: 8, size: 64, elements: !3112)
!3112 = !{!3113, !3114}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3111, file: !3096, line: 9, baseType: !85, size: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3111, file: !3096, line: 10, baseType: !133, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3104, file: !3096, line: 49, baseType: !85, size: 32, offset: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3095, file: !3096, line: 57, baseType: !3117, size: 128)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3095, file: !3096, line: 53, size: 128, elements: !3118)
!3118 = !{!3119, !3120, !3121}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3117, file: !3096, line: 54, baseType: !2765, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3117, file: !3096, line: 55, baseType: !359, size: 32, offset: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3117, file: !3096, line: 56, baseType: !3110, size: 64, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3095, file: !3096, line: 66, baseType: !3123, size: 256)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3095, file: !3096, line: 60, size: 256, elements: !3124)
!3124 = !{!3125, !3126, !3127, !3128, !3130}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3123, file: !3096, line: 61, baseType: !2765, size: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3123, file: !3096, line: 62, baseType: !359, size: 32, offset: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3123, file: !3096, line: 63, baseType: !85, size: 32, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3123, file: !3096, line: 64, baseType: !3129, size: 64, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !149, line: 94, baseType: !804)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3123, file: !3096, line: 65, baseType: !3129, size: 64, offset: 192)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3095, file: !3096, line: 105, baseType: !3132, size: 256)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3095, file: !3096, line: 69, size: 256, elements: !3133)
!3133 = !{!3134, !3135}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3132, file: !3096, line: 70, baseType: !133, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !3132, file: !3096, line: 79, baseType: !3136, size: 192, offset: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3132, file: !3096, line: 79, size: 192, elements: !3137)
!3137 = !{!3138, !3139, !3140, !3147, !3152}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3136, file: !3096, line: 81, baseType: !85, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3136, file: !3096, line: 86, baseType: !452, size: 16)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3136, file: !3096, line: 92, baseType: !3141, size: 192)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3136, file: !3096, line: 88, size: 192, elements: !3142)
!3142 = !{!3143, !3145, !3146}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3141, file: !3096, line: 89, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 64, elements: !2553)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3141, file: !3096, line: 90, baseType: !133, size: 64, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3141, file: !3096, line: 91, baseType: !133, size: 64, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3136, file: !3096, line: 97, baseType: !3148, size: 96)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3136, file: !3096, line: 94, size: 96, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3148, file: !3096, line: 95, baseType: !3144, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3148, file: !3096, line: 96, baseType: !448, size: 32, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3136, file: !3096, line: 103, baseType: !3153, size: 128)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3136, file: !3096, line: 99, size: 128, elements: !3154)
!3154 = !{!3155, !3156, !3157}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3153, file: !3096, line: 100, baseType: !136, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3153, file: !3096, line: 101, baseType: !448, size: 32, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3153, file: !3096, line: 102, baseType: !448, size: 32, offset: 96)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3095, file: !3096, line: 111, baseType: !3159, size: 128)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3095, file: !3096, line: 108, size: 128, elements: !3160)
!3160 = !{!3161, !3162}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3159, file: !3096, line: 109, baseType: !762, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3159, file: !3096, line: 110, baseType: !85, size: 32, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3095, file: !3096, line: 118, baseType: !3164, size: 128)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3095, file: !3096, line: 114, size: 128, elements: !3165)
!3165 = !{!3166, !3167, !3168}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3164, file: !3096, line: 115, baseType: !133, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3164, file: !3096, line: 116, baseType: !85, size: 32, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3164, file: !3096, line: 117, baseType: !7, size: 32, offset: 96)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2399, file: !2400, line: 1208, baseType: !2949, size: 448, offset: 17664)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2399, file: !2400, line: 1215, baseType: !390, size: 64, offset: 18112)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2399, file: !2400, line: 1217, baseType: !390, size: 64, offset: 18176)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2399, file: !2400, line: 1219, baseType: !390, size: 64, offset: 18240)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2399, file: !2400, line: 1223, baseType: !3174, size: 64, offset: 18304)
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3175, line: 99, baseType: !3176)
!3175 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3175, line: 99, size: 64, elements: !3177)
!3177 = !{!3178}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3176, file: !3175, line: 99, baseType: !2630, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2399, file: !2400, line: 1225, baseType: !613, size: 32, offset: 18368)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2399, file: !2400, line: 1226, baseType: !85, size: 32, offset: 18400)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2399, file: !2400, line: 1227, baseType: !85, size: 32, offset: 18432)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2399, file: !2400, line: 1231, baseType: !3183, size: 64, offset: 18496)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2400, line: 1231, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2399, file: !2400, line: 1233, baseType: !214, size: 128, offset: 18560)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2399, file: !2400, line: 1240, baseType: !3187, size: 64, offset: 18688)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2400, line: 62, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2399, file: !2400, line: 1242, baseType: !3190, size: 64, offset: 18752)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2400, line: 1242, flags: DIFlagFwdDecl)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2399, file: !2400, line: 1244, baseType: !214, size: 128, offset: 18816)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2399, file: !2400, line: 1245, baseType: !3194, size: 64, offset: 18944)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2400, line: 51, flags: DIFlagFwdDecl)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2399, file: !2400, line: 1246, baseType: !160, size: 256, offset: 19008)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2399, file: !2400, line: 1247, baseType: !7, size: 32, offset: 19264)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2399, file: !2400, line: 1250, baseType: !3199, size: 64, offset: 19328)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2400, line: 57, flags: DIFlagFwdDecl)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2399, file: !2400, line: 1251, baseType: !160, size: 256, offset: 19392)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2399, file: !2400, line: 1252, baseType: !214, size: 128, offset: 19648)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2399, file: !2400, line: 1259, baseType: !1509, size: 64, offset: 19776)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2399, file: !2400, line: 1260, baseType: !452, size: 16, offset: 19840)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2399, file: !2400, line: 1261, baseType: !452, size: 16, offset: 19856)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2399, file: !2400, line: 1314, baseType: !3207, size: 64, offset: 19904)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3209, line: 62, size: 256, align: 256, elements: !3210)
!3209 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3210 = !{!3211, !3212, !3213, !3214, !3215, !3216, !3217}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3208, file: !3209, line: 75, baseType: !448, size: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3208, file: !3209, line: 90, baseType: !448, size: 32, offset: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3208, file: !3209, line: 112, baseType: !391, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3208, file: !3209, line: 132, baseType: !448, size: 32, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3208, file: !3209, line: 140, baseType: !448, size: 32, offset: 160)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3208, file: !3209, line: 149, baseType: !448, size: 32, offset: 192)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3208, file: !3209, line: 154, baseType: !3218, offset: 224)
!3218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, elements: !349)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2399, file: !2400, line: 1315, baseType: !447, size: 32, offset: 19968)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2399, file: !2400, line: 1316, baseType: !447, size: 32, offset: 20000)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2399, file: !2400, line: 1321, baseType: !136, size: 64, offset: 20032)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2399, file: !2400, line: 1325, baseType: !85, size: 32, offset: 20096)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2399, file: !2400, line: 1326, baseType: !85, size: 32, offset: 20128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2399, file: !2400, line: 1327, baseType: !85, size: 32, offset: 20160)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2399, file: !2400, line: 1328, baseType: !85, size: 32, offset: 20192)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2399, file: !2400, line: 1329, baseType: !257, size: 128, align: 64, offset: 20224)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2399, file: !2400, line: 1332, baseType: !3228, size: 128, offset: 20352)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3229, line: 51, size: 128, elements: !3230)
!3229 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3230 = !{!3231, !3236, !3237}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3228, file: !3229, line: 60, baseType: !3232, size: 64)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3233, line: 7, size: 64, elements: !3234)
!3233 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3234 = !{!3235}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3232, file: !3233, line: 12, baseType: !2627, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3228, file: !3229, line: 63, baseType: !483, size: 8, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3228, file: !3229, line: 70, baseType: !483, size: 8, offset: 72)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2399, file: !2400, line: 1335, baseType: !3239, size: 64, offset: 20480)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2400, line: 59, flags: DIFlagFwdDecl)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2399, file: !2400, line: 1337, baseType: !3242, size: 128, offset: 20544)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3229, line: 39, size: 128, elements: !3243)
!3243 = !{!3244, !3245, !3246}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3242, file: !3229, line: 40, baseType: !1036, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3242, file: !3229, line: 42, baseType: !448, size: 32, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3242, file: !3229, line: 43, baseType: !448, size: 32, offset: 96)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2399, file: !2400, line: 1340, baseType: !3248, size: 64, offset: 20672)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2400, line: 69, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2399, file: !2400, line: 1351, baseType: !85, size: 32, offset: 20736)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2399, file: !2400, line: 1352, baseType: !85, size: 32, offset: 20768)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2399, file: !2400, line: 1354, baseType: !136, size: 64, offset: 20800)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2399, file: !2400, line: 1364, baseType: !390, size: 64, offset: 20864)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2399, file: !2400, line: 1365, baseType: !390, size: 64, offset: 20928)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2399, file: !2400, line: 1412, baseType: !136, size: 64, offset: 20992)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2399, file: !2400, line: 1453, baseType: !3257, size: 64, offset: 21056)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2400, line: 1453, flags: DIFlagFwdDecl)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2399, file: !2400, line: 1457, baseType: !3260, size: 64, offset: 21120)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !3262)
!3262 = !{!3263, !3264, !3283, !3286, !3287, !3320, !3330}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3261, file: !44, line: 62, baseType: !43, size: 32)
!3264 = !DIDerivedType(tag: DW_TAG_member, scope: !3261, file: !44, line: 64, baseType: !3265, size: 192, offset: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3261, file: !44, line: 64, size: 192, elements: !3266)
!3266 = !{!3267, !3278}
!3267 = !DIDerivedType(tag: DW_TAG_member, scope: !3265, file: !44, line: 65, baseType: !3268, size: 192)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3265, file: !44, line: 65, size: 192, elements: !3269)
!3269 = !{!3270, !3277}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3268, file: !44, line: 66, baseType: !3271, size: 128)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3272, line: 50, size: 128, elements: !3273)
!3272 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3273 = !{!3274, !3275, !3276}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3271, file: !3272, line: 52, baseType: !136, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3271, file: !3272, line: 54, baseType: !7, size: 32, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3271, file: !3272, line: 55, baseType: !7, size: 32, offset: 96)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3268, file: !44, line: 67, baseType: !136, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_member, scope: !3265, file: !44, line: 70, baseType: !3279, size: 192)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3265, file: !44, line: 70, size: 192, elements: !3280)
!3280 = !{!3281, !3282}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3279, file: !44, line: 71, baseType: !257, size: 128, align: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3279, file: !44, line: 72, baseType: !136, size: 64, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3261, file: !44, line: 76, baseType: !3284, size: 64, offset: 256)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3261, file: !44, line: 77, baseType: !136, size: 64, offset: 320)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3261, file: !44, line: 79, baseType: !3288, size: 64, offset: 384)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3272, line: 25, size: 256, elements: !3290)
!3290 = !{!3291, !3297, !3301}
!3291 = !DIDerivedType(tag: DW_TAG_member, scope: !3289, file: !3272, line: 26, baseType: !3292, size: 128)
!3292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3289, file: !3272, line: 26, size: 128, elements: !3293)
!3293 = !{!3294, !3296}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3292, file: !3272, line: 27, baseType: !3295, size: 128)
!3295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 128, elements: !2823)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3292, file: !3272, line: 28, baseType: !3295, size: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3289, file: !3272, line: 31, baseType: !3298, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3300)
!3300 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3272, line: 23, flags: DIFlagFwdDecl)
!3301 = !DIDerivedType(tag: DW_TAG_member, scope: !3289, file: !3272, line: 33, baseType: !3302, size: 64, offset: 192)
!3302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3289, file: !3272, line: 33, size: 64, elements: !3303)
!3303 = !{!3304, !3310, !3315}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3302, file: !3272, line: 38, baseType: !3305, size: 64)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3302, file: !3272, line: 34, size: 64, elements: !3306)
!3306 = !{!3307, !3308, !3309}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3305, file: !3272, line: 35, baseType: !407, size: 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3305, file: !3272, line: 36, baseType: !196, size: 8, offset: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3305, file: !3272, line: 37, baseType: !196, size: 8, offset: 40)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3302, file: !3272, line: 42, baseType: !3311, size: 16)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3302, file: !3272, line: 39, size: 16, elements: !3312)
!3312 = !{!3313, !3314}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3311, file: !3272, line: 40, baseType: !196, size: 8)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3311, file: !3272, line: 41, baseType: !196, size: 8, offset: 8)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3302, file: !3272, line: 46, baseType: !3316, size: 16)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3302, file: !3272, line: 43, size: 16, elements: !3317)
!3317 = !{!3318, !3319}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3316, file: !3272, line: 44, baseType: !196, size: 8)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3316, file: !3272, line: 45, baseType: !196, size: 8, offset: 8)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3261, file: !44, line: 81, baseType: !3321, size: 64, offset: 448)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !3323)
!3323 = !{!3324, !3325, !3326, !3327, !3328, !3329}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3322, file: !44, line: 86, baseType: !3284, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3322, file: !44, line: 87, baseType: !136, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3322, file: !44, line: 88, baseType: !136, size: 64, offset: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3322, file: !44, line: 89, baseType: !136, size: 64, offset: 192)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3322, file: !44, line: 90, baseType: !483, size: 8, offset: 256)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3322, file: !44, line: 92, baseType: !3321, size: 64, offset: 320)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3261, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2399, file: !2400, line: 1463, baseType: !3332, offset: 21184)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2400, line: 739, elements: !1324)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2399, file: !2400, line: 1470, baseType: !257, size: 128, align: 64, offset: 21184)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2399, file: !2400, line: 1471, baseType: !312, size: 32, offset: 21312)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2399, file: !2400, line: 1472, baseType: !85, size: 32, offset: 21344)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2399, file: !2400, line: 1474, baseType: !2398, size: 64, offset: 21376)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2399, file: !2400, line: 1475, baseType: !1922, size: 320, offset: 21440)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2399, file: !2400, line: 1478, baseType: !3339, size: 64, offset: 21760)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3341, line: 14, flags: DIFlagFwdDecl)
!3341 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2399, file: !2400, line: 1482, baseType: !312, size: 32, offset: 21824)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2399, file: !2400, line: 1489, baseType: !133, size: 64, offset: 21888)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2399, file: !2400, line: 1504, baseType: !133, size: 64, offset: 21952)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2399, file: !2400, line: 1505, baseType: !391, size: 64, offset: 22016)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2399, file: !2400, line: 1506, baseType: !390, size: 64, offset: 22080)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2399, file: !2400, line: 1507, baseType: !391, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2399, file: !2400, line: 1508, baseType: !391, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2399, file: !2400, line: 1509, baseType: !391, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2399, file: !2400, line: 1510, baseType: !257, size: 128, align: 64, offset: 22208)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2399, file: !2400, line: 1511, baseType: !85, size: 32, offset: 22336)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2399, file: !2400, line: 1515, baseType: !3353, size: 64, offset: 22400)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !252, line: 56, size: 64, elements: !3354)
!3354 = !{!3355}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3353, file: !252, line: 57, baseType: !255, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2399, file: !2400, line: 1518, baseType: !3353, size: 64, offset: 22464)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2399, file: !2400, line: 1528, baseType: !257, size: 128, align: 64, offset: 22528)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2399, file: !2400, line: 1552, baseType: !3359, size: 35328, offset: 23040)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3360, line: 430, size: 35328, elements: !3361)
!3360 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3361 = !{!3362, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3391, !3392, !3393, !3394, !3395, !3396, !3399, !3400, !3401, !3402}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3359, file: !3360, line: 432, baseType: !3363, size: 192)
!3363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3364, size: 192, elements: !304)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3365, line: 16, size: 64, elements: !3366)
!3365 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3364, file: !3365, line: 17, baseType: !204, size: 16)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3364, file: !3365, line: 18, baseType: !204, size: 16, offset: 16)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3364, file: !3365, line: 19, baseType: !204, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3364, file: !3365, line: 19, baseType: !204, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3364, file: !3365, line: 19, baseType: !204, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3364, file: !3365, line: 19, baseType: !204, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3364, file: !3365, line: 19, baseType: !204, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3364, file: !3365, line: 20, baseType: !204, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3364, file: !3365, line: 20, baseType: !204, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3364, file: !3365, line: 20, baseType: !204, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3364, file: !3365, line: 20, baseType: !204, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3364, file: !3365, line: 20, baseType: !204, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3364, file: !3365, line: 20, baseType: !204, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3359, file: !3360, line: 436, baseType: !136, size: 64, offset: 192)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3359, file: !3360, line: 440, baseType: !206, size: 16, offset: 256)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3359, file: !3360, line: 441, baseType: !206, size: 16, offset: 272)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3359, file: !3360, line: 442, baseType: !206, size: 16, offset: 288)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3359, file: !3360, line: 443, baseType: !206, size: 16, offset: 304)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3359, file: !3360, line: 447, baseType: !136, size: 64, offset: 320)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3359, file: !3360, line: 448, baseType: !136, size: 64, offset: 384)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3359, file: !3360, line: 459, baseType: !3388, size: 256, offset: 448)
!3388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3389, size: 256, elements: !330)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3360, line: 428, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3359, file: !3360, line: 461, baseType: !136, size: 64, offset: 704)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3359, file: !3360, line: 463, baseType: !136, size: 64, offset: 768)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3359, file: !3360, line: 465, baseType: !136, size: 64, offset: 832)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3359, file: !3360, line: 466, baseType: !136, size: 64, offset: 896)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3359, file: !3360, line: 467, baseType: !136, size: 64, offset: 960)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3359, file: !3360, line: 473, baseType: !3397, size: 64, offset: 1024)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3360, line: 10, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3359, file: !3360, line: 480, baseType: !136, size: 64, offset: 1088)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3359, file: !3360, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3359, file: !3360, line: 491, baseType: !447, size: 32, offset: 1184)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3359, file: !3360, line: 501, baseType: !3403, size: 33792, offset: 1536)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3404, line: 448, size: 33792, elements: !3405)
!3404 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3405 = !{!3406, !3407, !3408, !3572, !3573, !3579, !3580}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3403, file: !3404, line: 461, baseType: !7, size: 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3403, file: !3404, line: 468, baseType: !136, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3403, file: !3404, line: 476, baseType: !3409, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3404, line: 356, size: 33280, align: 512, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3410, file: !3404, line: 358, baseType: !7, size: 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3410, file: !3404, line: 361, baseType: !7, size: 32, offset: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3410, file: !3404, line: 364, baseType: !390, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3410, file: !3404, line: 367, baseType: !390, size: 64, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3410, file: !3404, line: 370, baseType: !390, size: 64, offset: 192)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3410, file: !3404, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3410, file: !3404, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3410, file: !3404, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3410, file: !3404, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3410, file: !3404, line: 397, baseType: !3422, size: 32768, offset: 512)
!3422 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3404, line: 348, size: 32768, elements: !3423)
!3423 = !{!3424, !3439, !3478, !3555, !3568}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3422, file: !3404, line: 349, baseType: !3425, size: 896)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3404, line: 12, size: 896, elements: !3426)
!3426 = !{!3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3438}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3425, file: !3404, line: 13, baseType: !447, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3425, file: !3404, line: 14, baseType: !447, size: 32, offset: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3425, file: !3404, line: 15, baseType: !447, size: 32, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3425, file: !3404, line: 16, baseType: !447, size: 32, offset: 96)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3425, file: !3404, line: 17, baseType: !447, size: 32, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3425, file: !3404, line: 18, baseType: !447, size: 32, offset: 160)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3425, file: !3404, line: 19, baseType: !447, size: 32, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3425, file: !3404, line: 22, baseType: !3435, size: 640, offset: 224)
!3435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 640, elements: !3436)
!3436 = !{!3437}
!3437 = !DISubrange(count: 20)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3425, file: !3404, line: 25, baseType: !447, size: 32, offset: 864)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3422, file: !3404, line: 350, baseType: !3440, size: 4096, align: 128)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3404, line: 34, size: 4096, align: 128, elements: !3441)
!3441 = !{!3442, !3443, !3444, !3445, !3446, !3461, !3462, !3463, !3467, !3469, !3473}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3440, file: !3404, line: 35, baseType: !204, size: 16)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3440, file: !3404, line: 36, baseType: !204, size: 16, offset: 16)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3440, file: !3404, line: 37, baseType: !204, size: 16, offset: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3440, file: !3404, line: 38, baseType: !204, size: 16, offset: 48)
!3446 = !DIDerivedType(tag: DW_TAG_member, scope: !3440, file: !3404, line: 39, baseType: !3447, size: 128, offset: 64)
!3447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3440, file: !3404, line: 39, size: 128, elements: !3448)
!3448 = !{!3449, !3454}
!3449 = !DIDerivedType(tag: DW_TAG_member, scope: !3447, file: !3404, line: 40, baseType: !3450, size: 128)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3447, file: !3404, line: 40, size: 128, elements: !3451)
!3451 = !{!3452, !3453}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3450, file: !3404, line: 41, baseType: !390, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3450, file: !3404, line: 42, baseType: !390, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, scope: !3447, file: !3404, line: 44, baseType: !3455, size: 128)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3447, file: !3404, line: 44, size: 128, elements: !3456)
!3456 = !{!3457, !3458, !3459, !3460}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3455, file: !3404, line: 45, baseType: !447, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3455, file: !3404, line: 46, baseType: !447, size: 32, offset: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3455, file: !3404, line: 47, baseType: !447, size: 32, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3455, file: !3404, line: 48, baseType: !447, size: 32, offset: 96)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3440, file: !3404, line: 51, baseType: !447, size: 32, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3440, file: !3404, line: 52, baseType: !447, size: 32, offset: 224)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3440, file: !3404, line: 55, baseType: !3464, size: 1024, offset: 256)
!3464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 1024, elements: !3465)
!3465 = !{!3466}
!3466 = !DISubrange(count: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3440, file: !3404, line: 58, baseType: !3468, size: 2048, offset: 1280)
!3468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 2048, elements: !948)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3440, file: !3404, line: 60, baseType: !3470, size: 384, offset: 3328)
!3470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 384, elements: !3471)
!3471 = !{!3472}
!3472 = !DISubrange(count: 12)
!3473 = !DIDerivedType(tag: DW_TAG_member, scope: !3440, file: !3404, line: 62, baseType: !3474, size: 384, offset: 3712)
!3474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3440, file: !3404, line: 62, size: 384, elements: !3475)
!3475 = !{!3476, !3477}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3474, file: !3404, line: 63, baseType: !3470, size: 384)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3474, file: !3404, line: 64, baseType: !3470, size: 384)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3422, file: !3404, line: 351, baseType: !3479, size: 1088)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3404, line: 79, size: 1088, elements: !3480)
!3480 = !{!3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3554}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3479, file: !3404, line: 80, baseType: !447, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3479, file: !3404, line: 81, baseType: !447, size: 32, offset: 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3479, file: !3404, line: 82, baseType: !447, size: 32, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3479, file: !3404, line: 83, baseType: !447, size: 32, offset: 96)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3479, file: !3404, line: 84, baseType: !447, size: 32, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3479, file: !3404, line: 85, baseType: !447, size: 32, offset: 160)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3479, file: !3404, line: 86, baseType: !447, size: 32, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3479, file: !3404, line: 88, baseType: !3435, size: 640, offset: 224)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3479, file: !3404, line: 89, baseType: !196, size: 8, offset: 864)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3479, file: !3404, line: 90, baseType: !196, size: 8, offset: 872)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3479, file: !3404, line: 91, baseType: !196, size: 8, offset: 880)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3479, file: !3404, line: 92, baseType: !196, size: 8, offset: 888)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3479, file: !3404, line: 93, baseType: !196, size: 8, offset: 896)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3479, file: !3404, line: 94, baseType: !196, size: 8, offset: 904)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3479, file: !3404, line: 95, baseType: !3496, size: 64, offset: 960)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3498, line: 11, size: 128, elements: !3499)
!3498 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3499 = !{!3500, !3501}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3497, file: !3498, line: 12, baseType: !762, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3497, file: !3498, line: 13, baseType: !3502, size: 64, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3504, line: 103, size: 1344, elements: !3505)
!3504 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3505 = !{!3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3534, !3535, !3536}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3503, file: !3504, line: 109, baseType: !136, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3503, file: !3504, line: 110, baseType: !136, size: 64, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3503, file: !3504, line: 111, baseType: !136, size: 64, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3503, file: !3504, line: 112, baseType: !136, size: 64, offset: 192)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3503, file: !3504, line: 113, baseType: !136, size: 64, offset: 256)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3503, file: !3504, line: 114, baseType: !136, size: 64, offset: 320)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3503, file: !3504, line: 117, baseType: !136, size: 64, offset: 384)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3503, file: !3504, line: 118, baseType: !136, size: 64, offset: 448)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3503, file: !3504, line: 119, baseType: !136, size: 64, offset: 512)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3503, file: !3504, line: 120, baseType: !136, size: 64, offset: 576)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3503, file: !3504, line: 121, baseType: !136, size: 64, offset: 640)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3503, file: !3504, line: 122, baseType: !136, size: 64, offset: 704)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3503, file: !3504, line: 123, baseType: !136, size: 64, offset: 768)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3503, file: !3504, line: 124, baseType: !136, size: 64, offset: 832)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3503, file: !3504, line: 125, baseType: !136, size: 64, offset: 896)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3503, file: !3504, line: 139, baseType: !136, size: 64, offset: 960)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3503, file: !3504, line: 142, baseType: !136, size: 64, offset: 1024)
!3523 = !DIDerivedType(tag: DW_TAG_member, scope: !3503, file: !3504, line: 144, baseType: !3524, size: 64, offset: 1088)
!3524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3503, file: !3504, line: 144, size: 64, elements: !3525)
!3525 = !{!3526, !3527, !3528}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3524, file: !3504, line: 146, baseType: !204, size: 16)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3524, file: !3504, line: 148, baseType: !390, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3524, file: !3504, line: 150, baseType: !3529, size: 64)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3504, line: 59, size: 64, elements: !3530)
!3530 = !{!3531, !3532, !3533}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3529, file: !3504, line: 61, baseType: !390, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3529, file: !3504, line: 63, baseType: !390, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3529, file: !3504, line: 65, baseType: !390, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3503, file: !3504, line: 153, baseType: !136, size: 64, offset: 1152)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3503, file: !3504, line: 154, baseType: !136, size: 64, offset: 1216)
!3536 = !DIDerivedType(tag: DW_TAG_member, scope: !3503, file: !3504, line: 156, baseType: !3537, size: 64, offset: 1280)
!3537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3503, file: !3504, line: 156, size: 64, elements: !3538)
!3538 = !{!3539, !3540, !3541}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3537, file: !3504, line: 158, baseType: !204, size: 16)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3537, file: !3504, line: 160, baseType: !390, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3537, file: !3504, line: 162, baseType: !3542, size: 64)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3504, line: 69, size: 64, elements: !3543)
!3543 = !{!3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3542, file: !3504, line: 71, baseType: !390, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3542, file: !3504, line: 73, baseType: !390, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3542, file: !3504, line: 75, baseType: !390, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3542, file: !3504, line: 77, baseType: !390, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3542, file: !3504, line: 80, baseType: !390, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3542, file: !3504, line: 83, baseType: !390, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3542, file: !3504, line: 86, baseType: !390, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3542, file: !3504, line: 88, baseType: !390, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3542, file: !3504, line: 93, baseType: !390, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3542, file: !3504, line: 100, baseType: !390, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3479, file: !3404, line: 96, baseType: !447, size: 32, offset: 1024)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3422, file: !3404, line: 352, baseType: !3556, size: 4608, align: 512)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3404, line: 333, size: 4608, align: 512, elements: !3557)
!3557 = !{!3558, !3559, !3566}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3556, file: !3404, line: 334, baseType: !3440, size: 4096, align: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3556, file: !3404, line: 335, baseType: !3560, size: 512, offset: 4096)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3404, line: 312, size: 512, elements: !3561)
!3561 = !{!3562, !3563, !3564}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3560, file: !3404, line: 313, baseType: !390, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3560, file: !3404, line: 314, baseType: !390, size: 64, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3560, file: !3404, line: 315, baseType: !3565, size: 384, offset: 128)
!3565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 384, elements: !470)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3556, file: !3404, line: 336, baseType: !3567, offset: 4608)
!3567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, elements: !349)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3422, file: !3404, line: 353, baseType: !3569, size: 32768)
!3569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 32768, elements: !3570)
!3570 = !{!3571}
!3571 = !DISubrange(count: 4096)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3403, file: !3404, line: 484, baseType: !3409, size: 64, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3403, file: !3404, line: 491, baseType: !3574, size: 128, offset: 256)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3404, line: 404, size: 128, elements: !3575)
!3575 = !{!3576, !3577, !3578}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3574, file: !3404, line: 424, baseType: !390, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3574, file: !3404, line: 432, baseType: !7, size: 32, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3574, file: !3404, line: 440, baseType: !7, size: 32, offset: 96)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3403, file: !3404, line: 498, baseType: !3574, size: 128, offset: 384)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3403, file: !3404, line: 508, baseType: !3410, size: 33280, align: 512, offset: 512)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2381, file: !2382, line: 16, baseType: !334, size: 192, offset: 512)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2381, file: !2382, line: 17, baseType: !188, size: 32, offset: 704)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !859, file: !14, line: 1240, baseType: !133, size: 64, offset: 6912)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !859, file: !14, line: 1243, baseType: !447, size: 32, offset: 6976)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !859, file: !14, line: 1245, baseType: !438, size: 64, offset: 7040)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !859, file: !14, line: 1246, baseType: !438, size: 64, offset: 7104)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !859, file: !14, line: 1248, baseType: !448, size: 32, offset: 7168)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !859, file: !14, line: 1249, baseType: !3589, size: 64, offset: 7232)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !859, file: !14, line: 1252, baseType: !3592, size: 256, offset: 7296)
!3592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 256, elements: !3465)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !859, file: !14, line: 1253, baseType: !3594, size: 128, offset: 7552)
!3594 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3595, line: 21, baseType: !3596)
!3595 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3595, line: 19, size: 128, elements: !3597)
!3597 = !{!3598}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3596, file: !3595, line: 20, baseType: !3599, size: 128)
!3599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 128, elements: !2823)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !859, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !859, file: !14, line: 1261, baseType: !160, size: 256, offset: 7744)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !859, file: !14, line: 1267, baseType: !486, size: 64, offset: 8000)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !859, file: !14, line: 1269, baseType: !3604, size: 64, offset: 8064)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3606)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !609, line: 128, size: 1024, align: 512, elements: !3607)
!3607 = !{!3608, !3612, !3613, !3620, !3626, !3630, !3634, !3638, !3639, !3643, !3647, !3652, !3656}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3606, file: !609, line: 129, baseType: !3609, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!85, !607, !7}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3606, file: !609, line: 130, baseType: !3609, size: 64, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3606, file: !609, line: 131, baseType: !3614, size: 64, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!85, !3617, !3619}
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3606, file: !609, line: 132, baseType: !3621, size: 64, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!85, !3617, !7, !486, !3624}
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3606, file: !609, line: 134, baseType: !3627, size: 64, offset: 256)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!85, !3617}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3606, file: !609, line: 135, baseType: !3631, size: 64, offset: 320)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!85, !607}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3606, file: !609, line: 136, baseType: !3635, size: 64, offset: 384)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{null, !607}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3606, file: !609, line: 137, baseType: !3635, size: 64, offset: 448)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3606, file: !609, line: 138, baseType: !3640, size: 64, offset: 512)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{null, !607, !647}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3606, file: !609, line: 139, baseType: !3644, size: 64, offset: 576)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!144, !607, !144, !85}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3606, file: !609, line: 140, baseType: !3648, size: 64, offset: 640)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!602, !3651}
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3606, file: !609, line: 141, baseType: !3653, size: 64, offset: 704)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!85, !771, !483}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3606, file: !609, line: 142, baseType: !3657, size: 64, offset: 768)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!607, !607, !3660}
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !859, file: !14, line: 1271, baseType: !3663, size: 448, offset: 8128)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2163, line: 63, size: 448, elements: !3664)
!3664 = !{!3665, !3670, !3671, !3672, !3673, !3674, !3675}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3663, file: !2163, line: 64, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!136, !3669, !2161}
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3663, file: !2163, line: 66, baseType: !3666, size: 64, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3663, file: !2163, line: 69, baseType: !762, size: 64, offset: 128)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3663, file: !2163, line: 70, baseType: !85, size: 32, offset: 192)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3663, file: !2163, line: 71, baseType: !7, size: 32, offset: 224)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3663, file: !2163, line: 74, baseType: !214, size: 128, offset: 256)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3663, file: !2163, line: 85, baseType: !3676, size: 64, offset: 384)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !859, file: !14, line: 1274, baseType: !164, size: 64, offset: 8576)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !859, file: !14, line: 1280, baseType: !164, size: 64, offset: 8640)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !859, file: !14, line: 1283, baseType: !85, size: 32, offset: 8704)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !859, file: !14, line: 1286, baseType: !1276, size: 32, offset: 8736)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !859, file: !14, line: 1289, baseType: !1984, size: 64, offset: 8768)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !859, file: !14, line: 1290, baseType: !321, size: 64, offset: 8832)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !859, file: !14, line: 1297, baseType: !568, size: 64, offset: 8896)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !859, file: !14, line: 1304, baseType: !3685, size: 64, offset: 8960)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3686, line: 49, size: 64, elements: !3687)
!3686 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3687 = !{!3688}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3685, file: !3686, line: 50, baseType: !3689, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3686, line: 41, size: 512, align: 512, elements: !3691)
!3691 = !{!3692, !3693, !3698}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3690, file: !3686, line: 43, baseType: !267, size: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3690, file: !3686, line: 45, baseType: !3694, size: 192, offset: 64)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3686, line: 29, size: 192, elements: !3695)
!3695 = !{!3696, !3697}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3694, file: !3686, line: 30, baseType: !214, size: 128)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3694, file: !3686, line: 32, baseType: !762, size: 64, offset: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3690, file: !3686, line: 46, baseType: !762, size: 64, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !859, file: !14, line: 1305, baseType: !3685, size: 64, offset: 9024)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !859, file: !14, line: 1306, baseType: !257, size: 128, align: 64, offset: 9088)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !859, file: !14, line: 1307, baseType: !1458, size: 256, offset: 9216)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !859, file: !14, line: 1309, baseType: !160, size: 256, offset: 9472)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !859, file: !14, line: 1314, baseType: !85, size: 32, offset: 9728)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !859, file: !14, line: 1317, baseType: !267, size: 32, align: 512, offset: 10240)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !859, file: !14, line: 1318, baseType: !214, size: 128, offset: 10304)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !859, file: !14, line: 1320, baseType: !267, size: 32, offset: 10432)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !859, file: !14, line: 1321, baseType: !214, size: 128, offset: 10496)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !648, file: !14, line: 656, baseType: !1009, size: 64, offset: 512)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !648, file: !14, line: 659, baseType: !133, size: 64, offset: 576)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !648, file: !14, line: 663, baseType: !136, size: 64, offset: 640)
!3711 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !14, line: 671, baseType: !3712, size: 32, offset: 704)
!3712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !14, line: 671, size: 32, elements: !3713)
!3713 = !{!3714, !3716}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3712, file: !14, line: 672, baseType: !3715, size: 32)
!3715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3712, file: !14, line: 673, baseType: !7, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !648, file: !14, line: 675, baseType: !722, size: 32, offset: 736)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !648, file: !14, line: 676, baseType: !155, size: 64, offset: 768)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !648, file: !14, line: 677, baseType: !758, size: 128, offset: 832)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !648, file: !14, line: 678, baseType: !758, size: 128, offset: 960)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !648, file: !14, line: 679, baseType: !758, size: 128, offset: 1088)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !648, file: !14, line: 680, baseType: !267, size: 32, offset: 1216)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !648, file: !14, line: 681, baseType: !206, size: 16, offset: 1248)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !648, file: !14, line: 682, baseType: !196, size: 8, offset: 1264)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !648, file: !14, line: 683, baseType: !196, size: 8, offset: 1272)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !648, file: !14, line: 684, baseType: !2294, size: 64, offset: 1280)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !648, file: !14, line: 691, baseType: !136, size: 64, offset: 1344)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !648, file: !14, line: 692, baseType: !422, size: 320, offset: 1408)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !648, file: !14, line: 694, baseType: !136, size: 64, offset: 1728)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !648, file: !14, line: 695, baseType: !136, size: 64, offset: 1792)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !648, file: !14, line: 697, baseType: !325, size: 128, offset: 1856)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !648, file: !14, line: 698, baseType: !214, size: 128, offset: 1984)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !648, file: !14, line: 707, baseType: !214, size: 128, offset: 2112)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !648, file: !14, line: 708, baseType: !214, size: 128, offset: 2240)
!3735 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !14, line: 709, baseType: !3736, size: 128, offset: 2368)
!3736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !14, line: 709, size: 128, elements: !3737)
!3737 = !{!3738, !3739}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3736, file: !14, line: 710, baseType: !321, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3736, file: !14, line: 711, baseType: !257, size: 128, align: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !648, file: !14, line: 713, baseType: !166, size: 64, offset: 2496)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !648, file: !14, line: 714, baseType: !166, size: 64, offset: 2560)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !648, file: !14, line: 715, baseType: !188, size: 32, offset: 2624)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !648, file: !14, line: 716, baseType: !188, size: 32, offset: 2656)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !648, file: !14, line: 717, baseType: !188, size: 32, offset: 2688)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !648, file: !14, line: 719, baseType: !188, size: 32, offset: 2720)
!3746 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !14, line: 721, baseType: !3747, size: 64, offset: 2752)
!3747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !14, line: 721, size: 64, elements: !3748)
!3748 = !{!3749, !3873}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3747, file: !14, line: 722, baseType: !3750, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3752)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !3753)
!3753 = !{!3754, !3755, !3759, !3763, !3767, !3768, !3769, !3775, !3788, !3792, !3796, !3797, !3801, !3802, !3806, !3811, !3812, !3816, !3820, !3826, !3827, !3831, !3832, !3836, !3840, !3841, !3846, !3850, !3854, !3858, !3862, !3863, !3869}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3752, file: !14, line: 1915, baseType: !892, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3752, file: !14, line: 1916, baseType: !3756, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!155, !766, !155, !85}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3752, file: !14, line: 1917, baseType: !3760, size: 64, offset: 128)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!802, !766, !144, !147, !228}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3752, file: !14, line: 1918, baseType: !3764, size: 64, offset: 192)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!802, !766, !486, !147, !228}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3752, file: !14, line: 1919, baseType: !1210, size: 64, offset: 256)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3752, file: !14, line: 1920, baseType: !1210, size: 64, offset: 320)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3752, file: !14, line: 1921, baseType: !3770, size: 64, offset: 384)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!85, !1213, !3773, !7}
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3752, file: !14, line: 1923, baseType: !3776, size: 64, offset: 448)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!85, !766, !3779}
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !3781)
!3781 = !{!3782, !3787}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3780, file: !14, line: 1859, baseType: !3783, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !3784)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!483, !3779, !486, !85, !155, !390, !7}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3780, file: !14, line: 1860, baseType: !155, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3752, file: !14, line: 1924, baseType: !3789, size: 64, offset: 512)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!1629, !766, !1631}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3752, file: !14, line: 1925, baseType: !3793, size: 64, offset: 576)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!762, !766, !7, !136}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3752, file: !14, line: 1926, baseType: !3793, size: 64, offset: 640)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3752, file: !14, line: 1927, baseType: !3798, size: 64, offset: 704)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!85, !766, !1290}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3752, file: !14, line: 1928, baseType: !136, size: 64, offset: 768)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3752, file: !14, line: 1929, baseType: !3803, size: 64, offset: 832)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!85, !647, !766}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3752, file: !14, line: 1930, baseType: !3807, size: 64, offset: 896)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!85, !766, !3810}
!3810 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !133)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3752, file: !14, line: 1931, baseType: !3803, size: 64, offset: 960)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3752, file: !14, line: 1932, baseType: !3813, size: 64, offset: 1024)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!85, !766, !155, !155, !85}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3752, file: !14, line: 1933, baseType: !3817, size: 64, offset: 1088)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!85, !85, !766, !85}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3752, file: !14, line: 1934, baseType: !3821, size: 64, offset: 1152)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!85, !766, !85, !3824}
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3752, file: !14, line: 1935, baseType: !1328, size: 64, offset: 1216)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3752, file: !14, line: 1936, baseType: !3828, size: 64, offset: 1280)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!85, !85}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3752, file: !14, line: 1937, baseType: !3821, size: 64, offset: 1344)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3752, file: !14, line: 1938, baseType: !3833, size: 64, offset: 1408)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!802, !3239, !766, !228, !147, !7}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3752, file: !14, line: 1939, baseType: !3837, size: 64, offset: 1472)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!802, !766, !228, !3239, !147, !7}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3752, file: !14, line: 1940, baseType: !1266, size: 64, offset: 1536)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3752, file: !14, line: 1941, baseType: !3842, size: 64, offset: 1600)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!85, !766, !85, !3845, !1187}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3752, file: !14, line: 1942, baseType: !3847, size: 64, offset: 1664)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!762, !766, !85, !155, !155}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3752, file: !14, line: 1944, baseType: !3851, size: 64, offset: 1728)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{null, !139, !766}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3752, file: !14, line: 1948, baseType: !3855, size: 64, offset: 1792)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!802, !766, !155, !766, !155, !147, !7}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3752, file: !14, line: 1950, baseType: !3859, size: 64, offset: 1856)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!155, !766, !155, !766, !155, !155, !7}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3752, file: !14, line: 1953, baseType: !3813, size: 64, offset: 1920)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3752, file: !14, line: 1954, baseType: !3864, size: 64, offset: 1984)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!85, !3867, !7}
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3752, file: !14, line: 1955, baseType: !3870, size: 64, offset: 2048)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!85, !3867, !3773, !7}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3747, file: !14, line: 723, baseType: !2052, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !648, file: !14, line: 725, baseType: !3875, size: 64, offset: 2816)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !648, file: !14, line: 726, baseType: !1010, size: 1536, align: 64, offset: 2880)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !648, file: !14, line: 727, baseType: !214, size: 128, offset: 4416)
!3879 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !14, line: 728, baseType: !3880, size: 64, offset: 4544)
!3880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !14, line: 728, size: 64, elements: !3881)
!3881 = !{!3882, !3883, !3886, !3887}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3880, file: !14, line: 729, baseType: !3239, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3880, file: !14, line: 730, baseType: !3884, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3880, file: !14, line: 731, baseType: !144, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3880, file: !14, line: 732, baseType: !7, size: 32)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !648, file: !14, line: 735, baseType: !448, size: 32, offset: 4608)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !648, file: !14, line: 738, baseType: !448, size: 32, offset: 4640)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !648, file: !14, line: 739, baseType: !3589, size: 64, offset: 4672)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !648, file: !14, line: 750, baseType: !133, size: 64, offset: 4736)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !608, file: !609, line: 91, baseType: !3893, size: 256, offset: 448)
!3893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 256, elements: !3465)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !608, file: !609, line: 94, baseType: !3895, size: 64, offset: 704)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3896, line: 25, size: 64, elements: !3897)
!3896 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3897 = !{!3898}
!3898 = !DIDerivedType(tag: DW_TAG_member, scope: !3895, file: !3896, line: 26, baseType: !3899, size: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3895, file: !3896, line: 26, size: 64, elements: !3900)
!3900 = !{!3901, !3902}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3899, file: !3896, line: 28, baseType: !391, size: 64, align: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, scope: !3899, file: !3896, line: 30, baseType: !3903, size: 64)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3899, file: !3896, line: 30, size: 64, elements: !3904)
!3904 = !{!3905, !3906}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3903, file: !3896, line: 31, baseType: !267, size: 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3903, file: !3896, line: 32, baseType: !85, size: 32, offset: 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !608, file: !609, line: 95, baseType: !3604, size: 64, offset: 768)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !608, file: !609, line: 96, baseType: !858, size: 64, offset: 832)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !608, file: !609, line: 97, baseType: !136, size: 64, offset: 896)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !608, file: !609, line: 98, baseType: !133, size: 64, offset: 960)
!3911 = !DIDerivedType(tag: DW_TAG_member, scope: !608, file: !609, line: 100, baseType: !3912, size: 128, offset: 1024)
!3912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !609, line: 100, size: 128, elements: !3913)
!3913 = !{!3914, !3915}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3912, file: !609, line: 101, baseType: !214, size: 128)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3912, file: !609, line: 102, baseType: !1640, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !608, file: !609, line: 104, baseType: !214, size: 128, offset: 1152)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !608, file: !609, line: 105, baseType: !214, size: 128, offset: 1280)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !608, file: !609, line: 113, baseType: !3919, size: 128, offset: 1408)
!3919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !609, line: 109, size: 128, elements: !3920)
!3920 = !{!3921, !3922, !3923}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3919, file: !609, line: 110, baseType: !325, size: 128)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3919, file: !609, line: 111, baseType: !623, size: 128)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3919, file: !609, line: 112, baseType: !257, size: 128, align: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !603, file: !604, line: 72, baseType: !858, size: 64, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !603, file: !604, line: 73, baseType: !85, size: 32, offset: 128)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !603, file: !604, line: 74, baseType: !687, size: 64, offset: 192)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !598, file: !599, line: 10, baseType: !607, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !245, file: !14, line: 1015, baseType: !647, size: 64, offset: 1344)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !245, file: !14, line: 1016, baseType: !3750, size: 64, offset: 1408)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !245, file: !14, line: 1018, baseType: !390, size: 64, offset: 1472)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !245, file: !14, line: 1020, baseType: !133, size: 64, offset: 1536)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !245, file: !14, line: 1023, baseType: !133, size: 64, offset: 1600)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !245, file: !14, line: 1027, baseType: !3934, size: 64, offset: 1664)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !245, file: !14, line: 1029, baseType: !1009, size: 64, offset: 1728)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !245, file: !14, line: 1030, baseType: !1276, size: 32, offset: 1792)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !245, file: !14, line: 1031, baseType: !1276, size: 32, offset: 1824)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !140, file: !141, line: 29, baseType: !133, size: 64, offset: 896)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!3941 = !{!3942, !3944, !3949, !3951, !3954, !3959, !3961, !3963, !3965, !3967, !3969, !3971, !3973, !3975, !3977, !3979, !3982, !0, !4766, !4771, !4780, !4782, !4787}
!3942 = !DIGlobalVariableExpression(var: !3943, expr: !DIExpression())
!3943 = distinct !DIGlobalVariable(scope: null, file: !3, line: 758, type: !2822, isLocal: true, isDefinition: true)
!3944 = !DIGlobalVariableExpression(var: !3945, expr: !DIExpression())
!3945 = distinct !DIGlobalVariable(scope: null, file: !3, line: 759, type: !3946, isLocal: true, isDefinition: true)
!3946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 200, elements: !3947)
!3947 = !{!3948}
!3948 = !DISubrange(count: 25)
!3949 = !DIGlobalVariableExpression(var: !3950, expr: !DIExpression())
!3950 = distinct !DIGlobalVariable(scope: null, file: !3, line: 760, type: !3946, isLocal: true, isDefinition: true)
!3951 = !DIGlobalVariableExpression(var: !3952, expr: !DIExpression())
!3952 = distinct !DIGlobalVariable(scope: null, file: !3, line: 760, type: !3953, isLocal: true, isDefinition: true)
!3953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 56, elements: !1814)
!3954 = !DIGlobalVariableExpression(var: !3955, expr: !DIExpression())
!3955 = distinct !DIGlobalVariable(scope: null, file: !3, line: 760, type: !3956, isLocal: true, isDefinition: true)
!3956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 40, elements: !3957)
!3957 = !{!3958}
!3958 = !DISubrange(count: 5)
!3959 = !DIGlobalVariableExpression(var: !3960, expr: !DIExpression())
!3960 = distinct !DIGlobalVariable(scope: null, file: !3, line: 761, type: !3946, isLocal: true, isDefinition: true)
!3961 = !DIGlobalVariableExpression(var: !3962, expr: !DIExpression())
!3962 = distinct !DIGlobalVariable(scope: null, file: !3, line: 762, type: !3946, isLocal: true, isDefinition: true)
!3963 = !DIGlobalVariableExpression(var: !3964, expr: !DIExpression())
!3964 = distinct !DIGlobalVariable(scope: null, file: !3, line: 763, type: !3946, isLocal: true, isDefinition: true)
!3965 = !DIGlobalVariableExpression(var: !3966, expr: !DIExpression())
!3966 = distinct !DIGlobalVariable(scope: null, file: !3, line: 763, type: !3144, isLocal: true, isDefinition: true)
!3967 = !DIGlobalVariableExpression(var: !3968, expr: !DIExpression())
!3968 = distinct !DIGlobalVariable(scope: null, file: !3, line: 763, type: !3144, isLocal: true, isDefinition: true)
!3969 = !DIGlobalVariableExpression(var: !3970, expr: !DIExpression())
!3970 = distinct !DIGlobalVariable(scope: null, file: !3, line: 764, type: !3946, isLocal: true, isDefinition: true)
!3971 = !DIGlobalVariableExpression(var: !3972, expr: !DIExpression())
!3972 = distinct !DIGlobalVariable(scope: null, file: !3, line: 765, type: !3946, isLocal: true, isDefinition: true)
!3973 = !DIGlobalVariableExpression(var: !3974, expr: !DIExpression())
!3974 = distinct !DIGlobalVariable(scope: null, file: !3, line: 766, type: !3946, isLocal: true, isDefinition: true)
!3975 = !DIGlobalVariableExpression(var: !3976, expr: !DIExpression())
!3976 = distinct !DIGlobalVariable(scope: null, file: !3, line: 767, type: !3592, isLocal: true, isDefinition: true)
!3977 = !DIGlobalVariableExpression(var: !3978, expr: !DIExpression())
!3978 = distinct !DIGlobalVariable(scope: null, file: !3, line: 768, type: !3946, isLocal: true, isDefinition: true)
!3979 = !DIGlobalVariableExpression(var: !3980, expr: !DIExpression())
!3980 = distinct !DIGlobalVariable(scope: null, file: !3, line: 769, type: !3981, isLocal: true, isDefinition: true)
!3981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 16, elements: !1812)
!3982 = !DIGlobalVariableExpression(var: !3983, expr: !DIExpression())
!3983 = distinct !DIGlobalVariable(name: "queue_list", scope: !2, file: !3, line: 37, type: !3984, isLocal: true, isDefinition: true)
!3984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3985, size: 2048, elements: !3465)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_queue", file: !3987, line: 19, size: 1536, elements: !3988)
!3987 = !DIFile(filename: "sound/core/seq/seq_queue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1d94675928b0b7e1f2b3b2b6d198043")
!3988 = !{!3989, !3990, !3992, !4134, !4135, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4761, !4762, !4763}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3986, file: !3987, line: 20, baseType: !85, size: 32)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3986, file: !3987, line: 22, baseType: !3991, size: 512, offset: 32)
!3991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 512, elements: !948)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "tickq", scope: !3986, file: !3987, line: 24, baseType: !3993, size: 64, offset: 576)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_prioq", file: !3995, line: 14, size: 192, elements: !3996)
!3995 = !DIFile(filename: "sound/core/seq/seq_prioq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a43ff953124a5eb5f3fb69be68c869b0")
!3996 = !{!3997, !4131, !4132, !4133}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3994, file: !3995, line: 15, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_event_cell", file: !4000, line: 29, size: 384, elements: !4001)
!4000 = !DIFile(filename: "sound/core/seq/seq_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "00d141c657921506643a42c8b258f674")
!4001 = !{!4002, !4113, !4130}
!4002 = !DIDerivedType(tag: DW_TAG_member, scope: !3999, file: !4000, line: 30, baseType: !4003, size: 224)
!4003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3999, file: !4000, line: 30, size: 224, elements: !4004)
!4004 = !{!4005, !4105}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4003, file: !4000, line: 31, baseType: !4006, size: 224)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_event", file: !4007, line: 271, size: 224, elements: !4008)
!4007 = !DIFile(filename: "./include/uapi/sound/asequencer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a270bda5db28a911babca63673f52743")
!4008 = !{!4009, !4011, !4012, !4013, !4014, !4024, !4029, !4030}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4006, file: !4007, line: 272, baseType: !4010, size: 8)
!4010 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_event_type_t", file: !4007, line: 139, baseType: !198)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4006, file: !4007, line: 273, baseType: !198, size: 8, offset: 8)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !4006, file: !4007, line: 274, baseType: !145, size: 8, offset: 16)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4006, file: !4007, line: 276, baseType: !198, size: 8, offset: 24)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4006, file: !4007, line: 277, baseType: !4015, size: 64, offset: 32)
!4015 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "snd_seq_timestamp", file: !4007, line: 225, size: 64, elements: !4016)
!4016 = !{!4017, !4019}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !4015, file: !4007, line: 226, baseType: !4018, size: 32)
!4018 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_tick_time_t", file: !4007, line: 223, baseType: !7)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4015, file: !4007, line: 227, baseType: !4020, size: 64)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_real_time", file: !4007, line: 218, size: 64, elements: !4021)
!4021 = !{!4022, !4023}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4020, file: !4007, line: 219, baseType: !7, size: 32)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4020, file: !4007, line: 220, baseType: !7, size: 32, offset: 32)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4006, file: !4007, line: 279, baseType: !4025, size: 16, offset: 96)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_addr", file: !4007, line: 142, size: 16, elements: !4026)
!4026 = !{!4027, !4028}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !4025, file: !4007, line: 143, baseType: !198, size: 8)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4025, file: !4007, line: 144, baseType: !198, size: 8, offset: 8)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !4006, file: !4007, line: 280, baseType: !4025, size: 16, offset: 112)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4006, file: !4007, line: 282, baseType: !4031, size: 96, offset: 128)
!4031 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "snd_seq_event_data", file: !4007, line: 256, size: 96, elements: !4032)
!4032 = !{!4033, !4041, !4050, !4055, !4060, !4065, !4086, !4087, !4088, !4093, !4098}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !4031, file: !4007, line: 257, baseType: !4034, size: 64)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_note", file: !4007, line: 180, size: 64, elements: !4035)
!4035 = !{!4036, !4037, !4038, !4039, !4040}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !4034, file: !4007, line: 181, baseType: !198, size: 8)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !4034, file: !4007, line: 182, baseType: !198, size: 8, offset: 8)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "velocity", scope: !4034, file: !4007, line: 183, baseType: !198, size: 8, offset: 16)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "off_velocity", scope: !4034, file: !4007, line: 184, baseType: !198, size: 8, offset: 24)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !4034, file: !4007, line: 185, baseType: !7, size: 32, offset: 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !4031, file: !4007, line: 258, baseType: !4042, size: 96)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_ctrl", file: !4007, line: 189, size: 96, elements: !4043)
!4043 = !{!4044, !4045, !4046, !4047, !4048, !4049}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !4042, file: !4007, line: 190, baseType: !198, size: 8)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "unused1", scope: !4042, file: !4007, line: 191, baseType: !198, size: 8, offset: 8)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !4042, file: !4007, line: 191, baseType: !198, size: 8, offset: 16)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "unused3", scope: !4042, file: !4007, line: 191, baseType: !198, size: 8, offset: 24)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4042, file: !4007, line: 192, baseType: !7, size: 32, offset: 32)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4042, file: !4007, line: 193, baseType: !85, size: 32, offset: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "raw8", scope: !4031, file: !4007, line: 259, baseType: !4051, size: 96)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_raw8", file: !4007, line: 197, size: 96, elements: !4052)
!4052 = !{!4053}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4051, file: !4007, line: 198, baseType: !4054, size: 96)
!4054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 96, elements: !3471)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "raw32", scope: !4031, file: !4007, line: 260, baseType: !4056, size: 96)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_raw32", file: !4007, line: 202, size: 96, elements: !4057)
!4057 = !{!4058}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4056, file: !4007, line: 203, baseType: !4059, size: 96)
!4059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !304)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !4031, file: !4007, line: 261, baseType: !4061, size: 96)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_ext", file: !4007, line: 207, size: 96, elements: !4062)
!4062 = !{!4063, !4064}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4061, file: !4007, line: 208, baseType: !7, size: 32)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4061, file: !4007, line: 209, baseType: !133, size: 64, offset: 32)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4031, file: !4007, line: 262, baseType: !4066, size: 96)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_queue_control", file: !4007, line: 236, size: 96, elements: !4067)
!4067 = !{!4068, !4069, !4071}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4066, file: !4007, line: 237, baseType: !198, size: 8)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4066, file: !4007, line: 238, baseType: !4070, size: 24, offset: 8)
!4070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 24, elements: !304)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4066, file: !4007, line: 246, baseType: !4072, size: 64, offset: 32)
!4072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4066, file: !4007, line: 239, size: 64, elements: !4073)
!4073 = !{!4074, !4075, !4076, !4077, !4082, !4084}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4072, file: !4007, line: 240, baseType: !85, size: 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4072, file: !4007, line: 241, baseType: !4015, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !4072, file: !4007, line: 242, baseType: !7, size: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "skew", scope: !4072, file: !4007, line: 243, baseType: !4078, size: 64)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_queue_skew", file: !4007, line: 230, size: 64, elements: !4079)
!4079 = !{!4080, !4081}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4078, file: !4007, line: 231, baseType: !7, size: 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4078, file: !4007, line: 232, baseType: !7, size: 32, offset: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "d32", scope: !4072, file: !4007, line: 244, baseType: !4083, size: 64)
!4083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1812)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "d8", scope: !4072, file: !4007, line: 245, baseType: !4085, size: 64)
!4085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 64, elements: !2553)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4031, file: !4007, line: 263, baseType: !4015, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4031, file: !4007, line: 264, baseType: !4025, size: 16)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4031, file: !4007, line: 265, baseType: !4089, size: 32)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_connect", file: !4007, line: 148, size: 32, elements: !4090)
!4090 = !{!4091, !4092}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "sender", scope: !4089, file: !4007, line: 149, baseType: !4025, size: 16)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !4089, file: !4007, line: 150, baseType: !4025, size: 16, offset: 16)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !4031, file: !4007, line: 266, baseType: !4094, size: 64)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_result", file: !4007, line: 212, size: 64, elements: !4095)
!4095 = !{!4096, !4097}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4094, file: !4007, line: 213, baseType: !85, size: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !4094, file: !4007, line: 214, baseType: !85, size: 32, offset: 32)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "quote", scope: !4031, file: !4007, line: 267, baseType: !4099, size: 96)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_quote", file: !4007, line: 250, size: 96, elements: !4100)
!4100 = !{!4101, !4102, !4103}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !4099, file: !4007, line: 251, baseType: !4025, size: 16)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4099, file: !4007, line: 252, baseType: !206, size: 16, offset: 16)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4099, file: !4007, line: 253, baseType: !4104, size: 64, offset: 32)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "ump", scope: !4003, file: !4000, line: 32, baseType: !4106, size: 224)
!4106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__snd_seq_event", file: !4000, line: 15, size: 224, elements: !4107)
!4107 = !{!4108, !4109}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "legacy", scope: !4106, file: !4000, line: 16, baseType: !4006, size: 224)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4106, file: !4000, line: 25, baseType: !4110, size: 224)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4106, file: !4000, line: 20, size: 224, elements: !4111)
!4111 = !{!4112}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4110, file: !4000, line: 21, baseType: !4006, size: 224)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !3999, file: !4000, line: 34, baseType: !4114, size: 64, offset: 256)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_pool", file: !4000, line: 43, size: 704, elements: !4116)
!4116 = !{!4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4115, file: !4000, line: 44, baseType: !3998, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4115, file: !4000, line: 45, baseType: !3998, size: 64, offset: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "total_elements", scope: !4115, file: !4000, line: 47, baseType: !85, size: 32, offset: 128)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !4115, file: !4000, line: 48, baseType: !188, size: 32, offset: 160)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4115, file: !4000, line: 50, baseType: !85, size: 32, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "room", scope: !4115, file: !4000, line: 51, baseType: !85, size: 32, offset: 224)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !4115, file: !4000, line: 53, baseType: !85, size: 32, offset: 256)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "max_used", scope: !4115, file: !4000, line: 56, baseType: !85, size: 32, offset: 288)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_nopool", scope: !4115, file: !4000, line: 57, baseType: !85, size: 32, offset: 320)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_failures", scope: !4115, file: !4000, line: 58, baseType: !85, size: 32, offset: 352)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_success", scope: !4115, file: !4000, line: 59, baseType: !85, size: 32, offset: 384)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "output_sleep", scope: !4115, file: !4000, line: 62, baseType: !334, size: 192, offset: 448)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4115, file: !4000, line: 65, baseType: !267, size: 32, offset: 640)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3999, file: !4000, line: 35, baseType: !3998, size: 64, offset: 320)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3994, file: !3995, line: 16, baseType: !3998, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "cells", scope: !3994, file: !3995, line: 17, baseType: !85, size: 32, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3994, file: !3995, line: 18, baseType: !267, size: 32, offset: 160)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "timeq", scope: !3986, file: !3987, line: 25, baseType: !3993, size: 64, offset: 640)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3986, file: !3987, line: 27, baseType: !4136, size: 64, offset: 704)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_timer", file: !4138, line: 18, size: 1088, elements: !4139)
!4138 = !DIFile(filename: "sound/core/seq/seq_timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef518dcd507810ac3e20dcc3b1742c28")
!4139 = !{!4140, !4141, !4142, !4143, !4144, !4147, !4153, !4154, !4155, !4164, !4744, !4745, !4746, !4747, !4748, !4749}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !4137, file: !4138, line: 21, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4137, file: !4138, line: 22, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "tempo", scope: !4137, file: !4138, line: 24, baseType: !7, size: 32, offset: 32)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "ppq", scope: !4137, file: !4138, line: 25, baseType: !85, size: 32, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "cur_time", scope: !4137, file: !4138, line: 27, baseType: !4145, size: 64, offset: 96)
!4145 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_real_time_t", file: !4146, line: 12, baseType: !4020)
!4146 = !DIFile(filename: "./include/sound/seq_kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "583a8c45ab6a5155295b27a2a548f2e3")
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !4137, file: !4138, line: 28, baseType: !4148, size: 192, offset: 192)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_timer_tick", file: !4138, line: 12, size: 192, elements: !4149)
!4149 = !{!4150, !4151, !4152}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "cur_tick", scope: !4148, file: !4138, line: 13, baseType: !4018, size: 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4148, file: !4138, line: 14, baseType: !136, size: 64, offset: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "fraction", scope: !4148, file: !4138, line: 15, baseType: !136, size: 64, offset: 128)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "tick_updated", scope: !4137, file: !4138, line: 29, baseType: !85, size: 32, offset: 384)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4137, file: !4138, line: 31, baseType: !85, size: 32, offset: 416)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "alsa_id", scope: !4137, file: !4138, line: 32, baseType: !4156, size: 160, offset: 448)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_timer_id", file: !4157, line: 897, size: 160, elements: !4158)
!4157 = !DIFile(filename: "./include/uapi/sound/asound.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6c7c1b6718812fde08ec0a715510ddd")
!4158 = !{!4159, !4160, !4161, !4162, !4163}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "dev_class", scope: !4156, file: !4157, line: 898, baseType: !85, size: 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "dev_sclass", scope: !4156, file: !4157, line: 899, baseType: !85, size: 32, offset: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4156, file: !4157, line: 900, baseType: !85, size: 32, offset: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4156, file: !4157, line: 901, baseType: !85, size: 32, offset: 96)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4156, file: !4157, line: 902, baseType: !85, size: 32, offset: 128)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "timeri", scope: !4137, file: !4138, line: 33, baseType: !4165, size: 64, offset: 640)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_timer_instance", file: !4167, line: 82, size: 1664, elements: !4168)
!4167 = !DIFile(filename: "./include/sound/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b2f56914e2e0d40353cf82d02171e82")
!4168 = !{!4169, !4713, !4714, !4715, !4716, !4720, !4724, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4166, file: !4167, line: 83, baseType: !4170, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_timer", file: !4167, line: 57, size: 3456, elements: !4172)
!4172 = !{!4173, !4174, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4677, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_class", scope: !4171, file: !4167, line: 58, baseType: !85, size: 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4171, file: !4167, line: 59, baseType: !4175, size: 64, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_card", file: !4177, line: 80, size: 12288, elements: !4178)
!4177 = !DIFile(filename: "./include/sound/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a50d220b71ed843af7ad75eb7639e6e")
!4178 = !{!4179, !4180, !4181, !4182, !4183, !4187, !4188, !4189, !4193, !4194, !4195, !4199, !4200, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4641, !4642, !4643, !4646, !4647, !4648, !4649, !4650, !4651, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4176, file: !4177, line: 81, baseType: !85, size: 32)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4176, file: !4177, line: 84, baseType: !2822, size: 128, offset: 32)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4176, file: !4177, line: 85, baseType: !2822, size: 128, offset: 160)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !4176, file: !4177, line: 86, baseType: !3592, size: 256, offset: 288)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "longname", scope: !4176, file: !4177, line: 87, baseType: !4184, size: 640, offset: 544)
!4184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 640, elements: !4185)
!4185 = !{!4186}
!4186 = !DISubrange(count: 80)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !4176, file: !4177, line: 88, baseType: !3592, size: 256, offset: 1184)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "mixername", scope: !4176, file: !4177, line: 89, baseType: !4184, size: 640, offset: 1440)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "components", scope: !4176, file: !4177, line: 90, baseType: !4190, size: 1024, offset: 2080)
!4190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 1024, elements: !4191)
!4191 = !{!4192}
!4192 = !DISubrange(count: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4176, file: !4177, line: 92, baseType: !892, size: 64, offset: 3136)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4176, file: !4177, line: 94, baseType: !133, size: 64, offset: 3200)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4176, file: !4177, line: 95, baseType: !4196, size: 64, offset: 3264)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{null, !4175}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4176, file: !4177, line: 97, baseType: !214, size: 128, offset: 3328)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_dev", scope: !4176, file: !4177, line: 99, baseType: !4201, size: 64, offset: 3456)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !4203)
!4203 = !{!4204, !4205, !4206, !4209, !4210, !4263, !4333, !4334, !4335, !4336, !4337, !4344, !4436, !4449, !4459, !4463, !4465, !4466, !4467, !4471, !4478, !4479, !4482, !4485, !4489, !4492, !4493, !4494, !4495, !4496, !4497, !4527, !4528, !4529, !4532, !4535, !4544, !4545, !4546, !4547, !4548, !4549}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4202, file: !70, line: 706, baseType: !905, size: 512)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4202, file: !70, line: 707, baseType: !4201, size: 64, offset: 512)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4202, file: !70, line: 709, baseType: !4207, size: 64, offset: 576)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4202, file: !70, line: 711, baseType: !486, size: 64, offset: 640)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4202, file: !70, line: 712, baseType: !4211, size: 64, offset: 704)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4213)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4214)
!4214 = !{!4215, !4216, !4217, !4223, !4228, !4232}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4213, file: !70, line: 90, baseType: !486, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4213, file: !70, line: 91, baseType: !985, size: 64, offset: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4213, file: !70, line: 92, baseType: !4218, size: 64, offset: 128)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!85, !4221, !941}
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4202)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4213, file: !70, line: 93, baseType: !4224, size: 64, offset: 192)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!144, !4221, !4227, !1553, !1554}
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4213, file: !70, line: 95, baseType: !4229, size: 64, offset: 256)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{null, !4201}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4213, file: !70, line: 97, baseType: !4233, size: 64, offset: 320)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4235)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4236)
!4236 = !{!4237, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4235, file: !77, line: 287, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!85, !4201}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4235, file: !77, line: 288, baseType: !4229, size: 64, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4235, file: !77, line: 289, baseType: !4238, size: 64, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4235, file: !77, line: 290, baseType: !4238, size: 64, offset: 192)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4235, file: !77, line: 291, baseType: !4238, size: 64, offset: 256)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4235, file: !77, line: 292, baseType: !4238, size: 64, offset: 320)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4235, file: !77, line: 293, baseType: !4238, size: 64, offset: 384)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4235, file: !77, line: 294, baseType: !4238, size: 64, offset: 448)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4235, file: !77, line: 295, baseType: !4238, size: 64, offset: 512)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4235, file: !77, line: 296, baseType: !4238, size: 64, offset: 576)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4235, file: !77, line: 297, baseType: !4238, size: 64, offset: 640)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4235, file: !77, line: 298, baseType: !4238, size: 64, offset: 704)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4235, file: !77, line: 299, baseType: !4238, size: 64, offset: 768)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4235, file: !77, line: 300, baseType: !4238, size: 64, offset: 832)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4235, file: !77, line: 301, baseType: !4238, size: 64, offset: 896)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4235, file: !77, line: 302, baseType: !4238, size: 64, offset: 960)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4235, file: !77, line: 303, baseType: !4238, size: 64, offset: 1024)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4235, file: !77, line: 304, baseType: !4238, size: 64, offset: 1088)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4235, file: !77, line: 305, baseType: !4238, size: 64, offset: 1152)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4235, file: !77, line: 306, baseType: !4238, size: 64, offset: 1216)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4235, file: !77, line: 307, baseType: !4238, size: 64, offset: 1280)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4235, file: !77, line: 308, baseType: !4238, size: 64, offset: 1344)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4235, file: !77, line: 309, baseType: !4238, size: 64, offset: 1408)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4202, file: !70, line: 714, baseType: !4264, size: 64, offset: 768)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4266)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4267, line: 80, size: 1344, elements: !4268)
!4267 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4268 = !{!4269, !4270, !4271, !4272, !4273, !4274, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4332}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4266, file: !4267, line: 81, baseType: !486, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4266, file: !4267, line: 82, baseType: !486, size: 64, offset: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4266, file: !4267, line: 83, baseType: !985, size: 64, offset: 128)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4266, file: !4267, line: 84, baseType: !985, size: 64, offset: 192)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4266, file: !4267, line: 85, baseType: !985, size: 64, offset: 256)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4266, file: !4267, line: 87, baseType: !4275, size: 64, offset: 320)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!85, !4201, !4278}
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4280)
!4280 = !{!4281, !4282, !4283, !4284, !4285, !4286, !4287, !4291, !4295, !4296, !4297, !4298, !4299, !4307, !4308, !4309, !4310, !4311, !4312}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4279, file: !64, line: 97, baseType: !486, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4279, file: !64, line: 98, baseType: !4264, size: 64, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4279, file: !64, line: 100, baseType: !892, size: 64, offset: 128)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4279, file: !64, line: 101, baseType: !486, size: 64, offset: 192)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4279, file: !64, line: 103, baseType: !483, size: 8, offset: 256)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4279, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4279, file: !64, line: 106, baseType: !4288, size: 64, offset: 320)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4290)
!4290 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !64, line: 106, flags: DIFlagFwdDecl)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4279, file: !64, line: 107, baseType: !4292, size: 64, offset: 384)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4294)
!4294 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !64, line: 107, flags: DIFlagFwdDecl)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4279, file: !64, line: 109, baseType: !4238, size: 64, offset: 448)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4279, file: !64, line: 110, baseType: !4229, size: 64, offset: 512)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4279, file: !64, line: 111, baseType: !4238, size: 64, offset: 576)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4279, file: !64, line: 112, baseType: !4229, size: 64, offset: 640)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4279, file: !64, line: 113, baseType: !4300, size: 64, offset: 704)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!85, !4201, !4303}
!4303 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4304)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4305)
!4305 = !{!4306}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4304, file: !77, line: 59, baseType: !85, size: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4279, file: !64, line: 114, baseType: !4238, size: 64, offset: 768)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4279, file: !64, line: 115, baseType: !985, size: 64, offset: 832)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4279, file: !64, line: 116, baseType: !985, size: 64, offset: 896)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4279, file: !64, line: 118, baseType: !4233, size: 64, offset: 960)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4279, file: !64, line: 119, baseType: !4229, size: 64, offset: 1024)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4279, file: !64, line: 121, baseType: !4313, size: 64, offset: 1088)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4266, file: !4267, line: 88, baseType: !4218, size: 64, offset: 384)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4266, file: !4267, line: 89, baseType: !4238, size: 64, offset: 448)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4266, file: !4267, line: 90, baseType: !4229, size: 64, offset: 512)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4266, file: !4267, line: 91, baseType: !4229, size: 64, offset: 576)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4266, file: !4267, line: 92, baseType: !4229, size: 64, offset: 640)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4266, file: !4267, line: 94, baseType: !4238, size: 64, offset: 704)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4266, file: !4267, line: 95, baseType: !4238, size: 64, offset: 768)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4266, file: !4267, line: 97, baseType: !4300, size: 64, offset: 832)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4266, file: !4267, line: 98, baseType: !4238, size: 64, offset: 896)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4266, file: !4267, line: 100, baseType: !4238, size: 64, offset: 960)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4266, file: !4267, line: 102, baseType: !4238, size: 64, offset: 1024)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4266, file: !4267, line: 103, baseType: !4229, size: 64, offset: 1088)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4266, file: !4267, line: 105, baseType: !4233, size: 64, offset: 1152)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4266, file: !4267, line: 107, baseType: !4329, size: 64, offset: 1216)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4331)
!4331 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4267, line: 107, flags: DIFlagFwdDecl)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4266, file: !4267, line: 109, baseType: !483, size: 8, offset: 1280)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4202, file: !70, line: 715, baseType: !4278, size: 64, offset: 832)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4202, file: !70, line: 717, baseType: !133, size: 64, offset: 896)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4202, file: !70, line: 719, baseType: !133, size: 64, offset: 960)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4202, file: !70, line: 721, baseType: !160, size: 256, offset: 1024)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4202, file: !70, line: 725, baseType: !4338, size: 448, offset: 1280)
!4338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4339)
!4339 = !{!4340, !4341, !4342, !4343}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4338, file: !70, line: 518, baseType: !214, size: 128)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4338, file: !70, line: 519, baseType: !214, size: 128, offset: 128)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4338, file: !70, line: 520, baseType: !214, size: 128, offset: 256)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4338, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4202, file: !70, line: 726, baseType: !4345, size: 2496, offset: 1728)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4346)
!4346 = !{!4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4429, !4433}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4345, file: !77, line: 664, baseType: !4303, size: 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4345, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4345, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4345, file: !77, line: 667, baseType: !483, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4345, file: !77, line: 668, baseType: !483, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4345, file: !77, line: 669, baseType: !483, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4345, file: !77, line: 670, baseType: !483, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4345, file: !77, line: 671, baseType: !483, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4345, file: !77, line: 672, baseType: !483, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4345, file: !77, line: 673, baseType: !483, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4345, file: !77, line: 674, baseType: !483, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4345, file: !77, line: 675, baseType: !447, size: 32, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4345, file: !77, line: 676, baseType: !267, size: 32, offset: 96)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4345, file: !77, line: 678, baseType: !214, size: 128, offset: 128)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4345, file: !77, line: 679, baseType: !1676, size: 256, offset: 256)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4345, file: !77, line: 680, baseType: !4363, size: 64, offset: 512)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4365, line: 43, size: 1536, elements: !4366)
!4365 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4366 = !{!4367, !4368, !4369, !4370, !4371, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4364, file: !4365, line: 44, baseType: !486, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4364, file: !4365, line: 45, baseType: !85, size: 32, offset: 64)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4364, file: !4365, line: 46, baseType: !214, size: 128, offset: 128)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4364, file: !4365, line: 47, baseType: !267, size: 32, offset: 256)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4364, file: !4365, line: 48, baseType: !4372, size: 64, offset: 320)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4364, file: !4365, line: 49, baseType: !1922, size: 320, offset: 384)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4364, file: !4365, line: 50, baseType: !136, size: 64, offset: 704)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4364, file: !4365, line: 51, baseType: !2518, size: 64, offset: 768)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4364, file: !4365, line: 52, baseType: !2518, size: 64, offset: 832)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4364, file: !4365, line: 53, baseType: !2518, size: 64, offset: 896)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4364, file: !4365, line: 54, baseType: !2518, size: 64, offset: 960)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4364, file: !4365, line: 55, baseType: !2518, size: 64, offset: 1024)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4364, file: !4365, line: 56, baseType: !136, size: 64, offset: 1088)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4364, file: !4365, line: 57, baseType: !136, size: 64, offset: 1152)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4364, file: !4365, line: 58, baseType: !136, size: 64, offset: 1216)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4364, file: !4365, line: 59, baseType: !136, size: 64, offset: 1280)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4364, file: !4365, line: 60, baseType: !136, size: 64, offset: 1344)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4364, file: !4365, line: 61, baseType: !4201, size: 64, offset: 1408)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4364, file: !4365, line: 62, baseType: !483, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4364, file: !4365, line: 63, baseType: !483, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4345, file: !77, line: 681, baseType: !483, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4345, file: !77, line: 682, baseType: !483, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4345, file: !77, line: 683, baseType: !483, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4345, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4345, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4345, file: !77, line: 690, baseType: !2510, size: 512, offset: 640)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4345, file: !77, line: 691, baseType: !390, size: 64, offset: 1152)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4345, file: !77, line: 692, baseType: !1458, size: 256, offset: 1216)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4345, file: !77, line: 693, baseType: !334, size: 192, offset: 1472)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4345, file: !77, line: 694, baseType: !4372, size: 64, offset: 1664)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4345, file: !77, line: 695, baseType: !188, size: 32, offset: 1728)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4345, file: !77, line: 696, baseType: !188, size: 32, offset: 1760)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4345, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4345, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4345, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4345, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4345, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4345, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4345, file: !77, line: 703, baseType: !483, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4345, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4345, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4345, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4345, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4345, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4345, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4345, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4345, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4345, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4345, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4345, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4345, file: !77, line: 715, baseType: !390, size: 64, offset: 2048)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4345, file: !77, line: 716, baseType: !390, size: 64, offset: 2112)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4345, file: !77, line: 717, baseType: !390, size: 64, offset: 2176)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4345, file: !77, line: 718, baseType: !390, size: 64, offset: 2240)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4345, file: !77, line: 720, baseType: !4424, size: 64, offset: 2304)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4426)
!4426 = !{!4427, !4428}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4425, file: !77, line: 633, baseType: !267, size: 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4425, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4345, file: !77, line: 721, baseType: !4430, size: 64, offset: 2368)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{null, !4201, !407}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4345, file: !77, line: 722, baseType: !4434, size: 64, offset: 2432)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4202, file: !70, line: 727, baseType: !4437, size: 64, offset: 4224)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4439)
!4439 = !{!4440, !4441, !4442, !4446, !4447, !4448}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4438, file: !77, line: 743, baseType: !4235, size: 1472)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4438, file: !77, line: 744, baseType: !4238, size: 64, offset: 1472)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4438, file: !77, line: 745, baseType: !4443, size: 64, offset: 1536)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{null, !4201, !483}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4438, file: !77, line: 746, baseType: !4238, size: 64, offset: 1600)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4438, file: !77, line: 747, baseType: !4229, size: 64, offset: 1664)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4438, file: !77, line: 748, baseType: !4229, size: 64, offset: 1728)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4202, file: !70, line: 736, baseType: !4450, size: 128, offset: 4288)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4451)
!4451 = !{!4452, !4456}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4450, file: !70, line: 531, baseType: !4453, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4455, line: 13, flags: DIFlagFwdDecl)
!4455 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4450, file: !70, line: 532, baseType: !4457, size: 64, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4202, file: !70, line: 738, baseType: !4460, size: 64, offset: 4416)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4462)
!4462 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4202, file: !70, line: 740, baseType: !4464, size: 64, offset: 4480)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4202, file: !70, line: 741, baseType: !390, size: 64, offset: 4544)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4202, file: !70, line: 746, baseType: !390, size: 64, offset: 4608)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4202, file: !70, line: 747, baseType: !4468, size: 64, offset: 4672)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4470)
!4470 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4202, file: !70, line: 749, baseType: !4472, size: 64, offset: 4736)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4474)
!4474 = !{!4475, !4476, !4477}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4473, file: !70, line: 433, baseType: !7, size: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4473, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4473, file: !70, line: 435, baseType: !136, size: 64, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4202, file: !70, line: 751, baseType: !214, size: 128, offset: 4800)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4202, file: !70, line: 762, baseType: !4480, size: 64, offset: 4928)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4202, file: !70, line: 770, baseType: !4483, offset: 4992)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4484, line: 5, elements: !1324)
!4484 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4202, file: !70, line: 772, baseType: !4486, size: 64, offset: 4992)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4488, line: 18, flags: DIFlagFwdDecl)
!4488 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4202, file: !70, line: 773, baseType: !4490, size: 64, offset: 5056)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4267, line: 22, flags: DIFlagFwdDecl)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4202, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4202, file: !70, line: 778, baseType: !722, size: 32, offset: 5152)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4202, file: !70, line: 779, baseType: !447, size: 32, offset: 5184)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4202, file: !70, line: 781, baseType: !267, size: 32, offset: 5216)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4202, file: !70, line: 782, baseType: !214, size: 128, offset: 5248)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4202, file: !70, line: 784, baseType: !4498, size: 64, offset: 5376)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4500)
!4500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4501, line: 52, size: 768, elements: !4502)
!4501 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4502 = !{!4503, !4504, !4505, !4506, !4507, !4511, !4515, !4516, !4517, !4518, !4522, !4526}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4500, file: !4501, line: 53, baseType: !486, size: 64)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4500, file: !4501, line: 55, baseType: !985, size: 64, offset: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4500, file: !4501, line: 56, baseType: !985, size: 64, offset: 128)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4500, file: !4501, line: 58, baseType: !4218, size: 64, offset: 192)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4500, file: !4501, line: 59, baseType: !4508, size: 64, offset: 256)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!144, !4221, !4227}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4500, file: !4501, line: 61, baseType: !4512, size: 64, offset: 320)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{null, !4498}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4500, file: !4501, line: 62, baseType: !4229, size: 64, offset: 384)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4500, file: !4501, line: 64, baseType: !4238, size: 64, offset: 448)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4500, file: !4501, line: 66, baseType: !1521, size: 64, offset: 512)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4500, file: !4501, line: 67, baseType: !4519, size: 64, offset: 576)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!1419, !4221}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4500, file: !4501, line: 69, baseType: !4523, size: 64, offset: 640)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{null, !4221, !1553, !1554}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4500, file: !4501, line: 71, baseType: !4233, size: 64, offset: 704)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4202, file: !70, line: 785, baseType: !985, size: 64, offset: 5440)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4202, file: !70, line: 787, baseType: !4229, size: 64, offset: 5504)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4202, file: !70, line: 788, baseType: !4530, size: 64, offset: 5568)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4202, file: !70, line: 789, baseType: !4533, size: 64, offset: 5632)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4202, file: !70, line: 791, baseType: !4536, size: 64, offset: 5696)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4538)
!4538 = !{!4539, !4540, !4541, !4542, !4543}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4537, file: !70, line: 598, baseType: !92, size: 32)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4537, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4537, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4537, file: !70, line: 601, baseType: !483, size: 8, offset: 96)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4537, file: !70, line: 602, baseType: !483, size: 8, offset: 104)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4202, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4202, file: !70, line: 795, baseType: !483, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4202, file: !70, line: 796, baseType: !483, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4202, file: !70, line: 797, baseType: !483, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4202, file: !70, line: 798, baseType: !483, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4202, file: !70, line: 799, baseType: !483, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "last_numid", scope: !4176, file: !4177, line: 100, baseType: !7, size: 32, offset: 3520)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "controls_rwsem", scope: !4176, file: !4177, line: 101, baseType: !422, size: 320, offset: 3584)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files_rwlock", scope: !4176, file: !4177, line: 102, baseType: !285, size: 64, offset: 3904)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "controls_count", scope: !4176, file: !4177, line: 103, baseType: !85, size: 32, offset: 3968)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "user_ctl_alloc_size", scope: !4176, file: !4177, line: 104, baseType: !147, size: 64, offset: 4032)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !4176, file: !4177, line: 105, baseType: !214, size: 128, offset: 4096)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files", scope: !4176, file: !4177, line: 106, baseType: !214, size: 128, offset: 4224)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_numids", scope: !4176, file: !4177, line: 108, baseType: !849, size: 128, offset: 4352)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash", scope: !4176, file: !4177, line: 109, baseType: !849, size: 128, offset: 4480)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash_collision", scope: !4176, file: !4177, line: 110, baseType: !483, size: 8, offset: 4608)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !4176, file: !4177, line: 113, baseType: !4561, size: 64, offset: 4672)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry", file: !4563, line: 60, size: 1216, elements: !4564)
!4563 = !DIFile(filename: "./include/sound/info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "060f8a4a29808d9f7cc7b628d26ba172")
!4564 = !{!4565, !4566, !4567, !4568, !4569, !4628, !4629, !4630, !4631, !4635, !4638, !4639, !4640}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4562, file: !4563, line: 61, baseType: !486, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4562, file: !4563, line: 62, baseType: !651, size: 16, offset: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4562, file: !4563, line: 63, baseType: !762, size: 64, offset: 128)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !4562, file: !4563, line: 64, baseType: !206, size: 16, offset: 192)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4562, file: !4563, line: 68, baseType: !4570, size: 128, offset: 256)
!4570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4562, file: !4563, line: 65, size: 128, elements: !4571)
!4571 = !{!4572, !4589}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !4570, file: !4563, line: 66, baseType: !4573, size: 128)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry_text", file: !4563, line: 29, size: 128, elements: !4574)
!4574 = !{!4575, !4588}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4573, file: !4563, line: 30, baseType: !4576, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{null, !4561, !4579}
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_buffer", file: !4563, line: 15, size: 256, elements: !4581)
!4581 = !{!4582, !4583, !4584, !4585, !4586, !4587}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4580, file: !4563, line: 16, baseType: !144, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !4580, file: !4563, line: 17, baseType: !7, size: 32, offset: 64)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4580, file: !4563, line: 18, baseType: !7, size: 32, offset: 96)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4580, file: !4563, line: 19, baseType: !7, size: 32, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4580, file: !4563, line: 20, baseType: !85, size: 32, offset: 160)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4580, file: !4563, line: 21, baseType: !85, size: 32, offset: 192)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4573, file: !4563, line: 32, baseType: !4576, size: 64, offset: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4570, file: !4563, line: 67, baseType: !4590, size: 64)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4592)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry_ops", file: !4563, line: 36, size: 512, elements: !4593)
!4593 = !{!4594, !4598, !4602, !4606, !4610, !4614, !4620, !4624}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4592, file: !4563, line: 37, baseType: !4595, size: 64)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!85, !4561, !206, !1187}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4592, file: !4563, line: 39, baseType: !4599, size: 64, offset: 64)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!85, !4561, !206, !133}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4592, file: !4563, line: 41, baseType: !4603, size: 64, offset: 128)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!802, !4561, !133, !766, !144, !147, !155}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4592, file: !4563, line: 44, baseType: !4607, size: 64, offset: 192)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!802, !4561, !133, !766, !486, !147, !155}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4592, file: !4563, line: 47, baseType: !4611, size: 64, offset: 256)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!155, !4561, !133, !766, !155, !85}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4592, file: !4563, line: 50, baseType: !4615, size: 64, offset: 320)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!1629, !4561, !133, !766, !4618}
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !1633, line: 40, baseType: !1632)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4592, file: !4563, line: 53, baseType: !4621, size: 64, offset: 384)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!85, !4561, !133, !766, !7, !136}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4592, file: !4563, line: 55, baseType: !4625, size: 64, offset: 448)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!85, !4561, !133, !647, !766, !1290}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4562, file: !4563, line: 69, baseType: !4561, size: 64, offset: 384)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4562, file: !4563, line: 70, baseType: !892, size: 64, offset: 448)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4562, file: !4563, line: 71, baseType: !133, size: 64, offset: 512)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4562, file: !4563, line: 72, baseType: !4632, size: 64, offset: 576)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !4561}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4562, file: !4563, line: 73, baseType: !4636, size: 64, offset: 640)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4177, line: 114, flags: DIFlagFwdDecl)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !4562, file: !4563, line: 74, baseType: !160, size: 256, offset: 704)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4562, file: !4563, line: 75, baseType: !214, size: 128, offset: 960)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4562, file: !4563, line: 76, baseType: !214, size: 128, offset: 1088)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root_link", scope: !4176, file: !4177, line: 114, baseType: !4636, size: 64, offset: 4736)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "files_list", scope: !4176, file: !4177, line: 116, baseType: !214, size: 128, offset: 4800)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "s_f_ops", scope: !4176, file: !4177, line: 117, baseType: !4644, size: 64, offset: 4928)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_shutdown_f_ops", file: !4177, line: 117, flags: DIFlagFwdDecl)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !4176, file: !4177, line: 119, baseType: !267, size: 32, offset: 4992)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4176, file: !4177, line: 120, baseType: !85, size: 32, offset: 5024)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "release_completion", scope: !4176, file: !4177, line: 121, baseType: !1675, size: 64, offset: 5056)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4176, file: !4177, line: 122, baseType: !4201, size: 64, offset: 5120)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "card_dev", scope: !4176, file: !4177, line: 123, baseType: !4202, size: 5824, offset: 5184)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4176, file: !4177, line: 124, baseType: !4652, size: 256, offset: 11008)
!4652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !986, size: 256, elements: !330)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4176, file: !4177, line: 125, baseType: !483, size: 8, offset: 11264)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !4176, file: !4177, line: 126, baseType: !483, size: 8, offset: 11272)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "releasing", scope: !4176, file: !4177, line: 127, baseType: !483, size: 8, offset: 11280)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "sync_irq", scope: !4176, file: !4177, line: 128, baseType: !85, size: 32, offset: 11296)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "remove_sleep", scope: !4176, file: !4177, line: 129, baseType: !334, size: 192, offset: 11328)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "total_pcm_alloc_bytes", scope: !4176, file: !4177, line: 131, baseType: !147, size: 64, offset: 11520)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "memory_mutex", scope: !4176, file: !4177, line: 132, baseType: !160, size: 256, offset: 11584)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4176, file: !4177, line: 138, baseType: !7, size: 32, offset: 11840)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref", scope: !4176, file: !4177, line: 139, baseType: !188, size: 32, offset: 11872)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "power_sleep", scope: !4176, file: !4177, line: 140, baseType: !334, size: 192, offset: 11904)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref_sleep", scope: !4176, file: !4177, line: 141, baseType: !334, size: 192, offset: 12096)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4171, file: !4167, line: 60, baseType: !892, size: 64, offset: 128)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_device", scope: !4171, file: !4167, line: 61, baseType: !85, size: 32, offset: 192)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_subdevice", scope: !4171, file: !4167, line: 62, baseType: !85, size: 32, offset: 224)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4171, file: !4167, line: 63, baseType: !3991, size: 512, offset: 256)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4171, file: !4167, line: 64, baseType: !4184, size: 640, offset: 768)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4171, file: !4167, line: 65, baseType: !7, size: 32, offset: 1408)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !4171, file: !4167, line: 66, baseType: !85, size: 32, offset: 1440)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "sticks", scope: !4171, file: !4167, line: 67, baseType: !136, size: 64, offset: 1472)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4171, file: !4167, line: 68, baseType: !133, size: 64, offset: 1536)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4171, file: !4167, line: 69, baseType: !4674, size: 64, offset: 1600)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{null, !4170}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !4171, file: !4167, line: 70, baseType: !4678, size: 768, offset: 1664)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_timer_hardware", file: !4167, line: 40, size: 768, elements: !4679)
!4679 = !{!4680, !4681, !4682, !4683, !4684, !4685, !4689, !4690, !4694, !4695, !4696, !4700}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4678, file: !4167, line: 42, baseType: !7, size: 32)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4678, file: !4167, line: 43, baseType: !136, size: 64, offset: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "resolution_min", scope: !4678, file: !4167, line: 44, baseType: !136, size: 64, offset: 128)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "resolution_max", scope: !4678, file: !4167, line: 45, baseType: !136, size: 64, offset: 192)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !4678, file: !4167, line: 46, baseType: !136, size: 64, offset: 256)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4678, file: !4167, line: 48, baseType: !4686, size: 64, offset: 320)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!85, !4170}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4678, file: !4167, line: 49, baseType: !4686, size: 64, offset: 384)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "c_resolution", scope: !4678, file: !4167, line: 50, baseType: !4691, size: 64, offset: 448)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!136, !4170}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4678, file: !4167, line: 51, baseType: !4686, size: 64, offset: 512)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4678, file: !4167, line: 52, baseType: !4686, size: 64, offset: 576)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "set_period", scope: !4678, file: !4167, line: 53, baseType: !4697, size: 64, offset: 640)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!85, !4170, !136, !136}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "precise_resolution", scope: !4678, file: !4167, line: 54, baseType: !4701, size: 64, offset: 704)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!85, !4170, !2013, !2013}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4171, file: !4167, line: 71, baseType: !267, size: 32, offset: 2432)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4171, file: !4167, line: 72, baseType: !214, size: 128, offset: 2496)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "open_list_head", scope: !4171, file: !4167, line: 73, baseType: !214, size: 128, offset: 2624)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "active_list_head", scope: !4171, file: !4167, line: 74, baseType: !214, size: 128, offset: 2752)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "ack_list_head", scope: !4171, file: !4167, line: 75, baseType: !214, size: 128, offset: 2880)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "sack_list_head", scope: !4171, file: !4167, line: 76, baseType: !214, size: 128, offset: 3008)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "task_work", scope: !4171, file: !4167, line: 77, baseType: !1458, size: 256, offset: 3136)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "max_instances", scope: !4171, file: !4167, line: 78, baseType: !85, size: 32, offset: 3392)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "num_instances", scope: !4171, file: !4167, line: 79, baseType: !85, size: 32, offset: 3424)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4166, file: !4167, line: 84, baseType: !144, size: 64, offset: 64)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4166, file: !4167, line: 85, baseType: !7, size: 32, offset: 128)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4166, file: !4167, line: 86, baseType: !133, size: 64, offset: 192)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4166, file: !4167, line: 87, baseType: !4717, size: 64, offset: 256)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{null, !4165}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4166, file: !4167, line: 88, baseType: !4721, size: 64, offset: 320)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{null, !4165, !136, !136}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "ccallback", scope: !4166, file: !4167, line: 90, baseType: !4725, size: 64, offset: 384)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{null, !4165, !85, !4728, !136}
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4166, file: !4167, line: 94, baseType: !4717, size: 64, offset: 448)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !4166, file: !4167, line: 95, baseType: !133, size: 64, offset: 512)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !4166, file: !4167, line: 96, baseType: !136, size: 64, offset: 576)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "cticks", scope: !4166, file: !4167, line: 97, baseType: !136, size: 64, offset: 640)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "pticks", scope: !4166, file: !4167, line: 98, baseType: !136, size: 64, offset: 704)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4166, file: !4167, line: 99, baseType: !136, size: 64, offset: 768)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "lost", scope: !4166, file: !4167, line: 100, baseType: !136, size: 64, offset: 832)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "slave_class", scope: !4166, file: !4167, line: 101, baseType: !85, size: 32, offset: 896)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "slave_id", scope: !4166, file: !4167, line: 102, baseType: !7, size: 32, offset: 928)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "open_list", scope: !4166, file: !4167, line: 103, baseType: !214, size: 128, offset: 960)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !4166, file: !4167, line: 104, baseType: !214, size: 128, offset: 1088)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "ack_list", scope: !4166, file: !4167, line: 105, baseType: !214, size: 128, offset: 1216)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "slave_list_head", scope: !4166, file: !4167, line: 106, baseType: !214, size: 128, offset: 1344)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "slave_active_head", scope: !4166, file: !4167, line: 107, baseType: !214, size: 128, offset: 1472)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4166, file: !4167, line: 108, baseType: !4165, size: 64, offset: 1600)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !4137, file: !4138, line: 34, baseType: !7, size: 32, offset: 704)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_resolution", scope: !4137, file: !4138, line: 35, baseType: !136, size: 64, offset: 768)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "skew", scope: !4137, file: !4138, line: 37, baseType: !7, size: 32, offset: 832)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "skew_base", scope: !4137, file: !4138, line: 38, baseType: !7, size: 32, offset: 864)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "last_update", scope: !4137, file: !4138, line: 40, baseType: !758, size: 128, offset: 896)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4137, file: !4138, line: 42, baseType: !267, size: 32, offset: 1024)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3986, file: !3987, line: 28, baseType: !85, size: 32, offset: 768)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !3986, file: !3987, line: 29, baseType: !483, size: 8, offset: 800)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "klocked", scope: !3986, file: !3987, line: 30, baseType: !483, size: 8, offset: 808)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "check_again", scope: !3986, file: !3987, line: 31, baseType: !483, size: 8, offset: 816)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "check_blocked", scope: !3986, file: !3987, line: 32, baseType: !483, size: 8, offset: 824)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3986, file: !3987, line: 34, baseType: !7, size: 32, offset: 832)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !3986, file: !3987, line: 35, baseType: !7, size: 32, offset: 864)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "owner_lock", scope: !3986, file: !3987, line: 37, baseType: !267, size: 32, offset: 896)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "check_lock", scope: !3986, file: !3987, line: 38, baseType: !267, size: 32, offset: 928)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "clients_bitmap", scope: !3986, file: !3987, line: 41, baseType: !4760, size: 192, offset: 960)
!4760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 192, elements: !304)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !3986, file: !3987, line: 42, baseType: !7, size: 32, offset: 1152)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "timer_mutex", scope: !3986, file: !3987, line: 43, baseType: !160, size: 256, offset: 1216)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "use_lock", scope: !3986, file: !3987, line: 45, baseType: !4764, size: 32, offset: 1472)
!4764 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_use_lock_t", file: !4765, line: 7, baseType: !188)
!4765 = !DIFile(filename: "sound/core/seq/seq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "87f5d997a3ce18199b25dc23b768dfb6")
!4766 = !DIGlobalVariableExpression(var: !4767, expr: !DIExpression())
!4767 = distinct !DIGlobalVariable(scope: null, file: !3, line: 137, type: !4768, isLocal: true, isDefinition: true)
!4768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 216, elements: !4769)
!4769 = !{!4770}
!4770 = !DISubrange(count: 27)
!4771 = !DIGlobalVariableExpression(var: !4772, expr: !DIExpression())
!4772 = distinct !DIGlobalVariable(name: "__key", scope: !4773, file: !3, line: 106, type: !2033, isLocal: true, isDefinition: true)
!4773 = distinct !DISubprogram(name: "queue_new", scope: !3, file: !3, line: 96, type: !4774, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4776)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!3985, !85, !85}
!4776 = !{!4777, !4778, !4779}
!4777 = !DILocalVariable(name: "owner", arg: 1, scope: !4773, file: !3, line: 96, type: !85)
!4778 = !DILocalVariable(name: "locked", arg: 2, scope: !4773, file: !3, line: 96, type: !85)
!4779 = !DILocalVariable(name: "q", scope: !4773, file: !3, line: 98, type: !3985)
!4780 = !DIGlobalVariableExpression(var: !4781, expr: !DIExpression())
!4781 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !2822, isLocal: true, isDefinition: true)
!4782 = !DIGlobalVariableExpression(var: !4783, expr: !DIExpression())
!4783 = distinct !DIGlobalVariable(scope: null, file: !123, line: 480, type: !4784, isLocal: true, isDefinition: true)
!4784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 168, elements: !4785)
!4785 = !{!4786}
!4786 = !DISubrange(count: 21)
!4787 = !DIGlobalVariableExpression(var: !4788, expr: !DIExpression())
!4788 = distinct !DIGlobalVariable(name: "queue_list_lock", scope: !2, file: !3, line: 38, type: !267, isLocal: true, isDefinition: true)
!4789 = !{i32 7, !"Dwarf Version", i32 5}
!4790 = !{i32 2, !"Debug Info Version", i32 3}
!4791 = !{i32 1, !"wchar_size", i32 2}
!4792 = !{i32 8, !"cf-protection-branch", i32 1}
!4793 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4794 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4795 = !{i32 1, !"Code Model", i32 2}
!4796 = !{i32 1, !"override-stack-alignment", i32 8}
!4797 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4798 = distinct !DISubprogram(name: "snd_seq_queue_get_cur_queues", scope: !3, file: !3, line: 42, type: !1794, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4799 = !DILocation(line: 44, column: 9, scope: !4798)
!4800 = !DILocation(line: 44, column: 2, scope: !4798)
!4801 = distinct !DISubprogram(name: "snd_seq_queues_delete", scope: !3, file: !3, line: 150, type: !2027, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4802)
!4802 = !{!4803}
!4803 = !DILocalVariable(name: "i", scope: !4801, file: !3, line: 152, type: !85)
!4804 = !DILocation(line: 152, column: 2, scope: !4801)
!4805 = !DILocation(line: 152, column: 6, scope: !4801)
!4806 = !DILocation(line: 155, column: 9, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 155, column: 2)
!4808 = !DILocation(line: 155, column: 7, scope: !4807)
!4809 = !DILocation(line: 155, column: 14, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4807, file: !3, line: 155, column: 2)
!4811 = !DILocation(line: 155, column: 16, scope: !4810)
!4812 = !DILocation(line: 155, column: 2, scope: !4807)
!4813 = !DILocation(line: 156, column: 18, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 156, column: 7)
!4815 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 155, column: 45)
!4816 = !DILocation(line: 156, column: 7, scope: !4814)
!4817 = !DILocation(line: 156, column: 7, scope: !4815)
!4818 = !DILocation(line: 157, column: 28, scope: !4814)
!4819 = !DILocation(line: 157, column: 17, scope: !4814)
!4820 = !DILocation(line: 157, column: 4, scope: !4814)
!4821 = !DILocation(line: 158, column: 2, scope: !4815)
!4822 = !DILocation(line: 155, column: 41, scope: !4810)
!4823 = !DILocation(line: 155, column: 2, scope: !4810)
!4824 = distinct !{!4824, !4812, !4825, !4826, !4827}
!4825 = !DILocation(line: 158, column: 2, scope: !4807)
!4826 = !{!"llvm.loop.mustprogress"}
!4827 = !{!"llvm.loop.unroll.disable"}
!4828 = !DILocation(line: 159, column: 1, scope: !4801)
!4829 = distinct !DISubprogram(name: "queue_delete", scope: !3, file: !3, line: 129, type: !4830, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4832)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{null, !3985}
!4832 = !{!4833}
!4833 = !DILocalVariable(name: "q", arg: 1, scope: !4829, file: !3, line: 129, type: !3985)
!4834 = !DILocation(line: 129, column: 48, scope: !4829)
!4835 = !DILocation(line: 132, column: 14, scope: !4829)
!4836 = !DILocation(line: 132, column: 17, scope: !4829)
!4837 = !DILocation(line: 132, column: 2, scope: !4829)
!4838 = !DILocation(line: 133, column: 21, scope: !4829)
!4839 = !DILocation(line: 133, column: 24, scope: !4829)
!4840 = !DILocation(line: 133, column: 2, scope: !4829)
!4841 = !DILocation(line: 134, column: 22, scope: !4829)
!4842 = !DILocation(line: 134, column: 2, scope: !4829)
!4843 = !DILocation(line: 135, column: 16, scope: !4829)
!4844 = !DILocation(line: 135, column: 19, scope: !4829)
!4845 = !DILocation(line: 135, column: 2, scope: !4829)
!4846 = !DILocation(line: 137, column: 2, scope: !4829)
!4847 = !DILocation(line: 139, column: 24, scope: !4829)
!4848 = !DILocation(line: 139, column: 27, scope: !4829)
!4849 = !DILocation(line: 139, column: 2, scope: !4829)
!4850 = !DILocation(line: 140, column: 24, scope: !4829)
!4851 = !DILocation(line: 140, column: 27, scope: !4829)
!4852 = !DILocation(line: 140, column: 2, scope: !4829)
!4853 = !DILocation(line: 141, column: 24, scope: !4829)
!4854 = !DILocation(line: 141, column: 27, scope: !4829)
!4855 = !DILocation(line: 141, column: 2, scope: !4829)
!4856 = !DILocation(line: 143, column: 8, scope: !4829)
!4857 = !DILocation(line: 143, column: 2, scope: !4829)
!4858 = !DILocation(line: 144, column: 1, scope: !4829)
!4859 = distinct !DISubprogram(name: "snd_seq_queue_alloc", scope: !3, file: !3, line: 168, type: !4860, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4862)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!3985, !85, !85, !7}
!4862 = !{!4863, !4864, !4865, !4866}
!4863 = !DILocalVariable(name: "client", arg: 1, scope: !4859, file: !3, line: 168, type: !85)
!4864 = !DILocalVariable(name: "locked", arg: 2, scope: !4859, file: !3, line: 168, type: !85)
!4865 = !DILocalVariable(name: "info_flags", arg: 3, scope: !4859, file: !3, line: 168, type: !7)
!4866 = !DILocalVariable(name: "q", scope: !4859, file: !3, line: 170, type: !3985)
!4867 = !DILocation(line: 168, column: 47, scope: !4859)
!4868 = !DILocation(line: 168, column: 59, scope: !4859)
!4869 = !DILocation(line: 168, column: 80, scope: !4859)
!4870 = !DILocation(line: 170, column: 2, scope: !4859)
!4871 = !DILocation(line: 170, column: 24, scope: !4859)
!4872 = !DILocation(line: 172, column: 16, scope: !4859)
!4873 = !DILocation(line: 172, column: 24, scope: !4859)
!4874 = !DILocation(line: 172, column: 6, scope: !4859)
!4875 = !DILocation(line: 172, column: 4, scope: !4859)
!4876 = !DILocation(line: 173, column: 6, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 173, column: 6)
!4878 = !DILocation(line: 173, column: 8, scope: !4877)
!4879 = !DILocation(line: 173, column: 6, scope: !4859)
!4880 = !DILocation(line: 174, column: 10, scope: !4877)
!4881 = !DILocation(line: 174, column: 3, scope: !4877)
!4882 = !DILocation(line: 175, column: 18, scope: !4859)
!4883 = !DILocation(line: 175, column: 2, scope: !4859)
!4884 = !DILocation(line: 175, column: 5, scope: !4859)
!4885 = !DILocation(line: 175, column: 16, scope: !4859)
!4886 = !DILocation(line: 176, column: 12, scope: !4859)
!4887 = !DILocation(line: 176, column: 15, scope: !4859)
!4888 = !DILocation(line: 176, column: 2, scope: !4859)
!4889 = !DILocation(line: 177, column: 2, scope: !4859)
!4890 = !DILocation(line: 178, column: 21, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 178, column: 6)
!4892 = !DILocation(line: 178, column: 6, scope: !4891)
!4893 = !DILocation(line: 178, column: 24, scope: !4891)
!4894 = !DILocation(line: 178, column: 6, scope: !4859)
!4895 = !DILocation(line: 179, column: 3, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 178, column: 29)
!4897 = !DILocation(line: 180, column: 16, scope: !4896)
!4898 = !DILocation(line: 180, column: 3, scope: !4896)
!4899 = !DILocation(line: 181, column: 10, scope: !4896)
!4900 = !DILocation(line: 181, column: 3, scope: !4896)
!4901 = !DILocation(line: 183, column: 9, scope: !4859)
!4902 = !DILocation(line: 183, column: 2, scope: !4859)
!4903 = !DILocation(line: 184, column: 1, scope: !4859)
!4904 = !DILocation(line: 96, column: 44, scope: !4773)
!4905 = !DILocation(line: 96, column: 55, scope: !4773)
!4906 = !DILocation(line: 98, column: 2, scope: !4773)
!4907 = !DILocation(line: 98, column: 24, scope: !4773)
!4908 = !DILocation(line: 100, column: 6, scope: !4773)
!4909 = !DILocation(line: 100, column: 4, scope: !4773)
!4910 = !DILocation(line: 101, column: 7, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 101, column: 6)
!4912 = !DILocation(line: 101, column: 6, scope: !4773)
!4913 = !DILocation(line: 102, column: 3, scope: !4911)
!4914 = !DILocation(line: 104, column: 2, scope: !4773)
!4915 = !DILocation(line: 104, column: 2, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 104, column: 2)
!4917 = !DILocation(line: 105, column: 2, scope: !4773)
!4918 = !DILocation(line: 105, column: 2, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 105, column: 2)
!4920 = !DILocation(line: 106, column: 2, scope: !4773)
!4921 = !DILocation(line: 106, column: 2, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 106, column: 2)
!4923 = !DILocation(line: 107, column: 2, scope: !4773)
!4924 = !DILocation(line: 108, column: 2, scope: !4773)
!4925 = !DILocation(line: 108, column: 5, scope: !4773)
!4926 = !DILocation(line: 108, column: 11, scope: !4773)
!4927 = !DILocation(line: 110, column: 13, scope: !4773)
!4928 = !DILocation(line: 110, column: 2, scope: !4773)
!4929 = !DILocation(line: 110, column: 5, scope: !4773)
!4930 = !DILocation(line: 110, column: 11, scope: !4773)
!4931 = !DILocation(line: 111, column: 13, scope: !4773)
!4932 = !DILocation(line: 111, column: 2, scope: !4773)
!4933 = !DILocation(line: 111, column: 5, scope: !4773)
!4934 = !DILocation(line: 111, column: 11, scope: !4773)
!4935 = !DILocation(line: 112, column: 13, scope: !4773)
!4936 = !DILocation(line: 112, column: 2, scope: !4773)
!4937 = !DILocation(line: 112, column: 5, scope: !4773)
!4938 = !DILocation(line: 112, column: 11, scope: !4773)
!4939 = !DILocation(line: 113, column: 6, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 113, column: 6)
!4941 = !DILocation(line: 113, column: 9, scope: !4940)
!4942 = !DILocation(line: 113, column: 15, scope: !4940)
!4943 = !DILocation(line: 113, column: 23, scope: !4940)
!4944 = !DILocation(line: 113, column: 26, scope: !4940)
!4945 = !DILocation(line: 113, column: 29, scope: !4940)
!4946 = !DILocation(line: 113, column: 35, scope: !4940)
!4947 = !DILocation(line: 113, column: 43, scope: !4940)
!4948 = !DILocation(line: 113, column: 46, scope: !4940)
!4949 = !DILocation(line: 113, column: 49, scope: !4940)
!4950 = !DILocation(line: 113, column: 55, scope: !4940)
!4951 = !DILocation(line: 113, column: 6, scope: !4773)
!4952 = !DILocation(line: 114, column: 25, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 113, column: 64)
!4954 = !DILocation(line: 114, column: 28, scope: !4953)
!4955 = !DILocation(line: 114, column: 3, scope: !4953)
!4956 = !DILocation(line: 115, column: 25, scope: !4953)
!4957 = !DILocation(line: 115, column: 28, scope: !4953)
!4958 = !DILocation(line: 115, column: 3, scope: !4953)
!4959 = !DILocation(line: 116, column: 25, scope: !4953)
!4960 = !DILocation(line: 116, column: 28, scope: !4953)
!4961 = !DILocation(line: 116, column: 3, scope: !4953)
!4962 = !DILocation(line: 117, column: 9, scope: !4953)
!4963 = !DILocation(line: 117, column: 3, scope: !4953)
!4964 = !DILocation(line: 118, column: 3, scope: !4953)
!4965 = !DILocation(line: 121, column: 13, scope: !4773)
!4966 = !DILocation(line: 121, column: 2, scope: !4773)
!4967 = !DILocation(line: 121, column: 5, scope: !4773)
!4968 = !DILocation(line: 121, column: 11, scope: !4773)
!4969 = !DILocation(line: 122, column: 14, scope: !4773)
!4970 = !DILocation(line: 122, column: 2, scope: !4773)
!4971 = !DILocation(line: 122, column: 5, scope: !4773)
!4972 = !DILocation(line: 122, column: 12, scope: !4773)
!4973 = !DILocation(line: 123, column: 2, scope: !4773)
!4974 = !DILocation(line: 123, column: 5, scope: !4773)
!4975 = !DILocation(line: 123, column: 13, scope: !4773)
!4976 = !DILocation(line: 125, column: 9, scope: !4773)
!4977 = !DILocation(line: 125, column: 2, scope: !4773)
!4978 = !DILocation(line: 126, column: 1, scope: !4773)
!4979 = distinct !DISubprogram(name: "ERR_PTR", scope: !4980, file: !4980, line: 39, type: !4981, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4983)
!4980 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!133, !762}
!4983 = !{!4984}
!4984 = !DILocalVariable(name: "error", arg: 1, scope: !4979, file: !4980, line: 39, type: !762)
!4985 = !DILocation(line: 39, column: 48, scope: !4979)
!4986 = !DILocation(line: 41, column: 18, scope: !4979)
!4987 = !DILocation(line: 41, column: 9, scope: !4979)
!4988 = !DILocation(line: 41, column: 2, scope: !4979)
!4989 = distinct !DISubprogram(name: "queue_use", scope: !3, file: !3, line: 495, type: !4990, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4992)
!4990 = !DISubroutineType(types: !4991)
!4991 = !{null, !3985, !85, !85}
!4992 = !{!4993, !4994, !4995}
!4993 = !DILocalVariable(name: "queue", arg: 1, scope: !4989, file: !3, line: 495, type: !3985)
!4994 = !DILocalVariable(name: "client", arg: 2, scope: !4989, file: !3, line: 495, type: !85)
!4995 = !DILocalVariable(name: "use", arg: 3, scope: !4989, file: !3, line: 495, type: !85)
!4996 = !DILocation(line: 495, column: 45, scope: !4989)
!4997 = !DILocation(line: 495, column: 56, scope: !4989)
!4998 = !DILocation(line: 495, column: 68, scope: !4989)
!4999 = !DILocation(line: 497, column: 6, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 497, column: 6)
!5001 = !DILocation(line: 497, column: 6, scope: !4989)
!5002 = !DILocation(line: 498, column: 25, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 498, column: 7)
!5004 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 497, column: 11)
!5005 = !DILocation(line: 498, column: 33, scope: !5003)
!5006 = !DILocation(line: 498, column: 40, scope: !5003)
!5007 = !DILocation(line: 498, column: 8, scope: !5003)
!5008 = !DILocation(line: 498, column: 7, scope: !5004)
!5009 = !DILocation(line: 499, column: 4, scope: !5003)
!5010 = !DILocation(line: 499, column: 11, scope: !5003)
!5011 = !DILocation(line: 499, column: 18, scope: !5003)
!5012 = !DILocation(line: 500, column: 2, scope: !5004)
!5013 = !DILocation(line: 501, column: 26, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 501, column: 7)
!5015 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 500, column: 9)
!5016 = !DILocation(line: 501, column: 34, scope: !5014)
!5017 = !DILocation(line: 501, column: 41, scope: !5014)
!5018 = !DILocation(line: 501, column: 7, scope: !5014)
!5019 = !DILocation(line: 501, column: 7, scope: !5015)
!5020 = !DILocation(line: 502, column: 4, scope: !5014)
!5021 = !DILocation(line: 502, column: 11, scope: !5014)
!5022 = !DILocation(line: 502, column: 18, scope: !5014)
!5023 = !DILocation(line: 504, column: 6, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 504, column: 6)
!5025 = !DILocation(line: 504, column: 13, scope: !5024)
!5026 = !DILocation(line: 504, column: 6, scope: !4989)
!5027 = !DILocation(line: 505, column: 7, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5029, file: !3, line: 505, column: 7)
!5029 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 504, column: 22)
!5030 = !DILocation(line: 505, column: 11, scope: !5028)
!5031 = !DILocation(line: 505, column: 14, scope: !5028)
!5032 = !DILocation(line: 505, column: 21, scope: !5028)
!5033 = !DILocation(line: 505, column: 29, scope: !5028)
!5034 = !DILocation(line: 505, column: 7, scope: !5029)
!5035 = !DILocation(line: 506, column: 27, scope: !5028)
!5036 = !DILocation(line: 506, column: 34, scope: !5028)
!5037 = !DILocation(line: 506, column: 4, scope: !5028)
!5038 = !DILocation(line: 507, column: 22, scope: !5029)
!5039 = !DILocation(line: 507, column: 3, scope: !5029)
!5040 = !DILocation(line: 508, column: 2, scope: !5029)
!5041 = !DILocation(line: 509, column: 23, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 508, column: 9)
!5043 = !DILocation(line: 509, column: 3, scope: !5042)
!5044 = !DILocation(line: 511, column: 1, scope: !4989)
!5045 = distinct !DISubprogram(name: "atomic_inc", scope: !5046, file: !5046, line: 433, type: !5047, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5050)
!5046 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5047 = !DISubroutineType(types: !5048)
!5048 = !{null, !5049}
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!5050 = !{!5051}
!5051 = !DILocalVariable(name: "v", arg: 1, scope: !5045, file: !5046, line: 433, type: !5049)
!5052 = !DILocation(line: 433, column: 22, scope: !5045)
!5053 = !DILocation(line: 435, column: 31, scope: !5045)
!5054 = !DILocation(line: 435, column: 2, scope: !5045)
!5055 = !DILocation(line: 436, column: 17, scope: !5045)
!5056 = !DILocation(line: 436, column: 2, scope: !5045)
!5057 = !DILocation(line: 437, column: 1, scope: !5045)
!5058 = distinct !DISubprogram(name: "queue_list_add", scope: !3, file: !3, line: 50, type: !5059, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5061)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!85, !3985}
!5061 = !{!5062, !5063, !5064, !5065, !5069}
!5062 = !DILocalVariable(name: "q", arg: 1, scope: !5058, file: !3, line: 50, type: !3985)
!5063 = !DILocalVariable(name: "i", scope: !5058, file: !3, line: 52, type: !85)
!5064 = !DILocalVariable(name: "flags", scope: !5058, file: !3, line: 53, type: !136)
!5065 = !DILocalVariable(name: "__dummy", scope: !5066, file: !3, line: 55, type: !136)
!5066 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 55, column: 2)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 55, column: 2)
!5068 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 55, column: 2)
!5069 = !DILocalVariable(name: "__dummy2", scope: !5066, file: !3, line: 55, type: !136)
!5070 = !DILocation(line: 50, column: 49, scope: !5058)
!5071 = !DILocation(line: 52, column: 2, scope: !5058)
!5072 = !DILocation(line: 52, column: 6, scope: !5058)
!5073 = !DILocation(line: 53, column: 2, scope: !5058)
!5074 = !DILocation(line: 53, column: 16, scope: !5058)
!5075 = !DILocation(line: 55, column: 2, scope: !5058)
!5076 = !DILocation(line: 55, column: 2, scope: !5068)
!5077 = !DILocation(line: 55, column: 2, scope: !5066)
!5078 = !DILocation(line: 55, column: 2, scope: !5067)
!5079 = !DILocation(line: 56, column: 9, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 56, column: 2)
!5081 = !DILocation(line: 56, column: 7, scope: !5080)
!5082 = !DILocation(line: 56, column: 14, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 56, column: 2)
!5084 = !DILocation(line: 56, column: 16, scope: !5083)
!5085 = !DILocation(line: 56, column: 2, scope: !5080)
!5086 = !DILocation(line: 57, column: 20, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 57, column: 7)
!5088 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 56, column: 45)
!5089 = !DILocation(line: 57, column: 9, scope: !5087)
!5090 = !DILocation(line: 57, column: 7, scope: !5088)
!5091 = !DILocation(line: 58, column: 20, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 57, column: 24)
!5093 = !DILocation(line: 58, column: 15, scope: !5092)
!5094 = !DILocation(line: 58, column: 4, scope: !5092)
!5095 = !DILocation(line: 58, column: 18, scope: !5092)
!5096 = !DILocation(line: 59, column: 15, scope: !5092)
!5097 = !DILocation(line: 59, column: 4, scope: !5092)
!5098 = !DILocation(line: 59, column: 7, scope: !5092)
!5099 = !DILocation(line: 59, column: 13, scope: !5092)
!5100 = !DILocation(line: 60, column: 14, scope: !5092)
!5101 = !DILocation(line: 61, column: 45, scope: !5092)
!5102 = !DILocation(line: 61, column: 4, scope: !5092)
!5103 = !DILocation(line: 62, column: 11, scope: !5092)
!5104 = !DILocation(line: 62, column: 4, scope: !5092)
!5105 = !DILocation(line: 64, column: 2, scope: !5088)
!5106 = !DILocation(line: 56, column: 41, scope: !5083)
!5107 = !DILocation(line: 56, column: 2, scope: !5083)
!5108 = distinct !{!5108, !5085, !5109, !4826, !4827}
!5109 = !DILocation(line: 64, column: 2, scope: !5080)
!5110 = !DILocation(line: 65, column: 43, scope: !5058)
!5111 = !DILocation(line: 65, column: 2, scope: !5058)
!5112 = !DILocation(line: 66, column: 2, scope: !5058)
!5113 = !DILocation(line: 67, column: 1, scope: !5058)
!5114 = distinct !DISubprogram(name: "atomic_dec", scope: !5046, file: !5046, line: 590, type: !5047, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5115)
!5115 = !{!5116}
!5116 = !DILocalVariable(name: "v", arg: 1, scope: !5114, file: !5046, line: 590, type: !5049)
!5117 = !DILocation(line: 590, column: 22, scope: !5114)
!5118 = !DILocation(line: 592, column: 31, scope: !5114)
!5119 = !DILocation(line: 592, column: 2, scope: !5114)
!5120 = !DILocation(line: 593, column: 17, scope: !5114)
!5121 = !DILocation(line: 593, column: 2, scope: !5114)
!5122 = !DILocation(line: 594, column: 1, scope: !5114)
!5123 = distinct !DISubprogram(name: "snd_seq_queue_delete", scope: !3, file: !3, line: 187, type: !5124, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5126)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!85, !85, !85}
!5126 = !{!5127, !5128, !5129}
!5127 = !DILocalVariable(name: "client", arg: 1, scope: !5123, file: !3, line: 187, type: !85)
!5128 = !DILocalVariable(name: "queueid", arg: 2, scope: !5123, file: !3, line: 187, type: !85)
!5129 = !DILocalVariable(name: "q", scope: !5123, file: !3, line: 189, type: !3985)
!5130 = !DILocation(line: 187, column: 30, scope: !5123)
!5131 = !DILocation(line: 187, column: 42, scope: !5123)
!5132 = !DILocation(line: 189, column: 2, scope: !5123)
!5133 = !DILocation(line: 189, column: 24, scope: !5123)
!5134 = !DILocation(line: 191, column: 6, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 191, column: 6)
!5136 = !DILocation(line: 191, column: 14, scope: !5135)
!5137 = !DILocation(line: 191, column: 18, scope: !5135)
!5138 = !DILocation(line: 191, column: 21, scope: !5135)
!5139 = !DILocation(line: 191, column: 29, scope: !5135)
!5140 = !DILocation(line: 191, column: 6, scope: !5123)
!5141 = !DILocation(line: 192, column: 3, scope: !5135)
!5142 = !DILocation(line: 193, column: 24, scope: !5123)
!5143 = !DILocation(line: 193, column: 33, scope: !5123)
!5144 = !DILocation(line: 193, column: 6, scope: !5123)
!5145 = !DILocation(line: 193, column: 4, scope: !5123)
!5146 = !DILocation(line: 194, column: 6, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 194, column: 6)
!5148 = !DILocation(line: 194, column: 8, scope: !5147)
!5149 = !DILocation(line: 194, column: 6, scope: !5123)
!5150 = !DILocation(line: 195, column: 3, scope: !5147)
!5151 = !DILocation(line: 196, column: 15, scope: !5123)
!5152 = !DILocation(line: 196, column: 2, scope: !5123)
!5153 = !DILocation(line: 198, column: 2, scope: !5123)
!5154 = !DILocation(line: 199, column: 1, scope: !5123)
!5155 = distinct !DISubprogram(name: "queue_list_remove", scope: !3, file: !3, line: 69, type: !4774, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5156)
!5156 = !{!5157, !5158, !5159, !5160, !5161, !5165}
!5157 = !DILocalVariable(name: "id", arg: 1, scope: !5155, file: !3, line: 69, type: !85)
!5158 = !DILocalVariable(name: "client", arg: 2, scope: !5155, file: !3, line: 69, type: !85)
!5159 = !DILocalVariable(name: "q", scope: !5155, file: !3, line: 71, type: !3985)
!5160 = !DILocalVariable(name: "flags", scope: !5155, file: !3, line: 72, type: !136)
!5161 = !DILocalVariable(name: "__dummy", scope: !5162, file: !3, line: 74, type: !136)
!5162 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 74, column: 2)
!5163 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 74, column: 2)
!5164 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 74, column: 2)
!5165 = !DILocalVariable(name: "__dummy2", scope: !5162, file: !3, line: 74, type: !136)
!5166 = !DILocation(line: 69, column: 52, scope: !5155)
!5167 = !DILocation(line: 69, column: 60, scope: !5155)
!5168 = !DILocation(line: 71, column: 2, scope: !5155)
!5169 = !DILocation(line: 71, column: 24, scope: !5155)
!5170 = !DILocation(line: 72, column: 2, scope: !5155)
!5171 = !DILocation(line: 72, column: 16, scope: !5155)
!5172 = !DILocation(line: 74, column: 2, scope: !5155)
!5173 = !DILocation(line: 74, column: 2, scope: !5164)
!5174 = !DILocation(line: 74, column: 2, scope: !5162)
!5175 = !DILocation(line: 74, column: 2, scope: !5163)
!5176 = !DILocation(line: 75, column: 17, scope: !5155)
!5177 = !DILocation(line: 75, column: 6, scope: !5155)
!5178 = !DILocation(line: 75, column: 4, scope: !5155)
!5179 = !DILocation(line: 76, column: 6, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5155, file: !3, line: 76, column: 6)
!5181 = !DILocation(line: 76, column: 6, scope: !5155)
!5182 = !DILocation(line: 77, column: 14, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 76, column: 9)
!5184 = !DILocation(line: 77, column: 17, scope: !5183)
!5185 = !DILocation(line: 77, column: 3, scope: !5183)
!5186 = !DILocation(line: 78, column: 7, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 78, column: 7)
!5188 = !DILocation(line: 78, column: 10, scope: !5187)
!5189 = !DILocation(line: 78, column: 19, scope: !5187)
!5190 = !DILocation(line: 78, column: 16, scope: !5187)
!5191 = !DILocation(line: 78, column: 7, scope: !5183)
!5192 = !DILocation(line: 80, column: 4, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 78, column: 27)
!5194 = !DILocation(line: 80, column: 7, scope: !5193)
!5195 = !DILocation(line: 80, column: 15, scope: !5193)
!5196 = !DILocation(line: 81, column: 17, scope: !5193)
!5197 = !DILocation(line: 81, column: 20, scope: !5193)
!5198 = !DILocation(line: 81, column: 4, scope: !5193)
!5199 = !DILocation(line: 82, column: 15, scope: !5193)
!5200 = !DILocation(line: 82, column: 4, scope: !5193)
!5201 = !DILocation(line: 82, column: 19, scope: !5193)
!5202 = !DILocation(line: 83, column: 14, scope: !5193)
!5203 = !DILocation(line: 84, column: 45, scope: !5193)
!5204 = !DILocation(line: 84, column: 4, scope: !5193)
!5205 = !DILocation(line: 85, column: 11, scope: !5193)
!5206 = !DILocation(line: 85, column: 4, scope: !5193)
!5207 = !DILocation(line: 87, column: 16, scope: !5183)
!5208 = !DILocation(line: 87, column: 19, scope: !5183)
!5209 = !DILocation(line: 87, column: 3, scope: !5183)
!5210 = !DILocation(line: 88, column: 2, scope: !5183)
!5211 = !DILocation(line: 89, column: 43, scope: !5155)
!5212 = !DILocation(line: 89, column: 2, scope: !5155)
!5213 = !DILocation(line: 90, column: 2, scope: !5155)
!5214 = !DILocation(line: 91, column: 1, scope: !5155)
!5215 = distinct !DISubprogram(name: "queueptr", scope: !3, file: !3, line: 203, type: !5216, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5218)
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!3985, !85}
!5218 = !{!5219, !5220, !5221, !5222, !5226}
!5219 = !DILocalVariable(name: "queueid", arg: 1, scope: !5215, file: !3, line: 203, type: !85)
!5220 = !DILocalVariable(name: "q", scope: !5215, file: !3, line: 205, type: !3985)
!5221 = !DILocalVariable(name: "flags", scope: !5215, file: !3, line: 206, type: !136)
!5222 = !DILocalVariable(name: "__dummy", scope: !5223, file: !3, line: 210, type: !136)
!5223 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 210, column: 2)
!5224 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 210, column: 2)
!5225 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 210, column: 2)
!5226 = !DILocalVariable(name: "__dummy2", scope: !5223, file: !3, line: 210, type: !136)
!5227 = !DILocation(line: 203, column: 36, scope: !5215)
!5228 = !DILocation(line: 205, column: 2, scope: !5215)
!5229 = !DILocation(line: 205, column: 24, scope: !5215)
!5230 = !DILocation(line: 206, column: 2, scope: !5215)
!5231 = !DILocation(line: 206, column: 16, scope: !5215)
!5232 = !DILocation(line: 208, column: 6, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 208, column: 6)
!5234 = !DILocation(line: 208, column: 14, scope: !5233)
!5235 = !DILocation(line: 208, column: 18, scope: !5233)
!5236 = !DILocation(line: 208, column: 21, scope: !5233)
!5237 = !DILocation(line: 208, column: 29, scope: !5233)
!5238 = !DILocation(line: 208, column: 6, scope: !5215)
!5239 = !DILocation(line: 209, column: 3, scope: !5233)
!5240 = !DILocation(line: 210, column: 2, scope: !5215)
!5241 = !DILocation(line: 210, column: 2, scope: !5225)
!5242 = !DILocation(line: 210, column: 2, scope: !5223)
!5243 = !DILocation(line: 210, column: 2, scope: !5224)
!5244 = !DILocation(line: 211, column: 17, scope: !5215)
!5245 = !DILocation(line: 211, column: 6, scope: !5215)
!5246 = !DILocation(line: 211, column: 4, scope: !5215)
!5247 = !DILocation(line: 212, column: 6, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 212, column: 6)
!5249 = !DILocation(line: 212, column: 6, scope: !5215)
!5250 = !DILocation(line: 213, column: 3, scope: !5248)
!5251 = !DILocation(line: 214, column: 43, scope: !5215)
!5252 = !DILocation(line: 214, column: 2, scope: !5215)
!5253 = !DILocation(line: 215, column: 9, scope: !5215)
!5254 = !DILocation(line: 215, column: 2, scope: !5215)
!5255 = !DILocation(line: 216, column: 1, scope: !5215)
!5256 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5257, file: !5257, line: 32, type: !5258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5257 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5258 = !DISubroutineType(types: !5259)
!5259 = !{!136, !5260}
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!5261 = distinct !DISubprogram(name: "spinlock_check", scope: !5262, file: !5262, line: 324, type: !5263, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5266)
!5262 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5263 = !DISubroutineType(types: !5264)
!5264 = !{!5260, !5265}
!5265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!5266 = !{!5267}
!5267 = !DILocalVariable(name: "lock", arg: 1, scope: !5261, file: !5262, line: 324, type: !5265)
!5268 = !DILocation(line: 324, column: 67, scope: !5261)
!5269 = !DILocation(line: 326, column: 10, scope: !5261)
!5270 = !DILocation(line: 326, column: 16, scope: !5261)
!5271 = !DILocation(line: 326, column: 2, scope: !5261)
!5272 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5262, file: !5262, line: 404, type: !5273, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5275)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{null, !5265, !136}
!5275 = !{!5276, !5277, !5278, !5281}
!5276 = !DILocalVariable(name: "lock", arg: 1, scope: !5272, file: !5262, line: 404, type: !5265)
!5277 = !DILocalVariable(name: "flags", arg: 2, scope: !5272, file: !5262, line: 404, type: !136)
!5278 = !DILocalVariable(name: "__dummy", scope: !5279, file: !5262, line: 406, type: !136)
!5279 = distinct !DILexicalBlock(scope: !5280, file: !5262, line: 406, column: 2)
!5280 = distinct !DILexicalBlock(scope: !5272, file: !5262, line: 406, column: 2)
!5281 = !DILocalVariable(name: "__dummy2", scope: !5279, file: !5262, line: 406, type: !136)
!5282 = !DILocation(line: 404, column: 64, scope: !5272)
!5283 = !DILocation(line: 404, column: 84, scope: !5272)
!5284 = !DILocation(line: 406, column: 2, scope: !5272)
!5285 = !DILocation(line: 406, column: 2, scope: !5279)
!5286 = !DILocation(line: 406, column: 2, scope: !5280)
!5287 = !DILocation(line: 407, column: 1, scope: !5272)
!5288 = distinct !DISubprogram(name: "snd_seq_queue_find_name", scope: !3, file: !3, line: 219, type: !5289, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5291)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!3985, !144}
!5291 = !{!5292, !5293, !5294}
!5292 = !DILocalVariable(name: "name", arg: 1, scope: !5288, file: !3, line: 219, type: !144)
!5293 = !DILocalVariable(name: "i", scope: !5288, file: !3, line: 221, type: !85)
!5294 = !DILocalVariable(name: "q", scope: !5288, file: !3, line: 222, type: !3985)
!5295 = !DILocation(line: 219, column: 53, scope: !5288)
!5296 = !DILocation(line: 221, column: 2, scope: !5288)
!5297 = !DILocation(line: 221, column: 6, scope: !5288)
!5298 = !DILocation(line: 222, column: 2, scope: !5288)
!5299 = !DILocation(line: 222, column: 24, scope: !5288)
!5300 = !DILocation(line: 224, column: 9, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 224, column: 2)
!5302 = !DILocation(line: 224, column: 7, scope: !5301)
!5303 = !DILocation(line: 224, column: 14, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 224, column: 2)
!5305 = !DILocation(line: 224, column: 16, scope: !5304)
!5306 = !DILocation(line: 224, column: 2, scope: !5301)
!5307 = !DILocation(line: 225, column: 16, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 224, column: 45)
!5309 = !DILocation(line: 225, column: 7, scope: !5308)
!5310 = !DILocation(line: 225, column: 5, scope: !5308)
!5311 = !DILocation(line: 226, column: 7, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 226, column: 7)
!5313 = !DILocation(line: 226, column: 7, scope: !5308)
!5314 = !DILocation(line: 227, column: 16, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 227, column: 8)
!5316 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 226, column: 10)
!5317 = !DILocation(line: 227, column: 19, scope: !5315)
!5318 = !DILocation(line: 227, column: 25, scope: !5315)
!5319 = !DILocation(line: 227, column: 8, scope: !5315)
!5320 = !DILocation(line: 227, column: 48, scope: !5315)
!5321 = !DILocation(line: 227, column: 8, scope: !5316)
!5322 = !DILocation(line: 228, column: 12, scope: !5315)
!5323 = !DILocation(line: 228, column: 5, scope: !5315)
!5324 = !DILocation(line: 229, column: 4, scope: !5316)
!5325 = !DILocation(line: 230, column: 3, scope: !5316)
!5326 = !DILocation(line: 231, column: 2, scope: !5308)
!5327 = !DILocation(line: 224, column: 41, scope: !5304)
!5328 = !DILocation(line: 224, column: 2, scope: !5304)
!5329 = distinct !{!5329, !5306, !5330, !4826, !4827}
!5330 = !DILocation(line: 231, column: 2, scope: !5301)
!5331 = !DILocation(line: 232, column: 2, scope: !5288)
!5332 = !DILocation(line: 233, column: 1, scope: !5288)
!5333 = !DISubprogram(name: "strncmp", scope: !5334, file: !5334, line: 91, type: !5335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5334 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!85, !486, !486, !148}
!5337 = distinct !DISubprogram(name: "snd_seq_check_queue", scope: !3, file: !3, line: 240, type: !4990, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5338)
!5338 = !{!5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5351, !5352, !5353, !5354, !5358}
!5339 = !DILocalVariable(name: "q", arg: 1, scope: !5337, file: !3, line: 240, type: !3985)
!5340 = !DILocalVariable(name: "atomic", arg: 2, scope: !5337, file: !3, line: 240, type: !85)
!5341 = !DILocalVariable(name: "hop", arg: 3, scope: !5337, file: !3, line: 240, type: !85)
!5342 = !DILocalVariable(name: "flags", scope: !5337, file: !3, line: 242, type: !136)
!5343 = !DILocalVariable(name: "cell", scope: !5337, file: !3, line: 243, type: !3998)
!5344 = !DILocalVariable(name: "cur_tick", scope: !5337, file: !3, line: 244, type: !4018)
!5345 = !DILocalVariable(name: "cur_time", scope: !5337, file: !3, line: 245, type: !4145)
!5346 = !DILocalVariable(name: "processed", scope: !5337, file: !3, line: 246, type: !85)
!5347 = !DILocalVariable(name: "__dummy", scope: !5348, file: !3, line: 252, type: !136)
!5348 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 252, column: 2)
!5349 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 252, column: 2)
!5350 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 252, column: 2)
!5351 = !DILocalVariable(name: "__dummy2", scope: !5348, file: !3, line: 252, type: !136)
!5352 = !DILabel(scope: !5337, name: "__again", file: !3, line: 261)
!5353 = !DILabel(scope: !5337, name: "out", file: !3, line: 284)
!5354 = !DILocalVariable(name: "__dummy", scope: !5355, file: !3, line: 286, type: !136)
!5355 = distinct !DILexicalBlock(scope: !5356, file: !3, line: 286, column: 2)
!5356 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 286, column: 2)
!5357 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 286, column: 2)
!5358 = !DILocalVariable(name: "__dummy2", scope: !5355, file: !3, line: 286, type: !136)
!5359 = !DILocation(line: 240, column: 48, scope: !5337)
!5360 = !DILocation(line: 240, column: 55, scope: !5337)
!5361 = !DILocation(line: 240, column: 67, scope: !5337)
!5362 = !DILocation(line: 242, column: 2, scope: !5337)
!5363 = !DILocation(line: 242, column: 16, scope: !5337)
!5364 = !DILocation(line: 243, column: 2, scope: !5337)
!5365 = !DILocation(line: 243, column: 29, scope: !5337)
!5366 = !DILocation(line: 244, column: 2, scope: !5337)
!5367 = !DILocation(line: 244, column: 22, scope: !5337)
!5368 = !DILocation(line: 245, column: 2, scope: !5337)
!5369 = !DILocation(line: 245, column: 22, scope: !5337)
!5370 = !DILocation(line: 246, column: 2, scope: !5337)
!5371 = !DILocation(line: 246, column: 6, scope: !5337)
!5372 = !DILocation(line: 248, column: 6, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 248, column: 6)
!5374 = !DILocation(line: 248, column: 8, scope: !5373)
!5375 = !DILocation(line: 248, column: 6, scope: !5337)
!5376 = !DILocation(line: 249, column: 3, scope: !5373)
!5377 = !DILocation(line: 252, column: 2, scope: !5337)
!5378 = !DILocation(line: 252, column: 2, scope: !5350)
!5379 = !DILocation(line: 252, column: 2, scope: !5348)
!5380 = !DILocation(line: 252, column: 2, scope: !5349)
!5381 = !DILocation(line: 253, column: 6, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 253, column: 6)
!5383 = !DILocation(line: 253, column: 9, scope: !5382)
!5384 = !{i8 0, i8 2}
!5385 = !DILocation(line: 253, column: 6, scope: !5337)
!5386 = !DILocation(line: 254, column: 3, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 253, column: 24)
!5388 = !DILocation(line: 254, column: 6, scope: !5387)
!5389 = !DILocation(line: 254, column: 18, scope: !5387)
!5390 = !DILocation(line: 255, column: 27, scope: !5387)
!5391 = !DILocation(line: 255, column: 30, scope: !5387)
!5392 = !DILocation(line: 255, column: 42, scope: !5387)
!5393 = !DILocation(line: 255, column: 3, scope: !5387)
!5394 = !DILocation(line: 256, column: 3, scope: !5387)
!5395 = !DILocation(line: 258, column: 2, scope: !5337)
!5396 = !DILocation(line: 258, column: 5, scope: !5337)
!5397 = !DILocation(line: 258, column: 19, scope: !5337)
!5398 = !DILocation(line: 259, column: 26, scope: !5337)
!5399 = !DILocation(line: 259, column: 29, scope: !5337)
!5400 = !DILocation(line: 259, column: 41, scope: !5337)
!5401 = !DILocation(line: 259, column: 2, scope: !5337)
!5402 = !DILocation(line: 261, column: 7, scope: !5337)
!5403 = !DILocation(line: 263, column: 40, scope: !5337)
!5404 = !DILocation(line: 263, column: 43, scope: !5337)
!5405 = !DILocation(line: 263, column: 13, scope: !5337)
!5406 = !DILocation(line: 263, column: 11, scope: !5337)
!5407 = !DILocation(line: 264, column: 2, scope: !5337)
!5408 = !DILocation(line: 265, column: 33, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 264, column: 11)
!5410 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 264, column: 2)
!5411 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 264, column: 2)
!5412 = !DILocation(line: 265, column: 36, scope: !5409)
!5413 = !DILocation(line: 265, column: 10, scope: !5409)
!5414 = !DILocation(line: 265, column: 8, scope: !5409)
!5415 = !DILocation(line: 266, column: 8, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 266, column: 7)
!5417 = !DILocation(line: 266, column: 7, scope: !5409)
!5418 = !DILocation(line: 267, column: 4, scope: !5416)
!5419 = !DILocation(line: 268, column: 26, scope: !5409)
!5420 = !DILocation(line: 268, column: 32, scope: !5409)
!5421 = !DILocation(line: 268, column: 40, scope: !5409)
!5422 = !DILocation(line: 268, column: 3, scope: !5409)
!5423 = !DILocation(line: 269, column: 7, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 269, column: 7)
!5425 = !DILocation(line: 269, column: 19, scope: !5424)
!5426 = !DILocation(line: 269, column: 7, scope: !5409)
!5427 = !DILocation(line: 270, column: 4, scope: !5424)
!5428 = !DILocation(line: 264, column: 2, scope: !5410)
!5429 = distinct !{!5429, !5430, !5431, !4827}
!5430 = !DILocation(line: 264, column: 2, scope: !5411)
!5431 = !DILocation(line: 271, column: 2, scope: !5411)
!5432 = !DILocation(line: 274, column: 13, scope: !5337)
!5433 = !DILocation(line: 274, column: 40, scope: !5337)
!5434 = !DILocation(line: 274, column: 43, scope: !5337)
!5435 = !DILocation(line: 275, column: 2, scope: !5337)
!5436 = !DILocation(line: 276, column: 33, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 275, column: 11)
!5438 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 275, column: 2)
!5439 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 275, column: 2)
!5440 = !DILocation(line: 276, column: 36, scope: !5437)
!5441 = !DILocation(line: 276, column: 10, scope: !5437)
!5442 = !DILocation(line: 276, column: 8, scope: !5437)
!5443 = !DILocation(line: 277, column: 8, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 277, column: 7)
!5445 = !DILocation(line: 277, column: 7, scope: !5437)
!5446 = !DILocation(line: 278, column: 4, scope: !5444)
!5447 = !DILocation(line: 279, column: 26, scope: !5437)
!5448 = !DILocation(line: 279, column: 32, scope: !5437)
!5449 = !DILocation(line: 279, column: 40, scope: !5437)
!5450 = !DILocation(line: 279, column: 3, scope: !5437)
!5451 = !DILocation(line: 280, column: 7, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 280, column: 7)
!5453 = !DILocation(line: 280, column: 19, scope: !5452)
!5454 = !DILocation(line: 280, column: 7, scope: !5437)
!5455 = !DILocation(line: 281, column: 4, scope: !5452)
!5456 = !DILocation(line: 275, column: 2, scope: !5438)
!5457 = distinct !{!5457, !5458, !5459, !4827}
!5458 = !DILocation(line: 275, column: 2, scope: !5439)
!5459 = !DILocation(line: 282, column: 2, scope: !5439)
!5460 = !DILocation(line: 284, column: 2, scope: !5337)
!5461 = !DILocation(line: 286, column: 2, scope: !5337)
!5462 = !DILocation(line: 286, column: 2, scope: !5357)
!5463 = !DILocation(line: 286, column: 2, scope: !5355)
!5464 = !DILocation(line: 286, column: 2, scope: !5356)
!5465 = !DILocation(line: 287, column: 6, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 287, column: 6)
!5467 = !DILocation(line: 287, column: 9, scope: !5466)
!5468 = !DILocation(line: 287, column: 6, scope: !5337)
!5469 = !DILocation(line: 288, column: 3, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 287, column: 22)
!5471 = !DILocation(line: 288, column: 6, scope: !5470)
!5472 = !DILocation(line: 288, column: 18, scope: !5470)
!5473 = !DILocation(line: 289, column: 7, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5470, file: !3, line: 289, column: 7)
!5475 = !DILocation(line: 289, column: 17, scope: !5474)
!5476 = !DILocation(line: 289, column: 7, scope: !5470)
!5477 = !DILocation(line: 290, column: 28, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 289, column: 48)
!5479 = !DILocation(line: 290, column: 31, scope: !5478)
!5480 = !DILocation(line: 290, column: 43, scope: !5478)
!5481 = !DILocation(line: 290, column: 4, scope: !5478)
!5482 = !DILocation(line: 291, column: 4, scope: !5478)
!5483 = !DILocation(line: 293, column: 2, scope: !5470)
!5484 = !DILocation(line: 294, column: 2, scope: !5337)
!5485 = !DILocation(line: 294, column: 5, scope: !5337)
!5486 = !DILocation(line: 294, column: 19, scope: !5337)
!5487 = !DILocation(line: 295, column: 26, scope: !5337)
!5488 = !DILocation(line: 295, column: 29, scope: !5337)
!5489 = !DILocation(line: 295, column: 41, scope: !5337)
!5490 = !DILocation(line: 295, column: 2, scope: !5337)
!5491 = !DILocation(line: 296, column: 1, scope: !5337)
!5492 = !DISubprogram(name: "snd_seq_timer_get_cur_tick", scope: !4138, file: !4138, line: 125, type: !5493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{!4018, !4136}
!5495 = !DISubprogram(name: "snd_seq_prioq_cell_out", scope: !3995, file: !3995, line: 32, type: !5496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5496 = !DISubroutineType(types: !5497)
!5497 = !{!3998, !3993, !133}
!5498 = !DISubprogram(name: "snd_seq_dispatch_event", scope: !5499, file: !5499, line: 85, type: !5500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5499 = !DIFile(filename: "sound/core/seq/seq_clientmgr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c506f6e67a2e93cc3dd551e76dd710da")
!5500 = !DISubroutineType(types: !5501)
!5501 = !{!85, !3998, !85, !85}
!5502 = !DISubprogram(name: "snd_seq_timer_get_cur_time", scope: !4138, file: !4138, line: 123, type: !5503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5503 = !DISubroutineType(types: !5504)
!5504 = !{!4145, !4136, !483}
!5505 = distinct !DISubprogram(name: "snd_seq_enqueue_event", scope: !3, file: !3, line: 300, type: !5500, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5506)
!5506 = !{!5507, !5508, !5509, !5510, !5511, !5512, !5513}
!5507 = !DILocalVariable(name: "cell", arg: 1, scope: !5505, file: !3, line: 300, type: !3998)
!5508 = !DILocalVariable(name: "atomic", arg: 2, scope: !5505, file: !3, line: 300, type: !85)
!5509 = !DILocalVariable(name: "hop", arg: 3, scope: !5505, file: !3, line: 300, type: !85)
!5510 = !DILocalVariable(name: "dest", scope: !5505, file: !3, line: 302, type: !85)
!5511 = !DILocalVariable(name: "err", scope: !5505, file: !3, line: 302, type: !85)
!5512 = !DILocalVariable(name: "q", scope: !5505, file: !3, line: 303, type: !3985)
!5513 = !DILocalVariable(name: "__ret_warn_on", scope: !5514, file: !3, line: 305, type: !85)
!5514 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 305, column: 6)
!5515 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 305, column: 6)
!5516 = !DILocation(line: 300, column: 54, scope: !5505)
!5517 = !DILocation(line: 300, column: 64, scope: !5505)
!5518 = !DILocation(line: 300, column: 76, scope: !5505)
!5519 = !DILocation(line: 302, column: 2, scope: !5505)
!5520 = !DILocation(line: 302, column: 6, scope: !5505)
!5521 = !DILocation(line: 302, column: 12, scope: !5505)
!5522 = !DILocation(line: 303, column: 2, scope: !5505)
!5523 = !DILocation(line: 303, column: 24, scope: !5505)
!5524 = !DILocation(line: 305, column: 6, scope: !5514)
!5525 = !DILocation(line: 305, column: 6, scope: !5515)
!5526 = !DILocation(line: 305, column: 6, scope: !5505)
!5527 = !DILocation(line: 306, column: 3, scope: !5515)
!5528 = !DILocation(line: 307, column: 9, scope: !5505)
!5529 = !DILocation(line: 307, column: 15, scope: !5505)
!5530 = !DILocation(line: 307, column: 21, scope: !5505)
!5531 = !DILocation(line: 307, column: 7, scope: !5505)
!5532 = !DILocation(line: 308, column: 15, scope: !5505)
!5533 = !DILocation(line: 308, column: 6, scope: !5505)
!5534 = !DILocation(line: 308, column: 4, scope: !5505)
!5535 = !DILocation(line: 309, column: 6, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 309, column: 6)
!5537 = !DILocation(line: 309, column: 8, scope: !5536)
!5538 = !DILocation(line: 309, column: 6, scope: !5505)
!5539 = !DILocation(line: 310, column: 3, scope: !5536)
!5540 = !DILocation(line: 312, column: 7, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 312, column: 6)
!5542 = !DILocation(line: 312, column: 13, scope: !5541)
!5543 = !DILocation(line: 312, column: 19, scope: !5541)
!5544 = !DILocation(line: 312, column: 25, scope: !5541)
!5545 = !DILocation(line: 312, column: 53, scope: !5541)
!5546 = !DILocation(line: 312, column: 6, scope: !5505)
!5547 = !DILocation(line: 313, column: 11, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 312, column: 81)
!5549 = !DILocation(line: 313, column: 17, scope: !5548)
!5550 = !DILocation(line: 313, column: 23, scope: !5548)
!5551 = !DILocation(line: 313, column: 29, scope: !5548)
!5552 = !DILocation(line: 313, column: 3, scope: !5548)
!5553 = !DILocation(line: 315, column: 29, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 313, column: 58)
!5555 = !DILocation(line: 315, column: 32, scope: !5554)
!5556 = !DILocation(line: 315, column: 39, scope: !5554)
!5557 = !DILocation(line: 315, column: 44, scope: !5554)
!5558 = !DILocation(line: 315, column: 4, scope: !5554)
!5559 = !DILocation(line: 315, column: 10, scope: !5554)
!5560 = !DILocation(line: 315, column: 16, scope: !5554)
!5561 = !DILocation(line: 315, column: 26, scope: !5554)
!5562 = !DILocation(line: 316, column: 4, scope: !5554)
!5563 = !DILocation(line: 319, column: 27, scope: !5554)
!5564 = !DILocation(line: 319, column: 33, scope: !5554)
!5565 = !DILocation(line: 319, column: 39, scope: !5554)
!5566 = !DILocation(line: 320, column: 13, scope: !5554)
!5567 = !DILocation(line: 320, column: 16, scope: !5554)
!5568 = !DILocation(line: 320, column: 23, scope: !5554)
!5569 = !DILocation(line: 319, column: 4, scope: !5554)
!5570 = !DILocation(line: 321, column: 4, scope: !5554)
!5571 = !DILocation(line: 323, column: 3, scope: !5548)
!5572 = !DILocation(line: 323, column: 9, scope: !5548)
!5573 = !DILocation(line: 323, column: 15, scope: !5548)
!5574 = !DILocation(line: 323, column: 21, scope: !5548)
!5575 = !DILocation(line: 324, column: 3, scope: !5548)
!5576 = !DILocation(line: 324, column: 9, scope: !5548)
!5577 = !DILocation(line: 324, column: 15, scope: !5548)
!5578 = !DILocation(line: 324, column: 21, scope: !5548)
!5579 = !DILocation(line: 325, column: 2, scope: !5548)
!5580 = !DILocation(line: 327, column: 10, scope: !5505)
!5581 = !DILocation(line: 327, column: 16, scope: !5505)
!5582 = !DILocation(line: 327, column: 22, scope: !5505)
!5583 = !DILocation(line: 327, column: 28, scope: !5505)
!5584 = !DILocation(line: 327, column: 2, scope: !5505)
!5585 = !DILocation(line: 329, column: 31, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 327, column: 57)
!5587 = !DILocation(line: 329, column: 34, scope: !5586)
!5588 = !DILocation(line: 329, column: 41, scope: !5586)
!5589 = !DILocation(line: 329, column: 9, scope: !5586)
!5590 = !DILocation(line: 329, column: 7, scope: !5586)
!5591 = !DILocation(line: 330, column: 3, scope: !5586)
!5592 = !DILocation(line: 332, column: 2, scope: !5586)
!5593 = !DILocation(line: 334, column: 31, scope: !5586)
!5594 = !DILocation(line: 334, column: 34, scope: !5586)
!5595 = !DILocation(line: 334, column: 41, scope: !5586)
!5596 = !DILocation(line: 334, column: 9, scope: !5586)
!5597 = !DILocation(line: 334, column: 7, scope: !5586)
!5598 = !DILocation(line: 335, column: 3, scope: !5586)
!5599 = !DILocation(line: 338, column: 6, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 338, column: 6)
!5601 = !DILocation(line: 338, column: 10, scope: !5600)
!5602 = !DILocation(line: 338, column: 6, scope: !5505)
!5603 = !DILocation(line: 339, column: 3, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5600, file: !3, line: 338, column: 15)
!5605 = !DILocation(line: 340, column: 10, scope: !5604)
!5606 = !DILocation(line: 340, column: 3, scope: !5604)
!5607 = !DILocation(line: 344, column: 22, scope: !5505)
!5608 = !DILocation(line: 344, column: 25, scope: !5505)
!5609 = !DILocation(line: 344, column: 33, scope: !5505)
!5610 = !DILocation(line: 344, column: 2, scope: !5505)
!5611 = !DILocation(line: 346, column: 2, scope: !5505)
!5612 = !DILocation(line: 348, column: 2, scope: !5505)
!5613 = !DILocation(line: 349, column: 1, scope: !5505)
!5614 = distinct !DISubprogram(name: "snd_seq_inc_real_time", scope: !4138, file: !4138, line: 94, type: !5615, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5618)
!5615 = !DISubroutineType(types: !5616)
!5616 = !{null, !5617, !5617}
!5617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!5618 = !{!5619, !5620}
!5619 = !DILocalVariable(name: "tm", arg: 1, scope: !5614, file: !4138, line: 94, type: !5617)
!5620 = !DILocalVariable(name: "inc", arg: 2, scope: !5614, file: !4138, line: 94, type: !5617)
!5621 = !DILocation(line: 94, column: 63, scope: !5614)
!5622 = !DILocation(line: 94, column: 88, scope: !5614)
!5623 = !DILocation(line: 96, column: 17, scope: !5614)
!5624 = !DILocation(line: 96, column: 22, scope: !5614)
!5625 = !DILocation(line: 96, column: 2, scope: !5614)
!5626 = !DILocation(line: 96, column: 6, scope: !5614)
!5627 = !DILocation(line: 96, column: 14, scope: !5614)
!5628 = !DILocation(line: 97, column: 17, scope: !5614)
!5629 = !DILocation(line: 97, column: 22, scope: !5614)
!5630 = !DILocation(line: 97, column: 2, scope: !5614)
!5631 = !DILocation(line: 97, column: 6, scope: !5614)
!5632 = !DILocation(line: 97, column: 14, scope: !5614)
!5633 = !DILocation(line: 98, column: 27, scope: !5614)
!5634 = !DILocation(line: 98, column: 2, scope: !5614)
!5635 = !DILocation(line: 99, column: 1, scope: !5614)
!5636 = !DISubprogram(name: "snd_seq_prioq_cell_in", scope: !3995, file: !3995, line: 29, type: !5637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5637 = !DISubroutineType(types: !5638)
!5638 = !{!85, !3993, !3998}
!5639 = distinct !DISubprogram(name: "snd_seq_queue_check_access", scope: !3, file: !3, line: 386, type: !5124, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5640)
!5640 = !{!5641, !5642, !5643, !5644, !5645, !5646, !5650}
!5641 = !DILocalVariable(name: "queueid", arg: 1, scope: !5639, file: !3, line: 386, type: !85)
!5642 = !DILocalVariable(name: "client", arg: 2, scope: !5639, file: !3, line: 386, type: !85)
!5643 = !DILocalVariable(name: "q", scope: !5639, file: !3, line: 388, type: !3985)
!5644 = !DILocalVariable(name: "access_ok", scope: !5639, file: !3, line: 389, type: !85)
!5645 = !DILocalVariable(name: "flags", scope: !5639, file: !3, line: 390, type: !136)
!5646 = !DILocalVariable(name: "__dummy", scope: !5647, file: !3, line: 394, type: !136)
!5647 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 394, column: 2)
!5648 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 394, column: 2)
!5649 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 394, column: 2)
!5650 = !DILocalVariable(name: "__dummy2", scope: !5647, file: !3, line: 394, type: !136)
!5651 = !DILocation(line: 386, column: 36, scope: !5639)
!5652 = !DILocation(line: 386, column: 49, scope: !5639)
!5653 = !DILocation(line: 388, column: 2, scope: !5639)
!5654 = !DILocation(line: 388, column: 24, scope: !5639)
!5655 = !DILocation(line: 388, column: 37, scope: !5639)
!5656 = !DILocation(line: 388, column: 28, scope: !5639)
!5657 = !DILocation(line: 389, column: 2, scope: !5639)
!5658 = !DILocation(line: 389, column: 6, scope: !5639)
!5659 = !DILocation(line: 390, column: 2, scope: !5639)
!5660 = !DILocation(line: 390, column: 16, scope: !5639)
!5661 = !DILocation(line: 392, column: 8, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 392, column: 6)
!5663 = !DILocation(line: 392, column: 6, scope: !5639)
!5664 = !DILocation(line: 393, column: 3, scope: !5662)
!5665 = !DILocation(line: 394, column: 2, scope: !5639)
!5666 = !DILocation(line: 394, column: 2, scope: !5649)
!5667 = !DILocation(line: 394, column: 2, scope: !5647)
!5668 = !DILocation(line: 394, column: 2, scope: !5648)
!5669 = !DILocation(line: 395, column: 27, scope: !5639)
!5670 = !DILocation(line: 395, column: 30, scope: !5639)
!5671 = !DILocation(line: 395, column: 14, scope: !5639)
!5672 = !DILocation(line: 395, column: 12, scope: !5639)
!5673 = !DILocation(line: 396, column: 26, scope: !5639)
!5674 = !DILocation(line: 396, column: 29, scope: !5639)
!5675 = !DILocation(line: 396, column: 41, scope: !5639)
!5676 = !DILocation(line: 396, column: 2, scope: !5639)
!5677 = !DILocation(line: 397, column: 2, scope: !5639)
!5678 = !DILocation(line: 398, column: 9, scope: !5639)
!5679 = !DILocation(line: 398, column: 2, scope: !5639)
!5680 = !DILocation(line: 399, column: 1, scope: !5639)
!5681 = distinct !DISubprogram(name: "check_access", scope: !3, file: !3, line: 354, type: !5682, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5684)
!5682 = !DISubroutineType(types: !5683)
!5683 = !{!85, !3985, !85}
!5684 = !{!5685, !5686}
!5685 = !DILocalVariable(name: "q", arg: 1, scope: !5681, file: !3, line: 354, type: !3985)
!5686 = !DILocalVariable(name: "client", arg: 2, scope: !5681, file: !3, line: 354, type: !85)
!5687 = !DILocation(line: 354, column: 54, scope: !5681)
!5688 = !DILocation(line: 354, column: 61, scope: !5681)
!5689 = !DILocation(line: 356, column: 10, scope: !5681)
!5690 = !DILocation(line: 356, column: 13, scope: !5681)
!5691 = !DILocation(line: 356, column: 22, scope: !5681)
!5692 = !DILocation(line: 356, column: 19, scope: !5681)
!5693 = !DILocation(line: 356, column: 30, scope: !5681)
!5694 = !DILocation(line: 356, column: 35, scope: !5681)
!5695 = !DILocation(line: 356, column: 38, scope: !5681)
!5696 = !DILocation(line: 356, column: 45, scope: !5681)
!5697 = !DILocation(line: 356, column: 49, scope: !5681)
!5698 = !DILocation(line: 356, column: 52, scope: !5681)
!5699 = !DILocation(line: 356, column: 48, scope: !5681)
!5700 = !DILocation(line: 0, scope: !5681)
!5701 = !DILocation(line: 356, column: 2, scope: !5681)
!5702 = distinct !DISubprogram(name: "snd_seq_queue_set_owner", scope: !3, file: !3, line: 406, type: !5703, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5705)
!5703 = !DISubroutineType(types: !5704)
!5704 = !{!85, !85, !85, !85}
!5705 = !{!5706, !5707, !5708, !5709, !5710, !5711, !5715}
!5706 = !DILocalVariable(name: "queueid", arg: 1, scope: !5702, file: !3, line: 406, type: !85)
!5707 = !DILocalVariable(name: "client", arg: 2, scope: !5702, file: !3, line: 406, type: !85)
!5708 = !DILocalVariable(name: "locked", arg: 3, scope: !5702, file: !3, line: 406, type: !85)
!5709 = !DILocalVariable(name: "q", scope: !5702, file: !3, line: 408, type: !3985)
!5710 = !DILocalVariable(name: "flags", scope: !5702, file: !3, line: 409, type: !136)
!5711 = !DILocalVariable(name: "__dummy", scope: !5712, file: !3, line: 419, type: !136)
!5712 = distinct !DILexicalBlock(scope: !5713, file: !3, line: 419, column: 2)
!5713 = distinct !DILexicalBlock(scope: !5714, file: !3, line: 419, column: 2)
!5714 = distinct !DILexicalBlock(scope: !5702, file: !3, line: 419, column: 2)
!5715 = !DILocalVariable(name: "__dummy2", scope: !5712, file: !3, line: 419, type: !136)
!5716 = !DILocation(line: 406, column: 33, scope: !5702)
!5717 = !DILocation(line: 406, column: 46, scope: !5702)
!5718 = !DILocation(line: 406, column: 58, scope: !5702)
!5719 = !DILocation(line: 408, column: 2, scope: !5702)
!5720 = !DILocation(line: 408, column: 24, scope: !5702)
!5721 = !DILocation(line: 408, column: 37, scope: !5702)
!5722 = !DILocation(line: 408, column: 28, scope: !5702)
!5723 = !DILocation(line: 409, column: 2, scope: !5702)
!5724 = !DILocation(line: 409, column: 16, scope: !5702)
!5725 = !DILocation(line: 411, column: 6, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5702, file: !3, line: 411, column: 6)
!5727 = !DILocation(line: 411, column: 8, scope: !5726)
!5728 = !DILocation(line: 411, column: 6, scope: !5702)
!5729 = !DILocation(line: 412, column: 3, scope: !5726)
!5730 = !DILocation(line: 414, column: 26, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5702, file: !3, line: 414, column: 6)
!5732 = !DILocation(line: 414, column: 29, scope: !5731)
!5733 = !DILocation(line: 414, column: 8, scope: !5731)
!5734 = !DILocation(line: 414, column: 6, scope: !5702)
!5735 = !DILocation(line: 415, column: 3, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 414, column: 38)
!5737 = !DILocation(line: 416, column: 3, scope: !5736)
!5738 = !DILocation(line: 419, column: 2, scope: !5702)
!5739 = !DILocation(line: 419, column: 2, scope: !5714)
!5740 = !DILocation(line: 419, column: 2, scope: !5712)
!5741 = !DILocation(line: 419, column: 2, scope: !5713)
!5742 = !DILocation(line: 420, column: 14, scope: !5702)
!5743 = !DILocation(line: 420, column: 2, scope: !5702)
!5744 = !DILocation(line: 420, column: 5, scope: !5702)
!5745 = !DILocation(line: 420, column: 12, scope: !5702)
!5746 = !DILocation(line: 421, column: 13, scope: !5702)
!5747 = !DILocation(line: 421, column: 2, scope: !5702)
!5748 = !DILocation(line: 421, column: 5, scope: !5702)
!5749 = !DILocation(line: 421, column: 11, scope: !5702)
!5750 = !DILocation(line: 422, column: 26, scope: !5702)
!5751 = !DILocation(line: 422, column: 29, scope: !5702)
!5752 = !DILocation(line: 422, column: 41, scope: !5702)
!5753 = !DILocation(line: 422, column: 2, scope: !5702)
!5754 = !DILocation(line: 423, column: 22, scope: !5702)
!5755 = !DILocation(line: 423, column: 2, scope: !5702)
!5756 = !DILocation(line: 424, column: 2, scope: !5702)
!5757 = !DILocation(line: 426, column: 2, scope: !5702)
!5758 = !DILocation(line: 427, column: 1, scope: !5702)
!5759 = distinct !DISubprogram(name: "queue_access_lock", scope: !3, file: !3, line: 362, type: !5682, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5760)
!5760 = !{!5761, !5762, !5763, !5764, !5765, !5769}
!5761 = !DILocalVariable(name: "q", arg: 1, scope: !5759, file: !3, line: 362, type: !3985)
!5762 = !DILocalVariable(name: "client", arg: 2, scope: !5759, file: !3, line: 362, type: !85)
!5763 = !DILocalVariable(name: "flags", scope: !5759, file: !3, line: 364, type: !136)
!5764 = !DILocalVariable(name: "access_ok", scope: !5759, file: !3, line: 365, type: !85)
!5765 = !DILocalVariable(name: "__dummy", scope: !5766, file: !3, line: 367, type: !136)
!5766 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 367, column: 2)
!5767 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 367, column: 2)
!5768 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 367, column: 2)
!5769 = !DILocalVariable(name: "__dummy2", scope: !5766, file: !3, line: 367, type: !136)
!5770 = !DILocation(line: 362, column: 52, scope: !5759)
!5771 = !DILocation(line: 362, column: 59, scope: !5759)
!5772 = !DILocation(line: 364, column: 2, scope: !5759)
!5773 = !DILocation(line: 364, column: 16, scope: !5759)
!5774 = !DILocation(line: 365, column: 2, scope: !5759)
!5775 = !DILocation(line: 365, column: 6, scope: !5759)
!5776 = !DILocation(line: 367, column: 2, scope: !5759)
!5777 = !DILocation(line: 367, column: 2, scope: !5768)
!5778 = !DILocation(line: 367, column: 2, scope: !5766)
!5779 = !DILocation(line: 367, column: 2, scope: !5767)
!5780 = !DILocation(line: 368, column: 27, scope: !5759)
!5781 = !DILocation(line: 368, column: 30, scope: !5759)
!5782 = !DILocation(line: 368, column: 14, scope: !5759)
!5783 = !DILocation(line: 368, column: 12, scope: !5759)
!5784 = !DILocation(line: 369, column: 6, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 369, column: 6)
!5786 = !DILocation(line: 369, column: 6, scope: !5759)
!5787 = !DILocation(line: 370, column: 3, scope: !5785)
!5788 = !DILocation(line: 370, column: 6, scope: !5785)
!5789 = !DILocation(line: 370, column: 14, scope: !5785)
!5790 = !DILocation(line: 371, column: 26, scope: !5759)
!5791 = !DILocation(line: 371, column: 29, scope: !5759)
!5792 = !DILocation(line: 371, column: 41, scope: !5759)
!5793 = !DILocation(line: 371, column: 2, scope: !5759)
!5794 = !DILocation(line: 372, column: 9, scope: !5759)
!5795 = !DILocation(line: 373, column: 1, scope: !5759)
!5796 = !DILocation(line: 372, column: 2, scope: !5759)
!5797 = distinct !DISubprogram(name: "queue_access_unlock", scope: !3, file: !3, line: 376, type: !4830, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5798)
!5798 = !{!5799, !5800, !5801, !5805}
!5799 = !DILocalVariable(name: "q", arg: 1, scope: !5797, file: !3, line: 376, type: !3985)
!5800 = !DILocalVariable(name: "flags", scope: !5797, file: !3, line: 378, type: !136)
!5801 = !DILocalVariable(name: "__dummy", scope: !5802, file: !3, line: 380, type: !136)
!5802 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 380, column: 2)
!5803 = distinct !DILexicalBlock(scope: !5804, file: !3, line: 380, column: 2)
!5804 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 380, column: 2)
!5805 = !DILocalVariable(name: "__dummy2", scope: !5802, file: !3, line: 380, type: !136)
!5806 = !DILocation(line: 376, column: 62, scope: !5797)
!5807 = !DILocation(line: 378, column: 2, scope: !5797)
!5808 = !DILocation(line: 378, column: 16, scope: !5797)
!5809 = !DILocation(line: 380, column: 2, scope: !5797)
!5810 = !DILocation(line: 380, column: 2, scope: !5804)
!5811 = !DILocation(line: 380, column: 2, scope: !5802)
!5812 = !DILocation(line: 380, column: 2, scope: !5803)
!5813 = !DILocation(line: 381, column: 2, scope: !5797)
!5814 = !DILocation(line: 381, column: 5, scope: !5797)
!5815 = !DILocation(line: 381, column: 13, scope: !5797)
!5816 = !DILocation(line: 382, column: 26, scope: !5797)
!5817 = !DILocation(line: 382, column: 29, scope: !5797)
!5818 = !DILocation(line: 382, column: 41, scope: !5797)
!5819 = !DILocation(line: 382, column: 2, scope: !5797)
!5820 = !DILocation(line: 383, column: 1, scope: !5797)
!5821 = distinct !DISubprogram(name: "snd_seq_queue_timer_open", scope: !3, file: !3, line: 436, type: !3829, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5822)
!5822 = !{!5823, !5824, !5825, !5826}
!5823 = !DILocalVariable(name: "queueid", arg: 1, scope: !5821, file: !3, line: 436, type: !85)
!5824 = !DILocalVariable(name: "result", scope: !5821, file: !3, line: 438, type: !85)
!5825 = !DILocalVariable(name: "queue", scope: !5821, file: !3, line: 439, type: !3985)
!5826 = !DILocalVariable(name: "tmr", scope: !5821, file: !3, line: 440, type: !4136)
!5827 = !DILocation(line: 436, column: 34, scope: !5821)
!5828 = !DILocation(line: 438, column: 2, scope: !5821)
!5829 = !DILocation(line: 438, column: 6, scope: !5821)
!5830 = !DILocation(line: 439, column: 2, scope: !5821)
!5831 = !DILocation(line: 439, column: 24, scope: !5821)
!5832 = !DILocation(line: 440, column: 2, scope: !5821)
!5833 = !DILocation(line: 440, column: 24, scope: !5821)
!5834 = !DILocation(line: 442, column: 19, scope: !5821)
!5835 = !DILocation(line: 442, column: 10, scope: !5821)
!5836 = !DILocation(line: 442, column: 8, scope: !5821)
!5837 = !DILocation(line: 443, column: 6, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 443, column: 6)
!5839 = !DILocation(line: 443, column: 12, scope: !5838)
!5840 = !DILocation(line: 443, column: 6, scope: !5821)
!5841 = !DILocation(line: 444, column: 3, scope: !5838)
!5842 = !DILocation(line: 445, column: 8, scope: !5821)
!5843 = !DILocation(line: 445, column: 15, scope: !5821)
!5844 = !DILocation(line: 445, column: 6, scope: !5821)
!5845 = !DILocation(line: 446, column: 30, scope: !5821)
!5846 = !DILocation(line: 446, column: 11, scope: !5821)
!5847 = !DILocation(line: 446, column: 9, scope: !5821)
!5848 = !DILocation(line: 447, column: 6, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 447, column: 6)
!5850 = !DILocation(line: 447, column: 13, scope: !5849)
!5851 = !DILocation(line: 447, column: 6, scope: !5821)
!5852 = !DILocation(line: 448, column: 26, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 447, column: 18)
!5854 = !DILocation(line: 448, column: 3, scope: !5853)
!5855 = !DILocation(line: 449, column: 31, scope: !5853)
!5856 = !DILocation(line: 449, column: 12, scope: !5853)
!5857 = !DILocation(line: 449, column: 10, scope: !5853)
!5858 = !DILocation(line: 450, column: 2, scope: !5853)
!5859 = !DILocation(line: 451, column: 2, scope: !5821)
!5860 = !DILocation(line: 452, column: 9, scope: !5821)
!5861 = !DILocation(line: 452, column: 2, scope: !5821)
!5862 = !DILocation(line: 453, column: 1, scope: !5821)
!5863 = !DISubprogram(name: "snd_seq_timer_open", scope: !4138, file: !4138, line: 109, type: !5059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5864 = !DISubprogram(name: "snd_seq_timer_defaults", scope: !4138, file: !4138, line: 113, type: !5865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5865 = !DISubroutineType(types: !5866)
!5866 = !{null, !4136}
!5867 = distinct !DISubprogram(name: "snd_seq_queue_timer_close", scope: !3, file: !3, line: 458, type: !3829, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5868)
!5868 = !{!5869, !5870, !5871}
!5869 = !DILocalVariable(name: "queueid", arg: 1, scope: !5867, file: !3, line: 458, type: !85)
!5870 = !DILocalVariable(name: "queue", scope: !5867, file: !3, line: 460, type: !3985)
!5871 = !DILocalVariable(name: "result", scope: !5867, file: !3, line: 461, type: !85)
!5872 = !DILocation(line: 458, column: 35, scope: !5867)
!5873 = !DILocation(line: 460, column: 2, scope: !5867)
!5874 = !DILocation(line: 460, column: 24, scope: !5867)
!5875 = !DILocation(line: 461, column: 2, scope: !5867)
!5876 = !DILocation(line: 461, column: 6, scope: !5867)
!5877 = !DILocation(line: 463, column: 19, scope: !5867)
!5878 = !DILocation(line: 463, column: 10, scope: !5867)
!5879 = !DILocation(line: 463, column: 8, scope: !5867)
!5880 = !DILocation(line: 464, column: 6, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5867, file: !3, line: 464, column: 6)
!5882 = !DILocation(line: 464, column: 12, scope: !5881)
!5883 = !DILocation(line: 464, column: 6, scope: !5867)
!5884 = !DILocation(line: 465, column: 3, scope: !5881)
!5885 = !DILocation(line: 466, column: 22, scope: !5867)
!5886 = !DILocation(line: 466, column: 2, scope: !5867)
!5887 = !DILocation(line: 467, column: 2, scope: !5867)
!5888 = !DILocation(line: 468, column: 9, scope: !5867)
!5889 = !DILocation(line: 468, column: 2, scope: !5867)
!5890 = !DILocation(line: 469, column: 1, scope: !5867)
!5891 = !DISubprogram(name: "snd_seq_timer_close", scope: !4138, file: !4138, line: 110, type: !5059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5892 = distinct !DISubprogram(name: "snd_seq_queue_timer_set_tempo", scope: !3, file: !3, line: 472, type: !5893, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5907)
!5893 = !DISubroutineType(types: !5894)
!5894 = !{!85, !85, !85, !5895}
!5895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5896, size: 64)
!5896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_queue_tempo", file: !4007, line: 524, size: 352, elements: !5897)
!5897 = !{!5898, !5899, !5900, !5901, !5902, !5903}
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !5896, file: !4007, line: 525, baseType: !85, size: 32)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "tempo", scope: !5896, file: !4007, line: 526, baseType: !7, size: 32, offset: 32)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "ppq", scope: !5896, file: !4007, line: 527, baseType: !85, size: 32, offset: 64)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "skew_value", scope: !5896, file: !4007, line: 528, baseType: !7, size: 32, offset: 96)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "skew_base", scope: !5896, file: !4007, line: 529, baseType: !7, size: 32, offset: 128)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5896, file: !4007, line: 530, baseType: !5904, size: 192, offset: 160)
!5904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 192, elements: !5905)
!5905 = !{!5906}
!5906 = !DISubrange(count: 24)
!5907 = !{!5908, !5909, !5910, !5911, !5912}
!5908 = !DILocalVariable(name: "queueid", arg: 1, scope: !5892, file: !3, line: 472, type: !85)
!5909 = !DILocalVariable(name: "client", arg: 2, scope: !5892, file: !3, line: 472, type: !85)
!5910 = !DILocalVariable(name: "info", arg: 3, scope: !5892, file: !3, line: 473, type: !5895)
!5911 = !DILocalVariable(name: "q", scope: !5892, file: !3, line: 475, type: !3985)
!5912 = !DILocalVariable(name: "result", scope: !5892, file: !3, line: 476, type: !85)
!5913 = !DILocation(line: 472, column: 39, scope: !5892)
!5914 = !DILocation(line: 472, column: 52, scope: !5892)
!5915 = !DILocation(line: 473, column: 35, scope: !5892)
!5916 = !DILocation(line: 475, column: 2, scope: !5892)
!5917 = !DILocation(line: 475, column: 24, scope: !5892)
!5918 = !DILocation(line: 475, column: 37, scope: !5892)
!5919 = !DILocation(line: 475, column: 28, scope: !5892)
!5920 = !DILocation(line: 476, column: 2, scope: !5892)
!5921 = !DILocation(line: 476, column: 6, scope: !5892)
!5922 = !DILocation(line: 478, column: 6, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5892, file: !3, line: 478, column: 6)
!5924 = !DILocation(line: 478, column: 8, scope: !5923)
!5925 = !DILocation(line: 478, column: 6, scope: !5892)
!5926 = !DILocation(line: 479, column: 3, scope: !5923)
!5927 = !DILocation(line: 480, column: 26, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5892, file: !3, line: 480, column: 6)
!5929 = !DILocation(line: 480, column: 29, scope: !5928)
!5930 = !DILocation(line: 480, column: 8, scope: !5928)
!5931 = !DILocation(line: 480, column: 6, scope: !5892)
!5932 = !DILocation(line: 481, column: 3, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5928, file: !3, line: 480, column: 38)
!5934 = !DILocation(line: 482, column: 3, scope: !5933)
!5935 = !DILocation(line: 485, column: 39, scope: !5892)
!5936 = !DILocation(line: 485, column: 42, scope: !5892)
!5937 = !DILocation(line: 485, column: 49, scope: !5892)
!5938 = !DILocation(line: 485, column: 55, scope: !5892)
!5939 = !DILocation(line: 485, column: 62, scope: !5892)
!5940 = !DILocation(line: 485, column: 68, scope: !5892)
!5941 = !DILocation(line: 485, column: 11, scope: !5892)
!5942 = !DILocation(line: 485, column: 9, scope: !5892)
!5943 = !DILocation(line: 486, column: 6, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5892, file: !3, line: 486, column: 6)
!5945 = !DILocation(line: 486, column: 13, scope: !5944)
!5946 = !DILocation(line: 486, column: 18, scope: !5944)
!5947 = !DILocation(line: 486, column: 21, scope: !5944)
!5948 = !DILocation(line: 486, column: 27, scope: !5944)
!5949 = !DILocation(line: 486, column: 37, scope: !5944)
!5950 = !DILocation(line: 486, column: 6, scope: !5892)
!5951 = !DILocation(line: 487, column: 35, scope: !5944)
!5952 = !DILocation(line: 487, column: 38, scope: !5944)
!5953 = !DILocation(line: 487, column: 45, scope: !5944)
!5954 = !DILocation(line: 487, column: 51, scope: !5944)
!5955 = !DILocation(line: 488, column: 7, scope: !5944)
!5956 = !DILocation(line: 488, column: 13, scope: !5944)
!5957 = !DILocation(line: 487, column: 12, scope: !5944)
!5958 = !DILocation(line: 487, column: 10, scope: !5944)
!5959 = !DILocation(line: 487, column: 3, scope: !5944)
!5960 = !DILocation(line: 489, column: 22, scope: !5892)
!5961 = !DILocation(line: 489, column: 2, scope: !5892)
!5962 = !DILocation(line: 490, column: 2, scope: !5892)
!5963 = !DILocation(line: 491, column: 9, scope: !5892)
!5964 = !DILocation(line: 491, column: 2, scope: !5892)
!5965 = !DILocation(line: 492, column: 1, scope: !5892)
!5966 = !DISubprogram(name: "snd_seq_timer_set_tempo_ppq", scope: !4138, file: !4138, line: 119, type: !5967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5967 = !DISubroutineType(types: !5968)
!5968 = !{!85, !4136, !85, !85}
!5969 = !DISubprogram(name: "snd_seq_timer_set_skew", scope: !4138, file: !4138, line: 122, type: !5970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5970 = !DISubroutineType(types: !5971)
!5971 = !{!85, !4136, !7, !7}
!5972 = distinct !DISubprogram(name: "snd_seq_queue_use", scope: !3, file: !3, line: 517, type: !5703, scopeLine: 518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5973)
!5973 = !{!5974, !5975, !5976, !5977}
!5974 = !DILocalVariable(name: "queueid", arg: 1, scope: !5972, file: !3, line: 517, type: !85)
!5975 = !DILocalVariable(name: "client", arg: 2, scope: !5972, file: !3, line: 517, type: !85)
!5976 = !DILocalVariable(name: "use", arg: 3, scope: !5972, file: !3, line: 517, type: !85)
!5977 = !DILocalVariable(name: "queue", scope: !5972, file: !3, line: 519, type: !3985)
!5978 = !DILocation(line: 517, column: 27, scope: !5972)
!5979 = !DILocation(line: 517, column: 40, scope: !5972)
!5980 = !DILocation(line: 517, column: 52, scope: !5972)
!5981 = !DILocation(line: 519, column: 2, scope: !5972)
!5982 = !DILocation(line: 519, column: 24, scope: !5972)
!5983 = !DILocation(line: 521, column: 19, scope: !5972)
!5984 = !DILocation(line: 521, column: 10, scope: !5972)
!5985 = !DILocation(line: 521, column: 8, scope: !5972)
!5986 = !DILocation(line: 522, column: 6, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 522, column: 6)
!5988 = !DILocation(line: 522, column: 12, scope: !5987)
!5989 = !DILocation(line: 522, column: 6, scope: !5972)
!5990 = !DILocation(line: 523, column: 3, scope: !5987)
!5991 = !DILocation(line: 524, column: 14, scope: !5972)
!5992 = !DILocation(line: 524, column: 21, scope: !5972)
!5993 = !DILocation(line: 524, column: 2, scope: !5972)
!5994 = !DILocation(line: 525, column: 12, scope: !5972)
!5995 = !DILocation(line: 525, column: 19, scope: !5972)
!5996 = !DILocation(line: 525, column: 27, scope: !5972)
!5997 = !DILocation(line: 525, column: 2, scope: !5972)
!5998 = !DILocation(line: 526, column: 16, scope: !5972)
!5999 = !DILocation(line: 526, column: 23, scope: !5972)
!6000 = !DILocation(line: 526, column: 2, scope: !5972)
!6001 = !DILocation(line: 527, column: 2, scope: !5972)
!6002 = !DILocation(line: 528, column: 2, scope: !5972)
!6003 = !DILocation(line: 529, column: 1, scope: !5972)
!6004 = !DISubprogram(name: "mutex_lock", scope: !161, file: !161, line: 227, type: !6005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6005 = !DISubroutineType(types: !6006)
!6006 = !{null, !6007}
!6007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!6008 = !DISubprogram(name: "mutex_unlock", scope: !161, file: !161, line: 246, type: !6005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6009 = distinct !DISubprogram(name: "snd_seq_queue_is_used", scope: !3, file: !3, line: 536, type: !5124, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6010)
!6010 = !{!6011, !6012, !6013, !6014}
!6011 = !DILocalVariable(name: "queueid", arg: 1, scope: !6009, file: !3, line: 536, type: !85)
!6012 = !DILocalVariable(name: "client", arg: 2, scope: !6009, file: !3, line: 536, type: !85)
!6013 = !DILocalVariable(name: "q", scope: !6009, file: !3, line: 538, type: !3985)
!6014 = !DILocalVariable(name: "result", scope: !6009, file: !3, line: 539, type: !85)
!6015 = !DILocation(line: 536, column: 31, scope: !6009)
!6016 = !DILocation(line: 536, column: 44, scope: !6009)
!6017 = !DILocation(line: 538, column: 2, scope: !6009)
!6018 = !DILocation(line: 538, column: 24, scope: !6009)
!6019 = !DILocation(line: 539, column: 2, scope: !6009)
!6020 = !DILocation(line: 539, column: 6, scope: !6009)
!6021 = !DILocation(line: 541, column: 15, scope: !6009)
!6022 = !DILocation(line: 541, column: 6, scope: !6009)
!6023 = !DILocation(line: 541, column: 4, scope: !6009)
!6024 = !DILocation(line: 542, column: 6, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 542, column: 6)
!6026 = !DILocation(line: 542, column: 8, scope: !6025)
!6027 = !DILocation(line: 542, column: 6, scope: !6009)
!6028 = !DILocation(line: 543, column: 3, scope: !6025)
!6029 = !DILocation(line: 544, column: 11, scope: !6009)
!6030 = !DILocation(line: 544, column: 9, scope: !6009)
!6031 = !DILocation(line: 545, column: 2, scope: !6009)
!6032 = !DILocation(line: 546, column: 9, scope: !6009)
!6033 = !DILocation(line: 546, column: 2, scope: !6009)
!6034 = !DILocation(line: 547, column: 1, scope: !6009)
!6035 = distinct !DISubprogram(name: "const_test_bit", scope: !6036, file: !6036, line: 166, type: !6037, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6042)
!6036 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6037 = !DISubroutineType(types: !6038)
!6038 = !{!483, !136, !6039}
!6039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6040, size: 64)
!6040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6041)
!6041 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !136)
!6042 = !{!6043, !6044, !6045, !6046, !6047}
!6043 = !DILocalVariable(name: "nr", arg: 1, scope: !6035, file: !6036, line: 166, type: !136)
!6044 = !DILocalVariable(name: "addr", arg: 2, scope: !6035, file: !6036, line: 166, type: !6039)
!6045 = !DILocalVariable(name: "p", scope: !6035, file: !6036, line: 168, type: !137)
!6046 = !DILocalVariable(name: "mask", scope: !6035, file: !6036, line: 169, type: !136)
!6047 = !DILocalVariable(name: "val", scope: !6035, file: !6036, line: 170, type: !136)
!6048 = !DILocation(line: 166, column: 30, scope: !6035)
!6049 = !DILocation(line: 166, column: 64, scope: !6035)
!6050 = !DILocation(line: 168, column: 2, scope: !6035)
!6051 = !DILocation(line: 168, column: 23, scope: !6035)
!6052 = !DILocation(line: 168, column: 50, scope: !6035)
!6053 = !DILocation(line: 168, column: 57, scope: !6035)
!6054 = !DILocation(line: 168, column: 55, scope: !6035)
!6055 = !DILocation(line: 169, column: 2, scope: !6035)
!6056 = !DILocation(line: 169, column: 16, scope: !6035)
!6057 = !DILocation(line: 169, column: 23, scope: !6035)
!6058 = !DILocation(line: 170, column: 2, scope: !6035)
!6059 = !DILocation(line: 170, column: 16, scope: !6035)
!6060 = !DILocation(line: 170, column: 23, scope: !6035)
!6061 = !DILocation(line: 170, column: 22, scope: !6035)
!6062 = !DILocation(line: 172, column: 12, scope: !6035)
!6063 = !DILocation(line: 172, column: 18, scope: !6035)
!6064 = !DILocation(line: 172, column: 16, scope: !6035)
!6065 = !DILocation(line: 172, column: 10, scope: !6035)
!6066 = !DILocation(line: 172, column: 9, scope: !6035)
!6067 = !DILocation(line: 173, column: 1, scope: !6035)
!6068 = !DILocation(line: 172, column: 2, scope: !6035)
!6069 = distinct !DISubprogram(name: "_test_bit", scope: !6070, file: !6070, line: 139, type: !6037, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6071)
!6070 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6071 = !{!6072, !6073}
!6072 = !DILocalVariable(name: "nr", arg: 1, scope: !6069, file: !6070, line: 139, type: !136)
!6073 = !DILocalVariable(name: "addr", arg: 2, scope: !6069, file: !6070, line: 139, type: !6039)
!6074 = !DILocation(line: 139, column: 25, scope: !6069)
!6075 = !DILocation(line: 139, column: 59, scope: !6069)
!6076 = !DILocation(line: 141, column: 25, scope: !6069)
!6077 = !DILocation(line: 141, column: 32, scope: !6069)
!6078 = !DILocation(line: 141, column: 30, scope: !6069)
!6079 = !DILocation(line: 141, column: 2, scope: !6069)
!6080 = !DILocation(line: 142, column: 23, scope: !6069)
!6081 = !DILocation(line: 142, column: 27, scope: !6069)
!6082 = !DILocation(line: 142, column: 9, scope: !6069)
!6083 = !DILocation(line: 142, column: 2, scope: !6069)
!6084 = distinct !DISubprogram(name: "snd_seq_queue_client_leave", scope: !3, file: !3, line: 556, type: !3009, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6085)
!6085 = !{!6086, !6087, !6088}
!6086 = !DILocalVariable(name: "client", arg: 1, scope: !6084, file: !3, line: 556, type: !85)
!6087 = !DILocalVariable(name: "i", scope: !6084, file: !3, line: 558, type: !85)
!6088 = !DILocalVariable(name: "q", scope: !6084, file: !3, line: 559, type: !3985)
!6089 = !DILocation(line: 556, column: 37, scope: !6084)
!6090 = !DILocation(line: 558, column: 2, scope: !6084)
!6091 = !DILocation(line: 558, column: 6, scope: !6084)
!6092 = !DILocation(line: 559, column: 2, scope: !6084)
!6093 = !DILocation(line: 559, column: 24, scope: !6084)
!6094 = !DILocation(line: 562, column: 9, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6084, file: !3, line: 562, column: 2)
!6096 = !DILocation(line: 562, column: 7, scope: !6095)
!6097 = !DILocation(line: 562, column: 14, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6095, file: !3, line: 562, column: 2)
!6099 = !DILocation(line: 562, column: 16, scope: !6098)
!6100 = !DILocation(line: 562, column: 2, scope: !6095)
!6101 = !DILocation(line: 563, column: 25, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 562, column: 45)
!6103 = !DILocation(line: 563, column: 28, scope: !6102)
!6104 = !DILocation(line: 563, column: 7, scope: !6102)
!6105 = !DILocation(line: 563, column: 5, scope: !6102)
!6106 = !DILocation(line: 564, column: 7, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 564, column: 7)
!6108 = !DILocation(line: 564, column: 7, scope: !6102)
!6109 = !DILocation(line: 565, column: 17, scope: !6107)
!6110 = !DILocation(line: 565, column: 4, scope: !6107)
!6111 = !DILocation(line: 566, column: 2, scope: !6102)
!6112 = !DILocation(line: 562, column: 41, scope: !6098)
!6113 = !DILocation(line: 562, column: 2, scope: !6098)
!6114 = distinct !{!6114, !6100, !6115, !4826, !4827}
!6115 = !DILocation(line: 566, column: 2, scope: !6095)
!6116 = !DILocation(line: 571, column: 9, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !6084, file: !3, line: 571, column: 2)
!6118 = !DILocation(line: 571, column: 7, scope: !6117)
!6119 = !DILocation(line: 571, column: 14, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6117, file: !3, line: 571, column: 2)
!6121 = !DILocation(line: 571, column: 16, scope: !6120)
!6122 = !DILocation(line: 571, column: 2, scope: !6117)
!6123 = !DILocation(line: 572, column: 16, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 571, column: 45)
!6125 = !DILocation(line: 572, column: 7, scope: !6124)
!6126 = !DILocation(line: 572, column: 5, scope: !6124)
!6127 = !DILocation(line: 573, column: 8, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 573, column: 7)
!6129 = !DILocation(line: 573, column: 7, scope: !6124)
!6130 = !DILocation(line: 574, column: 4, scope: !6128)
!6131 = !DILocation(line: 575, column: 7, scope: !6132)
!6132 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 575, column: 7)
!6133 = !DILocation(line: 575, column: 7, scope: !6124)
!6134 = !DILocation(line: 576, column: 24, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 575, column: 44)
!6136 = !DILocation(line: 576, column: 27, scope: !6135)
!6137 = !DILocation(line: 576, column: 34, scope: !6135)
!6138 = !DILocation(line: 576, column: 4, scope: !6135)
!6139 = !DILocation(line: 577, column: 24, scope: !6135)
!6140 = !DILocation(line: 577, column: 27, scope: !6135)
!6141 = !DILocation(line: 577, column: 34, scope: !6135)
!6142 = !DILocation(line: 577, column: 4, scope: !6135)
!6143 = !DILocation(line: 578, column: 22, scope: !6135)
!6144 = !DILocation(line: 578, column: 25, scope: !6135)
!6145 = !DILocation(line: 578, column: 32, scope: !6135)
!6146 = !DILocation(line: 578, column: 4, scope: !6135)
!6147 = !DILocation(line: 579, column: 3, scope: !6135)
!6148 = !DILocation(line: 580, column: 3, scope: !6124)
!6149 = !DILocation(line: 581, column: 2, scope: !6124)
!6150 = !DILocation(line: 571, column: 41, scope: !6120)
!6151 = !DILocation(line: 571, column: 2, scope: !6120)
!6152 = distinct !{!6152, !6122, !6153, !4826, !4827}
!6153 = !DILocation(line: 581, column: 2, scope: !6117)
!6154 = !DILocation(line: 582, column: 1, scope: !6084)
!6155 = !DISubprogram(name: "snd_seq_prioq_leave", scope: !3995, file: !3995, line: 39, type: !6156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6156 = !DISubroutineType(types: !6157)
!6157 = !{null, !3993, !85, !85}
!6158 = distinct !DISubprogram(name: "snd_seq_queue_client_leave_cells", scope: !3, file: !3, line: 589, type: !3009, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6159)
!6159 = !{!6160, !6161, !6162}
!6160 = !DILocalVariable(name: "client", arg: 1, scope: !6158, file: !3, line: 589, type: !85)
!6161 = !DILocalVariable(name: "i", scope: !6158, file: !3, line: 591, type: !85)
!6162 = !DILocalVariable(name: "q", scope: !6158, file: !3, line: 592, type: !3985)
!6163 = !DILocation(line: 589, column: 43, scope: !6158)
!6164 = !DILocation(line: 591, column: 2, scope: !6158)
!6165 = !DILocation(line: 591, column: 6, scope: !6158)
!6166 = !DILocation(line: 592, column: 2, scope: !6158)
!6167 = !DILocation(line: 592, column: 24, scope: !6158)
!6168 = !DILocation(line: 594, column: 9, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6158, file: !3, line: 594, column: 2)
!6170 = !DILocation(line: 594, column: 7, scope: !6169)
!6171 = !DILocation(line: 594, column: 14, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6169, file: !3, line: 594, column: 2)
!6173 = !DILocation(line: 594, column: 16, scope: !6172)
!6174 = !DILocation(line: 594, column: 2, scope: !6169)
!6175 = !DILocation(line: 595, column: 16, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6172, file: !3, line: 594, column: 45)
!6177 = !DILocation(line: 595, column: 7, scope: !6176)
!6178 = !DILocation(line: 595, column: 5, scope: !6176)
!6179 = !DILocation(line: 596, column: 8, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6176, file: !3, line: 596, column: 7)
!6181 = !DILocation(line: 596, column: 7, scope: !6176)
!6182 = !DILocation(line: 597, column: 4, scope: !6180)
!6183 = !DILocation(line: 598, column: 23, scope: !6176)
!6184 = !DILocation(line: 598, column: 26, scope: !6176)
!6185 = !DILocation(line: 598, column: 33, scope: !6176)
!6186 = !DILocation(line: 598, column: 3, scope: !6176)
!6187 = !DILocation(line: 599, column: 23, scope: !6176)
!6188 = !DILocation(line: 599, column: 26, scope: !6176)
!6189 = !DILocation(line: 599, column: 33, scope: !6176)
!6190 = !DILocation(line: 599, column: 3, scope: !6176)
!6191 = !DILocation(line: 600, column: 3, scope: !6176)
!6192 = !DILocation(line: 601, column: 2, scope: !6176)
!6193 = !DILocation(line: 594, column: 41, scope: !6172)
!6194 = !DILocation(line: 594, column: 2, scope: !6172)
!6195 = distinct !{!6195, !6174, !6196, !4826, !4827}
!6196 = !DILocation(line: 601, column: 2, scope: !6169)
!6197 = !DILocation(line: 602, column: 1, scope: !6158)
!6198 = distinct !DISubprogram(name: "snd_seq_queue_remove_cells", scope: !3, file: !3, line: 605, type: !6199, scopeLine: 606, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6215)
!6199 = !DISubroutineType(types: !6200)
!6200 = !{null, !85, !6201}
!6201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6202, size: 64)
!6202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_remove_events", file: !4007, line: 402, size: 512, elements: !6203)
!6203 = !{!6204, !6205, !6206, !6207, !6208, !6209, !6210, !6211}
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "remove_mode", scope: !6202, file: !4007, line: 403, baseType: !7, size: 32)
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !6202, file: !4007, line: 405, baseType: !4015, size: 64, offset: 32)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !6202, file: !4007, line: 407, baseType: !198, size: 8, offset: 96)
!6207 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !6202, file: !4007, line: 408, baseType: !4025, size: 16, offset: 104)
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !6202, file: !4007, line: 409, baseType: !198, size: 8, offset: 120)
!6209 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6202, file: !4007, line: 411, baseType: !85, size: 32, offset: 128)
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !6202, file: !4007, line: 412, baseType: !145, size: 8, offset: 160)
!6211 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6202, file: !4007, line: 414, baseType: !6212, size: 320, offset: 192)
!6212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 320, elements: !6213)
!6213 = !{!6214}
!6214 = !DISubrange(count: 10)
!6215 = !{!6216, !6217, !6218, !6219}
!6216 = !DILocalVariable(name: "client", arg: 1, scope: !6198, file: !3, line: 605, type: !85)
!6217 = !DILocalVariable(name: "info", arg: 2, scope: !6198, file: !3, line: 605, type: !6201)
!6218 = !DILocalVariable(name: "i", scope: !6198, file: !3, line: 607, type: !85)
!6219 = !DILocalVariable(name: "q", scope: !6198, file: !3, line: 608, type: !3985)
!6220 = !DILocation(line: 605, column: 37, scope: !6198)
!6221 = !DILocation(line: 605, column: 75, scope: !6198)
!6222 = !DILocation(line: 607, column: 2, scope: !6198)
!6223 = !DILocation(line: 607, column: 6, scope: !6198)
!6224 = !DILocation(line: 608, column: 2, scope: !6198)
!6225 = !DILocation(line: 608, column: 24, scope: !6198)
!6226 = !DILocation(line: 610, column: 9, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !6198, file: !3, line: 610, column: 2)
!6228 = !DILocation(line: 610, column: 7, scope: !6227)
!6229 = !DILocation(line: 610, column: 14, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6227, file: !3, line: 610, column: 2)
!6231 = !DILocation(line: 610, column: 16, scope: !6230)
!6232 = !DILocation(line: 610, column: 2, scope: !6227)
!6233 = !DILocation(line: 611, column: 16, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6230, file: !3, line: 610, column: 45)
!6235 = !DILocation(line: 611, column: 7, scope: !6234)
!6236 = !DILocation(line: 611, column: 5, scope: !6234)
!6237 = !DILocation(line: 612, column: 8, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6234, file: !3, line: 612, column: 7)
!6239 = !DILocation(line: 612, column: 7, scope: !6234)
!6240 = !DILocation(line: 613, column: 4, scope: !6238)
!6241 = !DILocation(line: 614, column: 7, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6234, file: !3, line: 614, column: 7)
!6243 = !DILocation(line: 614, column: 43, scope: !6242)
!6244 = !DILocation(line: 615, column: 11, scope: !6242)
!6245 = !DILocation(line: 615, column: 17, scope: !6242)
!6246 = !DILocation(line: 615, column: 29, scope: !6242)
!6247 = !DILocation(line: 615, column: 54, scope: !6242)
!6248 = !DILocation(line: 616, column: 8, scope: !6242)
!6249 = !DILocation(line: 616, column: 11, scope: !6242)
!6250 = !DILocation(line: 616, column: 20, scope: !6242)
!6251 = !DILocation(line: 616, column: 26, scope: !6242)
!6252 = !DILocation(line: 616, column: 17, scope: !6242)
!6253 = !DILocation(line: 614, column: 7, scope: !6234)
!6254 = !DILocation(line: 617, column: 32, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6242, file: !3, line: 616, column: 34)
!6256 = !DILocation(line: 617, column: 35, scope: !6255)
!6257 = !DILocation(line: 617, column: 42, scope: !6255)
!6258 = !DILocation(line: 617, column: 50, scope: !6255)
!6259 = !DILocation(line: 617, column: 4, scope: !6255)
!6260 = !DILocation(line: 618, column: 32, scope: !6255)
!6261 = !DILocation(line: 618, column: 35, scope: !6255)
!6262 = !DILocation(line: 618, column: 42, scope: !6255)
!6263 = !DILocation(line: 618, column: 50, scope: !6255)
!6264 = !DILocation(line: 618, column: 4, scope: !6255)
!6265 = !DILocation(line: 619, column: 3, scope: !6255)
!6266 = !DILocation(line: 620, column: 3, scope: !6234)
!6267 = !DILocation(line: 621, column: 2, scope: !6234)
!6268 = !DILocation(line: 610, column: 41, scope: !6230)
!6269 = !DILocation(line: 610, column: 2, scope: !6230)
!6270 = distinct !{!6270, !6232, !6271, !4826, !4827}
!6271 = !DILocation(line: 621, column: 2, scope: !6227)
!6272 = !DILocation(line: 622, column: 1, scope: !6198)
!6273 = !DISubprogram(name: "snd_seq_prioq_remove_events", scope: !3995, file: !3995, line: 42, type: !6274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6274 = !DISubroutineType(types: !6275)
!6275 = !{null, !3993, !85, !6201}
!6276 = distinct !DISubprogram(name: "snd_seq_control_queue", scope: !3, file: !3, line: 705, type: !6277, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6279)
!6277 = !DISubroutineType(types: !6278)
!6278 = !{!85, !4104, !85, !85}
!6279 = !{!6280, !6281, !6282, !6283, !6284}
!6280 = !DILocalVariable(name: "ev", arg: 1, scope: !6276, file: !3, line: 705, type: !4104)
!6281 = !DILocalVariable(name: "atomic", arg: 2, scope: !6276, file: !3, line: 705, type: !85)
!6282 = !DILocalVariable(name: "hop", arg: 3, scope: !6276, file: !3, line: 705, type: !85)
!6283 = !DILocalVariable(name: "q", scope: !6276, file: !3, line: 707, type: !3985)
!6284 = !DILocalVariable(name: "__ret_warn_on", scope: !6285, file: !3, line: 709, type: !85)
!6285 = distinct !DILexicalBlock(scope: !6286, file: !3, line: 709, column: 6)
!6286 = distinct !DILexicalBlock(scope: !6276, file: !3, line: 709, column: 6)
!6287 = !DILocation(line: 705, column: 49, scope: !6276)
!6288 = !DILocation(line: 705, column: 57, scope: !6276)
!6289 = !DILocation(line: 705, column: 69, scope: !6276)
!6290 = !DILocation(line: 707, column: 2, scope: !6276)
!6291 = !DILocation(line: 707, column: 24, scope: !6276)
!6292 = !DILocation(line: 709, column: 6, scope: !6285)
!6293 = !DILocation(line: 709, column: 6, scope: !6286)
!6294 = !DILocation(line: 709, column: 6, scope: !6276)
!6295 = !DILocation(line: 710, column: 3, scope: !6286)
!6296 = !DILocation(line: 711, column: 15, scope: !6276)
!6297 = !DILocation(line: 711, column: 19, scope: !6276)
!6298 = !DILocation(line: 711, column: 30, scope: !6276)
!6299 = !DILocation(line: 711, column: 6, scope: !6276)
!6300 = !DILocation(line: 711, column: 4, scope: !6276)
!6301 = !DILocation(line: 713, column: 6, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6276, file: !3, line: 713, column: 6)
!6303 = !DILocation(line: 713, column: 8, scope: !6302)
!6304 = !DILocation(line: 713, column: 6, scope: !6276)
!6305 = !DILocation(line: 714, column: 3, scope: !6302)
!6306 = !DILocation(line: 716, column: 26, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !6276, file: !3, line: 716, column: 6)
!6308 = !DILocation(line: 716, column: 29, scope: !6307)
!6309 = !DILocation(line: 716, column: 33, scope: !6307)
!6310 = !DILocation(line: 716, column: 40, scope: !6307)
!6311 = !DILocation(line: 716, column: 8, scope: !6307)
!6312 = !DILocation(line: 716, column: 6, scope: !6276)
!6313 = !DILocation(line: 717, column: 3, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6307, file: !3, line: 716, column: 49)
!6315 = !DILocation(line: 718, column: 3, scope: !6314)
!6316 = !DILocation(line: 721, column: 30, scope: !6276)
!6317 = !DILocation(line: 721, column: 33, scope: !6276)
!6318 = !DILocation(line: 721, column: 37, scope: !6276)
!6319 = !DILocation(line: 721, column: 45, scope: !6276)
!6320 = !DILocation(line: 721, column: 2, scope: !6276)
!6321 = !DILocation(line: 723, column: 22, scope: !6276)
!6322 = !DILocation(line: 723, column: 2, scope: !6276)
!6323 = !DILocation(line: 724, column: 2, scope: !6276)
!6324 = !DILocation(line: 725, column: 2, scope: !6276)
!6325 = !DILocation(line: 726, column: 1, scope: !6276)
!6326 = distinct !DISubprogram(name: "snd_seq_queue_process_event", scope: !3, file: !3, line: 652, type: !6327, scopeLine: 655, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6329)
!6327 = !DISubroutineType(types: !6328)
!6328 = !{null, !3985, !4104, !85, !85}
!6329 = !{!6330, !6331, !6332, !6333}
!6330 = !DILocalVariable(name: "q", arg: 1, scope: !6326, file: !3, line: 652, type: !3985)
!6331 = !DILocalVariable(name: "ev", arg: 2, scope: !6326, file: !3, line: 653, type: !4104)
!6332 = !DILocalVariable(name: "atomic", arg: 3, scope: !6326, file: !3, line: 654, type: !85)
!6333 = !DILocalVariable(name: "hop", arg: 4, scope: !6326, file: !3, line: 654, type: !85)
!6334 = !DILocation(line: 652, column: 63, scope: !6326)
!6335 = !DILocation(line: 653, column: 28, scope: !6326)
!6336 = !DILocation(line: 654, column: 10, scope: !6326)
!6337 = !DILocation(line: 654, column: 22, scope: !6326)
!6338 = !DILocation(line: 656, column: 10, scope: !6326)
!6339 = !DILocation(line: 656, column: 14, scope: !6326)
!6340 = !DILocation(line: 656, column: 2, scope: !6326)
!6341 = !DILocation(line: 658, column: 23, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6326, file: !3, line: 656, column: 20)
!6343 = !DILocation(line: 658, column: 26, scope: !6342)
!6344 = !DILocation(line: 658, column: 33, scope: !6342)
!6345 = !DILocation(line: 658, column: 37, scope: !6342)
!6346 = !DILocation(line: 658, column: 44, scope: !6342)
!6347 = !DILocation(line: 658, column: 3, scope: !6342)
!6348 = !DILocation(line: 659, column: 23, scope: !6342)
!6349 = !DILocation(line: 659, column: 26, scope: !6342)
!6350 = !DILocation(line: 659, column: 33, scope: !6342)
!6351 = !DILocation(line: 659, column: 37, scope: !6342)
!6352 = !DILocation(line: 659, column: 44, scope: !6342)
!6353 = !DILocation(line: 659, column: 3, scope: !6342)
!6354 = !DILocation(line: 660, column: 29, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 660, column: 7)
!6356 = !DILocation(line: 660, column: 32, scope: !6355)
!6357 = !DILocation(line: 660, column: 9, scope: !6355)
!6358 = !DILocation(line: 660, column: 7, scope: !6342)
!6359 = !DILocation(line: 661, column: 26, scope: !6355)
!6360 = !DILocation(line: 661, column: 29, scope: !6355)
!6361 = !DILocation(line: 661, column: 33, scope: !6355)
!6362 = !DILocation(line: 661, column: 41, scope: !6355)
!6363 = !DILocation(line: 661, column: 4, scope: !6355)
!6364 = !DILocation(line: 662, column: 3, scope: !6342)
!6365 = !DILocation(line: 665, column: 32, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 665, column: 7)
!6367 = !DILocation(line: 665, column: 35, scope: !6366)
!6368 = !DILocation(line: 665, column: 9, scope: !6366)
!6369 = !DILocation(line: 665, column: 7, scope: !6342)
!6370 = !DILocation(line: 666, column: 26, scope: !6366)
!6371 = !DILocation(line: 666, column: 29, scope: !6366)
!6372 = !DILocation(line: 666, column: 33, scope: !6366)
!6373 = !DILocation(line: 666, column: 41, scope: !6366)
!6374 = !DILocation(line: 666, column: 4, scope: !6366)
!6375 = !DILocation(line: 667, column: 3, scope: !6342)
!6376 = !DILocation(line: 670, column: 22, scope: !6342)
!6377 = !DILocation(line: 670, column: 25, scope: !6342)
!6378 = !DILocation(line: 670, column: 3, scope: !6342)
!6379 = !DILocation(line: 671, column: 25, scope: !6342)
!6380 = !DILocation(line: 671, column: 28, scope: !6342)
!6381 = !DILocation(line: 671, column: 32, scope: !6342)
!6382 = !DILocation(line: 671, column: 40, scope: !6342)
!6383 = !DILocation(line: 671, column: 3, scope: !6342)
!6384 = !DILocation(line: 672, column: 3, scope: !6342)
!6385 = !DILocation(line: 675, column: 27, scope: !6342)
!6386 = !DILocation(line: 675, column: 30, scope: !6342)
!6387 = !DILocation(line: 675, column: 37, scope: !6342)
!6388 = !DILocation(line: 675, column: 41, scope: !6342)
!6389 = !DILocation(line: 675, column: 52, scope: !6342)
!6390 = !DILocation(line: 675, column: 58, scope: !6342)
!6391 = !DILocation(line: 675, column: 3, scope: !6342)
!6392 = !DILocation(line: 676, column: 25, scope: !6342)
!6393 = !DILocation(line: 676, column: 28, scope: !6342)
!6394 = !DILocation(line: 676, column: 32, scope: !6342)
!6395 = !DILocation(line: 676, column: 40, scope: !6342)
!6396 = !DILocation(line: 676, column: 3, scope: !6342)
!6397 = !DILocation(line: 677, column: 3, scope: !6342)
!6398 = !DILocation(line: 680, column: 39, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 680, column: 7)
!6400 = !DILocation(line: 680, column: 42, scope: !6399)
!6401 = !DILocation(line: 680, column: 49, scope: !6399)
!6402 = !DILocation(line: 680, column: 53, scope: !6399)
!6403 = !DILocation(line: 680, column: 64, scope: !6399)
!6404 = !DILocation(line: 680, column: 75, scope: !6399)
!6405 = !DILocation(line: 680, column: 7, scope: !6399)
!6406 = !DILocation(line: 680, column: 81, scope: !6399)
!6407 = !DILocation(line: 680, column: 7, scope: !6342)
!6408 = !DILocation(line: 681, column: 26, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 680, column: 87)
!6410 = !DILocation(line: 681, column: 29, scope: !6409)
!6411 = !DILocation(line: 681, column: 33, scope: !6409)
!6412 = !DILocation(line: 681, column: 41, scope: !6409)
!6413 = !DILocation(line: 681, column: 4, scope: !6409)
!6414 = !DILocation(line: 682, column: 3, scope: !6409)
!6415 = !DILocation(line: 683, column: 3, scope: !6342)
!6416 = !DILocation(line: 686, column: 39, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 686, column: 7)
!6418 = !DILocation(line: 686, column: 42, scope: !6417)
!6419 = !DILocation(line: 686, column: 49, scope: !6417)
!6420 = !DILocation(line: 686, column: 53, scope: !6417)
!6421 = !DILocation(line: 686, column: 64, scope: !6417)
!6422 = !DILocation(line: 686, column: 7, scope: !6417)
!6423 = !DILocation(line: 686, column: 81, scope: !6417)
!6424 = !DILocation(line: 686, column: 7, scope: !6342)
!6425 = !DILocation(line: 687, column: 26, scope: !6426)
!6426 = distinct !DILexicalBlock(scope: !6417, file: !3, line: 686, column: 87)
!6427 = !DILocation(line: 687, column: 29, scope: !6426)
!6428 = !DILocation(line: 687, column: 33, scope: !6426)
!6429 = !DILocation(line: 687, column: 41, scope: !6426)
!6430 = !DILocation(line: 687, column: 4, scope: !6426)
!6431 = !DILocation(line: 688, column: 3, scope: !6426)
!6432 = !DILocation(line: 689, column: 3, scope: !6342)
!6433 = !DILocation(line: 691, column: 30, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 691, column: 7)
!6435 = !DILocation(line: 691, column: 33, scope: !6434)
!6436 = !DILocation(line: 692, column: 9, scope: !6434)
!6437 = !DILocation(line: 692, column: 13, scope: !6434)
!6438 = !DILocation(line: 692, column: 24, scope: !6434)
!6439 = !DILocation(line: 692, column: 35, scope: !6434)
!6440 = !DILocation(line: 693, column: 9, scope: !6434)
!6441 = !DILocation(line: 693, column: 13, scope: !6434)
!6442 = !DILocation(line: 693, column: 24, scope: !6434)
!6443 = !DILocation(line: 693, column: 35, scope: !6434)
!6444 = !DILocation(line: 691, column: 7, scope: !6434)
!6445 = !DILocation(line: 693, column: 41, scope: !6434)
!6446 = !DILocation(line: 691, column: 7, scope: !6342)
!6447 = !DILocation(line: 694, column: 26, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6434, file: !3, line: 693, column: 47)
!6449 = !DILocation(line: 694, column: 29, scope: !6448)
!6450 = !DILocation(line: 694, column: 33, scope: !6448)
!6451 = !DILocation(line: 694, column: 41, scope: !6448)
!6452 = !DILocation(line: 694, column: 4, scope: !6448)
!6453 = !DILocation(line: 695, column: 3, scope: !6448)
!6454 = !DILocation(line: 696, column: 3, scope: !6342)
!6455 = !DILocation(line: 698, column: 1, scope: !6326)
!6456 = distinct !DISubprogram(name: "snd_seq_info_queues_read", scope: !3, file: !3, line: 733, type: !4577, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6457)
!6457 = !{!6458, !6459, !6460, !6461, !6462, !6463, !6464, !6465}
!6458 = !DILocalVariable(name: "entry", arg: 1, scope: !6456, file: !3, line: 733, type: !4561)
!6459 = !DILocalVariable(name: "buffer", arg: 2, scope: !6456, file: !3, line: 734, type: !4579)
!6460 = !DILocalVariable(name: "i", scope: !6456, file: !3, line: 736, type: !85)
!6461 = !DILocalVariable(name: "bpm", scope: !6456, file: !3, line: 736, type: !85)
!6462 = !DILocalVariable(name: "q", scope: !6456, file: !3, line: 737, type: !3985)
!6463 = !DILocalVariable(name: "tmr", scope: !6456, file: !3, line: 738, type: !4136)
!6464 = !DILocalVariable(name: "locked", scope: !6456, file: !3, line: 739, type: !483)
!6465 = !DILocalVariable(name: "owner", scope: !6456, file: !3, line: 740, type: !85)
!6466 = !DILocation(line: 733, column: 54, scope: !6456)
!6467 = !DILocation(line: 734, column: 34, scope: !6456)
!6468 = !DILocation(line: 736, column: 2, scope: !6456)
!6469 = !DILocation(line: 736, column: 6, scope: !6456)
!6470 = !DILocation(line: 736, column: 9, scope: !6456)
!6471 = !DILocation(line: 737, column: 2, scope: !6456)
!6472 = !DILocation(line: 737, column: 24, scope: !6456)
!6473 = !DILocation(line: 738, column: 2, scope: !6456)
!6474 = !DILocation(line: 738, column: 24, scope: !6456)
!6475 = !DILocation(line: 739, column: 2, scope: !6456)
!6476 = !DILocation(line: 739, column: 7, scope: !6456)
!6477 = !DILocation(line: 740, column: 2, scope: !6456)
!6478 = !DILocation(line: 740, column: 6, scope: !6456)
!6479 = !DILocation(line: 742, column: 9, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6456, file: !3, line: 742, column: 2)
!6481 = !DILocation(line: 742, column: 7, scope: !6480)
!6482 = !DILocation(line: 742, column: 14, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 742, column: 2)
!6484 = !DILocation(line: 742, column: 16, scope: !6483)
!6485 = !DILocation(line: 742, column: 2, scope: !6480)
!6486 = !DILocation(line: 743, column: 16, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6483, file: !3, line: 742, column: 45)
!6488 = !DILocation(line: 743, column: 7, scope: !6487)
!6489 = !DILocation(line: 743, column: 5, scope: !6487)
!6490 = !DILocation(line: 744, column: 8, scope: !6491)
!6491 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 744, column: 7)
!6492 = !DILocation(line: 744, column: 7, scope: !6487)
!6493 = !DILocation(line: 745, column: 4, scope: !6491)
!6494 = !DILocation(line: 747, column: 9, scope: !6487)
!6495 = !DILocation(line: 747, column: 12, scope: !6487)
!6496 = !DILocation(line: 747, column: 7, scope: !6487)
!6497 = !DILocation(line: 748, column: 7, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 748, column: 7)
!6499 = !DILocation(line: 748, column: 12, scope: !6498)
!6500 = !DILocation(line: 748, column: 7, scope: !6487)
!6501 = !DILocation(line: 749, column: 21, scope: !6498)
!6502 = !DILocation(line: 749, column: 26, scope: !6498)
!6503 = !DILocation(line: 749, column: 19, scope: !6498)
!6504 = !DILocation(line: 749, column: 8, scope: !6498)
!6505 = !DILocation(line: 749, column: 4, scope: !6498)
!6506 = !DILocation(line: 751, column: 8, scope: !6498)
!6507 = !DILocation(line: 753, column: 18, scope: !6487)
!6508 = !DILocation(line: 753, column: 21, scope: !6487)
!6509 = !DILocation(line: 753, column: 3, scope: !6487)
!6510 = !DILocation(line: 754, column: 12, scope: !6487)
!6511 = !DILocation(line: 754, column: 15, scope: !6487)
!6512 = !DILocation(line: 754, column: 10, scope: !6487)
!6513 = !DILocation(line: 755, column: 11, scope: !6487)
!6514 = !DILocation(line: 755, column: 14, scope: !6487)
!6515 = !DILocation(line: 755, column: 9, scope: !6487)
!6516 = !DILocation(line: 756, column: 20, scope: !6487)
!6517 = !DILocation(line: 756, column: 23, scope: !6487)
!6518 = !DILocation(line: 756, column: 3, scope: !6487)
!6519 = !DILocation(line: 758, column: 3, scope: !6487)
!6520 = !DILocation(line: 759, column: 3, scope: !6487)
!6521 = !DILocation(line: 760, column: 3, scope: !6487)
!6522 = !DILocation(line: 761, column: 3, scope: !6487)
!6523 = !DILocation(line: 762, column: 3, scope: !6487)
!6524 = !DILocation(line: 763, column: 3, scope: !6487)
!6525 = !DILocation(line: 764, column: 3, scope: !6487)
!6526 = !DILocation(line: 765, column: 3, scope: !6487)
!6527 = !DILocation(line: 766, column: 3, scope: !6487)
!6528 = !DILocation(line: 767, column: 3, scope: !6487)
!6529 = !DILocation(line: 768, column: 3, scope: !6487)
!6530 = !DILocation(line: 769, column: 3, scope: !6487)
!6531 = !DILocation(line: 770, column: 3, scope: !6487)
!6532 = !DILocation(line: 771, column: 2, scope: !6487)
!6533 = !DILocation(line: 742, column: 41, scope: !6483)
!6534 = !DILocation(line: 742, column: 2, scope: !6483)
!6535 = distinct !{!6535, !6485, !6536, !4826, !4827}
!6536 = !DILocation(line: 771, column: 2, scope: !6480)
!6537 = !DILocation(line: 772, column: 1, scope: !6456)
!6538 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5262, file: !5262, line: 374, type: !6539, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6541)
!6539 = !DISubroutineType(types: !6540)
!6540 = !{null, !5265}
!6541 = !{!6542}
!6542 = !DILocalVariable(name: "lock", arg: 1, scope: !6538, file: !5262, line: 374, type: !5265)
!6543 = !DILocation(line: 374, column: 55, scope: !6538)
!6544 = !DILocation(line: 376, column: 2, scope: !6538)
!6545 = !DILocation(line: 377, column: 1, scope: !6538)
!6546 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5262, file: !5262, line: 399, type: !6539, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6547)
!6547 = !{!6548}
!6548 = !DILocalVariable(name: "lock", arg: 1, scope: !6546, file: !5262, line: 399, type: !5265)
!6549 = !DILocation(line: 399, column: 57, scope: !6546)
!6550 = !DILocation(line: 401, column: 2, scope: !6546)
!6551 = !DILocation(line: 402, column: 1, scope: !6546)
!6552 = !DISubprogram(name: "seq_printf", scope: !141, file: !141, line: 119, type: !6553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6553 = !DISubroutineType(types: !6554)
!6554 = !{null, !139, !486, null}
!6555 = !DISubprogram(name: "snd_seq_prioq_avail", scope: !3995, file: !3995, line: 36, type: !6556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6556 = !DISubroutineType(types: !6557)
!6557 = !{!85, !3993}
!6558 = !DISubprogram(name: "snd_seq_timer_stop", scope: !4138, file: !4138, line: 115, type: !6559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6559 = !DISubroutineType(types: !6560)
!6560 = !{!85, !4136}
!6561 = !DISubprogram(name: "snd_use_lock_sync_helper", scope: !4765, file: !4765, line: 19, type: !6562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6562 = !DISubroutineType(types: !6563)
!6563 = !{null, !6564, !486, !85}
!6564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!6565 = !DISubprogram(name: "snd_seq_prioq_delete", scope: !3995, file: !3995, line: 26, type: !6566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6566 = !DISubroutineType(types: !6567)
!6567 = !{null, !6568}
!6568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!6569 = !DISubprogram(name: "snd_seq_timer_delete", scope: !4138, file: !4138, line: 50, type: !6570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6570 = !DISubroutineType(types: !6571)
!6571 = !{null, !6572}
!6572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!6573 = !DISubprogram(name: "kfree", scope: !123, file: !123, line: 227, type: !6574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6574 = !DISubroutineType(types: !6575)
!6575 = !{null, !1419}
!6576 = distinct !DISubprogram(name: "kzalloc", scope: !123, file: !123, line: 719, type: !6577, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6579)
!6577 = !DISubroutineType(types: !6578)
!6578 = !{!133, !147, !854}
!6579 = !{!6580, !6581}
!6580 = !DILocalVariable(name: "size", arg: 1, scope: !6576, file: !123, line: 719, type: !147)
!6581 = !DILocalVariable(name: "flags", arg: 2, scope: !6576, file: !123, line: 719, type: !854)
!6582 = !DILocation(line: 719, column: 52, scope: !6576)
!6583 = !DILocation(line: 719, column: 64, scope: !6576)
!6584 = !DILocation(line: 721, column: 17, scope: !6576)
!6585 = !DILocation(line: 721, column: 23, scope: !6576)
!6586 = !DILocation(line: 721, column: 29, scope: !6576)
!6587 = !DILocation(line: 721, column: 9, scope: !6576)
!6588 = !DILocation(line: 721, column: 2, scope: !6576)
!6589 = !DISubprogram(name: "__mutex_init", scope: !161, file: !161, line: 121, type: !6590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6590 = !DISubroutineType(types: !6591)
!6591 = !{null, !6007, !486, !6592}
!6592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!6593 = distinct !DISubprogram(name: "atomic_set", scope: !5046, file: !5046, line: 65, type: !6594, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6596)
!6594 = !DISubroutineType(types: !6595)
!6595 = !{null, !5049, !85}
!6596 = !{!6597, !6598}
!6597 = !DILocalVariable(name: "v", arg: 1, scope: !6593, file: !5046, line: 65, type: !5049)
!6598 = !DILocalVariable(name: "i", arg: 2, scope: !6593, file: !5046, line: 65, type: !85)
!6599 = !DILocation(line: 65, column: 22, scope: !6593)
!6600 = !DILocation(line: 65, column: 29, scope: !6593)
!6601 = !DILocation(line: 67, column: 26, scope: !6593)
!6602 = !DILocation(line: 67, column: 2, scope: !6593)
!6603 = !DILocation(line: 68, column: 17, scope: !6593)
!6604 = !DILocation(line: 68, column: 20, scope: !6593)
!6605 = !DILocation(line: 68, column: 2, scope: !6593)
!6606 = !DILocation(line: 69, column: 1, scope: !6593)
!6607 = !DISubprogram(name: "snd_seq_prioq_new", scope: !3995, file: !3995, line: 23, type: !6608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6608 = !DISubroutineType(types: !6609)
!6609 = !{!3993}
!6610 = !DISubprogram(name: "snd_seq_timer_new", scope: !4138, file: !4138, line: 47, type: !6611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6611 = !DISubroutineType(types: !6612)
!6612 = !{!4136}
!6613 = distinct !DISubprogram(name: "kmalloc", scope: !123, file: !123, line: 591, type: !6577, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6614)
!6614 = !{!6615, !6616, !6617}
!6615 = !DILocalVariable(name: "size", arg: 1, scope: !6613, file: !123, line: 591, type: !147)
!6616 = !DILocalVariable(name: "flags", arg: 2, scope: !6613, file: !123, line: 591, type: !854)
!6617 = !DILocalVariable(name: "index", scope: !6618, file: !123, line: 594, type: !7)
!6618 = distinct !DILexicalBlock(scope: !6619, file: !123, line: 593, column: 42)
!6619 = distinct !DILexicalBlock(scope: !6613, file: !123, line: 593, column: 6)
!6620 = !DILocation(line: 591, column: 61, scope: !6613)
!6621 = !DILocation(line: 591, column: 73, scope: !6613)
!6622 = !DILocation(line: 593, column: 27, scope: !6619)
!6623 = !DILocation(line: 593, column: 6, scope: !6619)
!6624 = !DILocation(line: 593, column: 33, scope: !6619)
!6625 = !DILocation(line: 593, column: 36, scope: !6619)
!6626 = !DILocation(line: 593, column: 6, scope: !6613)
!6627 = !DILocation(line: 594, column: 3, scope: !6618)
!6628 = !DILocation(line: 594, column: 16, scope: !6618)
!6629 = !DILocation(line: 596, column: 7, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6618, file: !123, line: 596, column: 7)
!6631 = !DILocation(line: 596, column: 12, scope: !6630)
!6632 = !DILocation(line: 596, column: 7, scope: !6618)
!6633 = !DILocation(line: 597, column: 25, scope: !6630)
!6634 = !DILocation(line: 597, column: 31, scope: !6630)
!6635 = !DILocation(line: 597, column: 11, scope: !6630)
!6636 = !DILocation(line: 597, column: 4, scope: !6630)
!6637 = !DILocation(line: 599, column: 11, scope: !6618)
!6638 = !DILocation(line: 599, column: 9, scope: !6618)
!6639 = !DILocation(line: 601, column: 33, scope: !6618)
!6640 = !DILocation(line: 601, column: 40, scope: !6618)
!6641 = !DILocation(line: 601, column: 20, scope: !6618)
!6642 = !DILocation(line: 601, column: 5, scope: !6618)
!6643 = !DILocation(line: 601, column: 51, scope: !6618)
!6644 = !DILocation(line: 602, column: 5, scope: !6618)
!6645 = !DILocation(line: 602, column: 12, scope: !6618)
!6646 = !DILocation(line: 600, column: 10, scope: !6618)
!6647 = !DILocation(line: 600, column: 3, scope: !6618)
!6648 = !DILocation(line: 603, column: 2, scope: !6619)
!6649 = !DILocation(line: 604, column: 19, scope: !6613)
!6650 = !DILocation(line: 604, column: 25, scope: !6613)
!6651 = !DILocation(line: 604, column: 9, scope: !6613)
!6652 = !DILocation(line: 604, column: 2, scope: !6613)
!6653 = !DILocation(line: 605, column: 1, scope: !6613)
!6654 = !DISubprogram(name: "kmalloc_large", scope: !123, file: !123, line: 531, type: !6577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6655 = distinct !DISubprogram(name: "__kmalloc_index", scope: !123, file: !123, line: 444, type: !6656, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6658)
!6656 = !DISubroutineType(types: !6657)
!6657 = !{!7, !147, !483}
!6658 = !{!6659, !6660}
!6659 = !DILocalVariable(name: "size", arg: 1, scope: !6655, file: !123, line: 444, type: !147)
!6660 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6655, file: !123, line: 445, type: !483)
!6661 = !DILocation(line: 444, column: 60, scope: !6655)
!6662 = !DILocation(line: 445, column: 16, scope: !6655)
!6663 = !DILocation(line: 447, column: 7, scope: !6664)
!6664 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 447, column: 6)
!6665 = !DILocation(line: 447, column: 6, scope: !6655)
!6666 = !DILocation(line: 448, column: 3, scope: !6664)
!6667 = !DILocation(line: 450, column: 6, scope: !6668)
!6668 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 450, column: 6)
!6669 = !DILocation(line: 450, column: 11, scope: !6668)
!6670 = !DILocation(line: 450, column: 6, scope: !6655)
!6671 = !DILocation(line: 451, column: 3, scope: !6668)
!6672 = !DILocation(line: 453, column: 32, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 453, column: 6)
!6674 = !DILocation(line: 453, column: 37, scope: !6673)
!6675 = !DILocation(line: 453, column: 42, scope: !6673)
!6676 = !DILocation(line: 453, column: 45, scope: !6673)
!6677 = !DILocation(line: 453, column: 50, scope: !6673)
!6678 = !DILocation(line: 453, column: 6, scope: !6655)
!6679 = !DILocation(line: 454, column: 3, scope: !6673)
!6680 = !DILocation(line: 455, column: 32, scope: !6681)
!6681 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 455, column: 6)
!6682 = !DILocation(line: 455, column: 37, scope: !6681)
!6683 = !DILocation(line: 455, column: 43, scope: !6681)
!6684 = !DILocation(line: 455, column: 46, scope: !6681)
!6685 = !DILocation(line: 455, column: 51, scope: !6681)
!6686 = !DILocation(line: 455, column: 6, scope: !6655)
!6687 = !DILocation(line: 456, column: 3, scope: !6681)
!6688 = !DILocation(line: 457, column: 6, scope: !6689)
!6689 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 457, column: 6)
!6690 = !DILocation(line: 457, column: 11, scope: !6689)
!6691 = !DILocation(line: 457, column: 6, scope: !6655)
!6692 = !DILocation(line: 457, column: 26, scope: !6689)
!6693 = !DILocation(line: 458, column: 6, scope: !6694)
!6694 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 458, column: 6)
!6695 = !DILocation(line: 458, column: 11, scope: !6694)
!6696 = !DILocation(line: 458, column: 6, scope: !6655)
!6697 = !DILocation(line: 458, column: 26, scope: !6694)
!6698 = !DILocation(line: 459, column: 6, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 459, column: 6)
!6700 = !DILocation(line: 459, column: 11, scope: !6699)
!6701 = !DILocation(line: 459, column: 6, scope: !6655)
!6702 = !DILocation(line: 459, column: 26, scope: !6699)
!6703 = !DILocation(line: 460, column: 6, scope: !6704)
!6704 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 460, column: 6)
!6705 = !DILocation(line: 460, column: 11, scope: !6704)
!6706 = !DILocation(line: 460, column: 6, scope: !6655)
!6707 = !DILocation(line: 460, column: 26, scope: !6704)
!6708 = !DILocation(line: 461, column: 6, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 461, column: 6)
!6710 = !DILocation(line: 461, column: 11, scope: !6709)
!6711 = !DILocation(line: 461, column: 6, scope: !6655)
!6712 = !DILocation(line: 461, column: 26, scope: !6709)
!6713 = !DILocation(line: 462, column: 6, scope: !6714)
!6714 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 462, column: 6)
!6715 = !DILocation(line: 462, column: 11, scope: !6714)
!6716 = !DILocation(line: 462, column: 6, scope: !6655)
!6717 = !DILocation(line: 462, column: 26, scope: !6714)
!6718 = !DILocation(line: 463, column: 6, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 463, column: 6)
!6720 = !DILocation(line: 463, column: 11, scope: !6719)
!6721 = !DILocation(line: 463, column: 6, scope: !6655)
!6722 = !DILocation(line: 463, column: 26, scope: !6719)
!6723 = !DILocation(line: 464, column: 6, scope: !6724)
!6724 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 464, column: 6)
!6725 = !DILocation(line: 464, column: 11, scope: !6724)
!6726 = !DILocation(line: 464, column: 6, scope: !6655)
!6727 = !DILocation(line: 464, column: 26, scope: !6724)
!6728 = !DILocation(line: 465, column: 6, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 465, column: 6)
!6730 = !DILocation(line: 465, column: 11, scope: !6729)
!6731 = !DILocation(line: 465, column: 6, scope: !6655)
!6732 = !DILocation(line: 465, column: 26, scope: !6729)
!6733 = !DILocation(line: 466, column: 6, scope: !6734)
!6734 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 466, column: 6)
!6735 = !DILocation(line: 466, column: 11, scope: !6734)
!6736 = !DILocation(line: 466, column: 6, scope: !6655)
!6737 = !DILocation(line: 466, column: 26, scope: !6734)
!6738 = !DILocation(line: 467, column: 6, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 467, column: 6)
!6740 = !DILocation(line: 467, column: 11, scope: !6739)
!6741 = !DILocation(line: 467, column: 6, scope: !6655)
!6742 = !DILocation(line: 467, column: 26, scope: !6739)
!6743 = !DILocation(line: 468, column: 6, scope: !6744)
!6744 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 468, column: 6)
!6745 = !DILocation(line: 468, column: 11, scope: !6744)
!6746 = !DILocation(line: 468, column: 6, scope: !6655)
!6747 = !DILocation(line: 468, column: 26, scope: !6744)
!6748 = !DILocation(line: 469, column: 6, scope: !6749)
!6749 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 469, column: 6)
!6750 = !DILocation(line: 469, column: 11, scope: !6749)
!6751 = !DILocation(line: 469, column: 6, scope: !6655)
!6752 = !DILocation(line: 469, column: 26, scope: !6749)
!6753 = !DILocation(line: 470, column: 6, scope: !6754)
!6754 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 470, column: 6)
!6755 = !DILocation(line: 470, column: 11, scope: !6754)
!6756 = !DILocation(line: 470, column: 6, scope: !6655)
!6757 = !DILocation(line: 470, column: 26, scope: !6754)
!6758 = !DILocation(line: 471, column: 6, scope: !6759)
!6759 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 471, column: 6)
!6760 = !DILocation(line: 471, column: 11, scope: !6759)
!6761 = !DILocation(line: 471, column: 6, scope: !6655)
!6762 = !DILocation(line: 471, column: 26, scope: !6759)
!6763 = !DILocation(line: 472, column: 6, scope: !6764)
!6764 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 472, column: 6)
!6765 = !DILocation(line: 472, column: 11, scope: !6764)
!6766 = !DILocation(line: 472, column: 6, scope: !6655)
!6767 = !DILocation(line: 472, column: 26, scope: !6764)
!6768 = !DILocation(line: 473, column: 6, scope: !6769)
!6769 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 473, column: 6)
!6770 = !DILocation(line: 473, column: 11, scope: !6769)
!6771 = !DILocation(line: 473, column: 6, scope: !6655)
!6772 = !DILocation(line: 473, column: 26, scope: !6769)
!6773 = !DILocation(line: 474, column: 6, scope: !6774)
!6774 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 474, column: 6)
!6775 = !DILocation(line: 474, column: 11, scope: !6774)
!6776 = !DILocation(line: 474, column: 6, scope: !6655)
!6777 = !DILocation(line: 474, column: 27, scope: !6774)
!6778 = !DILocation(line: 475, column: 6, scope: !6779)
!6779 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 475, column: 6)
!6780 = !DILocation(line: 475, column: 11, scope: !6779)
!6781 = !DILocation(line: 475, column: 6, scope: !6655)
!6782 = !DILocation(line: 475, column: 32, scope: !6779)
!6783 = !DILocation(line: 477, column: 50, scope: !6784)
!6784 = distinct !DILexicalBlock(scope: !6655, file: !123, line: 477, column: 6)
!6785 = !DILocation(line: 477, column: 6, scope: !6655)
!6786 = !DILocation(line: 478, column: 3, scope: !6784)
!6787 = !DILocation(line: 478, column: 3, scope: !6788)
!6788 = distinct !DILexicalBlock(scope: !6789, file: !123, line: 478, column: 3)
!6789 = distinct !DILexicalBlock(scope: !6784, file: !123, line: 478, column: 3)
!6790 = !{i32 -2143544137}
!6791 = !DILocation(line: 478, column: 3, scope: !6789)
!6792 = !DILocation(line: 480, column: 3, scope: !6784)
!6793 = !DILocation(line: 480, column: 3, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6784, file: !123, line: 480, column: 3)
!6795 = !DILocation(line: 480, column: 3, scope: !6796)
!6796 = distinct !DILexicalBlock(scope: !6794, file: !123, line: 480, column: 3)
!6797 = !DILocation(line: 480, column: 3, scope: !6798)
!6798 = distinct !DILexicalBlock(scope: !6794, file: !123, line: 480, column: 3)
!6799 = !{i64 2151423362, i64 2151423391, i64 2151423437, i64 2151423495, i64 2151423549, i64 2151423603, i64 2151423658, i64 2151423689}
!6800 = !DILocation(line: 483, column: 2, scope: !6655)
!6801 = !DILocation(line: 484, column: 1, scope: !6655)
!6802 = !DISubprogram(name: "kmalloc_trace", scope: !123, file: !123, line: 525, type: !6803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6803 = !DISubroutineType(types: !6804)
!6804 = !{!133, !6805, !854, !147}
!6805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6806, size: 64)
!6806 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3341, line: 11, flags: DIFlagFwdDecl)
!6807 = distinct !DISubprogram(name: "kmalloc_type", scope: !123, file: !123, line: 401, type: !6808, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6810)
!6808 = !DISubroutineType(types: !6809)
!6809 = !{!122, !854, !136}
!6810 = !{!6811, !6812}
!6811 = !DILocalVariable(name: "flags", arg: 1, scope: !6807, file: !123, line: 401, type: !854)
!6812 = !DILocalVariable(name: "caller", arg: 2, scope: !6807, file: !123, line: 401, type: !136)
!6813 = !DILocation(line: 401, column: 67, scope: !6807)
!6814 = !DILocation(line: 401, column: 88, scope: !6807)
!6815 = !DILocation(line: 407, column: 6, scope: !6816)
!6816 = distinct !DILexicalBlock(scope: !6807, file: !123, line: 407, column: 6)
!6817 = !DILocation(line: 407, column: 6, scope: !6807)
!6818 = !DILocation(line: 413, column: 3, scope: !6816)
!6819 = !DILocation(line: 423, column: 38, scope: !6820)
!6820 = distinct !DILexicalBlock(scope: !6807, file: !123, line: 423, column: 6)
!6821 = !DILocation(line: 423, column: 44, scope: !6820)
!6822 = !DILocation(line: 423, column: 6, scope: !6807)
!6823 = !DILocation(line: 424, column: 3, scope: !6820)
!6824 = !DILocation(line: 426, column: 3, scope: !6825)
!6825 = distinct !DILexicalBlock(scope: !6807, file: !123, line: 425, column: 6)
!6826 = !DILocation(line: 429, column: 1, scope: !6807)
!6827 = !DISubprogram(name: "__kmalloc", scope: !123, file: !123, line: 488, type: !6577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6828 = !DISubprogram(name: "__compiletime_assert_117", scope: !123, file: !123, line: 478, type: !2027, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6829 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6830, file: !6830, line: 80, type: !6831, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6836)
!6830 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6831 = !DISubroutineType(types: !6832)
!6832 = !{null, !6833, !147}
!6833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6834, size: 64)
!6834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6835)
!6835 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6836 = !{!6837, !6838}
!6837 = !DILocalVariable(name: "v", arg: 1, scope: !6829, file: !6830, line: 80, type: !6833)
!6838 = !DILocalVariable(name: "size", arg: 2, scope: !6829, file: !6830, line: 80, type: !147)
!6839 = !DILocation(line: 80, column: 74, scope: !6829)
!6840 = !DILocation(line: 80, column: 84, scope: !6829)
!6841 = !DILocation(line: 82, column: 20, scope: !6829)
!6842 = !DILocation(line: 82, column: 23, scope: !6829)
!6843 = !DILocation(line: 82, column: 2, scope: !6829)
!6844 = !DILocation(line: 83, column: 2, scope: !6829)
!6845 = !DILocation(line: 84, column: 1, scope: !6829)
!6846 = distinct !DISubprogram(name: "raw_atomic_set", scope: !6847, file: !6847, line: 488, type: !6594, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6848)
!6847 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6848 = !{!6849, !6850}
!6849 = !DILocalVariable(name: "v", arg: 1, scope: !6846, file: !6847, line: 488, type: !5049)
!6850 = !DILocalVariable(name: "i", arg: 2, scope: !6846, file: !6847, line: 488, type: !85)
!6851 = !DILocation(line: 488, column: 26, scope: !6846)
!6852 = !DILocation(line: 488, column: 33, scope: !6846)
!6853 = !DILocation(line: 490, column: 18, scope: !6846)
!6854 = !DILocation(line: 490, column: 21, scope: !6846)
!6855 = !DILocation(line: 490, column: 2, scope: !6846)
!6856 = !DILocation(line: 491, column: 1, scope: !6846)
!6857 = distinct !DISubprogram(name: "kasan_check_write", scope: !6858, file: !6858, line: 44, type: !6859, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6861)
!6858 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6859 = !DISubroutineType(types: !6860)
!6860 = !{!483, !6833, !7}
!6861 = !{!6862, !6863}
!6862 = !DILocalVariable(name: "p", arg: 1, scope: !6857, file: !6858, line: 44, type: !6833)
!6863 = !DILocalVariable(name: "size", arg: 2, scope: !6857, file: !6858, line: 44, type: !7)
!6864 = !DILocation(line: 44, column: 59, scope: !6857)
!6865 = !DILocation(line: 44, column: 75, scope: !6857)
!6866 = !DILocation(line: 46, column: 2, scope: !6857)
!6867 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6868, file: !6868, line: 229, type: !6869, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6871)
!6868 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6869 = !DISubroutineType(types: !6870)
!6870 = !{null, !6833, !147, !85}
!6871 = !{!6872, !6873, !6874}
!6872 = !DILocalVariable(name: "ptr", arg: 1, scope: !6867, file: !6868, line: 229, type: !6833)
!6873 = !DILocalVariable(name: "size", arg: 2, scope: !6867, file: !6868, line: 229, type: !147)
!6874 = !DILocalVariable(name: "type", arg: 3, scope: !6867, file: !6868, line: 230, type: !85)
!6875 = !DILocation(line: 229, column: 60, scope: !6867)
!6876 = !DILocation(line: 229, column: 72, scope: !6867)
!6877 = !DILocation(line: 230, column: 15, scope: !6867)
!6878 = !DILocation(line: 230, column: 23, scope: !6867)
!6879 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6880, file: !6880, line: 26, type: !6594, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6881)
!6880 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6881 = !{!6882, !6883}
!6882 = !DILocalVariable(name: "v", arg: 1, scope: !6879, file: !6880, line: 26, type: !5049)
!6883 = !DILocalVariable(name: "i", arg: 2, scope: !6879, file: !6880, line: 26, type: !85)
!6884 = !DILocation(line: 26, column: 55, scope: !6879)
!6885 = !DILocation(line: 26, column: 62, scope: !6879)
!6886 = !DILocation(line: 28, column: 2, scope: !6879)
!6887 = !DILocation(line: 28, column: 2, scope: !6888)
!6888 = distinct !DILexicalBlock(scope: !6879, file: !6880, line: 28, column: 2)
!6889 = !DILocation(line: 29, column: 1, scope: !6879)
!6890 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6830, file: !6830, line: 94, type: !6831, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6891)
!6891 = !{!6892, !6893}
!6892 = !DILocalVariable(name: "v", arg: 1, scope: !6890, file: !6830, line: 94, type: !6833)
!6893 = !DILocalVariable(name: "size", arg: 2, scope: !6890, file: !6830, line: 94, type: !147)
!6894 = !DILocation(line: 94, column: 79, scope: !6890)
!6895 = !DILocation(line: 94, column: 89, scope: !6890)
!6896 = !DILocation(line: 96, column: 20, scope: !6890)
!6897 = !DILocation(line: 96, column: 23, scope: !6890)
!6898 = !DILocation(line: 96, column: 2, scope: !6890)
!6899 = !DILocation(line: 97, column: 2, scope: !6890)
!6900 = !DILocation(line: 98, column: 1, scope: !6890)
!6901 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !6847, file: !6847, line: 976, type: !5047, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6902)
!6902 = !{!6903}
!6903 = !DILocalVariable(name: "v", arg: 1, scope: !6901, file: !6847, line: 976, type: !5049)
!6904 = !DILocation(line: 976, column: 26, scope: !6901)
!6905 = !DILocation(line: 979, column: 18, scope: !6901)
!6906 = !DILocation(line: 979, column: 2, scope: !6901)
!6907 = !DILocation(line: 983, column: 1, scope: !6901)
!6908 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6880, file: !6880, line: 51, type: !5047, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6909)
!6909 = !{!6910}
!6910 = !DILocalVariable(name: "v", arg: 1, scope: !6908, file: !6880, line: 51, type: !5049)
!6911 = !DILocation(line: 51, column: 55, scope: !6908)
!6912 = !DILocation(line: 54, column: 16, scope: !6908)
!6913 = !DILocation(line: 54, column: 19, scope: !6908)
!6914 = !DILocation(line: 53, column: 2, scope: !6908)
!6915 = !{i64 2148936994, i64 2148937033, i64 2148937054, i64 2148937091, i64 2148937114, i64 2148936984}
!6916 = !DILocation(line: 55, column: 1, scope: !6908)
!6917 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !6847, file: !6847, line: 1194, type: !5047, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6918)
!6918 = !{!6919}
!6919 = !DILocalVariable(name: "v", arg: 1, scope: !6917, file: !6847, line: 1194, type: !5049)
!6920 = !DILocation(line: 1194, column: 26, scope: !6917)
!6921 = !DILocation(line: 1197, column: 18, scope: !6917)
!6922 = !DILocation(line: 1197, column: 2, scope: !6917)
!6923 = !DILocation(line: 1201, column: 1, scope: !6917)
!6924 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !6880, file: !6880, line: 58, type: !5047, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6925)
!6925 = !{!6926}
!6926 = !DILocalVariable(name: "v", arg: 1, scope: !6924, file: !6880, line: 58, type: !5049)
!6927 = !DILocation(line: 58, column: 55, scope: !6924)
!6928 = !DILocation(line: 61, column: 16, scope: !6924)
!6929 = !DILocation(line: 61, column: 19, scope: !6924)
!6930 = !DILocation(line: 60, column: 2, scope: !6924)
!6931 = !{i64 2148937357, i64 2148937396, i64 2148937417, i64 2148937454, i64 2148937477, i64 2148937347}
!6932 = !DILocation(line: 62, column: 1, scope: !6924)
!6933 = distinct !DISubprogram(name: "spin_lock", scope: !5262, file: !5262, line: 349, type: !6539, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6934)
!6934 = !{!6935}
!6935 = !DILocalVariable(name: "lock", arg: 1, scope: !6933, file: !5262, line: 349, type: !5265)
!6936 = !DILocation(line: 349, column: 51, scope: !6933)
!6937 = !DILocation(line: 351, column: 2, scope: !6933)
!6938 = !DILocation(line: 352, column: 1, scope: !6933)
!6939 = distinct !DISubprogram(name: "spin_unlock", scope: !5262, file: !5262, line: 389, type: !6539, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6940)
!6940 = !{!6941}
!6941 = !DILocalVariable(name: "lock", arg: 1, scope: !6939, file: !5262, line: 389, type: !5265)
!6942 = !DILocation(line: 389, column: 53, scope: !6939)
!6943 = !DILocation(line: 391, column: 2, scope: !6939)
!6944 = !DILocation(line: 392, column: 1, scope: !6939)
!6945 = !DISubprogram(name: "_raw_spin_lock", scope: !5257, file: !5257, line: 22, type: !6946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6946 = !DISubroutineType(types: !6947)
!6947 = !{null, !5260}
!6948 = !DISubprogram(name: "_raw_spin_unlock", scope: !5257, file: !5257, line: 39, type: !6946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6949 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5257, file: !5257, line: 43, type: !6950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6950 = !DISubroutineType(types: !6951)
!6951 = !{null, !5260, !136}
!6952 = distinct !DISubprogram(name: "snd_seq_sanity_real_time", scope: !4138, file: !4138, line: 83, type: !6953, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6955)
!6953 = !DISubroutineType(types: !6954)
!6954 = !{null, !5617}
!6955 = !{!6956}
!6956 = !DILocalVariable(name: "tm", arg: 1, scope: !6952, file: !4138, line: 83, type: !5617)
!6957 = !DILocation(line: 83, column: 66, scope: !6952)
!6958 = !DILocation(line: 85, column: 2, scope: !6952)
!6959 = !DILocation(line: 85, column: 9, scope: !6952)
!6960 = !DILocation(line: 85, column: 13, scope: !6952)
!6961 = !DILocation(line: 85, column: 21, scope: !6952)
!6962 = !DILocation(line: 87, column: 3, scope: !6963)
!6963 = distinct !DILexicalBlock(scope: !6952, file: !4138, line: 85, column: 36)
!6964 = !DILocation(line: 87, column: 7, scope: !6963)
!6965 = !DILocation(line: 87, column: 15, scope: !6963)
!6966 = !DILocation(line: 88, column: 17, scope: !6963)
!6967 = !DILocation(line: 88, column: 21, scope: !6963)
!6968 = !DILocation(line: 88, column: 27, scope: !6963)
!6969 = distinct !{!6969, !6958, !6970, !4826, !4827}
!6970 = !DILocation(line: 89, column: 9, scope: !6952)
!6971 = !DILocation(line: 90, column: 1, scope: !6952)
!6972 = distinct !DISubprogram(name: "test_and_set_bit", scope: !6973, file: !6973, line: 68, type: !6974, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6977)
!6973 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!6974 = !DISubroutineType(types: !6975)
!6975 = !{!483, !762, !6976}
!6976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6041, size: 64)
!6977 = !{!6978, !6979}
!6978 = !DILocalVariable(name: "nr", arg: 1, scope: !6972, file: !6973, line: 68, type: !762)
!6979 = !DILocalVariable(name: "addr", arg: 2, scope: !6972, file: !6973, line: 68, type: !6976)
!6980 = !DILocation(line: 68, column: 51, scope: !6972)
!6981 = !DILocation(line: 68, column: 79, scope: !6972)
!6982 = !DILocation(line: 70, column: 2, scope: !6972)
!6983 = !DILocation(line: 70, column: 2, scope: !6984)
!6984 = distinct !DILexicalBlock(scope: !6972, file: !6973, line: 70, column: 2)
!6985 = !DILocation(line: 71, column: 31, scope: !6972)
!6986 = !DILocation(line: 71, column: 38, scope: !6972)
!6987 = !DILocation(line: 71, column: 36, scope: !6972)
!6988 = !DILocation(line: 71, column: 2, scope: !6972)
!6989 = !DILocation(line: 72, column: 31, scope: !6972)
!6990 = !DILocation(line: 72, column: 35, scope: !6972)
!6991 = !DILocation(line: 72, column: 9, scope: !6972)
!6992 = !DILocation(line: 72, column: 2, scope: !6972)
!6993 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !6973, file: !6973, line: 82, type: !6974, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6994)
!6994 = !{!6995, !6996}
!6995 = !DILocalVariable(name: "nr", arg: 1, scope: !6993, file: !6973, line: 82, type: !762)
!6996 = !DILocalVariable(name: "addr", arg: 2, scope: !6993, file: !6973, line: 82, type: !6976)
!6997 = !DILocation(line: 82, column: 53, scope: !6993)
!6998 = !DILocation(line: 82, column: 81, scope: !6993)
!6999 = !DILocation(line: 84, column: 2, scope: !6993)
!7000 = !DILocation(line: 84, column: 2, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !6993, file: !6973, line: 84, column: 2)
!7002 = !DILocation(line: 85, column: 31, scope: !6993)
!7003 = !DILocation(line: 85, column: 38, scope: !6993)
!7004 = !DILocation(line: 85, column: 36, scope: !6993)
!7005 = !DILocation(line: 85, column: 2, scope: !6993)
!7006 = !DILocation(line: 86, column: 33, scope: !6993)
!7007 = !DILocation(line: 86, column: 37, scope: !6993)
!7008 = !DILocation(line: 86, column: 9, scope: !6993)
!7009 = !DILocation(line: 86, column: 2, scope: !6993)
!7010 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !7011, file: !7011, line: 136, type: !6974, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7012)
!7011 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7012 = !{!7013, !7014, !7015}
!7013 = !DILocalVariable(name: "nr", arg: 1, scope: !7010, file: !7011, line: 136, type: !762)
!7014 = !DILocalVariable(name: "addr", arg: 2, scope: !7010, file: !7011, line: 136, type: !6976)
!7015 = !DILocalVariable(name: "c", scope: !7016, file: !7011, line: 138, type: !483)
!7016 = distinct !DILexicalBlock(scope: !7010, file: !7011, line: 138, column: 9)
!7017 = !DILocation(line: 136, column: 28, scope: !7010)
!7018 = !DILocation(line: 136, column: 56, scope: !7010)
!7019 = !DILocation(line: 138, column: 9, scope: !7016)
!7020 = !{i64 2148111371, i64 2148111410, i64 2148111431, i64 2148111468, i64 2148111491, i64 2148111500, i64 2148111603}
!7021 = !DILocation(line: 138, column: 9, scope: !7010)
!7022 = !DILocation(line: 138, column: 2, scope: !7010)
!7023 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !7011, file: !7011, line: 160, type: !6974, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7024)
!7024 = !{!7025, !7026, !7027}
!7025 = !DILocalVariable(name: "nr", arg: 1, scope: !7023, file: !7011, line: 160, type: !762)
!7026 = !DILocalVariable(name: "addr", arg: 2, scope: !7023, file: !7011, line: 160, type: !6976)
!7027 = !DILocalVariable(name: "c", scope: !7028, file: !7011, line: 162, type: !483)
!7028 = distinct !DILexicalBlock(scope: !7023, file: !7011, line: 162, column: 9)
!7029 = !DILocation(line: 160, column: 30, scope: !7023)
!7030 = !DILocation(line: 160, column: 58, scope: !7023)
!7031 = !DILocation(line: 162, column: 9, scope: !7028)
!7032 = !{i64 2148114273, i64 2148114312, i64 2148114333, i64 2148114370, i64 2148114393, i64 2148114402, i64 2148114505}
!7033 = !DILocation(line: 162, column: 9, scope: !7023)
!7034 = !DILocation(line: 162, column: 2, scope: !7023)
!7035 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6830, file: !6830, line: 66, type: !6831, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7036)
!7036 = !{!7037, !7038}
!7037 = !DILocalVariable(name: "v", arg: 1, scope: !7035, file: !6830, line: 66, type: !6833)
!7038 = !DILocalVariable(name: "size", arg: 2, scope: !7035, file: !6830, line: 66, type: !147)
!7039 = !DILocation(line: 66, column: 73, scope: !7035)
!7040 = !DILocation(line: 66, column: 83, scope: !7035)
!7041 = !DILocation(line: 68, column: 19, scope: !7035)
!7042 = !DILocation(line: 68, column: 22, scope: !7035)
!7043 = !DILocation(line: 68, column: 2, scope: !7035)
!7044 = !DILocation(line: 69, column: 2, scope: !7035)
!7045 = !DILocation(line: 70, column: 1, scope: !7035)
!7046 = distinct !DISubprogram(name: "arch_test_bit", scope: !7011, file: !7011, line: 237, type: !6037, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7047)
!7047 = !{!7048, !7049}
!7048 = !DILocalVariable(name: "nr", arg: 1, scope: !7046, file: !7011, line: 237, type: !136)
!7049 = !DILocalVariable(name: "addr", arg: 2, scope: !7046, file: !7011, line: 237, type: !6039)
!7050 = !DILocation(line: 237, column: 29, scope: !7046)
!7051 = !DILocation(line: 237, column: 63, scope: !7046)
!7052 = !DILocation(line: 239, column: 30, scope: !7046)
!7053 = !DILocation(line: 239, column: 9, scope: !7046)
!7054 = !DILocation(line: 239, column: 54, scope: !7046)
!7055 = !DILocation(line: 239, column: 58, scope: !7046)
!7056 = !DILocation(line: 239, column: 36, scope: !7046)
!7057 = !DILocation(line: 240, column: 26, scope: !7046)
!7058 = !DILocation(line: 240, column: 30, scope: !7046)
!7059 = !DILocation(line: 240, column: 8, scope: !7046)
!7060 = !DILocation(line: 239, column: 2, scope: !7046)
!7061 = distinct !DISubprogram(name: "kasan_check_read", scope: !6858, file: !6858, line: 40, type: !6859, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7062)
!7062 = !{!7063, !7064}
!7063 = !DILocalVariable(name: "p", arg: 1, scope: !7061, file: !6858, line: 40, type: !6833)
!7064 = !DILocalVariable(name: "size", arg: 2, scope: !7061, file: !6858, line: 40, type: !7)
!7065 = !DILocation(line: 40, column: 58, scope: !7061)
!7066 = !DILocation(line: 40, column: 74, scope: !7061)
!7067 = !DILocation(line: 42, column: 2, scope: !7061)
!7068 = distinct !DISubprogram(name: "constant_test_bit", scope: !7011, file: !7011, line: 204, type: !7069, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7071)
!7069 = !DISubroutineType(types: !7070)
!7070 = !{!483, !762, !6039}
!7071 = !{!7072, !7073}
!7072 = !DILocalVariable(name: "nr", arg: 1, scope: !7068, file: !7011, line: 204, type: !762)
!7073 = !DILocalVariable(name: "addr", arg: 2, scope: !7068, file: !7011, line: 204, type: !6039)
!7074 = !DILocation(line: 204, column: 52, scope: !7068)
!7075 = !DILocation(line: 204, column: 86, scope: !7068)
!7076 = !DILocation(line: 206, column: 19, scope: !7068)
!7077 = !DILocation(line: 206, column: 22, scope: !7068)
!7078 = !DILocation(line: 206, column: 15, scope: !7068)
!7079 = !DILocation(line: 207, column: 4, scope: !7068)
!7080 = !DILocation(line: 207, column: 9, scope: !7068)
!7081 = !DILocation(line: 207, column: 12, scope: !7068)
!7082 = !DILocation(line: 206, column: 44, scope: !7068)
!7083 = !DILocation(line: 207, column: 37, scope: !7068)
!7084 = !DILocation(line: 206, column: 2, scope: !7068)
!7085 = distinct !DISubprogram(name: "variable_test_bit", scope: !7011, file: !7011, line: 224, type: !7069, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7086)
!7086 = !{!7087, !7088, !7089}
!7087 = !DILocalVariable(name: "nr", arg: 1, scope: !7085, file: !7011, line: 224, type: !762)
!7088 = !DILocalVariable(name: "addr", arg: 2, scope: !7085, file: !7011, line: 224, type: !6039)
!7089 = !DILocalVariable(name: "oldbit", scope: !7085, file: !7011, line: 226, type: !483)
!7090 = !DILocation(line: 224, column: 52, scope: !7085)
!7091 = !DILocation(line: 224, column: 86, scope: !7085)
!7092 = !DILocation(line: 226, column: 2, scope: !7085)
!7093 = !DILocation(line: 226, column: 7, scope: !7085)
!7094 = !DILocation(line: 231, column: 33, scope: !7085)
!7095 = !DILocation(line: 231, column: 46, scope: !7085)
!7096 = !DILocation(line: 228, column: 2, scope: !7085)
!7097 = !{i64 2148118532, i64 2148118606}
!7098 = !DILocation(line: 233, column: 9, scope: !7085)
!7099 = !DILocation(line: 234, column: 1, scope: !7085)
!7100 = !DILocation(line: 233, column: 2, scope: !7085)
!7101 = !DISubprogram(name: "snd_seq_timer_start", scope: !4138, file: !4138, line: 116, type: !6559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7102 = distinct !DISubprogram(name: "queue_broadcast_event", scope: !3, file: !3, line: 629, type: !6327, scopeLine: 631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7103)
!7103 = !{!7104, !7105, !7106, !7107, !7108}
!7104 = !DILocalVariable(name: "q", arg: 1, scope: !7102, file: !3, line: 629, type: !3985)
!7105 = !DILocalVariable(name: "ev", arg: 2, scope: !7102, file: !3, line: 629, type: !4104)
!7106 = !DILocalVariable(name: "atomic", arg: 3, scope: !7102, file: !3, line: 630, type: !85)
!7107 = !DILocalVariable(name: "hop", arg: 4, scope: !7102, file: !3, line: 630, type: !85)
!7108 = !DILocalVariable(name: "sev", scope: !7102, file: !3, line: 632, type: !4006)
!7109 = !DILocation(line: 629, column: 57, scope: !7102)
!7110 = !DILocation(line: 629, column: 82, scope: !7102)
!7111 = !DILocation(line: 630, column: 11, scope: !7102)
!7112 = !DILocation(line: 630, column: 23, scope: !7102)
!7113 = !DILocation(line: 632, column: 2, scope: !7102)
!7114 = !DILocation(line: 632, column: 23, scope: !7102)
!7115 = !DILocation(line: 634, column: 9, scope: !7102)
!7116 = !DILocation(line: 634, column: 8, scope: !7102)
!7117 = !DILocation(line: 636, column: 6, scope: !7102)
!7118 = !DILocation(line: 636, column: 12, scope: !7102)
!7119 = !DILocation(line: 637, column: 18, scope: !7102)
!7120 = !DILocation(line: 637, column: 21, scope: !7102)
!7121 = !DILocation(line: 637, column: 28, scope: !7102)
!7122 = !DILocation(line: 637, column: 33, scope: !7102)
!7123 = !DILocation(line: 637, column: 6, scope: !7102)
!7124 = !DILocation(line: 637, column: 16, scope: !7102)
!7125 = !DILocation(line: 638, column: 14, scope: !7102)
!7126 = !DILocation(line: 638, column: 17, scope: !7102)
!7127 = !DILocation(line: 638, column: 6, scope: !7102)
!7128 = !DILocation(line: 638, column: 12, scope: !7102)
!7129 = !DILocation(line: 639, column: 25, scope: !7102)
!7130 = !DILocation(line: 639, column: 28, scope: !7102)
!7131 = !DILocation(line: 639, column: 6, scope: !7102)
!7132 = !DILocation(line: 639, column: 17, scope: !7102)
!7133 = !DILocation(line: 639, column: 23, scope: !7102)
!7134 = !DILocation(line: 642, column: 6, scope: !7102)
!7135 = !DILocation(line: 642, column: 13, scope: !7102)
!7136 = !DILocation(line: 642, column: 20, scope: !7102)
!7137 = !DILocation(line: 643, column: 6, scope: !7102)
!7138 = !DILocation(line: 643, column: 13, scope: !7102)
!7139 = !DILocation(line: 643, column: 18, scope: !7102)
!7140 = !DILocation(line: 644, column: 6, scope: !7102)
!7141 = !DILocation(line: 644, column: 11, scope: !7102)
!7142 = !DILocation(line: 644, column: 18, scope: !7102)
!7143 = !DILocation(line: 645, column: 64, scope: !7102)
!7144 = !DILocation(line: 645, column: 72, scope: !7102)
!7145 = !DILocation(line: 645, column: 2, scope: !7102)
!7146 = !DILocation(line: 646, column: 1, scope: !7102)
!7147 = !DISubprogram(name: "snd_seq_timer_continue", scope: !4138, file: !4138, line: 117, type: !6559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7148 = !DISubprogram(name: "snd_seq_timer_set_tempo", scope: !4138, file: !4138, line: 118, type: !7149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7149 = !DISubroutineType(types: !7150)
!7150 = !{!85, !4136, !85}
!7151 = !DISubprogram(name: "snd_seq_timer_set_position_tick", scope: !4138, file: !4138, line: 120, type: !7152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7152 = !DISubroutineType(types: !7153)
!7153 = !{!85, !4136, !4018}
!7154 = !DISubprogram(name: "snd_seq_timer_set_position_time", scope: !4138, file: !4138, line: 121, type: !7155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7155 = !DISubroutineType(types: !7156)
!7156 = !{!85, !4136, !4145}
!7157 = !DISubprogram(name: "snd_seq_kernel_client_dispatch", scope: !4146, file: !4146, line: 63, type: !7158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7158 = !DISubroutineType(types: !7159)
!7159 = !{!85, !85, !4104, !85, !85}
!7160 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5257, file: !5257, line: 29, type: !6946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7161 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5257, file: !5257, line: 41, type: !6946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
