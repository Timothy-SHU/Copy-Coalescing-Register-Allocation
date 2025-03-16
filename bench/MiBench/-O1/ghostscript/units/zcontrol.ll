; ModuleID = 'zcontrol.c'
source_filename = "zcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_stack_block_s = type { %struct.ref_s, %struct.ref_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@o_stack = external global %struct.ref_stack_s, align 8
@e_stack = external global %struct.ref_stack_s, align 8
@esfile = external local_unnamed_addr global ptr, align 8
@zcontrol_op_defs.op_defs_ = internal constant [32 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zcond }, %struct.op_def { ptr @.str.1, ptr @zcountexecstack }, %struct.op_def { ptr @.str.2, ptr @zcurrentfile }, %struct.op_def { ptr @.str.3, ptr @zexec }, %struct.op_def { ptr @.str.4, ptr @zexecn }, %struct.op_def { ptr @.str.5, ptr @zexecstack }, %struct.op_def { ptr @.str.6, ptr @zexit }, %struct.op_def { ptr @.str.7, ptr @zif }, %struct.op_def { ptr @.str.8, ptr @zifelse }, %struct.op_def { ptr @.str.9, ptr @zinstopped }, %struct.op_def { ptr @.str.10, ptr @zneedinput }, %struct.op_def { ptr @.str.11, ptr @zfor }, %struct.op_def { ptr @.str.12, ptr @zloop }, %struct.op_def { ptr @.str.13, ptr @zquit }, %struct.op_def { ptr @.str.14, ptr @zrepeat }, %struct.op_def { ptr @.str.15, ptr @zstop }, %struct.op_def { ptr @.str.16, ptr @zzstop }, %struct.op_def { ptr @.str.17, ptr @zstopped }, %struct.op_def { ptr @.str.18, ptr @zzstopped }, %struct.op_def { ptr @.str.19, ptr @cond_continue }, %struct.op_def { ptr @.str.20, ptr @execstack_continue }, %struct.op_def { ptr @.str.21, ptr @for_pos_int_continue }, %struct.op_def { ptr @.str.22, ptr @for_neg_int_continue }, %struct.op_def { ptr @.str.23, ptr @for_real_continue }, %struct.op_def { ptr @.str.24, ptr @zfor_fraction }, %struct.op_def { ptr @.str.25, ptr @for_fraction_continue }, %struct.op_def { ptr @.str.26, ptr @loop_continue }, %struct.op_def { ptr @.str.27, ptr @repeat_continue }, %struct.op_def { ptr @.str.28, ptr @stopped_push }, %struct.op_def { ptr @.str.29, ptr null }, %struct.op_def { ptr @.str.30, ptr @zsuperexec }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"1.cond\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"0countexecstack\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"0currentfile\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"1exec\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"1.execn\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"0execstack\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"0exit\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"2if\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"3ifelse\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"0.instopped\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"0.needinput\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"4for\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"1loop\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"2.quit\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"2repeat\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"0stop\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"1.stop\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"1stopped\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"2.stopped\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"1%cond_continue\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"0%execstack_continue\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"0%for_pos_int_continue\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"0%for_neg_int_continue\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"0%for_real_continue\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"4%for_fraction\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"0%for_fraction_continue\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"0%loop_continue\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"0%repeat_continue\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"0%stopped_push\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"internaldict\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"1superexec\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"execstack\00", align 1
@op_def_table = external local_unnamed_addr global ptr, align 8
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @zexec(ptr noundef readonly %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %3 = icmp ugt ptr %2, %0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = load i16, ptr %0, align 8, !tbaa !14
  %6 = and i16 %5, 128
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %10 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.ref_s, ptr %10, i64 -1
  %12 = icmp ugt ptr %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 1) #7
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %26

16:                                               ; preds = %13, %8
  %17 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.ref_s, ptr %17, i64 1
  store ptr %18, ptr @e_stack, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  %19 = load i16, ptr %18, align 8, !tbaa !14
  %20 = and i16 %19, 16256
  %21 = icmp eq i16 %20, 896
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store ptr %18, ptr @esfile, align 8, !tbaa !23
  br label %23

23:                                               ; preds = %22, %16
  %24 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %25 = getelementptr inbounds %struct.ref_s, ptr %24, i64 -1
  store ptr %25, ptr @o_stack, align 8, !tbaa !15
  br label %26

26:                                               ; preds = %13, %4, %1, %23
  %27 = phi i32 [ %14, %13 ], [ 5, %23 ], [ -17, %1 ], [ 0, %4 ]
  ret i32 %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @zexecn(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !24
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %64

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !24
  %10 = icmp ugt i64 %9, 4294967294
  br i1 %10, label %64, label %11

11:                                               ; preds = %7
  %12 = trunc i64 %9 to i32
  %13 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %14 = add nuw nsw i64 %9, 1
  %15 = getelementptr inbounds %struct.ref_s, ptr %13, i64 %9
  %16 = icmp ugt ptr %15, %0
  br i1 %16, label %64, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !16
  %20 = sub nsw i64 0, %9
  %21 = getelementptr inbounds %struct.ref_s, ptr %19, i64 %20
  %22 = icmp ugt ptr %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef %12) #7
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %64

26:                                               ; preds = %23, %17
  %27 = phi i32 [ %24, %23 ], [ undef, %17 ]
  %28 = load ptr, ptr @e_stack, align 8, !tbaa !15
  br label %29

29:                                               ; preds = %50, %26
  %30 = phi i64 [ %34, %50 ], [ 0, %26 ]
  %31 = phi i32 [ %52, %50 ], [ %27, %26 ]
  %32 = icmp eq i64 %30, %9
  br i1 %32, label %53, label %33

33:                                               ; preds = %29
  %34 = add nuw nsw i64 %30, 1
  %35 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %34) #7
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !24
  switch i8 %37, label %43 [
    i8 2, label %38
    i8 3, label %38
    i8 4, label %38
    i8 5, label %38
    i8 6, label %38
    i8 9, label %38
    i8 18, label %38
    i8 19, label %38
  ]

38:                                               ; preds = %33, %33, %33, %33, %33, %33, %33, %33
  %39 = load i16, ptr %35, align 8, !tbaa !14
  %40 = and i16 %39, 192
  %41 = icmp eq i16 %40, 128
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store ptr %28, ptr @e_stack, align 8, !tbaa !15
  br label %50

43:                                               ; preds = %38, %33
  %44 = load i16, ptr %35, align 8, !tbaa !14
  %45 = and i16 %44, 16256
  %46 = icmp eq i16 %45, 3712
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %49 = getelementptr inbounds %struct.ref_s, ptr %48, i64 1
  store ptr %49, ptr @e_stack, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(16) %35, i64 16, i1 false), !tbaa.struct !17
  br label %50

50:                                               ; preds = %43, %47, %42
  %51 = phi i1 [ false, %42 ], [ true, %47 ], [ true, %43 ]
  %52 = phi i32 [ -7, %42 ], [ %31, %47 ], [ %31, %43 ]
  br i1 %51, label %29, label %64, !llvm.loop !25

53:                                               ; preds = %29
  %54 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %55 = load i16, ptr %54, align 8, !tbaa !14
  %56 = and i16 %55, 16256
  %57 = icmp eq i16 %56, 896
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store ptr %54, ptr @esfile, align 8, !tbaa !23
  br label %59

59:                                               ; preds = %58, %53
  %60 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %61 = and i64 %14, 4294967295
  %62 = sub nsw i64 0, %61
  %63 = getelementptr inbounds %struct.ref_s, ptr %60, i64 %62
  store ptr %63, ptr @o_stack, align 8, !tbaa !15
  br label %64

64:                                               ; preds = %50, %11, %7, %23, %59, %5
  %65 = phi i32 [ 5, %59 ], [ %24, %23 ], [ %6, %5 ], [ -15, %7 ], [ -17, %11 ], [ %52, %50 ]
  ret i32 %65
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zif(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -15
  %3 = load i8, ptr %2, align 1, !tbaa !24
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %7 = tail call i32 @check_type_failed(ptr noundef nonnull %6) #7
  br label %36

8:                                                ; preds = %1
  %9 = load i16, ptr %0, align 8, !tbaa !14
  %10 = and i16 %9, 15552
  %11 = icmp eq i16 %10, 1216
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @check_proc_failed(ptr noundef nonnull %0) #7
  br label %36

14:                                               ; preds = %8
  %15 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !24
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %20 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !16
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 -1
  %22 = icmp ugt ptr %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 1) #7
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %36

26:                                               ; preds = %23, %18
  %27 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %28 = getelementptr inbounds %struct.ref_s, ptr %27, i64 1
  store ptr %28, ptr @e_stack, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  %29 = load i16, ptr %28, align 8, !tbaa !14
  %30 = and i16 %29, 16256
  %31 = icmp eq i16 %30, 896
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store ptr %28, ptr @esfile, align 8, !tbaa !23
  br label %33

33:                                               ; preds = %26, %32, %14
  %34 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %35 = getelementptr inbounds %struct.ref_s, ptr %34, i64 -2
  store ptr %35, ptr @o_stack, align 8, !tbaa !15
  br label %36

