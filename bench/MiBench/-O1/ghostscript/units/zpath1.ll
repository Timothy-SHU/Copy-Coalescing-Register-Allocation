; ModuleID = 'zpath1.c'
source_filename = "zpath1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }

@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@zpath1_op_defs.op_defs_ = internal constant [13 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zarc }, %struct.op_def { ptr @.str.1, ptr @zarcn }, %struct.op_def { ptr @.str.2, ptr @zarct }, %struct.op_def { ptr @.str.3, ptr @zarcto }, %struct.op_def { ptr @.str.4, ptr @zclippath }, %struct.op_def { ptr @.str.5, ptr @zdashpath }, %struct.op_def { ptr @.str.6, ptr @zflattenpath }, %struct.op_def { ptr @.str.7, ptr @zpathforall }, %struct.op_def { ptr @.str.8, ptr @zreversepath }, %struct.op_def { ptr @.str.9, ptr @zstrokepath }, %struct.op_def { ptr @.str.10, ptr @zpathbbox }, %struct.op_def { ptr @.str.11, ptr @path_continue }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"5arc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"5arcn\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"5arct\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"5arcto\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"0clippath\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"0.dashpath\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"0flattenpath\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"4pathforall\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"0reversepath\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"0strokepath\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"0.pathbbox\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"0%path_continue\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@e_stack = external global %struct.ref_stack_s, align 8
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"pathforall\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"path_cleanup\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @zarc(ptr noundef %0) #0 {
  %2 = alloca [5 x float], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #5
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = load float, ptr %2, align 16, !tbaa !9
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds [5 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !9
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds [5 x float], ptr %2, i64 0, i64 2
  %13 = load float, ptr %12, align 8, !tbaa !9
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds [5 x float], ptr %2, i64 0, i64 3
  %16 = load float, ptr %15, align 4, !tbaa !9
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds [5 x float], ptr %2, i64 0, i64 4
  %19 = load float, ptr %18, align 16, !tbaa !9
  %20 = fpext float %19 to double
  %21 = call i32 @gs_arc(ptr noundef %6, double noundef %8, double noundef %11, double noundef %14, double noundef %17, double noundef %20) #5, !callees !11
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %25 = getelementptr inbounds %struct.ref_s, ptr %24, i64 -5
  store ptr %25, ptr @o_stack, align 8, !tbaa !12
  br label %26

26:                                               ; preds = %1, %5, %23
  %27 = phi i32 [ %3, %1 ], [ %21, %23 ], [ %21, %5 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #5
  ret i32 %27
}

declare i32 @gs_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zarcn(ptr noundef %0) #0 {
  %2 = alloca [5 x float], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #5
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = load float, ptr %2, align 16, !tbaa !9
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds [5 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !9
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds [5 x float], ptr %2, i64 0, i64 2
  %13 = load float, ptr %12, align 8, !tbaa !9
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds [5 x float], ptr %2, i64 0, i64 3
  %16 = load float, ptr %15, align 4, !tbaa !9
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds [5 x float], ptr %2, i64 0, i64 4
  %19 = load float, ptr %18, align 16, !tbaa !9
  %20 = fpext float %19 to double
  %21 = call i32 @gs_arcn(ptr noundef %6, double noundef %8, double noundef %11, double noundef %14, double noundef %17, double noundef %20) #5, !callees !11
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %25 = getelementptr inbounds %struct.ref_s, ptr %24, i64 -5
  store ptr %25, ptr @o_stack, align 8, !tbaa !12
  br label %26

26:                                               ; preds = %1, %5, %23
  %27 = phi i32 [ %3, %1 ], [ %21, %23 ], [ %21, %5 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #5
  ret i32 %27
}

declare i32 @gs_arcn(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zarct(ptr noundef %0) #0 {
  %2 = alloca [5 x float], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #5
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = load float, ptr %2, align 16, !tbaa !9
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds [5 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !9
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds [5 x float], ptr %2, i64 0, i64 2
  %13 = load float, ptr %12, align 8, !tbaa !9
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds [5 x float], ptr %2, i64 0, i64 3
  %16 = load float, ptr %15, align 4, !tbaa !9
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds [5 x float], ptr %2, i64 0, i64 4
  %19 = load float, ptr %18, align 16, !tbaa !9
  %20 = fpext float %19 to double
  %21 = call i32 @gs_arcto(ptr noundef %6, double noundef %8, double noundef %11, double noundef %14, double noundef %17, double noundef %20, ptr noundef null) #5
  br label %22

22:                                               ; preds = %1, %5
  %23 = phi i32 [ %21, %5 ], [ %3, %1 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.ref_s, ptr %26, i64 -5
  store ptr %27, ptr @o_stack, align 8, !tbaa !12
  br label %28

28:                                               ; preds = %22, %25
  %29 = phi i32 [ 0, %25 ], [ %23, %22 ]
  ret i32 %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zpath1_op_defs() local_unnamed_addr #3 {
  ret ptr @zpath1_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zarcto(ptr noundef %0) #0 {
  %2 = alloca [5 x float], align 16
  %3 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #5
  %4 = call i32 @num_params(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %2) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @igs, align 8, !tbaa !5
  %8 = load float, ptr %2, align 16, !tbaa !9
  %9 = fpext float %8 to double
  %10 = getelementptr inbounds [5 x float], ptr %2, i64 0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !9
  %12 = fpext float %11 to double
  %13 = getelementptr inbounds [5 x float], ptr %2, i64 0, i64 2
  %14 = load float, ptr %13, align 8, !tbaa !9
  %15 = fpext float %14 to double
  %16 = getelementptr inbounds [5 x float], ptr %2, i64 0, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !9
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds [5 x float], ptr %2, i64 0, i64 4
  %20 = load float, ptr %19, align 16, !tbaa !9
  %21 = fpext float %20 to double
  %22 = call i32 @gs_arcto(ptr noundef %7, double noundef %9, double noundef %12, double noundef %15, double noundef %18, double noundef %21, ptr noundef nonnull %3) #5
  br label %23

23:                                               ; preds = %1, %6
  %24 = phi i32 [ %22, %6 ], [ %4, %1 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #5
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load float, ptr %3, align 16, !tbaa !9
  %28 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -4
  %29 = getelementptr %struct.ref_s, ptr %0, i64 -4, i32 1
  store float %27, ptr %29, align 8, !tbaa !18
  store i16 4096, ptr %28, align 8, !tbaa !19
  %30 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !9
  %32 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -3
  %33 = getelementptr %struct.ref_s, ptr %0, i64 -3, i32 1
  store float %31, ptr %33, align 8, !tbaa !18
  store i16 4096, ptr %32, align 8, !tbaa !19
  %34 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %35 = load float, ptr %34, align 8, !tbaa !9
  %36 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %37 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  store float %35, ptr %37, align 8, !tbaa !18
  store i16 4096, ptr %36, align 8, !tbaa !19
  %38 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %39 = load float, ptr %38, align 4, !tbaa !9
  %40 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %41 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  store float %39, ptr %41, align 8, !tbaa !18
  store i16 4096, ptr %40, align 8, !tbaa !19
  %42 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %43 = getelementptr inbounds %struct.ref_s, ptr %42, i64 -1
  store ptr %43, ptr @o_stack, align 8, !tbaa !12
  br label %44

44:                                               ; preds = %23, %26
  %45 = phi i32 [ 0, %26 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @zclippath(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call i32 @gs_clippath(ptr noundef %2) #5
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zdashpath(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call i32 @gs_dashpath(ptr noundef %2) #5
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zflattenpath(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call i32 @gs_flattenpath(ptr noundef %2) #5
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zpathforall(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -3
  %3 = load i16, ptr %2, align 8, !tbaa !19
  %4 = and i16 %3, 15552
  %5 = icmp eq i16 %4, 1216
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_proc_failed(ptr noundef nonnull %2) #5
  br label %64

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %10 = load i16, ptr %9, align 8, !tbaa !19
  %11 = and i16 %10, 15552
  %12 = icmp eq i16 %11, 1216
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @check_proc_failed(ptr noundef nonnull %9) #5
  br label %64

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %17 = load i16, ptr %16, align 8, !tbaa !19
  %18 = and i16 %17, 15552
  %19 = icmp eq i16 %18, 1216
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @check_proc_failed(ptr noundef nonnull %16) #5
  br label %64

22:                                               ; preds = %15
  %23 = load i16, ptr %0, align 8, !tbaa !19
  %24 = and i16 %23, 15552
  %25 = icmp eq i16 %24, 1216
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @check_proc_failed(ptr noundef nonnull %0) #5
  br label %64

28:                                               ; preds = %22
  %29 = load ptr, ptr @e_stack, align 8, !tbaa !12
  %30 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !20
  %31 = getelementptr inbounds %struct.ref_s, ptr %30, i64 -8
  %32 = icmp ugt ptr %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 8) #5
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %64

36:                                               ; preds = %33, %28
  %37 = load ptr, ptr @gs_imemory, align 8, !tbaa !21
  %38 = tail call ptr @gs_path_enum_alloc(ptr noundef %37, ptr noundef nonnull @.str.12) #5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %64, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @igs, align 8, !tbaa !5
  %42 = tail call i32 @gs_path_enum_init(ptr noundef nonnull %38, ptr noundef %41) #5
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load ptr, ptr @gs_imemory, align 8, !tbaa !21
  %46 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %45, i64 0, i32 11
  %47 = load ptr, ptr %46, align 8, !tbaa !23
  tail call void %47(ptr noundef %45, ptr noundef nonnull %38, ptr noundef nonnull @.str.13) #5
  br label %64

48:                                               ; preds = %40
  %49 = load ptr, ptr @e_stack, align 8, !tbaa !12
  %50 = getelementptr inbounds %struct.ref_s, ptr %49, i64 1
  store ptr %50, ptr @e_stack, align 8, !tbaa !12
  %51 = getelementptr inbounds %struct.ref_s, ptr %49, i64 1, i32 1
  store ptr @path_cleanup, ptr %51, align 8, !tbaa !18
  store i16 3712, ptr %50, align 8, !tbaa !19
  %52 = getelementptr inbounds %struct.ref_s, ptr %49, i64 1, i32 0, i32 1
  store i16 2, ptr %52, align 2, !tbaa !26
  %53 = getelementptr inbounds %struct.ref_s, ptr %49, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %53, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  %54 = getelementptr inbounds %struct.ref_s, ptr %49, i64 6
  store ptr %54, ptr @e_stack, align 8, !tbaa !12
  %55 = getelementptr inbounds %struct.ref_s, ptr %49, i64 6, i32 1
  store ptr %38, ptr %55, align 8, !tbaa !18
  %56 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !27
  %57 = trunc i32 %56 to i16
  %58 = add i16 %57, 2048
  store i16 %58, ptr %54, align 8, !tbaa !19
  %59 = getelementptr inbounds %struct.ref_s, ptr %49, i64 7
  store ptr %59, ptr @e_stack, align 8, !tbaa !12
  %60 = getelementptr inbounds %struct.ref_s, ptr %49, i64 7, i32 1
  store ptr @path_continue, ptr %60, align 8, !tbaa !18
  store i16 3968, ptr %59, align 8, !tbaa !19
  %61 = getelementptr inbounds %struct.ref_s, ptr %49, i64 7, i32 0, i32 1
  store i16 0, ptr %61, align 2, !tbaa !26
  %62 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %63 = getelementptr inbounds %struct.ref_s, ptr %62, i64 -4
  store ptr %63, ptr @o_stack, align 8, !tbaa !12
  br label %64

64:                                               ; preds = %36, %33, %48, %44, %26, %20, %13, %6
  %65 = phi i32 [ %42, %44 ], [ 5, %48 ], [ %34, %33 ], [ %27, %26 ], [ %21, %20 ], [ %14, %13 ], [ %7, %6 ], [ -25, %36 ]
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal i32 @zreversepath(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call i32 @gs_reversepath(ptr noundef %2) #5
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zstrokepath(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call i32 @gs_strokepath(ptr noundef %2) #5
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zpathbbox(ptr noundef %0) #0 {
  %2 = alloca %struct.gs_rect_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #5
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !18
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %37

8:                                                ; preds = %1
  %9 = load ptr, ptr @igs, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !18
  %12 = zext i16 %11 to i32
  %13 = call i32 @gs_upathbbox(ptr noundef %9, ptr noundef nonnull %2, i32 noundef %12) #5
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 3
  %17 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !20
  %18 = icmp ugt ptr %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 3, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  br label %37

20:                                               ; preds = %15
  store ptr %16, ptr @o_stack, align 8, !tbaa !12
  %21 = load double, ptr %2, align 8, !tbaa !29
  %22 = fptrunc double %21 to float
  store float %22, ptr %10, align 8, !tbaa !18
  store i16 4096, ptr %0, align 8, !tbaa !19
  %23 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 0, i32 1
  %24 = load double, ptr %23, align 8, !tbaa !33
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %27 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store float %25, ptr %27, align 8, !tbaa !18
  store i16 4096, ptr %26, align 8, !tbaa !19
  %28 = getelementptr inbounds %struct.gs_rect_s, ptr %2, i64 0, i32 1
  %29 = load double, ptr %28, align 8, !tbaa !34
  %30 = fptrunc double %29 to float
  %31 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %32 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store float %30, ptr %32, align 8, !tbaa !18
  store i16 4096, ptr %31, align 8, !tbaa !19
  %33 = getelementptr inbounds %struct.gs_rect_s, ptr %2, i64 0, i32 1, i32 1
  %34 = load double, ptr %33, align 8, !tbaa !35
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %struct.ref_s, ptr %0, i64 3, i32 1
  store float %35, ptr %36, align 8, !tbaa !18
  store i16 4096, ptr %16, align 8, !tbaa !19
  br label %37

37:                                               ; preds = %8, %20, %19, %6
  %38 = phi i32 [ -16, %19 ], [ 0, %20 ], [ %7, %6 ], [ %13, %8 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @path_continue(ptr noundef %0) #0 {
  %2 = alloca [3 x %struct.gs_point_s], align 16
  %3 = load ptr, ptr @e_stack, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #5
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !20
  %7 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = icmp slt i64 %10, 96
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 6, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !28
  br label %80

13:                                               ; preds = %1
  %14 = call i32 @gs_path_enum_next(ptr noundef %5, ptr noundef nonnull %2) #5
  switch i32 %14, label %80 [
    i32 0, label %15
    i32 1, label %23
    i32 2, label %36
    i32 3, label %49
    i32 4, label %70
  ]

15:                                               ; preds = %13
  %16 = load ptr, ptr @e_stack, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.ref_s, ptr %16, i64 -6
  store ptr %17, ptr @e_stack, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.ref_s, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !18
  call void @gs_path_enum_cleanup(ptr noundef %19) #5
  %20 = load ptr, ptr @gs_imemory, align 8, !tbaa !21
  %21 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %20, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !23
  call void %22(ptr noundef %20, ptr noundef %19, ptr noundef nonnull @.str.13) #5
  br label %80

23:                                               ; preds = %13
  %24 = load ptr, ptr @e_stack, align 8, !tbaa !12
  %25 = getelementptr inbounds %struct.ref_s, ptr %24, i64 2
  %26 = getelementptr inbounds %struct.ref_s, ptr %24, i64 -4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %26, i64 16, i1 false), !tbaa.struct !36
  %27 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %28 = load double, ptr %2, align 16, !tbaa !40
  %29 = fptrunc double %28 to float
  %30 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %31 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store float %29, ptr %31, align 8, !tbaa !18
  store i16 4096, ptr %30, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 0, i32 1
  %33 = load double, ptr %32, align 8, !tbaa !41
  %34 = fptrunc double %33 to float
  %35 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store float %34, ptr %35, align 8, !tbaa !18
  store i16 4096, ptr %27, align 8, !tbaa !19
  store ptr %27, ptr @o_stack, align 8, !tbaa !12
  br label %74

36:                                               ; preds = %13
  %37 = load ptr, ptr @e_stack, align 8, !tbaa !12
  %38 = getelementptr inbounds %struct.ref_s, ptr %37, i64 2
  %39 = getelementptr inbounds %struct.ref_s, ptr %37, i64 -3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %39, i64 16, i1 false), !tbaa.struct !36
  %40 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %41 = load double, ptr %2, align 16, !tbaa !40
  %42 = fptrunc double %41 to float
  %43 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %44 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store float %42, ptr %44, align 8, !tbaa !18
  store i16 4096, ptr %43, align 8, !tbaa !19
  %45 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 0, i32 1
  %46 = load double, ptr %45, align 8, !tbaa !41
  %47 = fptrunc double %46 to float
  %48 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store float %47, ptr %48, align 8, !tbaa !18
  store i16 4096, ptr %40, align 8, !tbaa !19
  store ptr %40, ptr @o_stack, align 8, !tbaa !12
  br label %74

49:                                               ; preds = %13
  %50 = load ptr, ptr @e_stack, align 8, !tbaa !12
  %51 = getelementptr inbounds %struct.ref_s, ptr %50, i64 2
  %52 = getelementptr inbounds %struct.ref_s, ptr %50, i64 -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 8 dereferenceable(16) %52, i64 16, i1 false), !tbaa.struct !36
  br label %53

53:                                               ; preds = %53, %49
  %54 = phi ptr [ %58, %53 ], [ %0, %49 ]
  %55 = phi i32 [ %57, %53 ], [ 3, %49 ]
  %56 = phi ptr [ %67, %53 ], [ %2, %49 ]
  %57 = add nsw i32 %55, -1
  %58 = getelementptr inbounds %struct.ref_s, ptr %54, i64 2
  %59 = load double, ptr %56, align 8, !tbaa !40
  %60 = fptrunc double %59 to float
  %61 = getelementptr inbounds %struct.ref_s, ptr %54, i64 1
  %62 = getelementptr inbounds %struct.ref_s, ptr %54, i64 1, i32 1
  store float %60, ptr %62, align 8, !tbaa !18
  store i16 4096, ptr %61, align 8, !tbaa !19
  %63 = getelementptr inbounds %struct.gs_point_s, ptr %56, i64 0, i32 1
  %64 = load double, ptr %63, align 8, !tbaa !41
  %65 = fptrunc double %64 to float
  %66 = getelementptr inbounds %struct.ref_s, ptr %54, i64 2, i32 1
  store float %65, ptr %66, align 8, !tbaa !18
  store i16 4096, ptr %58, align 8, !tbaa !19
  %67 = getelementptr inbounds %struct.gs_point_s, ptr %56, i64 1
  %68 = icmp eq i32 %57, 0
  br i1 %68, label %69, label %53, !llvm.loop !42

69:                                               ; preds = %53
  store ptr %58, ptr @o_stack, align 8, !tbaa !12
  br label %74

70:                                               ; preds = %13
  %71 = load ptr, ptr @e_stack, align 8, !tbaa !12
  %72 = getelementptr inbounds %struct.ref_s, ptr %71, i64 2
  %73 = getelementptr inbounds %struct.ref_s, ptr %71, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %72, ptr noundef nonnull align 8 dereferenceable(16) %73, i64 16, i1 false), !tbaa.struct !36
  br label %74

74:                                               ; preds = %70, %69, %36, %23
  %75 = load ptr, ptr @e_stack, align 8, !tbaa !12
  %76 = getelementptr inbounds %struct.ref_s, ptr %75, i64 1
  store ptr %76, ptr @e_stack, align 8, !tbaa !12
  %77 = getelementptr inbounds %struct.ref_s, ptr %75, i64 1, i32 1
  store ptr @path_continue, ptr %77, align 8, !tbaa !18
  store i16 3968, ptr %76, align 8, !tbaa !19
  %78 = getelementptr inbounds %struct.ref_s, ptr %75, i64 1, i32 0, i32 1
  store i16 0, ptr %78, align 2, !tbaa !26
  %79 = getelementptr inbounds %struct.ref_s, ptr %75, i64 2
  store ptr %79, ptr @e_stack, align 8, !tbaa !12
  br label %80

80:                                               ; preds = %13, %74, %15, %12
  %81 = phi i32 [ -16, %12 ], [ 5, %74 ], [ 14, %15 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #5
  ret i32 %81
}

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_arcto(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_clippath(ptr noundef) local_unnamed_addr #1

declare i32 @gs_dashpath(ptr noundef) local_unnamed_addr #1

declare i32 @gs_flattenpath(ptr noundef) local_unnamed_addr #1

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #1

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @gs_path_enum_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_path_enum_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @path_cleanup(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 6, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  tail call void @gs_path_enum_cleanup(ptr noundef %4) #5
  %5 = load ptr, ptr @gs_imemory, align 8, !tbaa !21
  %6 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  tail call void %7(ptr noundef %5, ptr noundef %4, ptr noundef nonnull @.str.13) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @gs_path_enum_cleanup(ptr noundef) local_unnamed_addr #1

declare i32 @gs_reversepath(ptr noundef) local_unnamed_addr #1

declare i32 @gs_strokepath(ptr noundef) local_unnamed_addr #1

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #1

declare i32 @gs_upathbbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gs_path_enum_next(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = !{ptr @gs_arc, ptr @gs_arcn}
!12 = !{!13, !6, i64 0}
!13 = !{!"ref_stack_s", !6, i64 0, !6, i64 8, !6, i64 16, !14, i64 24, !17, i64 40, !17, i64 44, !14, i64 48, !17, i64 64, !17, i64 68, !17, i64 72, !17, i64 76, !17, i64 80, !14, i64 88, !17, i64 104, !17, i64 108, !17, i64 112, !6, i64 120}
!14 = !{!"ref_s", !15, i64 0, !7, i64 8}
!15 = !{!"tas_s", !16, i64 0, !16, i64 2}
!16 = !{!"short", !7, i64 0}
!17 = !{!"int", !7, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{!14, !16, i64 0}
!20 = !{!13, !6, i64 16}
!21 = !{!22, !6, i64 0}
!22 = !{!"gs_dual_memory_s", !6, i64 0, !7, i64 8, !17, i64 40, !17, i64 44, !6, i64 48, !17, i64 56, !17, i64 60}
!23 = !{!24, !6, i64 88}
!24 = !{!"gs_memory_s", !25, i64 0}
!25 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!26 = !{!14, !16, i64 2}
!27 = !{!22, !17, i64 40}
!28 = !{!13, !17, i64 64}
!29 = !{!30, !32, i64 0}
!30 = !{!"gs_rect_s", !31, i64 0, !31, i64 16}
!31 = !{!"gs_point_s", !32, i64 0, !32, i64 8}
!32 = !{!"double", !7, i64 0}
!33 = !{!30, !32, i64 8}
!34 = !{!30, !32, i64 16}
!35 = !{!30, !32, i64 24}
!36 = !{i64 0, i64 2, !37, i64 2, i64 2, !37, i64 8, i64 8, !38, i64 8, i64 2, !37, i64 8, i64 4, !9, i64 8, i64 8, !38, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5}
!37 = !{!16, !16, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"long", !7, i64 0}
!40 = !{!31, !32, i64 0}
!41 = !{!31, !32, i64 8}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.unroll.disable"}
