; ModuleID = 'zpath.c'
source_filename = "zpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_point_s = type { double, double }

@igs = external local_unnamed_addr global ptr, align 8
@zpath_op_defs.op_defs_ = internal constant [15 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zclip }, %struct.op_def { ptr @.str.1, ptr @zclosepath }, %struct.op_def { ptr @.str.2, ptr @zcurrentclipoutside }, %struct.op_def { ptr @.str.3, ptr @zcurrentpoint }, %struct.op_def { ptr @.str.4, ptr @zcurveto }, %struct.op_def { ptr @.str.5, ptr @zeoclip }, %struct.op_def { ptr @.str.6, ptr @zinitclip }, %struct.op_def { ptr @.str.7, ptr @zlineto }, %struct.op_def { ptr @.str.8, ptr @zmoveto }, %struct.op_def { ptr @.str.9, ptr @znewpath }, %struct.op_def { ptr @.str.10, ptr @zrcurveto }, %struct.op_def { ptr @.str.11, ptr @zrlineto }, %struct.op_def { ptr @.str.12, ptr @zrmoveto }, %struct.op_def { ptr @.str.13, ptr @zsetclipoutside }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"0clip\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"0closepath\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"0.currentclipoutside\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"0currentpoint\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"6curveto\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"0eoclip\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"0initclip\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"2lineto\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"2moveto\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"0newpath\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"6rcurveto\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"2rlineto\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"2rmoveto\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"1.setclipoutside\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @zmoveto(ptr noundef %0) #0 {
  %2 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = load float, ptr %2, align 4, !tbaa !9
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !9
  %11 = fpext float %10 to double
  %12 = call i32 @gs_moveto(ptr noundef %6, double noundef %8, double noundef %11) #4, !callees !11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.ref_s, ptr %15, i64 -2
  store ptr %16, ptr @o_stack, align 8, !tbaa !12
  br label %17

17:                                               ; preds = %1, %5, %14
  %18 = phi i32 [ 0, %14 ], [ %3, %1 ], [ %12, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret i32 %18
}