36:                                               ; preds = %23, %33, %12, %5
  %37 = phi i32 [ %24, %23 ], [ 5, %33 ], [ %13, %12 ], [ %7, %5 ]
  ret i32 %37
}

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zifelse(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -31
  %3 = load i8, ptr %2, align 1, !tbaa !24
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %7 = tail call i32 @check_type_failed(ptr noundef nonnull %6) #7
  br label %43

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %10 = load i16, ptr %9, align 8, !tbaa !14
  %11 = and i16 %10, 15552
  %12 = icmp eq i16 %11, 1216
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @check_proc_failed(ptr noundef nonnull %9) #7
  br label %43

15:                                               ; preds = %8
  %16 = load i16, ptr %0, align 8, !tbaa !14
  %17 = and i16 %16, 15552
  %18 = icmp eq i16 %17, 1216
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @check_proc_failed(ptr noundef nonnull %0) #7
  br label %43

21:                                               ; preds = %15
  %22 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %23 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.ref_s, ptr %23, i64 -1
  %25 = icmp ugt ptr %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 1) #7
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %43

29:                                               ; preds = %26, %21
  %30 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %31 = getelementptr inbounds %struct.ref_s, ptr %30, i64 1
  store ptr %31, ptr @e_stack, align 8, !tbaa !15
  %32 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %33 = load i16, ptr %32, align 8, !tbaa !24
  %34 = icmp eq i16 %33, 0
  %35 = select i1 %34, ptr %0, ptr %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %35, i64 16, i1 false)
  %36 = load i16, ptr %31, align 8, !tbaa !14
  %37 = and i16 %36, 16256
  %38 = icmp eq i16 %37, 896
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store ptr %31, ptr @esfile, align 8, !tbaa !23
  br label %40

40:                                               ; preds = %39, %29
  %41 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %42 = getelementptr inbounds %struct.ref_s, ptr %41, i64 -3
  store ptr %42, ptr @o_stack, align 8, !tbaa !15
  br label %43

43:                                               ; preds = %26, %40, %19, %13, %5
  %44 = phi i32 [ %27, %26 ], [ 5, %40 ], [ %20, %19 ], [ %14, %13 ], [ %7, %5 ]
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zfor(ptr noundef %0) #0 {
  %2 = alloca [3 x float], align 4
  %3 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %4 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 -7
  %6 = icmp ugt ptr %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 7) #7
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %84

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %8, %7 ], [ undef, %1 ]
  %12 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.ref_s, ptr %12, i64 6
  %14 = load i16, ptr %0, align 8, !tbaa !14
  %15 = and i16 %14, 15552
  %16 = icmp eq i16 %15, 1216
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = tail call i32 @check_proc_failed(ptr noundef nonnull %0) #7
  br label %84

19:                                               ; preds = %10
  %20 = getelementptr inbounds i8, ptr %0, i64 -47
  %21 = load i8, ptr %20, align 1, !tbaa !24
  %22 = icmp eq i8 %21, 11
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %0, i64 -31
  %25 = load i8, ptr %24, align 1, !tbaa !24
  %26 = icmp eq i8 %25, 11
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = getelementptr %struct.ref_s, ptr %0, i64 -3, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !24
  %30 = getelementptr inbounds %struct.ref_s, ptr %12, i64 2
  %31 = getelementptr inbounds %struct.ref_s, ptr %12, i64 2, i32 1
  store i64 %29, ptr %31, align 8, !tbaa !24
  store i16 2816, ptr %30, align 8, !tbaa !14
  %32 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !24
  %34 = getelementptr inbounds %struct.ref_s, ptr %12, i64 3
  %35 = getelementptr inbounds %struct.ref_s, ptr %12, i64 3, i32 1
  store i64 %33, ptr %35, align 8, !tbaa !24
  store i16 2816, ptr %34, align 8, !tbaa !14
  %36 = getelementptr inbounds i8, ptr %0, i64 -15
  %37 = load i8, ptr %36, align 1, !tbaa !24
  switch i8 %37, label %45 [
    i8 11, label %38
    i8 16, label %41
  ]

38:                                               ; preds = %27
  %39 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !24
  br label %48

41:                                               ; preds = %27
  %42 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %43 = load float, ptr %42, align 8, !tbaa !24
  %44 = fptosi float %43 to i64
  br label %48

45:                                               ; preds = %27
  %46 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %47 = tail call i32 @check_type_failed(ptr noundef nonnull %46) #7
  br label %84

48:                                               ; preds = %41, %38
  %49 = phi i64 [ %44, %41 ], [ %40, %38 ]
  %50 = getelementptr inbounds %struct.ref_s, ptr %12, i64 4
  %51 = getelementptr inbounds %struct.ref_s, ptr %12, i64 4, i32 1
  store i64 %49, ptr %51, align 8, !tbaa !24
  store i16 2816, ptr %50, align 8, !tbaa !14
  %52 = load i64, ptr %35, align 8, !tbaa !24
  %53 = icmp sgt i64 %52, -1
  %54 = select i1 %53, ptr @for_pos_int_continue, ptr @for_neg_int_continue
  %55 = getelementptr inbounds %struct.ref_s, ptr %12, i64 6, i32 1
  store ptr %54, ptr %55, align 8, !tbaa !24
  store i16 3968, ptr %13, align 8, !tbaa !14
  %56 = getelementptr inbounds %struct.ref_s, ptr %12, i64 6, i32 0, i32 1
  store i16 0, ptr %56, align 2, !tbaa !27
  br label %77

57:                                               ; preds = %23, %19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  %58 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %59 = call i32 @num_params(ptr noundef nonnull %58, i32 noundef 3, ptr noundef nonnull %2) #7
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load float, ptr %2, align 4, !tbaa !21
  %63 = getelementptr inbounds %struct.ref_s, ptr %12, i64 2
  %64 = getelementptr inbounds %struct.ref_s, ptr %12, i64 2, i32 1
  store float %62, ptr %64, align 8, !tbaa !24
  store i16 4096, ptr %63, align 8, !tbaa !14
  %65 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !21
  %67 = getelementptr inbounds %struct.ref_s, ptr %12, i64 3
  %68 = getelementptr inbounds %struct.ref_s, ptr %12, i64 3, i32 1
  store float %66, ptr %68, align 8, !tbaa !24
  store i16 4096, ptr %67, align 8, !tbaa !14
  %69 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !21
  %71 = getelementptr inbounds %struct.ref_s, ptr %12, i64 4
  %72 = getelementptr inbounds %struct.ref_s, ptr %12, i64 4, i32 1
  store float %70, ptr %72, align 8, !tbaa !24
  store i16 4096, ptr %71, align 8, !tbaa !14
  %73 = getelementptr inbounds %struct.ref_s, ptr %12, i64 6, i32 1
  store ptr @for_real_continue, ptr %73, align 8, !tbaa !24
  store i16 3968, ptr %13, align 8, !tbaa !14
  %74 = getelementptr inbounds %struct.ref_s, ptr %12, i64 6, i32 0, i32 1
  store i16 0, ptr %74, align 2, !tbaa !27
  br label %75

