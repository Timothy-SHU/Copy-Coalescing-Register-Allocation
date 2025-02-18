; ModuleID = 'blender/source/blender/blenlib/intern/rct.c'
source_filename = "blender/source/blender/blenlib/intern/rct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rcti = type { i32, i32, i32, i32 }
%struct.rctf = type { float, float, float, float }

@.str = private unnamed_addr constant [62 x i8] c"%s: xmin %.8f, xmax %.8f, ymin %.8f, ymax %.8f (%.12fx%.12f)\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"%s: xmin %d, xmax %d, ymin %d, ymax %d (%dx%d)\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rcti_is_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = load i32, ptr %0, align 4, !tbaa !39
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !40
  %9 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !41
  %11 = icmp sle i32 %8, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi i8 [ 1, %1 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rctf_is_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !42
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fcmp ugt float %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %10 = load float, ptr %9, align 4, !tbaa !47
  %11 = fcmp ole float %8, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi i8 [ 1, %1 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rcti_isect_x(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !39
  %4 = icmp sgt i32 %3, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp sge i32 %7, %1
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i8 [ 0, %2 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rcti_isect_y(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !41
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !40
  %9 = icmp sge i32 %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 0, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rcti_isect_pt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4, !tbaa !39
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !41
  %13 = icmp sgt i32 %12, %2
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !40
  %17 = icmp sge i32 %16, %2
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %14, %10, %6, %3
  %20 = phi i8 [ 0, %3 ], [ 0, %6 ], [ 0, %10 ], [ %18, %14 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rcti_isect_pt_v(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !48
  %4 = load i32, ptr %0, align 4, !tbaa !39
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = icmp sgt i32 %3, %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i32, ptr %1, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !48
  %13 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !41
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !40
  %19 = icmp sle i32 %12, %18
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %16, %10, %6, %2
  %22 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 0, %10 ], [ %20, %16 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rctf_isect_x(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load float, ptr %0, align 4, !tbaa !45
  %4 = fcmp ogt float %3, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !42
  %8 = fcmp uge float %7, %1
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i8 [ 0, %2 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rctf_isect_y(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %4 = load float, ptr %3, align 4, !tbaa !47
  %5 = fcmp ogt float %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = fcmp uge float %8, %1
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 0, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rctf_isect_pt(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fcmp ogt float %4, %1
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !42
  %9 = fcmp olt float %8, %1
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %12 = load float, ptr %11, align 4, !tbaa !47
  %13 = fcmp ogt float %12, %2
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %16 = load float, ptr %15, align 4, !tbaa !46
  %17 = fcmp uge float %16, %2
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %14, %10, %6, %3
  %20 = phi i8 [ 0, %3 ], [ 0, %6 ], [ 0, %10 ], [ %18, %14 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rctf_isect_pt_v(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fcmp olt float %3, %4
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !42
  %9 = fcmp ogt float %3, %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = fcmp olt float %12, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !46
  %19 = fcmp ule float %12, %18
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %16, %10, %6, %2
  %22 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 0, %10 ], [ %20, %16 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rctf_inside_rctf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load float, ptr %0, align 4, !tbaa !45
  %4 = load float, ptr %1, align 4, !tbaa !45
  %5 = fcmp ugt float %3, %4
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !42
  %9 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !42
  %11 = fcmp ult float %8, %10
  br i1 %11, label %25, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !47
  %17 = fcmp ugt float %14, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !46
  %21 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %22 = load float, ptr %21, align 4, !tbaa !46
  %23 = fcmp oge float %20, %22
  %24 = zext i1 %23 to i8
  br label %25

25:                                               ; preds = %18, %12, %6, %2
  %26 = phi i8 [ 0, %12 ], [ 0, %6 ], [ 0, %2 ], [ %24, %18 ]
  ret i8 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rcti_inside_rcti(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !39
  %4 = load i32, ptr %1, align 4, !tbaa !39
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %25, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !41
  %15 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !41
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !40
  %21 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !40
  %23 = icmp sge i32 %20, %22
  %24 = zext i1 %23 to i8
  br label %25

25:                                               ; preds = %18, %12, %6, %2
  %26 = phi i8 [ 0, %12 ], [ 0, %6 ], [ 0, %2 ], [ %24, %18 ]
  ret i8 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rcti_isect_segment(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4, !tbaa !48
  %5 = load i32, ptr %0, align 4, !tbaa !39
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 4, !tbaa !48
  %9 = icmp slt i32 %8, %5
  br i1 %9, label %107, label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = icmp sgt i32 %4, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, ptr %2, align 4, !tbaa !48
  %16 = icmp sgt i32 %15, %12
  br i1 %16, label %107, label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds i32, ptr %1, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !48
  %20 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !41
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds i32, ptr %2, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !48
  %26 = icmp slt i32 %25, %21
  br i1 %26, label %107, label %27

27:                                               ; preds = %23, %17
  %28 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !40
  %30 = icmp sgt i32 %19, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds i32, ptr %2, i64 1
  %33 = load i32, ptr %32, align 4, !tbaa !48
  %34 = icmp sgt i32 %33, %29
  br i1 %34, label %107, label %35

35:                                               ; preds = %31, %27
  %36 = or i1 %22, %30
  %37 = or i1 %13, %36
  %38 = or i1 %6, %37
  br i1 %38, label %39, label %107

39:                                               ; preds = %35
  %40 = load i32, ptr %2, align 4, !tbaa !48
  %41 = icmp slt i32 %40, %5
  %42 = icmp sgt i32 %40, %12
  %43 = or i1 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds i32, ptr %2, i64 1
  %46 = load i32, ptr %45, align 4, !tbaa !48
  %47 = icmp slt i32 %46, %21
  %48 = icmp sgt i32 %46, %29
  %49 = or i1 %47, %48
  br i1 %49, label %50, label %107

50:                                               ; preds = %39, %44
  %51 = sub nsw i32 %40, %4
  %52 = sub nsw i32 %29, %21
  %53 = mul nsw i32 %51, %52
  %54 = getelementptr inbounds i32, ptr %2, i64 1
  %55 = load i32, ptr %54, align 4, !tbaa !48
  %56 = sub nsw i32 %55, %19
  %57 = icmp eq i32 %53, 0
  br i1 %57, label %107, label %58

58:                                               ; preds = %50
  %59 = sitofp i32 %53 to double
  %60 = sub nsw i32 %19, %21
  %61 = sub nsw i32 %4, %5
  %62 = mul i32 %61, %52
  %63 = sub i32 0, %62
  %64 = sitofp i32 %63 to double
  %65 = fdiv double %64, %59
  %66 = mul nsw i32 %51, %60
  %67 = mul nsw i32 %56, %61
  %68 = sub nsw i32 %66, %67
  %69 = sitofp i32 %68 to double
  %70 = fdiv double %69, %59
  %71 = fcmp ult double %65, 0.000000e+00
  %72 = fcmp ugt double %65, 1.000000e+00
  %73 = or i1 %71, %72
  %74 = fcmp ult double %70, 0.000000e+00
  %75 = select i1 %73, i1 true, i1 %74
  %76 = fcmp ugt double %70, 1.000000e+00
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %78, label %107

78:                                               ; preds = %58
  %79 = sub nsw i32 %21, %29
  %80 = mul nsw i32 %51, %79
  %81 = sub nsw i32 %12, %5
  %82 = mul nsw i32 %56, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %107, label %84

84:                                               ; preds = %78
  %85 = sub nsw i32 %80, %82
  %86 = sitofp i32 %85 to double
  %87 = sub nsw i32 %19, %29
  %88 = mul nsw i32 %87, %81
  %89 = sub nsw i32 %4, %5
  %90 = mul nsw i32 %79, %89
  %91 = sub nsw i32 %88, %90
  %92 = sitofp i32 %91 to double
  %93 = fdiv double %92, %86
  %94 = mul nsw i32 %51, %87
  %95 = mul nsw i32 %56, %89
  %96 = sub nsw i32 %94, %95
  %97 = sitofp i32 %96 to double
  %98 = fdiv double %97, %86
  %99 = fcmp oge double %93, 0.000000e+00
  %100 = fcmp ole double %93, 1.000000e+00
  %101 = and i1 %99, %100
  %102 = fcmp oge double %98, 0.000000e+00
  %103 = select i1 %101, i1 %102, i1 false
  %104 = fcmp ole double %98, 1.000000e+00
  %105 = select i1 %103, i1 %104, i1 false
  %106 = zext i1 %105 to i8
  br label %107

107:                                              ; preds = %50, %84, %78, %35, %58, %44, %31, %23, %14, %7
  %108 = phi i8 [ 0, %7 ], [ 0, %14 ], [ 0, %23 ], [ 0, %31 ], [ 1, %44 ], [ 1, %58 ], [ 1, %35 ], [ %106, %84 ], [ 1, %78 ], [ 1, %50 ]
  ret i8 %108
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rctf_isect_segment(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load float, ptr %0, align 4, !tbaa !45
  %6 = fcmp olt float %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load float, ptr %2, align 4, !tbaa !49
  %9 = fcmp olt float %8, %5
  br i1 %9, label %108, label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !42
  %13 = fcmp ogt float %4, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load float, ptr %2, align 4, !tbaa !49
  %16 = fcmp ogt float %15, %12
  br i1 %16, label %108, label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !49
  %20 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %21 = load float, ptr %20, align 4, !tbaa !47
  %22 = fcmp olt float %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds float, ptr %2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !49
  %26 = fcmp olt float %25, %21
  br i1 %26, label %108, label %27

27:                                               ; preds = %23, %17
  %28 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !46
  %30 = fcmp ogt float %19, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds float, ptr %2, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !49
  %34 = fcmp ogt float %33, %29
  br i1 %34, label %108, label %35

35:                                               ; preds = %31, %27
  %36 = or i1 %6, %13
  %37 = or i1 %36, %22
  %38 = or i1 %37, %30
  br i1 %38, label %39, label %108

39:                                               ; preds = %35
  %40 = load float, ptr %2, align 4, !tbaa !49
  %41 = fcmp olt float %40, %5
  %42 = fcmp ogt float %40, %12
  %43 = or i1 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds float, ptr %2, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !49
  %47 = fcmp olt float %46, %21
  %48 = fcmp ogt float %46, %29
  %49 = or i1 %47, %48
  br i1 %49, label %50, label %108

50:                                               ; preds = %39, %44
  %51 = fsub float %40, %4
  %52 = fsub float %29, %21
  %53 = getelementptr inbounds float, ptr %2, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !49
  %55 = fsub float %54, %19
  %56 = fsub float %5, %5
  %57 = fneg float %55
  %58 = fmul float %56, %57
  %59 = tail call float @llvm.fmuladd.f32(float %51, float %52, float %58)
  %60 = fcmp oeq float %59, 0.000000e+00
  br i1 %60, label %108, label %61

61:                                               ; preds = %50
  %62 = fpext float %59 to double
  %63 = fsub float %19, %21
  %64 = fsub float %4, %5
  %65 = fneg float %64
  %66 = fmul float %52, %65
  %67 = tail call float @llvm.fmuladd.f32(float %63, float %56, float %66)
  %68 = fpext float %67 to double
  %69 = fdiv double %68, %62
  %70 = fmul float %55, %65
  %71 = tail call float @llvm.fmuladd.f32(float %63, float %51, float %70)
  %72 = fpext float %71 to double
  %73 = fdiv double %72, %62
  %74 = fcmp ult double %69, 0.000000e+00
  %75 = fcmp ugt double %69, 1.000000e+00
  %76 = or i1 %74, %75
  %77 = fcmp ult double %73, 0.000000e+00
  %78 = select i1 %76, i1 true, i1 %77
  %79 = fcmp ugt double %73, 1.000000e+00
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %61
  %82 = fsub float %21, %29
  %83 = fsub float %12, %5
  %84 = fmul float %83, %57
  %85 = tail call float @llvm.fmuladd.f32(float %51, float %82, float %84)
  %86 = fcmp oeq float %85, 0.000000e+00
  br i1 %86, label %108, label %87

87:                                               ; preds = %81
  %88 = fpext float %85 to double
  %89 = fsub float %19, %29
  %90 = fsub float %4, %5
  %91 = fneg float %90
  %92 = fmul float %82, %91
  %93 = tail call float @llvm.fmuladd.f32(float %89, float %83, float %92)
  %94 = fpext float %93 to double
  %95 = fdiv double %94, %88
  %96 = fmul float %55, %91
  %97 = tail call float @llvm.fmuladd.f32(float %89, float %51, float %96)
  %98 = fpext float %97 to double
  %99 = fdiv double %98, %88
  %100 = fcmp oge double %95, 0.000000e+00
  %101 = fcmp ole double %95, 1.000000e+00
  %102 = and i1 %100, %101
  %103 = fcmp oge double %99, 0.000000e+00
  %104 = select i1 %102, i1 %103, i1 false
  %105 = fcmp ole double %99, 1.000000e+00
  %106 = select i1 %104, i1 %105, i1 false
  %107 = zext i1 %106 to i8
  br label %108

108:                                              ; preds = %50, %87, %81, %44, %35, %61, %31, %23, %14, %7
  %109 = phi i8 [ 0, %7 ], [ 0, %14 ], [ 0, %23 ], [ 0, %31 ], [ 1, %61 ], [ 1, %35 ], [ 1, %44 ], [ %107, %87 ], [ 1, %81 ], [ 1, %50 ]
  ret i8 %109
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rcti_isect_circle(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load i32, ptr %0, align 4, !tbaa !39
  %6 = sitofp i32 %5 to float
  %7 = fcmp ult float %4, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = sitofp i32 %10 to float
  %12 = fcmp ugt float %4, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %8, %3
  %14 = fcmp olt float %4, %6
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = fsub float %6, %4
  br label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !34
  %20 = sitofp i32 %19 to float
  %21 = fsub float %4, %20
  br label %22

22:                                               ; preds = %15, %17, %8
  %23 = phi float [ 0.000000e+00, %8 ], [ %16, %15 ], [ %21, %17 ]
  %24 = getelementptr inbounds float, ptr %1, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !49
  %26 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !41
  %28 = sitofp i32 %27 to float
  %29 = fcmp ult float %25, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !40
  %33 = sitofp i32 %32 to float
  %34 = fcmp ugt float %25, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %30, %22
  %36 = fcmp olt float %25, %28
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = fsub float %28, %25
  br label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !40
  %42 = sitofp i32 %41 to float
  %43 = fsub float %25, %42
  br label %44

44:                                               ; preds = %37, %39, %30
  %45 = phi float [ 0.000000e+00, %30 ], [ %38, %37 ], [ %43, %39 ]
  %46 = fmul float %45, %45
  %47 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %46)
  %48 = fmul float %2, %2
  %49 = fcmp ole float %47, %48
  %50 = zext i1 %49 to i8
  ret i8 %50
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BLI_rctf_isect_circle(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load float, ptr %0, align 4, !tbaa !45
  %6 = fcmp ult float %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !42
  %10 = fcmp ugt float %4, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7, %3
  %12 = fcmp olt float %4, %5
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = fsub float %5, %4
  br label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !42
  %18 = fsub float %4, %17
  br label %19

19:                                               ; preds = %13, %15, %7
  %20 = phi float [ 0.000000e+00, %7 ], [ %14, %13 ], [ %18, %15 ]
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !49
  %23 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !47
  %25 = fcmp ult float %22, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !46
  %29 = fcmp ugt float %22, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26, %19
  %31 = fcmp olt float %22, %24
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = fsub float %24, %22
  br label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %36 = load float, ptr %35, align 4, !tbaa !46
  %37 = fsub float %22, %36
  br label %38

38:                                               ; preds = %32, %34, %26
  %39 = phi float [ 0.000000e+00, %26 ], [ %33, %32 ], [ %37, %34 ]
  %40 = fmul float %39, %39
  %41 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %40)
  %42 = fmul float %2, %2
  %43 = fcmp ole float %41, %42
  %44 = zext i1 %43 to i8
  ret i8 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_union(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load float, ptr %0, align 4, !tbaa !45
  %4 = load float, ptr %1, align 4, !tbaa !45
  %5 = fcmp ogt float %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store float %4, ptr %0, align 4, !tbaa !45
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !42
  %10 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !42
  %12 = fcmp olt float %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store float %11, ptr %8, align 4, !tbaa !42
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !47
  %17 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !47
  %19 = fcmp ogt float %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store float %18, ptr %15, align 4, !tbaa !47
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !46
  %24 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !46
  %26 = fcmp olt float %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store float %25, ptr %22, align 4, !tbaa !46
  br label %28

28:                                               ; preds = %27, %21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rcti_union(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %0, align 4, !tbaa !39
  %4 = load i32, ptr %1, align 4, !tbaa !39
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i32 %4, ptr %0, align 4, !tbaa !39
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 %11, ptr %8, align 4, !tbaa !34
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !41
  %17 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !41
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 %18, ptr %15, align 4, !tbaa !41
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !40
  %24 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !40
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 %25, ptr %22, align 4, !tbaa !40
  br label %28

28:                                               ; preds = %27, %21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BLI_rctf_init(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 {
  %6 = fcmp ugt float %1, %2
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  store float %1, ptr %0, align 4, !tbaa !45
  %8 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  br label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  store float %1, ptr %10, align 4, !tbaa !42
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %0, %9 ], [ %8, %7 ]
  store float %2, ptr %12, align 4, !tbaa !49
  %13 = fcmp ugt float %3, %4
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float %3, ptr %15, align 4, !tbaa !47
  %16 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  br label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  store float %3, ptr %18, align 4, !tbaa !46
  %19 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi ptr [ %19, %17 ], [ %16, %14 ]
  store float %4, ptr %21, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BLI_rcti_init(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = icmp sgt i32 %1, %2
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  store i32 %1, ptr %0, align 4, !tbaa !39
  %8 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  br label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  store i32 %1, ptr %10, align 4, !tbaa !34
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %0, %9 ], [ %8, %7 ]
  store i32 %2, ptr %12, align 4, !tbaa !48
  %13 = icmp sgt i32 %3, %4
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  store i32 %3, ptr %15, align 4, !tbaa !41
  %16 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  br label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  store i32 %3, ptr %18, align 4, !tbaa !40
  %19 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi ptr [ %19, %17 ], [ %16, %14 ]
  store i32 %4, ptr %21, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BLI_rcti_init_minmax(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  store i32 2147483647, ptr %2, align 4, !tbaa !41
  store i32 2147483647, ptr %0, align 4, !tbaa !39
  %3 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  store i32 -2147483648, ptr %3, align 4, !tbaa !40
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  store i32 -2147483648, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BLI_rctf_init_minmax(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float 0x47EFFFFFE0000000, ptr %2, align 4, !tbaa !47
  store float 0x47EFFFFFE0000000, ptr %0, align 4, !tbaa !45
  %3 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  store float 0xC7EFFFFFE0000000, ptr %3, align 4, !tbaa !46
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  store float 0xC7EFFFFFE0000000, ptr %4, align 4, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rcti_do_minmax_v(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %1, align 4, !tbaa !48
  %4 = load i32, ptr %0, align 4, !tbaa !39
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i32 %3, ptr %0, align 4, !tbaa !39
  br label %7

7:                                                ; preds = %6, %2
  %8 = load i32, ptr %1, align 4, !tbaa !48
  %9 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = icmp sgt i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 %8, ptr %9, align 4, !tbaa !34
  br label %13

13:                                               ; preds = %12, %7
  %14 = getelementptr inbounds i32, ptr %1, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !48
  %16 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !41
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 %15, ptr %16, align 4, !tbaa !41
  br label %20

20:                                               ; preds = %19, %13
  %21 = load i32, ptr %14, align 4, !tbaa !48
  %22 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !40
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 %21, ptr %22, align 4, !tbaa !40
  br label %26

26:                                               ; preds = %25, %20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_do_minmax_v(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fcmp olt float %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store float %3, ptr %0, align 4, !tbaa !45
  br label %7

7:                                                ; preds = %6, %2
  %8 = load float, ptr %1, align 4, !tbaa !49
  %9 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !42
  %11 = fcmp ogt float %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store float %8, ptr %9, align 4, !tbaa !42
  br label %13

13:                                               ; preds = %12, %7
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !49
  %16 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %17 = load float, ptr %16, align 4, !tbaa !47
  %18 = fcmp olt float %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store float %15, ptr %16, align 4, !tbaa !47
  br label %20

20:                                               ; preds = %19, %13
  %21 = load float, ptr %14, align 4, !tbaa !49
  %22 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !46
  %24 = fcmp ogt float %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store float %21, ptr %22, align 4, !tbaa !46
  br label %26

26:                                               ; preds = %25, %20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_transform_pt_v(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = load float, ptr %3, align 4, !tbaa !49
  %6 = load float, ptr %1, align 4, !tbaa !45
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !42
  %10 = fsub float %9, %6
  %11 = fdiv float %7, %10
  store float %11, ptr %2, align 4, !tbaa !49
  %12 = load float, ptr %0, align 4, !tbaa !45
  %13 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !42
  %15 = fsub float %14, %12
  %16 = tail call float @llvm.fmuladd.f32(float %15, float %11, float %12)
  store float %16, ptr %2, align 4, !tbaa !49
  %17 = getelementptr inbounds float, ptr %3, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %20 = load float, ptr %19, align 4, !tbaa !47
  %21 = fsub float %18, %20
  %22 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !46
  %24 = fsub float %23, %20
  %25 = fdiv float %21, %24
  %26 = getelementptr inbounds float, ptr %2, i64 1
  store float %25, ptr %26, align 4, !tbaa !49
  %27 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %28 = load float, ptr %27, align 4, !tbaa !47
  %29 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %30 = load float, ptr %29, align 4, !tbaa !46
  %31 = fsub float %30, %28
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %25, float %28)
  store float %32, ptr %26, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rcti_translate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = load i32, ptr %0, align 4, !tbaa !39
  %5 = add nsw i32 %4, %1
  store i32 %5, ptr %0, align 4, !tbaa !39
  %6 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = add nsw i32 %7, %2
  store i32 %8, ptr %6, align 4, !tbaa !41
  %9 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = add nsw i32 %10, %1
  store i32 %11, ptr %9, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !40
  %14 = add nsw i32 %13, %2
  store i32 %14, ptr %12, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_translate(ptr nocapture noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #2 {
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fadd float %4, %1
  store float %5, ptr %0, align 4, !tbaa !45
  %6 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !47
  %8 = fadd float %7, %2
  store float %8, ptr %6, align 4, !tbaa !47
  %9 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !42
  %11 = fadd float %10, %1
  store float %11, ptr %9, align 4, !tbaa !42
  %12 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %13 = load float, ptr %12, align 4, !tbaa !46
  %14 = fadd float %13, %2
  store float %14, ptr %12, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rcti_recenter(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = load i32, ptr %0, align 4, !tbaa !39
  %5 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = add nsw i32 %6, %4
  %8 = sdiv i32 %7, -2
  %9 = add i32 %8, %1
  %10 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !41
  %12 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !40
  %14 = add nsw i32 %13, %11
  %15 = sdiv i32 %14, -2
  %16 = add i32 %15, %2
  %17 = add nsw i32 %9, %4
  store i32 %17, ptr %0, align 4, !tbaa !39
  %18 = add nsw i32 %16, %11
  store i32 %18, ptr %10, align 4, !tbaa !41
  %19 = add nsw i32 %9, %6
  store i32 %19, ptr %5, align 4, !tbaa !34
  %20 = add nsw i32 %16, %13
  store i32 %20, ptr %12, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_recenter(ptr nocapture noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #2 {
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !42
  %7 = fadd float %4, %6
  %8 = fmul float %7, 5.000000e-01
  %9 = fsub float %1, %8
  %10 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %13 = load float, ptr %12, align 4, !tbaa !46
  %14 = fadd float %11, %13
  %15 = fmul float %14, 5.000000e-01
  %16 = fsub float %2, %15
  %17 = fadd float %4, %9
  store float %17, ptr %0, align 4, !tbaa !45
  %18 = fadd float %11, %16
  store float %18, ptr %10, align 4, !tbaa !47
  %19 = fadd float %6, %9
  store float %19, ptr %5, align 4, !tbaa !42
  %20 = fadd float %13, %16
  store float %20, ptr %12, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rcti_resize(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = load i32, ptr %0, align 4, !tbaa !39
  %5 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = add nsw i32 %6, %4
  %8 = sdiv i32 %7, 2
  store i32 %8, ptr %5, align 4, !tbaa !34
  store i32 %8, ptr %0, align 4, !tbaa !39
  %9 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !41
  %11 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !40
  %13 = add nsw i32 %12, %10
  %14 = sdiv i32 %13, 2
  store i32 %14, ptr %11, align 4, !tbaa !40
  store i32 %14, ptr %9, align 4, !tbaa !41
  %15 = sdiv i32 %1, -2
  %16 = add nsw i32 %8, %15
  store i32 %16, ptr %0, align 4, !tbaa !39
  %17 = sdiv i32 %2, -2
  %18 = add nsw i32 %14, %17
  store i32 %18, ptr %9, align 4, !tbaa !41
  %19 = add nsw i32 %16, %1
  store i32 %19, ptr %5, align 4, !tbaa !34
  %20 = add nsw i32 %18, %2
  store i32 %20, ptr %11, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_resize(ptr nocapture noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #2 {
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !42
  %7 = fadd float %4, %6
  %8 = fmul float %7, 5.000000e-01
  store float %8, ptr %5, align 4, !tbaa !42
  store float %8, ptr %0, align 4, !tbaa !45
  %9 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %10 = load float, ptr %9, align 4, !tbaa !47
  %11 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = fadd float %10, %12
  %14 = fmul float %13, 5.000000e-01
  store float %14, ptr %11, align 4, !tbaa !46
  store float %14, ptr %9, align 4, !tbaa !47
  %15 = fneg float %1
  %16 = tail call float @llvm.fmuladd.f32(float %15, float 5.000000e-01, float %8)
  store float %16, ptr %0, align 4, !tbaa !45
  %17 = fneg float %2
  %18 = tail call float @llvm.fmuladd.f32(float %17, float 5.000000e-01, float %14)
  store float %18, ptr %9, align 4, !tbaa !47
  %19 = fadd float %16, %1
  store float %19, ptr %5, align 4, !tbaa !42
  %20 = fadd float %18, %2
  store float %20, ptr %11, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rcti_scale(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %0, align 4, !tbaa !39
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = add nsw i32 %5, %3
  %7 = sdiv i32 %6, 2
  %8 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !40
  %12 = add nsw i32 %11, %9
  %13 = sdiv i32 %12, 2
  %14 = sub nsw i32 %5, %3
  %15 = sitofp i32 %14 to float
  %16 = fmul float %1, 5.000000e-01
  %17 = fmul float %16, %15
  %18 = fptosi float %17 to i32
  %19 = sub nsw i32 %11, %9
  %20 = sitofp i32 %19 to float
  %21 = fmul float %16, %20
  %22 = fptosi float %21 to i32
  %23 = sub nsw i32 %7, %18
  store i32 %23, ptr %0, align 4, !tbaa !39
  %24 = sub nsw i32 %13, %22
  store i32 %24, ptr %8, align 4, !tbaa !41
  %25 = add nsw i32 %7, %18
  store i32 %25, ptr %4, align 4, !tbaa !34
  %26 = add nsw i32 %13, %22
  store i32 %26, ptr %10, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_scale(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #2 {
  %3 = load float, ptr %0, align 4, !tbaa !45
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !42
  %6 = fadd float %3, %5
  %7 = fmul float %6, 5.000000e-01
  %8 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %11 = load float, ptr %10, align 4, !tbaa !46
  %12 = fadd float %9, %11
  %13 = fmul float %12, 5.000000e-01
  %14 = fsub float %5, %3
  %15 = fmul float %1, 5.000000e-01
  %16 = fmul float %15, %14
  %17 = fsub float %11, %9
  %18 = fmul float %15, %17
  %19 = fsub float %7, %16
  store float %19, ptr %0, align 4, !tbaa !45
  %20 = fsub float %13, %18
  store float %20, ptr %8, align 4, !tbaa !47
  %21 = fadd float %7, %16
  store float %21, ptr %4, align 4, !tbaa !42
  %22 = fadd float %13, %18
  store float %22, ptr %10, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_interp(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #2 {
  %5 = fsub float 1.000000e+00, %3
  %6 = load float, ptr %1, align 4, !tbaa !45
  %7 = load float, ptr %2, align 4, !tbaa !45
  %8 = fmul float %7, %3
  %9 = tail call float @llvm.fmuladd.f32(float %6, float %5, float %8)
  store float %9, ptr %0, align 4, !tbaa !45
  %10 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !42
  %12 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  %13 = load float, ptr %12, align 4, !tbaa !42
  %14 = fmul float %13, %3
  %15 = tail call float @llvm.fmuladd.f32(float %11, float %5, float %14)
  %16 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  store float %15, ptr %16, align 4, !tbaa !42
  %17 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !47
  %19 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  %20 = load float, ptr %19, align 4, !tbaa !47
  %21 = fmul float %20, %3
  %22 = tail call float @llvm.fmuladd.f32(float %18, float %5, float %21)
  %23 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float %22, ptr %23, align 4, !tbaa !47
  %24 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %25 = load float, ptr %24, align 4, !tbaa !46
  %26 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  %27 = load float, ptr %26, align 4, !tbaa !46
  %28 = fmul float %27, %3
  %29 = tail call float @llvm.fmuladd.f32(float %25, float %5, float %28)
  %30 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  store float %29, ptr %30, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BLI_rctf_clamp_pt_v(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fcmp olt float %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store float %4, ptr %1, align 4, !tbaa !49
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi i8 [ 1, %6 ], [ 0, %2 ]
  %9 = load float, ptr %1, align 4, !tbaa !49
  %10 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !42
  %12 = fcmp ogt float %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store float %11, ptr %1, align 4, !tbaa !49
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i8 [ 1, %13 ], [ %8, %7 ]
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !49
  %18 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !47
  %20 = fcmp olt float %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store float %19, ptr %16, align 4, !tbaa !49
  br label %22

22:                                               ; preds = %21, %14
  %23 = phi i8 [ 1, %21 ], [ %15, %14 ]
  %24 = load float, ptr %16, align 4, !tbaa !49
  %25 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %26 = load float, ptr %25, align 4, !tbaa !46
  %27 = fcmp ogt float %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store float %26, ptr %16, align 4, !tbaa !49
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i8 [ 1, %28 ], [ %23, %22 ]
  ret i8 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BLI_rcti_clamp_pt_v(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %1, align 4, !tbaa !48
  %4 = load i32, ptr %0, align 4, !tbaa !39
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i32 %4, ptr %1, align 4, !tbaa !48
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi i8 [ 1, %6 ], [ 0, %2 ]
  %9 = load i32, ptr %1, align 4, !tbaa !48
  %10 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 %11, ptr %1, align 4, !tbaa !48
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i8 [ 1, %13 ], [ %8, %7 ]
  %16 = getelementptr inbounds i32, ptr %1, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !48
  %18 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !41
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 %19, ptr %16, align 4, !tbaa !48
  br label %22

22:                                               ; preds = %21, %14
  %23 = phi i8 [ 1, %21 ], [ %15, %14 ]
  %24 = load i32, ptr %16, align 4, !tbaa !48
  %25 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !40
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 %26, ptr %16, align 4, !tbaa !48
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i8 [ 1, %28 ], [ %23, %22 ]
  ret i8 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BLI_rctf_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = load float, ptr %1, align 4, !tbaa !45
  %6 = fsub float %4, %5
  %7 = tail call float @llvm.fabs.f32(float %6)
  %8 = fcmp olt float %7, %2
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !42
  %12 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %13 = load float, ptr %12, align 4, !tbaa !42
  %14 = fsub float %11, %13
  %15 = tail call float @llvm.fabs.f32(float %14)
  %16 = fcmp olt float %15, %2
  br i1 %16, label %17, label %33

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !47
  %20 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %21 = load float, ptr %20, align 4, !tbaa !47
  %22 = fsub float %19, %21
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fcmp olt float %23, %2
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %27 = load float, ptr %26, align 4, !tbaa !46
  %28 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !46
  %30 = fsub float %27, %29
  %31 = tail call float @llvm.fabs.f32(float %30)
  %32 = fcmp olt float %31, %2
  br i1 %32, label %34, label %33

33:                                               ; preds = %9, %25, %17, %3
  br label %34

34:                                               ; preds = %25, %33
  %35 = phi i8 [ 0, %33 ], [ 1, %25 ]
  ret i8 %35
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BLI_rcti_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4, !tbaa !39
  %4 = load i32, ptr %1, align 4, !tbaa !39
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !41
  %15 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !41
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !40
  %21 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !40
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %6, %18, %12, %2
  br label %25

25:                                               ; preds = %18, %24
  %26 = phi i8 [ 0, %24 ], [ 1, %18 ]
  ret i8 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BLI_rctf_isect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #2 {
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = load float, ptr %1, align 4, !tbaa !45
  %6 = fcmp ogt float %4, %5
  %7 = select i1 %6, float %4, float %5
  %8 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !42
  %10 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !42
  %12 = fcmp olt float %9, %11
  %13 = select i1 %12, float %9, float %11
  %14 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !47
  %16 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %17 = load float, ptr %16, align 4, !tbaa !47
  %18 = fcmp ogt float %15, %17
  %19 = select i1 %18, float %15, float %17
  %20 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %21 = load float, ptr %20, align 4, !tbaa !46
  %22 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !46
  %24 = fcmp olt float %21, %23
  %25 = select i1 %24, float %21, float %23
  %26 = fcmp ult float %13, %7
  %27 = fcmp ult float %25, %19
  %28 = select i1 %26, i1 true, i1 %27
  %29 = icmp eq ptr %2, null
  br i1 %28, label %35, label %30

30:                                               ; preds = %3
  br i1 %29, label %37, label %31

31:                                               ; preds = %30
  store float %7, ptr %2, align 4, !tbaa !45
  %32 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  store float %13, ptr %32, align 4, !tbaa !42
  %33 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  store float %19, ptr %33, align 4, !tbaa !47
  %34 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  store float %25, ptr %34, align 4, !tbaa !46
  br label %37

35:                                               ; preds = %3
  br i1 %29, label %37, label %36

36:                                               ; preds = %35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %37

37:                                               ; preds = %35, %36, %30, %31
  %38 = phi i8 [ 1, %31 ], [ 1, %30 ], [ 0, %36 ], [ 0, %35 ]
  ret i8 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @BLI_rcti_isect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #2 {
  %4 = load i32, ptr %0, align 4, !tbaa !39
  %5 = load i32, ptr %1, align 4, !tbaa !39
  %6 = tail call i32 @llvm.smax.i32(i32 %4, i32 %5)
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = tail call i32 @llvm.smin.i32(i32 %8, i32 %10)
  %12 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !41
  %14 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !41
  %16 = tail call i32 @llvm.smax.i32(i32 %13, i32 %15)
  %17 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !40
  %19 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !40
  %21 = tail call i32 @llvm.smin.i32(i32 %18, i32 %20)
  %22 = icmp slt i32 %11, %6
  %23 = icmp slt i32 %21, %16
  %24 = select i1 %22, i1 true, i1 %23
  %25 = icmp eq ptr %2, null
  br i1 %24, label %31, label %26

26:                                               ; preds = %3
  br i1 %25, label %33, label %27

27:                                               ; preds = %26
  store i32 %6, ptr %2, align 4, !tbaa !39
  %28 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  store i32 %11, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  store i32 %16, ptr %29, align 4, !tbaa !41
  %30 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  store i32 %21, ptr %30, align 4, !tbaa !40
  br label %33

31:                                               ; preds = %3
  br i1 %25, label %33, label %32

32:                                               ; preds = %31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %33

33:                                               ; preds = %31, %32, %26, %27
  %34 = phi i8 [ 1, %27 ], [ 1, %26 ], [ 0, %32 ], [ 0, %31 ]
  ret i8 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rcti_rctf_copy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !45
  %4 = fadd float %3, 5.000000e-01
  %5 = tail call float @llvm.floor.f32(float %4)
  %6 = fptosi float %5 to i32
  store i32 %6, ptr %0, align 4, !tbaa !39
  %7 = sitofp i32 %6 to float
  %8 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !42
  %10 = fsub float %9, %3
  %11 = fadd float %10, 5.000000e-01
  %12 = tail call float @llvm.floor.f32(float %11)
  %13 = fadd float %12, %7
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  store i32 %14, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %17 = load float, ptr %16, align 4, !tbaa !47
  %18 = fadd float %17, 5.000000e-01
  %19 = tail call float @llvm.floor.f32(float %18)
  %20 = fptosi float %19 to i32
  %21 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  store i32 %20, ptr %21, align 4, !tbaa !41
  %22 = sitofp i32 %20 to float
  %23 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %24 = load float, ptr %23, align 4, !tbaa !46
  %25 = fsub float %24, %17
  %26 = fadd float %25, 5.000000e-01
  %27 = tail call float @llvm.floor.f32(float %26)
  %28 = fadd float %27, %22
  %29 = fptosi float %28 to i32
  %30 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  store i32 %29, ptr %30, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BLI_rctf_rcti_copy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %1, align 4, !tbaa !39
  %4 = sitofp i32 %3 to float
  store float %4, ptr %0, align 4, !tbaa !45
  %5 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = sitofp i32 %6 to float
  %8 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  store float %7, ptr %8, align 4, !tbaa !42
  %9 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !41
  %11 = sitofp i32 %10 to float
  %12 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  store float %11, ptr %12, align 4, !tbaa !47
  %13 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !40
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  store float %15, ptr %16, align 4, !tbaa !46
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_rctf(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !45
  %4 = fpext float %3 to double
  %5 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !42
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = fpext float %12 to double
  %14 = fsub float %6, %3
  %15 = fpext float %14 to double
  %16 = fsub float %12, %9
  %17 = fpext float %16 to double
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0, double noundef %4, double noundef %7, double noundef %10, double noundef %13, double noundef %15, double noundef %17)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_rcti(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load i32, ptr %1, align 4, !tbaa !39
  %4 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !40
  %10 = sub nsw i32 %5, %3
  %11 = sub nsw i32 %9, %7
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %0, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %10, i32 noundef %11)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 4}
!35 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 0}
!40 = !{!35, !36, i64 12}
!41 = !{!35, !36, i64 8}
!42 = !{!43, !44, i64 4}
!43 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!44 = !{!"float", !37, i64 0}
!45 = !{!43, !44, i64 0}
!46 = !{!43, !44, i64 12}
!47 = !{!43, !44, i64 8}
!48 = !{!36, !36, i64 0}
!49 = !{!44, !44, i64 0}