declare i32 @gs_moveto(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zrmoveto(ptr noundef %0) #0 {
  %2 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = load float, ptr %2, align 4, !tbaa !9
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !9
  %11 = fpext float %10 to double
  %12 = call i32 @gs_rmoveto(ptr noundef %6, double noundef %8, double noundef %11) #4, !callees !11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.ref_s, ptr %15, i64 -2
  store ptr %16, ptr @o_stack, align 8, !tbaa !12
  br label %17

17:                                               ; preds = %1, %5, %14
  %18 = phi i32 [ 0, %14 ], [ %3, %1 ], [ %12, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret i32 %18
}

declare i32 @gs_rmoveto(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zlineto(ptr noundef %0) #0 {
  %2 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = load float, ptr %2, align 4, !tbaa !9
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !9
  %11 = fpext float %10 to double
  %12 = call i32 @gs_lineto(ptr noundef %6, double noundef %8, double noundef %11) #4, !callees !11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.ref_s, ptr %15, i64 -2
  store ptr %16, ptr @o_stack, align 8, !tbaa !12
  br label %17

17:                                               ; preds = %1, %5, %14
  %18 = phi i32 [ 0, %14 ], [ %3, %1 ], [ %12, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret i32 %18
}

declare i32 @gs_lineto(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zrlineto(ptr noundef %0) #0 {
  %2 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = load float, ptr %2, align 4, !tbaa !9
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !9
  %11 = fpext float %10 to double
  %12 = call i32 @gs_rlineto(ptr noundef %6, double noundef %8, double noundef %11) #4, !callees !11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.ref_s, ptr %15, i64 -2
  store ptr %16, ptr @o_stack, align 8, !tbaa !12
  br label %17

17:                                               ; preds = %1, %5, %14
  %18 = phi i32 [ 0, %14 ], [ %3, %1 ], [ %12, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret i32 %18
}

declare i32 @gs_rlineto(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zcurveto(ptr noundef %0) #0 {
  %2 = alloca [6 x float], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #4
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 6, ptr noundef nonnull %2) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = load float, ptr %2, align 16, !tbaa !9
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds [6 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !9
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds [6 x float], ptr %2, i64 0, i64 2
  %13 = load float, ptr %12, align 8, !tbaa !9
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds [6 x float], ptr %2, i64 0, i64 3
  %16 = load float, ptr %15, align 4, !tbaa !9
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds [6 x float], ptr %2, i64 0, i64 4
  %19 = load float, ptr %18, align 16, !tbaa !9
  %20 = fpext float %19 to double
  %21 = getelementptr inbounds [6 x float], ptr %2, i64 0, i64 5
  %22 = load float, ptr %21, align 4, !tbaa !9
  %23 = fpext float %22 to double
  %24 = call i32 @gs_curveto(ptr noundef %6, double noundef %8, double noundef %11, double noundef %14, double noundef %17, double noundef %20, double noundef %23) #4, !callees !18
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %28 = getelementptr inbounds %struct.ref_s, ptr %27, i64 -6
  store ptr %28, ptr @o_stack, align 8, !tbaa !12
  br label %29

29:                                               ; preds = %1, %5, %26
  %30 = phi i32 [ %3, %1 ], [ %24, %26 ], [ %24, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #4
  ret i32 %30
}

declare i32 @gs_curveto(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zrcurveto(ptr noundef %0) #0 {
  %2 = alloca [6 x float], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #4
  %3 = call i32 @num_params(ptr noundef %0, i32 noundef 6, ptr noundef nonnull %2) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = load float, ptr %2, align 16, !tbaa !9
  %8 = fpext float %7 to double
  %9 = getelementptr inbounds [6 x float], ptr %2, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !9
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds [6 x float], ptr %2, i64 0, i64 2
  %13 = load float, ptr %12, align 8, !tbaa !9
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds [6 x float], ptr %2, i64 0, i64 3
  %16 = load float, ptr %15, align 4, !tbaa !9
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds [6 x float], ptr %2, i64 0, i64 4
  %19 = load float, ptr %18, align 16, !tbaa !9
  %20 = fpext float %19 to double
  %21 = getelementptr inbounds [6 x float], ptr %2, i64 0, i64 5
  %22 = load float, ptr %21, align 4, !tbaa !9
  %23 = fpext float %22 to double
  %24 = call i32 @gs_rcurveto(ptr noundef %6, double noundef %8, double noundef %11, double noundef %14, double noundef %17, double noundef %20, double noundef %23) #4, !callees !18
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %28 = getelementptr inbounds %struct.ref_s, ptr %27, i64 -6
  store ptr %28, ptr @o_stack, align 8, !tbaa !12
  br label %29

29:                                               ; preds = %1, %5, %26
  %30 = phi i32 [ %3, %1 ], [ %24, %26 ], [ %24, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #4
  ret i32 %30
}

declare i32 @gs_rcurveto(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zclosepath(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call i32 @gs_closepath(ptr noundef %2) #4
  ret i32 %3
}

declare i32 @gs_closepath(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zpath_op_defs() local_unnamed_addr #2 {
  ret ptr @zpath_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zclip(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call i32 @gs_clip(ptr noundef %2) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcurrentclipoutside(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !19
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !20
  br label %11

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !12
  %7 = load ptr, ptr @igs, align 8, !tbaa !5
  %8 = tail call i32 @gs_currentclipoutside(ptr noundef %7) #4
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !21
  store i16 256, ptr %2, align 8, !tbaa !22
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentpoint(ptr noundef %0) #0 {
  %2 = alloca %struct.gs_point_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #4
  %3 = load ptr, ptr @igs, align 8, !tbaa !5
  %4 = call i32 @gs_currentpoint(ptr noundef %3, ptr noundef nonnull %2) #4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %8 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !19
  %9 = icmp ugt ptr %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !20
  br label %20

11:                                               ; preds = %6
  store ptr %7, ptr @o_stack, align 8, !tbaa !12
  %12 = load double, ptr %2, align 8, !tbaa !23
  %13 = fptrunc double %12 to float
  %14 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %15 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store float %13, ptr %15, align 8, !tbaa !21
  store i16 4096, ptr %14, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 0, i32 1
  %17 = load double, ptr %16, align 8, !tbaa !26
  %18 = fptrunc double %17 to float
  %19 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store float %18, ptr %19, align 8, !tbaa !21
  store i16 4096, ptr %7, align 8, !tbaa !22
  br label %20

20:                                               ; preds = %1, %11, %10
  %21 = phi i32 [ -16, %10 ], [ 0, %11 ], [ %4, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @zeoclip(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call i32 @gs_eoclip(ptr noundef %2) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zinitclip(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call i32 @gs_initclip(ptr noundef %2) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @znewpath(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !5
  %3 = tail call i32 @gs_newpath(ptr noundef %2) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetclipoutside(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !21
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #4
  br label %17

7:                                                ; preds = %1
  %8 = load ptr, ptr @igs, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !21
  %11 = zext i16 %10 to i32
  %12 = tail call i32 @gs_setclipoutside(ptr noundef %8, i32 noundef %11) #4
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load ptr, ptr @o_stack, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.ref_s, ptr %15, i64 -1
  store ptr %16, ptr @o_stack, align 8, !tbaa !12
  br label %17

17:                                               ; preds = %7, %14, %5
  %18 = phi i32 [ %6, %5 ], [ %12, %14 ], [ %12, %7 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare i32 @gs_clip(ptr noundef) local_unnamed_addr #1

declare i32 @gs_currentclipoutside(ptr noundef) local_unnamed_addr #1

declare i32 @gs_currentpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_eoclip(ptr noundef) local_unnamed_addr #1

declare i32 @gs_initclip(ptr noundef) local_unnamed_addr #1

declare i32 @gs_newpath(ptr noundef) local_unnamed_addr #1

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #1

declare i32 @gs_setclipoutside(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!11 = !{ptr @gs_lineto, ptr @gs_moveto, ptr @gs_rlineto, ptr @gs_rmoveto}
!12 = !{!13, !6, i64 0}
!13 = !{!"ref_stack_s", !6, i64 0, !6, i64 8, !6, i64 16, !14, i64 24, !17, i64 40, !17, i64 44, !14, i64 48, !17, i64 64, !17, i64 68, !17, i64 72, !17, i64 76, !17, i64 80, !14, i64 88, !17, i64 104, !17, i64 108, !17, i64 112, !6, i64 120}
!14 = !{!"ref_s", !15, i64 0, !7, i64 8}
!15 = !{!"tas_s", !16, i64 0, !16, i64 2}
!16 = !{!"short", !7, i64 0}
!17 = !{!"int", !7, i64 0}
!18 = !{ptr @gs_curveto, ptr @gs_rcurveto}
!19 = !{!13, !6, i64 16}
!20 = !{!13, !17, i64 64}
!21 = !{!7, !7, i64 0}
!22 = !{!14, !16, i64 0}
!23 = !{!24, !25, i64 0}
!24 = !{!"gs_point_s", !25, i64 0, !25, i64 8}
!25 = !{!"double", !7, i64 0}
!26 = !{!24, !25, i64 8}