75:                                               ; preds = %57, %61
  %76 = phi i32 [ %11, %61 ], [ %59, %57 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  br i1 %60, label %77, label %84

77:                                               ; preds = %48, %75
  %78 = getelementptr inbounds %struct.ref_s, ptr %12, i64 1
  %79 = getelementptr inbounds %struct.ref_s, ptr %12, i64 1, i32 1
  store ptr @no_cleanup, ptr %79, align 8, !tbaa !24
  store i16 3712, ptr %78, align 8, !tbaa !14
  %80 = getelementptr inbounds %struct.ref_s, ptr %12, i64 1, i32 0, i32 1
  store i16 2, ptr %80, align 2, !tbaa !27
  %81 = getelementptr inbounds %struct.ref_s, ptr %12, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %81, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  store ptr %13, ptr @e_stack, align 8, !tbaa !15
  %82 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %83 = getelementptr inbounds %struct.ref_s, ptr %82, i64 -4
  store ptr %83, ptr @o_stack, align 8, !tbaa !15
  br label %84

84:                                               ; preds = %7, %75, %77, %45, %17
  %85 = phi i32 [ %47, %45 ], [ 5, %77 ], [ %76, %75 ], [ %18, %17 ], [ %8, %7 ]
  ret i32 %85
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @for_pos_int_continue(ptr noundef %0) #4 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %3 = getelementptr %struct.ref_s, ptr %2, i64 -3, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !24
  %5 = getelementptr %struct.ref_s, ptr %2, i64 -1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !24
  %7 = icmp sgt i64 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -5
  store ptr %9, ptr @e_stack, align 8, !tbaa !15
  br label %25

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %12 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !16
  %13 = icmp ugt ptr %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  br label %25

15:                                               ; preds = %10
  store ptr %11, ptr @o_stack, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %4, ptr %16, align 8, !tbaa !24
  store i16 2816, ptr %11, align 8, !tbaa !14
  %17 = getelementptr %struct.ref_s, ptr %2, i64 -2, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !24
  %19 = add nsw i64 %18, %4
  store i64 %19, ptr %3, align 8, !tbaa !24
  %20 = getelementptr inbounds %struct.ref_s, ptr %2, i64 2
  %21 = getelementptr inbounds %struct.ref_s, ptr %2, i64 2, i32 1
  %22 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %21, align 8
  %24 = load i32, ptr %2, align 8
  store i32 %24, ptr %20, align 8
  store ptr %20, ptr @e_stack, align 8, !tbaa !15
  br label %25

25:                                               ; preds = %15, %14, %8
  %26 = phi i32 [ 14, %8 ], [ -16, %14 ], [ 5, %15 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @for_neg_int_continue(ptr noundef %0) #4 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %3 = getelementptr %struct.ref_s, ptr %2, i64 -3, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !24
  %5 = getelementptr %struct.ref_s, ptr %2, i64 -1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !24
  %7 = icmp slt i64 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -5
  store ptr %9, ptr @e_stack, align 8, !tbaa !15
  br label %21

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %12 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !16
  %13 = icmp ugt ptr %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  br label %21

15:                                               ; preds = %10
  store ptr %11, ptr @o_stack, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %4, ptr %16, align 8, !tbaa !24
  store i16 2816, ptr %11, align 8, !tbaa !14
  %17 = getelementptr %struct.ref_s, ptr %2, i64 -2, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !24
  %19 = add nsw i64 %18, %4
  store i64 %19, ptr %3, align 8, !tbaa !24
  %20 = getelementptr inbounds %struct.ref_s, ptr %2, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !17
  store ptr %20, ptr @e_stack, align 8, !tbaa !15
  br label %21

21:                                               ; preds = %15, %14, %8
  %22 = phi i32 [ 14, %8 ], [ -16, %14 ], [ 5, %15 ]
  ret i32 %22
}

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @for_real_continue(ptr noundef %0) #4 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -3
  %4 = getelementptr %struct.ref_s, ptr %2, i64 -3, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !24
  %6 = getelementptr %struct.ref_s, ptr %2, i64 -2, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !24
  %8 = fcmp ult float %7, 0.000000e+00
  %9 = getelementptr %struct.ref_s, ptr %2, i64 -1, i32 1
  %10 = load float, ptr %9, align 8, !tbaa !24
  br i1 %8, label %13, label %11

11:                                               ; preds = %1
  %12 = fcmp ogt float %5, %10
  br i1 %12, label %15, label %17

13:                                               ; preds = %1
  %14 = fcmp olt float %5, %10
  br i1 %14, label %15, label %17

15:                                               ; preds = %13, %11
  %16 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -5
  store ptr %16, ptr @e_stack, align 8, !tbaa !15
  br label %25

17:                                               ; preds = %11, %13
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %19 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !16
  %20 = icmp ugt ptr %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  br label %25

22:                                               ; preds = %17
  store ptr %18, ptr @o_stack, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !17
  %23 = fadd float %5, %7
  store float %23, ptr %4, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.ref_s, ptr %2, i64 2
  store ptr %24, ptr @e_stack, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !17
  br label %25

25:                                               ; preds = %22, %21, %15
  %26 = phi i32 [ 14, %15 ], [ -16, %21 ], [ 5, %22 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @no_cleanup(ptr nocapture readnone %0) #5 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zfor_fraction(ptr noundef %0) #0 {
  %2 = tail call i32 @zfor(ptr noundef %0)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store ptr @for_fraction_continue, ptr %6, align 8, !tbaa !24
  store i16 3968, ptr %5, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.tas_s, ptr %5, i64 0, i32 1
  store i16 0, ptr %7, align 2, !tbaa !27
  br label %8

8:                                                ; preds = %1, %4
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @for_fraction_continue(ptr noundef %0) #4 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %3 = getelementptr %struct.ref_s, ptr %2, i64 -3, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !24
  %5 = getelementptr %struct.ref_s, ptr %2, i64 -1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !24
  %7 = icmp sgt i64 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -5
  store ptr %9, ptr @e_stack, align 8, !tbaa !15
  br label %25

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %12 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !16
  %13 = icmp ugt ptr %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  br label %25

15:                                               ; preds = %10
  store ptr %11, ptr @o_stack, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %4, ptr %16, align 8, !tbaa !24
  store i16 2816, ptr %11, align 8, !tbaa !14
  %17 = getelementptr %struct.ref_s, ptr %2, i64 -2, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !24
  %19 = add nsw i64 %18, %4
  store i64 %19, ptr %3, align 8, !tbaa !24
  %20 = getelementptr inbounds %struct.ref_s, ptr %2, i64 2
  %21 = getelementptr inbounds %struct.ref_s, ptr %2, i64 2, i32 1
  %22 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %21, align 8
  %24 = load i32, ptr %2, align 8
  store i32 %24, ptr %20, align 8
  store ptr %20, ptr @e_stack, align 8, !tbaa !15
  br label %25

25:                                               ; preds = %8, %14, %15
  %26 = phi i1 [ false, %8 ], [ false, %14 ], [ true, %15 ]
  %27 = phi i32 [ 14, %8 ], [ -16, %14 ], [ 5, %15 ]
  br i1 %26, label %28, label %36

28:                                               ; preds = %25
  %29 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct.ref_s, ptr %29, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !24
  %32 = sitofp i64 %31 to float
  %33 = load i64, ptr %5, align 8, !tbaa !24
  %34 = sitofp i64 %33 to float
  %35 = fdiv float %32, %34
  store float %35, ptr %30, align 8, !tbaa !24
  store i16 4096, ptr %29, align 8, !tbaa !14
  br label %36

36:                                               ; preds = %25, %28
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zcontrol_op_defs() local_unnamed_addr #5 {
  ret ptr @zcontrol_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zcond(ptr noundef %0) #0 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %3 = load i16, ptr %0, align 8, !tbaa !14
  %4 = zext i16 %3 to i32
  %5 = and i32 %4, 15360
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #7
  br label %43

9:                                                ; preds = %1
  %10 = and i32 %4, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !27
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = icmp eq i16 %14, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call i32 @zpop(ptr noundef nonnull %0) #7
  br label %43

21:                                               ; preds = %17
  %22 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !16
  %23 = getelementptr inbounds %struct.ref_s, ptr %22, i64 -3
  %24 = icmp ugt ptr %2, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 3) #7
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %43

28:                                               ; preds = %25, %21
  %29 = getelementptr inbounds %struct.ref_s, ptr %2, i64 3
  store ptr %29, ptr @e_stack, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct.ref_s, ptr %2, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  %31 = getelementptr inbounds %struct.ref_s, ptr %2, i64 2
  %32 = getelementptr inbounds %struct.ref_s, ptr %2, i64 2, i32 1
  store ptr @cond_continue, ptr %32, align 8, !tbaa !24
  store i16 3968, ptr %31, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct.ref_s, ptr %2, i64 2, i32 0, i32 1
  store i16 0, ptr %33, align 2, !tbaa !27
  %34 = tail call i32 @array_get(ptr noundef nonnull %0, i64 noundef 0, ptr noundef nonnull %29) #7
  %35 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %36 = load i16, ptr %35, align 8, !tbaa !14
  %37 = and i16 %36, 16256
  %38 = icmp eq i16 %37, 896
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store ptr %35, ptr @esfile, align 8, !tbaa !23
  br label %40

40:                                               ; preds = %39, %28
  %41 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %42 = getelementptr inbounds %struct.ref_s, ptr %41, i64 -1
  store ptr %42, ptr @o_stack, align 8, !tbaa !15
  br label %43

43:                                               ; preds = %12, %9, %25, %40, %19, %7
  %44 = phi i32 [ %20, %19 ], [ 5, %40 ], [ %26, %25 ], [ %8, %7 ], [ -7, %9 ], [ -15, %12 ]
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcountexecstack(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !16
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  br label %10

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !15
  %7 = tail call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #7
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %8, ptr %9, align 8, !tbaa !24
  store i16 2816, ptr %2, align 8, !tbaa !14
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentfile(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !16
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  br label %64

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !15
  %7 = load ptr, ptr @esfile, align 8, !tbaa !23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !17
  br label %61

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 3, i32 1), align 8, !tbaa !24
  %12 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 1), align 8, !tbaa !5
  %13 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.ref_s, ptr %13, i64 1
  %15 = ptrtoint ptr %14 to i64
  %16 = ptrtoint ptr %12 to i64
  %17 = sub i64 %15, %16
  %18 = lshr exact i64 %17, 4
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %50, %10
  %21 = phi ptr [ undef, %10 ], [ %45, %50 ]
  %22 = phi ptr [ %11, %10 ], [ %48, %50 ]
  %23 = phi ptr [ %12, %10 ], [ %52, %50 ]
  %24 = phi i32 [ %19, %10 ], [ %55, %50 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %20
  %27 = add i32 %24, -1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ref_s, ptr %23, i64 %28
  %30 = load i16, ptr %29, align 8, !tbaa !14
  %31 = and i16 %30, 16256
  %32 = icmp eq i16 %31, 896
  br i1 %32, label %43, label %38

33:                                               ; preds = %38
  %34 = getelementptr inbounds %struct.ref_s, ptr %39, i64 -1
  %35 = load i16, ptr %34, align 8, !tbaa !14
  %36 = and i16 %35, 16256
  %37 = icmp eq i16 %36, 896
  br i1 %37, label %43, label %38, !llvm.loop !29

38:                                               ; preds = %26, %33
  %39 = phi ptr [ %34, %33 ], [ %29, %26 ]
  %40 = phi i32 [ %41, %33 ], [ %24, %26 ]
  %41 = add i32 %40, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %33, !llvm.loop !29

43:                                               ; preds = %33, %38, %26, %20
  %44 = phi i1 [ %25, %20 ], [ false, %26 ], [ %42, %38 ], [ %42, %33 ]
  %45 = phi ptr [ %21, %20 ], [ %29, %26 ], [ %34, %33 ], [ %21, %38 ]
  br i1 %44, label %46, label %56

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.ref_s, ptr %22, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !24
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ref_stack_block_s, ptr %48, i64 0, i32 1, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !24
  %53 = getelementptr inbounds %struct.ref_stack_block_s, ptr %48, i64 0, i32 1, i32 0, i32 1
  %54 = load i16, ptr %53, align 2, !tbaa !30
  %55 = zext i16 %54 to i32
  br label %20, !llvm.loop !32

56:                                               ; preds = %43, %46
  %57 = phi ptr [ null, %46 ], [ %45, %43 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call void @make_invalid_file(ptr noundef nonnull %2) #7
  br label %61

60:                                               ; preds = %56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %57, i64 16, i1 false), !tbaa.struct !17
  store ptr %57, ptr @esfile, align 8, !tbaa !23
  br label %61

61:                                               ; preds = %59, %60, %9
  %62 = load i16, ptr %2, align 8, !tbaa !14
  %63 = and i16 %62, -129
  store i16 %63, ptr %2, align 8, !tbaa !14
  br label %64

64:                                               ; preds = %61, %5
  %65 = phi i32 [ -16, %5 ], [ 0, %61 ]
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal i32 @zexecstack(ptr noundef %0) #0 {
  %2 = tail call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #7
  %3 = load i16, ptr %0, align 8, !tbaa !14
  %4 = and i16 %3, 16144
  %5 = icmp eq i16 %4, 1040
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !24
  %9 = icmp eq i8 %8, 4
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #7
  br label %31

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !27
  %15 = zext i16 %14 to i32
  %16 = icmp ugt i32 %2, %15
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.ref_s, ptr %19, i64 -1
  %21 = icmp ugt ptr %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 1) #7
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %22, %17
  %26 = trunc i32 %2 to i16
  store i16 %26, ptr %13, align 2, !tbaa !27
  %27 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %28 = getelementptr inbounds %struct.ref_s, ptr %27, i64 1
  store ptr %28, ptr @e_stack, align 8, !tbaa !15
  %29 = getelementptr inbounds %struct.ref_s, ptr %27, i64 1, i32 1
  store ptr @execstack_continue, ptr %29, align 8, !tbaa !24
  store i16 3968, ptr %28, align 8, !tbaa !14
  %30 = getelementptr inbounds %struct.ref_s, ptr %27, i64 1, i32 0, i32 1
  store i16 0, ptr %30, align 2, !tbaa !27
  br label %31

31:                                               ; preds = %12, %10, %6, %22, %25
  %32 = phi i32 [ 5, %25 ], [ %23, %22 ], [ %11, %10 ], [ -7, %6 ], [ -15, %12 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @zexit(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 3, i32 1), align 8, !tbaa !24
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 1), align 8, !tbaa !5
  %4 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 1
  %6 = ptrtoint ptr %5 to i64
  %7 = ptrtoint ptr %3 to i64
  %8 = sub i64 %6, %7
  %9 = lshr exact i64 %8, 4
  %10 = trunc i64 %9 to i32
  br label %11

11:                                               ; preds = %75, %1
  %12 = phi i32 [ undef, %1 ], [ %69, %75 ]
  %13 = phi i32 [ 0, %1 ], [ %70, %75 ]
  %14 = phi ptr [ %2, %1 ], [ %73, %75 ]
  %15 = phi ptr [ %3, %1 ], [ %77, %75 ]
  %16 = phi i32 [ %10, %1 ], [ %80, %75 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %64, label %18

18:                                               ; preds = %11
  %19 = add i32 %16, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ref_s, ptr %15, i64 %20
  br label %22

22:                                               ; preds = %18, %60
  %23 = phi i1 [ %63, %60 ], [ %17, %18 ]
  %24 = phi i32 [ %61, %60 ], [ %16, %18 ]
  %25 = phi ptr [ %62, %60 ], [ %21, %18 ]
  %26 = load i16, ptr %25, align 8, !tbaa !14
  %27 = and i16 %26, 16256
  %28 = icmp eq i16 %27, 3712
  br i1 %28, label %29, label %60

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.tas_s, ptr %25, i64 0, i32 1
  %31 = load i16, ptr %30, align 2, !tbaa !27
  switch i16 %31, label %60 [
    i16 2, label %32
    i16 3, label %67
  ]

32:                                               ; preds = %29
  %33 = add i32 %13, 1
  %34 = add i32 %33, %16
  %35 = sub i32 %34, %24
  store ptr null, ptr @esfile, align 8, !tbaa !23
  %36 = icmp eq i32 %34, %24
  br i1 %36, label %57, label %37

37:                                               ; preds = %32, %53
  %38 = phi i32 [ %55, %53 ], [ 0, %32 ]
  %39 = phi i32 [ %54, %53 ], [ 0, %32 ]
  %40 = sub i32 %38, %39
  %41 = zext i32 %40 to i64
  %42 = tail call ptr @ref_stack_index(ptr noundef nonnull @e_stack, i64 noundef %41) #7
  %43 = load i16, ptr %42, align 8, !tbaa !14
  %44 = and i16 %43, 16256
  %45 = icmp eq i16 %44, 3712
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = add nuw i32 %38, 1
  %48 = sub i32 %47, %39
  tail call void @ref_stack_pop(ptr noundef nonnull @e_stack, i32 noundef %48) #7
  %49 = getelementptr inbounds %struct.ref_s, ptr %42, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !24
  %51 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %52 = tail call i32 %50(ptr noundef %51) #7
  br label %53

53:                                               ; preds = %46, %37
  %54 = phi i32 [ %47, %46 ], [ %39, %37 ]
  %55 = add nuw i32 %38, 1
  %56 = icmp eq i32 %55, %35
  br i1 %56, label %57, label %37, !llvm.loop !33

57:                                               ; preds = %53, %32
  %58 = phi i32 [ 0, %32 ], [ %54, %53 ]
  %59 = sub i32 %35, %58
  tail call void @ref_stack_pop(ptr noundef nonnull @e_stack, i32 noundef %59) #7
  br label %67

60:                                               ; preds = %22, %29
  %61 = add i32 %24, -1
  %62 = getelementptr inbounds %struct.ref_s, ptr %25, i64 -1
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %64, label %22, !llvm.loop !34

64:                                               ; preds = %60, %11
  %65 = phi i1 [ %17, %11 ], [ %63, %60 ]
  %66 = add i32 %16, %13
  br label %67

67:                                               ; preds = %29, %64, %57
  %68 = phi i1 [ %23, %57 ], [ %65, %64 ], [ %23, %29 ]
  %69 = phi i32 [ 14, %57 ], [ %12, %64 ], [ -8, %29 ]
  %70 = phi i32 [ %13, %57 ], [ %66, %64 ], [ %13, %29 ]
  br i1 %68, label %71, label %81

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !24
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ref_stack_block_s, ptr %73, i64 0, i32 1, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !24
  %78 = getelementptr inbounds %struct.ref_stack_block_s, ptr %73, i64 0, i32 1, i32 0, i32 1
  %79 = load i16, ptr %78, align 2, !tbaa !30
  %80 = zext i16 %79 to i32
  br label %11, !llvm.loop !35

81:                                               ; preds = %71, %67
  %82 = phi i32 [ -8, %71 ], [ %69, %67 ]
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define internal i32 @zinstopped(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !24
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %85

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !24
  %10 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 3, i32 1), align 8, !tbaa !24
  %11 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 1), align 8, !tbaa !5
  %12 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.ref_s, ptr %12, i64 1
  %14 = ptrtoint ptr %13 to i64
  %15 = ptrtoint ptr %11 to i64
  %16 = sub i64 %14, %15
  %17 = lshr exact i64 %16, 4
  %18 = trunc i64 %17 to i32
  br label %19

19:                                               ; preds = %65, %7
  %20 = phi i32 [ undef, %7 ], [ %59, %65 ]
  %21 = phi i32 [ 0, %7 ], [ %60, %65 ]
  %22 = phi ptr [ %10, %7 ], [ %63, %65 ]
  %23 = phi ptr [ %11, %7 ], [ %67, %65 ]
  %24 = phi i32 [ %18, %7 ], [ %70, %65 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %54, label %26

26:                                               ; preds = %19
  %27 = add i32 %24, -1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ref_s, ptr %23, i64 %28
  br label %30

30:                                               ; preds = %50, %26
  %31 = phi i1 [ %53, %50 ], [ false, %26 ]
  %32 = phi i32 [ %51, %50 ], [ %24, %26 ]
  %33 = phi ptr [ %52, %50 ], [ %29, %26 ]
  %34 = load i16, ptr %33, align 8, !tbaa !14
  %35 = and i16 %34, 16256
  %36 = icmp eq i16 %35, 3712
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.tas_s, ptr %33, i64 0, i32 1
  %39 = load i16, ptr %38, align 2, !tbaa !27
  %40 = icmp eq i16 %39, 3
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ref_s, ptr %33, i64 2, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !24
  %44 = and i64 %43, %9
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = add i32 %24, %21
  %48 = add i32 %47, 1
  %49 = sub i32 %48, %32
  br label %57

50:                                               ; preds = %41, %37, %30
  %51 = add i32 %32, -1
  %52 = getelementptr inbounds %struct.ref_s, ptr %33, i64 -1
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %54, label %30, !llvm.loop !36

54:                                               ; preds = %50, %19
  %55 = phi i1 [ %25, %19 ], [ %53, %50 ]
  %56 = add i32 %24, %21
  br label %57

57:                                               ; preds = %54, %46
  %58 = phi i1 [ %31, %46 ], [ %55, %54 ]
  %59 = phi i32 [ %49, %46 ], [ %20, %54 ]
  %60 = phi i32 [ %21, %46 ], [ %56, %54 ]
  br i1 %58, label %61, label %71

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ref_s, ptr %22, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !24
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.ref_stack_block_s, ptr %63, i64 0, i32 1, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !24
  %68 = getelementptr inbounds %struct.ref_stack_block_s, ptr %63, i64 0, i32 1, i32 0, i32 1
  %69 = load i16, ptr %68, align 2, !tbaa !30
  %70 = zext i16 %69 to i32
  br label %19, !llvm.loop !37

71:                                               ; preds = %57, %61
  %72 = phi i32 [ 0, %61 ], [ %59, %57 ]
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %76 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !16
  %77 = icmp ugt ptr %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  br label %85

79:                                               ; preds = %74
  store ptr %75, ptr @o_stack, align 8, !tbaa !15
  %80 = add i32 %72, -2
  %81 = zext i32 %80 to i64
  %82 = tail call ptr @ref_stack_index(ptr noundef nonnull @e_stack, i64 noundef %81) #7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %82, i64 16, i1 false), !tbaa.struct !17
  %83 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i16 1, ptr %83, align 8, !tbaa !24
  store i16 256, ptr %75, align 8, !tbaa !14
  br label %85

84:                                               ; preds = %71
  store i16 0, ptr %8, align 8, !tbaa !24
  store i16 256, ptr %0, align 8, !tbaa !14
  br label %85

85:                                               ; preds = %79, %84, %78, %5
  %86 = phi i32 [ -16, %78 ], [ %6, %5 ], [ 0, %84 ], [ 0, %79 ]
  ret i32 %86
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @zneedinput(ptr nocapture readnone %0) #5 {
  ret i32 -106
}

; Function Attrs: nounwind uwtable
define internal i32 @zloop(ptr noundef %0) #0 {
  %2 = load i16, ptr %0, align 8, !tbaa !14
  %3 = and i16 %2, 15552
  %4 = icmp eq i16 %3, 1216
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_proc_failed(ptr noundef nonnull %0) #7
  br label %27

7:                                                ; preds = %1
  %8 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %9 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.ref_s, ptr %9, i64 -4
  %11 = icmp ugt ptr %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 4) #7
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %27

15:                                               ; preds = %12, %7
  %16 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.ref_s, ptr %16, i64 1
  store ptr %17, ptr @e_stack, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.ref_s, ptr %16, i64 1, i32 1
  store ptr @no_cleanup, ptr %18, align 8, !tbaa !24
  store i16 3712, ptr %17, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.ref_s, ptr %16, i64 1, i32 0, i32 1
  store i16 2, ptr %19, align 2, !tbaa !27
  %20 = getelementptr inbounds %struct.ref_s, ptr %16, i64 2
  store ptr %20, ptr @e_stack, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  %21 = getelementptr inbounds %struct.ref_s, ptr %16, i64 3, i32 1
  store ptr @loop_continue, ptr %21, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.ref_s, ptr %16, i64 3
  store i16 3968, ptr %22, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct.ref_s, ptr %16, i64 3, i32 0, i32 1
  store i16 0, ptr %23, align 2, !tbaa !27
  %24 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %25 = getelementptr inbounds %struct.ref_s, ptr %24, i64 -1
  store ptr %25, ptr @o_stack, align 8, !tbaa !15
  %26 = getelementptr inbounds %struct.ref_s, ptr %16, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !17
  store ptr %26, ptr @e_stack, align 8, !tbaa !15
  br label %27

27:                                               ; preds = %12, %15, %5
  %28 = phi i32 [ %13, %12 ], [ 5, %15 ], [ %6, %5 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @zquit(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 1
  %4 = icmp ugt ptr %3, %0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !24
  %8 = icmp eq i8 %7, 11
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %11

11:                                               ; preds = %5, %1, %9
  %12 = phi i32 [ %10, %9 ], [ -17, %1 ], [ -101, %5 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zrepeat(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds i8, ptr %0, i64 -15
  %4 = load i8, ptr %3, align 1, !tbaa !24
  %5 = icmp eq i8 %4, 11
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #7
  br label %47

8:                                                ; preds = %1
  %9 = load i16, ptr %0, align 8, !tbaa !14
  %10 = and i16 %9, 15552
  %11 = icmp eq i16 %10, 1216
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @check_proc_failed(ptr noundef nonnull %0) #7
  br label %47

14:                                               ; preds = %8
  %15 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !24
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %20 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !16
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 -5
  %22 = icmp ugt ptr %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 5) #7
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %47

26:                                               ; preds = %23, %18
  %27 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %28 = getelementptr inbounds %struct.ref_s, ptr %27, i64 1
  store ptr %28, ptr @e_stack, align 8, !tbaa !15
  %29 = getelementptr inbounds %struct.ref_s, ptr %27, i64 1, i32 1
  store ptr @no_cleanup, ptr %29, align 8, !tbaa !24
  store i16 3712, ptr %28, align 8, !tbaa !14
  %30 = getelementptr inbounds %struct.ref_s, ptr %27, i64 1, i32 0, i32 1
  store i16 2, ptr %30, align 2, !tbaa !27
  %31 = getelementptr inbounds %struct.ref_s, ptr %27, i64 2
  store ptr %31, ptr @e_stack, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !17
  %32 = getelementptr inbounds %struct.ref_s, ptr %27, i64 3
  store ptr %32, ptr @e_stack, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  %33 = getelementptr inbounds %struct.ref_s, ptr %27, i64 4, i32 1
  store ptr @repeat_continue, ptr %33, align 8, !tbaa !24
  %34 = getelementptr inbounds %struct.ref_s, ptr %27, i64 4
  store i16 3968, ptr %34, align 8, !tbaa !14
  %35 = getelementptr inbounds %struct.ref_s, ptr %27, i64 4, i32 0, i32 1
  store i16 0, ptr %35, align 2, !tbaa !27
  %36 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %37 = getelementptr inbounds %struct.ref_s, ptr %36, i64 -2
  store ptr %37, ptr @o_stack, align 8, !tbaa !15
  %38 = getelementptr %struct.ref_s, ptr %27, i64 2, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !24
  %40 = add nsw i64 %39, -1
  store i64 %40, ptr %38, align 8, !tbaa !24
  %41 = icmp sgt i64 %39, 0
  %42 = load ptr, ptr @e_stack, align 8, !tbaa !15
  br i1 %41, label %43, label %45

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.ref_s, ptr %42, i64 2
  store ptr %44, ptr @e_stack, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(16) %32, i64 16, i1 false), !tbaa.struct !17
  br label %47

45:                                               ; preds = %26
  %46 = getelementptr inbounds %struct.ref_s, ptr %42, i64 -3
  store ptr %46, ptr @e_stack, align 8, !tbaa !15
  br label %47

47:                                               ; preds = %45, %43, %23, %14, %12, %6
  %48 = phi i32 [ %24, %23 ], [ %13, %12 ], [ %7, %6 ], [ -15, %14 ], [ 5, %43 ], [ 14, %45 ]
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zstop(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 3, i32 1), align 8, !tbaa !24
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 1), align 8, !tbaa !5
  %4 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 1
  %6 = ptrtoint ptr %5 to i64
  %7 = ptrtoint ptr %3 to i64
  %8 = sub i64 %6, %7
  %9 = lshr exact i64 %8, 4
  %10 = trunc i64 %9 to i32
  br label %11

11:                                               ; preds = %57, %1
  %12 = phi i32 [ undef, %1 ], [ %51, %57 ]
  %13 = phi i32 [ 0, %1 ], [ %52, %57 ]
  %14 = phi ptr [ %2, %1 ], [ %55, %57 ]
  %15 = phi ptr [ %3, %1 ], [ %59, %57 ]
  %16 = phi i32 [ %10, %1 ], [ %62, %57 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %11
  %19 = add i32 %16, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ref_s, ptr %15, i64 %20
  br label %22

22:                                               ; preds = %42, %18
  %23 = phi i1 [ %45, %42 ], [ false, %18 ]
  %24 = phi i32 [ %43, %42 ], [ %16, %18 ]
  %25 = phi ptr [ %44, %42 ], [ %21, %18 ]
  %26 = load i16, ptr %25, align 8, !tbaa !14
  %27 = and i16 %26, 16256
  %28 = icmp eq i16 %27, 3712
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.tas_s, ptr %25, i64 0, i32 1
  %31 = load i16, ptr %30, align 2, !tbaa !27
  %32 = icmp eq i16 %31, 3
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ref_s, ptr %25, i64 2, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !24
  %36 = and i64 %35, 1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = add i32 %16, %13
  %40 = add i32 %39, 1
  %41 = sub i32 %40, %24
  br label %49

42:                                               ; preds = %33, %29, %22
  %43 = add i32 %24, -1
  %44 = getelementptr inbounds %struct.ref_s, ptr %25, i64 -1
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %46, label %22, !llvm.loop !36

46:                                               ; preds = %42, %11
  %47 = phi i1 [ %17, %11 ], [ %45, %42 ]
  %48 = add i32 %16, %13
  br label %49

49:                                               ; preds = %46, %38
  %50 = phi i1 [ %23, %38 ], [ %47, %46 ]
  %51 = phi i32 [ %41, %38 ], [ %12, %46 ]
  %52 = phi i32 [ %13, %38 ], [ %48, %46 ]
  br i1 %50, label %53, label %63

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !24
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ref_stack_block_s, ptr %55, i64 0, i32 1, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !24
  %60 = getelementptr inbounds %struct.ref_stack_block_s, ptr %55, i64 0, i32 1, i32 0, i32 1
  %61 = load i16, ptr %60, align 2, !tbaa !30
  %62 = zext i16 %61 to i32
  br label %11, !llvm.loop !37

63:                                               ; preds = %49, %53
  %64 = phi i32 [ 0, %53 ], [ %51, %49 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %104, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !16
  %68 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %69 = ptrtoint ptr %67 to i64
  %70 = ptrtoint ptr %68 to i64
  %71 = sub i64 %69, %70
  %72 = icmp slt i64 %71, 32
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  br label %104

74:                                               ; preds = %66
  store ptr null, ptr @esfile, align 8, !tbaa !23
  br label %75

75:                                               ; preds = %74, %91
  %76 = phi i32 [ %93, %91 ], [ 0, %74 ]
  %77 = phi i32 [ %92, %91 ], [ 0, %74 ]
  %78 = sub i32 %76, %77
  %79 = zext i32 %78 to i64
  %80 = tail call ptr @ref_stack_index(ptr noundef nonnull @e_stack, i64 noundef %79) #7
  %81 = load i16, ptr %80, align 8, !tbaa !14
  %82 = and i16 %81, 16256
  %83 = icmp eq i16 %82, 3712
  br i1 %83, label %84, label %91

84:                                               ; preds = %75
  %85 = add nuw i32 %76, 1
  %86 = sub i32 %85, %77
  tail call void @ref_stack_pop(ptr noundef nonnull @e_stack, i32 noundef %86) #7
  %87 = getelementptr inbounds %struct.ref_s, ptr %80, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !24
  %89 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %90 = tail call i32 %88(ptr noundef %89) #7
  br label %91

91:                                               ; preds = %84, %75
  %92 = phi i32 [ %85, %84 ], [ %77, %75 ]
  %93 = add nuw i32 %76, 1
  %94 = icmp eq i32 %93, %64
  br i1 %94, label %95, label %75, !llvm.loop !33

95:                                               ; preds = %91
  %96 = sub i32 %64, %92
  tail call void @ref_stack_pop(ptr noundef nonnull @e_stack, i32 noundef %96) #7
  %97 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %98 = getelementptr inbounds %struct.ref_s, ptr %97, i64 1
  %99 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !16
  %100 = icmp ugt ptr %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  br label %104

102:                                              ; preds = %95
  store ptr %98, ptr @o_stack, align 8, !tbaa !15
  %103 = getelementptr inbounds %struct.ref_s, ptr %97, i64 1, i32 1
  store i16 1, ptr %103, align 8, !tbaa !24
  store i16 256, ptr %98, align 8, !tbaa !14
  br label %104

104:                                              ; preds = %63, %102, %101, %73
  %105 = phi i32 [ -16, %73 ], [ -16, %101 ], [ 14, %102 ], [ -8, %63 ]
  ret i32 %105
}

; Function Attrs: nounwind uwtable
define internal i32 @zzstop(ptr noundef %0) #0 {
  %2 = alloca %struct.ref_s, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !24
  %5 = icmp eq i8 %4, 11
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %113

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !24
  %11 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 3, i32 1), align 8, !tbaa !24
  %12 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 1), align 8, !tbaa !5
  %13 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.ref_s, ptr %13, i64 1
  %15 = ptrtoint ptr %14 to i64
  %16 = ptrtoint ptr %12 to i64
  %17 = sub i64 %15, %16
  %18 = lshr exact i64 %17, 4
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %66, %8
  %21 = phi i32 [ undef, %8 ], [ %60, %66 ]
  %22 = phi i32 [ 0, %8 ], [ %61, %66 ]
  %23 = phi ptr [ %11, %8 ], [ %64, %66 ]
  %24 = phi ptr [ %12, %8 ], [ %68, %66 ]
  %25 = phi i32 [ %19, %8 ], [ %71, %66 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %55, label %27

27:                                               ; preds = %20
  %28 = add i32 %25, -1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ref_s, ptr %24, i64 %29
  br label %31

31:                                               ; preds = %51, %27
  %32 = phi i1 [ %54, %51 ], [ false, %27 ]
  %33 = phi i32 [ %52, %51 ], [ %25, %27 ]
  %34 = phi ptr [ %53, %51 ], [ %30, %27 ]
  %35 = load i16, ptr %34, align 8, !tbaa !14
  %36 = and i16 %35, 16256
  %37 = icmp eq i16 %36, 3712
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.tas_s, ptr %34, i64 0, i32 1
  %40 = load i16, ptr %39, align 2, !tbaa !27
  %41 = icmp eq i16 %40, 3
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ref_s, ptr %34, i64 2, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !24
  %45 = and i64 %44, %10
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = add i32 %25, %22
  %49 = add i32 %48, 1
  %50 = sub i32 %49, %33
  br label %58

51:                                               ; preds = %42, %38, %31
  %52 = add i32 %33, -1
  %53 = getelementptr inbounds %struct.ref_s, ptr %34, i64 -1
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %55, label %31, !llvm.loop !36

55:                                               ; preds = %51, %20
  %56 = phi i1 [ %26, %20 ], [ %54, %51 ]
  %57 = add i32 %25, %22
  br label %58

58:                                               ; preds = %55, %47
  %59 = phi i1 [ %32, %47 ], [ %56, %55 ]
  %60 = phi i32 [ %50, %47 ], [ %21, %55 ]
  %61 = phi i32 [ %22, %47 ], [ %57, %55 ]
  br i1 %59, label %62, label %72

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ref_s, ptr %23, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !24
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ref_stack_block_s, ptr %64, i64 0, i32 1, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !24
  %69 = getelementptr inbounds %struct.ref_stack_block_s, ptr %64, i64 0, i32 1, i32 0, i32 1
  %70 = load i16, ptr %69, align 2, !tbaa !30
  %71 = zext i16 %70 to i32
  br label %20, !llvm.loop !37

72:                                               ; preds = %58, %62
  %73 = phi i32 [ 0, %62 ], [ %60, %58 ]
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %113, label %75

75:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  %76 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %77 = getelementptr inbounds %struct.ref_s, ptr %76, i64 1
  %78 = icmp ugt ptr %77, %0
  br i1 %78, label %111, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %80, i64 16, i1 false), !tbaa.struct !17
  %81 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %82 = getelementptr inbounds %struct.ref_s, ptr %81, i64 -2
  store ptr %82, ptr @o_stack, align 8, !tbaa !15
  store ptr null, ptr @esfile, align 8, !tbaa !23
  br label %83

83:                                               ; preds = %79, %99
  %84 = phi i32 [ %101, %99 ], [ 0, %79 ]
  %85 = phi i32 [ %100, %99 ], [ 0, %79 ]
  %86 = sub i32 %84, %85
  %87 = zext i32 %86 to i64
  %88 = tail call ptr @ref_stack_index(ptr noundef nonnull @e_stack, i64 noundef %87) #7
  %89 = load i16, ptr %88, align 8, !tbaa !14
  %90 = and i16 %89, 16256
  %91 = icmp eq i16 %90, 3712
  br i1 %91, label %92, label %99

92:                                               ; preds = %83
  %93 = add nuw i32 %84, 1
  %94 = sub i32 %93, %85
  tail call void @ref_stack_pop(ptr noundef nonnull @e_stack, i32 noundef %94) #7
  %95 = getelementptr inbounds %struct.ref_s, ptr %88, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !24
  %97 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %98 = tail call i32 %96(ptr noundef %97) #7
  br label %99

99:                                               ; preds = %92, %83
  %100 = phi i32 [ %93, %92 ], [ %85, %83 ]
  %101 = add nuw i32 %84, 1
  %102 = icmp eq i32 %101, %73
  br i1 %102, label %103, label %83, !llvm.loop !33

103:                                              ; preds = %99
  %104 = sub i32 %73, %100
  tail call void @ref_stack_pop(ptr noundef nonnull @e_stack, i32 noundef %104) #7
  %105 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %106 = getelementptr inbounds %struct.ref_s, ptr %105, i64 1
  %107 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !16
  %108 = icmp ugt ptr %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  br label %111

110:                                              ; preds = %103
  store ptr %106, ptr @o_stack, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %106, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !17
  br label %111

111:                                              ; preds = %75, %110, %109
  %112 = phi i32 [ -16, %109 ], [ 14, %110 ], [ -17, %75 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  br label %113

113:                                              ; preds = %72, %111, %6
  %114 = phi i32 [ %112, %111 ], [ %7, %6 ], [ -8, %72 ]
  ret i32 %114
}

; Function Attrs: nounwind uwtable
define internal i32 @zstopped(ptr noundef readonly %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %3 = icmp ugt ptr %2, %0
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.ref_s, ptr %6, i64 -5
  %8 = icmp ugt ptr %5, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 5) #7
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %32

12:                                               ; preds = %9, %4
  %13 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.ref_s, ptr %13, i64 1
  store ptr %14, ptr @e_stack, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.ref_s, ptr %13, i64 1, i32 1
  store ptr @no_cleanup, ptr %15, align 8, !tbaa !24
  store i16 3712, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.ref_s, ptr %13, i64 1, i32 0, i32 1
  store i16 3, ptr %16, align 2, !tbaa !27
  %17 = getelementptr inbounds %struct.ref_s, ptr %13, i64 2
  store ptr %17, ptr @e_stack, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.ref_s, ptr %13, i64 2, i32 1
  store i16 0, ptr %18, align 8, !tbaa !24
  store i16 256, ptr %17, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.ref_s, ptr %13, i64 3
  store ptr %19, ptr @e_stack, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct.ref_s, ptr %13, i64 3, i32 1
  store i64 1, ptr %20, align 8, !tbaa !24
  store i16 2816, ptr %19, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.ref_s, ptr %13, i64 4
  store ptr %21, ptr @e_stack, align 8, !tbaa !15
  %22 = getelementptr inbounds %struct.ref_s, ptr %13, i64 4, i32 1
  store ptr @stopped_push, ptr %22, align 8, !tbaa !24
  store i16 3968, ptr %21, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct.ref_s, ptr %13, i64 4, i32 0, i32 1
  store i16 0, ptr %23, align 2, !tbaa !27
  %24 = getelementptr inbounds %struct.ref_s, ptr %13, i64 5
  store ptr %24, ptr @e_stack, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  %25 = load i16, ptr %24, align 8, !tbaa !14
  %26 = and i16 %25, 16256
  %27 = icmp eq i16 %26, 896
  br i1 %27, label %28, label %29

28:                                               ; preds = %12
  store ptr %24, ptr @esfile, align 8, !tbaa !23
  br label %29

29:                                               ; preds = %28, %12
  %30 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %31 = getelementptr inbounds %struct.ref_s, ptr %30, i64 -1
  store ptr %31, ptr @o_stack, align 8, !tbaa !15
  br label %32

32:                                               ; preds = %9, %1, %29
  %33 = phi i32 [ %10, %9 ], [ 5, %29 ], [ -17, %1 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @zzstopped(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !24
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %39

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.ref_s, ptr %8, i64 2
  %10 = icmp ugt ptr %9, %0
  br i1 %10, label %39, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %13 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.ref_s, ptr %13, i64 -5
  %15 = icmp ugt ptr %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 5) #7
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %39

19:                                               ; preds = %16, %11
  %20 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 1
  store ptr %21, ptr @e_stack, align 8, !tbaa !15
  %22 = getelementptr inbounds %struct.ref_s, ptr %20, i64 1, i32 1
  store ptr @no_cleanup, ptr %22, align 8, !tbaa !24
  store i16 3712, ptr %21, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct.ref_s, ptr %20, i64 1, i32 0, i32 1
  store i16 3, ptr %23, align 2, !tbaa !27
  %24 = getelementptr inbounds %struct.ref_s, ptr %20, i64 2
  store ptr %24, ptr @e_stack, align 8, !tbaa !15
  %25 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false), !tbaa.struct !17
  %26 = getelementptr inbounds %struct.ref_s, ptr %20, i64 3
  store ptr %26, ptr @e_stack, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  %27 = getelementptr inbounds %struct.ref_s, ptr %20, i64 4
  store ptr %27, ptr @e_stack, align 8, !tbaa !15
  %28 = getelementptr inbounds %struct.ref_s, ptr %20, i64 4, i32 1
  store ptr @stopped_push, ptr %28, align 8, !tbaa !24
  store i16 3968, ptr %27, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct.ref_s, ptr %20, i64 4, i32 0, i32 1
  store i16 0, ptr %29, align 2, !tbaa !27
  %30 = getelementptr inbounds %struct.ref_s, ptr %20, i64 5
  store ptr %30, ptr @e_stack, align 8, !tbaa !15
  %31 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false), !tbaa.struct !17
  %32 = load i16, ptr %30, align 8, !tbaa !14
  %33 = and i16 %32, 16256
  %34 = icmp eq i16 %33, 896
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  store ptr %30, ptr @esfile, align 8, !tbaa !23
  br label %36

36:                                               ; preds = %35, %19
  %37 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %38 = getelementptr inbounds %struct.ref_s, ptr %37, i64 -3
  store ptr %38, ptr @o_stack, align 8, !tbaa !15
  br label %39

39:                                               ; preds = %16, %7, %36, %5
  %40 = phi i32 [ %17, %16 ], [ 5, %36 ], [ %6, %5 ], [ -17, %7 ]
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @cond_continue(ptr noundef %0) #0 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !24
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %62

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !24
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @array_get(ptr noundef %2, i64 noundef 1, ptr noundef %2) #7
  %14 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %15 = load i16, ptr %14, align 8, !tbaa !14
  %16 = and i16 %15, 16256
  %17 = icmp eq i16 %16, 896
  br i1 %17, label %18, label %58

18:                                               ; preds = %12
  store ptr %14, ptr @esfile, align 8, !tbaa !23
  br label %58

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.tas_s, ptr %2, i64 0, i32 1
  %21 = load i16, ptr %20, align 2, !tbaa !27
  %22 = icmp ugt i16 %21, 2
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !16
  %27 = getelementptr inbounds %struct.ref_s, ptr %26, i64 -2
  %28 = icmp ugt ptr %2, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 2) #7
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %53

32:                                               ; preds = %29, %23
  %33 = phi i32 [ %30, %29 ], [ undef, %23 ]
  %34 = load i16, ptr %20, align 2, !tbaa !27
  %35 = add i16 %34, -2
  store i16 %35, ptr %20, align 2, !tbaa !27
  %36 = load i16, ptr %25, align 2, !tbaa !18
  %37 = icmp ugt i16 %36, 16383
  %38 = select i1 %37, i64 1, i64 8
  %39 = getelementptr inbounds i16, ptr %25, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !18
  %41 = icmp ugt i16 %40, 16383
  %42 = select i1 %41, i64 1, i64 8
  %43 = getelementptr inbounds i16, ptr %39, i64 %42
  store ptr %43, ptr %24, align 8, !tbaa !24
  %44 = getelementptr inbounds %struct.ref_s, ptr %2, i64 2
  %45 = tail call i32 @array_get(ptr noundef %2, i64 noundef 0, ptr noundef nonnull %44) #7
  %46 = getelementptr inbounds %struct.ref_s, ptr %2, i64 1
  %47 = getelementptr inbounds %struct.ref_s, ptr %2, i64 1, i32 1
  store ptr @cond_continue, ptr %47, align 8, !tbaa !24
  store i16 3968, ptr %46, align 8, !tbaa !14
  %48 = getelementptr inbounds %struct.ref_s, ptr %2, i64 1, i32 0, i32 1
  store i16 0, ptr %48, align 2, !tbaa !27
  store ptr %44, ptr @e_stack, align 8, !tbaa !15
  %49 = load i16, ptr %44, align 8, !tbaa !14
  %50 = and i16 %49, 16256
  %51 = icmp eq i16 %50, 896
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  store ptr %44, ptr @esfile, align 8, !tbaa !23
  br label %53

53:                                               ; preds = %32, %52, %29
  %54 = phi i1 [ false, %29 ], [ true, %52 ], [ true, %32 ]
  %55 = phi i32 [ %30, %29 ], [ %33, %52 ], [ %33, %32 ]
  br i1 %54, label %58, label %62

56:                                               ; preds = %19
  %57 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -1
  store ptr %57, ptr @e_stack, align 8, !tbaa !15
  br label %58

58:                                               ; preds = %12, %18, %56, %53
  %59 = phi i32 [ 5, %53 ], [ 14, %56 ], [ 14, %18 ], [ 14, %12 ]
  %60 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %61 = getelementptr inbounds %struct.ref_s, ptr %60, i64 -1
  store ptr %61, ptr @o_stack, align 8, !tbaa !15
  br label %62

62:                                               ; preds = %53, %58, %6
  %63 = phi i32 [ %59, %58 ], [ %55, %53 ], [ %7, %6 ]
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal i32 @execstack_continue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 2, !tbaa !27
  %4 = zext i16 %3 to i32
  %5 = tail call i32 @ref_stack_store(ptr noundef nonnull @e_stack, ptr noundef %0, i32 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.31) #7
  %6 = load i16, ptr %2, align 2, !tbaa !27
  %7 = zext i16 %6 to i32
  %8 = icmp slt i32 %5, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %1
  %10 = icmp eq i16 %6, 0
  br i1 %10, label %55, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  br label %14

14:                                               ; preds = %11, %51
  %15 = phi i32 [ %52, %51 ], [ 0, %11 ]
  %16 = phi ptr [ %53, %51 ], [ %13, %11 ]
  %17 = getelementptr inbounds i8, ptr %16, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !24
  switch i8 %18, label %51 [
    i8 15, label %19
    i8 8, label %40
    i8 9, label %40
  ]

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tas_s, ptr %16, i64 0, i32 1
  %21 = load i16, ptr %20, align 2, !tbaa !27
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call zeroext i16 @op_find_index(ptr noundef %16) #7
  br label %25

25:                                               ; preds = %19, %23
  %26 = phi i16 [ %24, %23 ], [ %21, %19 ]
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr @op_def_table, align 8, !tbaa !23
  %30 = zext i16 %26 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !23
  %33 = load ptr, ptr %32, align 8, !tbaa !38
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !24
  %36 = icmp eq i8 %35, 37
  br i1 %36, label %37, label %51

37:                                               ; preds = %28, %25
  %38 = load i16, ptr %16, align 8, !tbaa !14
  %39 = and i16 %38, -129
  store i16 %39, ptr %16, align 8, !tbaa !14
  br label %51

40:                                               ; preds = %14, %14
  %41 = load ptr, ptr @gs_imemory, align 8, !tbaa !40
  %42 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %41, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !42
  %44 = getelementptr inbounds %struct.ref_s, ptr %16, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !24
  %46 = tail call ptr %43(ptr noundef %41, ptr noundef %45) #7
  %47 = tail call ptr @gs_struct_type_name(ptr noundef %46) #7
  store ptr %47, ptr %44, align 8, !tbaa !24
  store i16 4704, ptr %16, align 8, !tbaa !14
  %48 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %47) #8
  %49 = trunc i64 %48 to i16
  %50 = getelementptr inbounds %struct.tas_s, ptr %16, i64 0, i32 1
  store i16 %49, ptr %50, align 2, !tbaa !27
  br label %51

51:                                               ; preds = %28, %37, %40, %14
  %52 = add nuw nsw i32 %15, 1
  %53 = getelementptr inbounds %struct.ref_s, ptr %16, i64 1
  %54 = icmp eq i32 %52, %7
  br i1 %54, label %55, label %14, !llvm.loop !45

55:                                               ; preds = %51, %9, %1
  %56 = phi i32 [ %5, %1 ], [ 0, %9 ], [ 0, %51 ]
  ret i32 %56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @loop_continue(ptr nocapture readnone %0) #4 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !17
  store ptr %3, ptr @e_stack, align 8, !tbaa !15
  ret i32 5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @repeat_continue(ptr nocapture readnone %0) #4 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %3 = getelementptr %struct.ref_s, ptr %2, i64 -1, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !24
  %5 = add nsw i64 %4, -1
  store i64 %5, ptr %3, align 8, !tbaa !24
  %6 = icmp sgt i64 %4, 0
  %7 = load ptr, ptr @e_stack, align 8, !tbaa !15
  br i1 %6, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %7, i64 2
  store ptr %9, ptr @e_stack, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !17
  br label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ref_s, ptr %7, i64 -3
  store ptr %11, ptr @e_stack, align 8, !tbaa !15
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ 5, %8 ], [ 14, %10 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @stopped_push(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !16
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  br label %10

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !15
  %7 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.ref_s, ptr %7, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !17
  %9 = getelementptr inbounds %struct.ref_s, ptr %7, i64 -3
  store ptr %9, ptr @e_stack, align 8, !tbaa !15
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi i32 [ -16, %5 ], [ 14, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @zsuperexec(ptr noundef readonly %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !5
  %3 = icmp ugt ptr %2, %0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = load i16, ptr %0, align 8, !tbaa !14
  %6 = and i16 %5, 128
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %10 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.ref_s, ptr %10, i64 -1
  %12 = icmp ugt ptr %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 1) #7
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %26

16:                                               ; preds = %13, %8
  %17 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.ref_s, ptr %17, i64 1
  store ptr %18, ptr @e_stack, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  %19 = load i16, ptr %18, align 8, !tbaa !14
  %20 = and i16 %19, 16256
  %21 = icmp eq i16 %20, 896
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store ptr %18, ptr @esfile, align 8, !tbaa !23
  br label %23

23:                                               ; preds = %22, %16
  %24 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %25 = getelementptr inbounds %struct.ref_s, ptr %24, i64 -1
  store ptr %25, ptr @o_stack, align 8, !tbaa !15
  br label %26

26:                                               ; preds = %1, %4, %13, %23
  %27 = phi i32 [ %14, %13 ], [ 5, %23 ], [ -17, %1 ], [ 0, %4 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local void @pop_estack(i32 noundef %0) local_unnamed_addr #0 {
  store ptr null, ptr @esfile, align 8, !tbaa !23
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %23, label %3

3:                                                ; preds = %1, %19
  %4 = phi i32 [ %21, %19 ], [ 0, %1 ]
  %5 = phi i32 [ %20, %19 ], [ 0, %1 ]
  %6 = sub i32 %4, %5
  %7 = zext i32 %6 to i64
  %8 = tail call ptr @ref_stack_index(ptr noundef nonnull @e_stack, i64 noundef %7) #7
  %9 = load i16, ptr %8, align 8, !tbaa !14
  %10 = and i16 %9, 16256
  %11 = icmp eq i16 %10, 3712
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = add nuw i32 %4, 1
  %14 = sub i32 %13, %5
  tail call void @ref_stack_pop(ptr noundef nonnull @e_stack, i32 noundef %14) #7
  %15 = getelementptr inbounds %struct.ref_s, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %18 = tail call i32 %16(ptr noundef %17) #7
  br label %19

19:                                               ; preds = %12, %3
  %20 = phi i32 [ %13, %12 ], [ %5, %3 ]
  %21 = add nuw i32 %4, 1
  %22 = icmp eq i32 %21, %0
  br i1 %22, label %23, label %3, !llvm.loop !33

23:                                               ; preds = %19, %1
  %24 = phi i32 [ 0, %1 ], [ %20, %19 ]
  %25 = sub i32 %0, %24
  tail call void @ref_stack_pop(ptr noundef nonnull @e_stack, i32 noundef %25) #7
  ret void
}

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @zpop(ptr noundef) local_unnamed_addr #2

declare i32 @array_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #2

declare void @make_invalid_file(ptr noundef) local_unnamed_addr #2

declare i32 @ref_stack_store(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i16 @op_find_index(ptr noundef) local_unnamed_addr #2

declare ptr @gs_struct_type_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"ref_stack_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !13, i64 40, !13, i64 44, !10, i64 48, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !10, i64 88, !13, i64 104, !13, i64 108, !13, i64 112, !7, i64 120}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ref_s", !11, i64 0, !8, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2}
!12 = !{!"short", !8, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!10, !12, i64 0}
!15 = !{!6, !7, i64 0}
!16 = !{!6, !7, i64 16}
!17 = !{i64 0, i64 2, !18, i64 2, i64 2, !18, i64 8, i64 8, !19, i64 8, i64 2, !18, i64 8, i64 4, !21, i64 8, i64 8, !19, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23}
!18 = !{!12, !12, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !8, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !8, i64 0}
!23 = !{!7, !7, i64 0}
!24 = !{!8, !8, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!10, !12, i64 2}
!28 = !{!6, !13, i64 64}
!29 = distinct !{!29, !26}
!30 = !{!31, !12, i64 18}
!31 = !{!"ref_stack_block_s", !10, i64 0, !10, i64 16}
!32 = distinct !{!32, !26}
!33 = distinct !{!33, !26}
!34 = distinct !{!34, !26}
!35 = distinct !{!35, !26}
!36 = distinct !{!36, !26}
!37 = distinct !{!37, !26}
!38 = !{!39, !7, i64 0}
!39 = !{!"", !7, i64 0, !7, i64 8}
!40 = !{!41, !7, i64 0}
!41 = !{!"gs_dual_memory_s", !7, i64 0, !8, i64 8, !13, i64 40, !13, i64 44, !7, i64 48, !13, i64 56, !13, i64 60}
!42 = !{!43, !7, i64 80}
!43 = !{!"gs_memory_s", !44, i64 0}
!44 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!45 = distinct !{!45, !26}
