; ModuleID = 'blender/source/blender/blenlib/intern/math_vector.c'
source_filename = "blender/source/blender/blenlib/intern/math_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"%s: %.8f %.8f\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: %.8f %.8f %.8f\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: %.8f %.8f %.8f %.8f\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s[%d]:\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" %.8f\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fsub float 1.000000e+00, %3
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fmul float %7, %3
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %8)
  store float %9, ptr %0, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %13, %3
  %15 = tail call float @llvm.fmuladd.f32(float %5, float %11, float %14)
  %16 = getelementptr inbounds float, ptr %0, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v2_v2v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %4, align 4, !tbaa !34
  %8 = load float, ptr %2, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %4, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %8, %10
  %12 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %11)
  %13 = load float, ptr %3, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %4, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %12)
  store float %16, ptr %0, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = load float, ptr %4, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = load float, ptr %9, align 4, !tbaa !34
  %23 = fmul float %21, %22
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %23)
  %25 = getelementptr inbounds float, ptr %3, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = load float, ptr %14, align 4, !tbaa !34
  %28 = tail call float @llvm.fmuladd.f32(float %26, float %27, float %24)
  %29 = getelementptr inbounds float, ptr %0, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fsub float 1.000000e+00, %3
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fmul float %7, %3
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %8)
  store float %9, ptr %0, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %13, %3
  %15 = tail call float @llvm.fmuladd.f32(float %5, float %11, float %14)
  %16 = getelementptr inbounds float, ptr %0, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fmul float %20, %3
  %22 = tail call float @llvm.fmuladd.f32(float %5, float %18, float %21)
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float %22, ptr %23, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v4_v4v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fsub float 1.000000e+00, %3
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fmul float %7, %3
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %8)
  store float %9, ptr %0, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fmul float %13, %3
  %15 = tail call float @llvm.fmuladd.f32(float %5, float %11, float %14)
  %16 = getelementptr inbounds float, ptr %0, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fmul float %20, %3
  %22 = tail call float @llvm.fmuladd.f32(float %5, float %18, float %21)
  %23 = getelementptr inbounds float, ptr %0, i64 2
  store float %22, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %1, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %2, i64 3
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fmul float %27, %3
  %29 = tail call float @llvm.fmuladd.f32(float %5, float %25, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 3
  store float %29, ptr %30, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @interp_v3_v3v3_slerp(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #3 {
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %6 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %2) #20
  %7 = fcmp olt float %6, 0xBFEFFFFFC0000000
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  call void @interp_dot_slerp(float noundef %3, float noundef %6, ptr noundef nonnull %5) #21
  %9 = load float, ptr %5, align 4, !tbaa !34
  %10 = load float, ptr %1, align 4, !tbaa !34
  %11 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = load float, ptr %2, align 4, !tbaa !34
  %14 = fmul float %12, %13
  %15 = call float @llvm.fmuladd.f32(float %9, float %10, float %14)
  store float %15, ptr %0, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fmul float %12, %19
  %21 = call float @llvm.fmuladd.f32(float %9, float %17, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %1, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %2, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = fmul float %12, %26
  %28 = call float @llvm.fmuladd.f32(float %9, float %24, float %27)
  %29 = getelementptr inbounds float, ptr %0, i64 2
  store float %28, ptr %29, align 4, !tbaa !34
  br label %30

30:                                               ; preds = %4, %8
  %31 = phi i8 [ 1, %8 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i8 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !38 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare void @interp_dot_slerp(float noundef, float noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @interp_v2_v2v2_slerp(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #3 {
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %6 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %2) #20
  %7 = fcmp olt float %6, 0x3FF0000020000000
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  call void @interp_dot_slerp(float noundef %3, float noundef %6, ptr noundef nonnull %5) #21
  %9 = load float, ptr %5, align 4, !tbaa !34
  %10 = load float, ptr %1, align 4, !tbaa !34
  %11 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = load float, ptr %2, align 4, !tbaa !34
  %14 = fmul float %12, %13
  %15 = call float @llvm.fmuladd.f32(float %9, float %10, float %14)
  store float %15, ptr %0, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fmul float %12, %19
  %21 = call float @llvm.fmuladd.f32(float %9, float %17, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !34
  br label %23

23:                                               ; preds = %4, %8
  %24 = phi i8 [ 1, %8 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i8 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !39 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interp_v3_v3v3_slerp_safe(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #3 {
  %5 = alloca [3 x float], align 4
  %6 = tail call zeroext i8 @interp_v3_v3v3_slerp(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) #20, !range !40
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @ortho_v3_v3(ptr noundef nonnull %5, ptr noundef %1) #20
  %9 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #20
  %10 = fcmp olt float %3, 5.000000e-01
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = fmul float %3, 2.000000e+00
  %13 = call zeroext i8 @interp_v3_v3v3_slerp(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, float noundef %12) #20, !range !40
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %22

15:                                               ; preds = %8
  %16 = fadd float %3, -5.000000e-01
  %17 = fmul float %16, 2.000000e+00
  %18 = call zeroext i8 @interp_v3_v3v3_slerp(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, float noundef %17) #20, !range !40
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %11
  %21 = phi ptr [ %1, %11 ], [ %2, %15 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %21) #20
  br label %22

22:                                               ; preds = %20, %15, %11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  br label %23

23:                                               ; preds = %22, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ortho_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @axis_dominant_v3_single(ptr noundef %1) #20, !range !41
  switch i32 %3, label %32 [
    i32 0, label %4
    i32 1, label %13
    i32 2, label %23
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fsub float %7, %9
  store float %10, ptr %0, align 4, !tbaa !34
  %11 = load float, ptr %1, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  br label %33

13:                                               ; preds = %2
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  store float %15, ptr %0, align 4, !tbaa !34
  %16 = load float, ptr %1, align 4, !tbaa !34
  %17 = fneg float %16
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fsub float %17, %19
  %21 = getelementptr inbounds float, ptr %0, i64 1
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = load float, ptr %14, align 4, !tbaa !34
  br label %33

23:                                               ; preds = %2
  %24 = getelementptr inbounds float, ptr %1, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !34
  store float %25, ptr %0, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %0, i64 1
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = load float, ptr %1, align 4, !tbaa !34
  %28 = fneg float %27
  %29 = getelementptr inbounds float, ptr %1, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fsub float %28, %30
  br label %33

32:                                               ; preds = %2
  unreachable

33:                                               ; preds = %23, %13, %4
  %34 = phi float [ %31, %23 ], [ %22, %13 ], [ %11, %4 ]
  %35 = getelementptr inbounds float, ptr %0, i64 2
  store float %34, ptr %35, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !42 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #20
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !43 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @interp_v2_v2v2_slerp_safe(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #3 {
  %5 = alloca [2 x float], align 4
  %6 = tail call zeroext i8 @interp_v2_v2v2_slerp(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) #20, !range !40
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @ortho_v2_v2(ptr noundef nonnull %5, ptr noundef %1) #20
  %9 = fcmp olt float %3, 5.000000e-01
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = fmul float %3, 2.000000e+00
  %12 = call zeroext i8 @interp_v2_v2v2_slerp(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, float noundef %11) #20, !range !40
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %21

14:                                               ; preds = %8
  %15 = fadd float %3, -5.000000e-01
  %16 = fmul float %15, 2.000000e+00
  %17 = call zeroext i8 @interp_v2_v2v2_slerp(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, float noundef %16) #20, !range !40
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %10
  %20 = phi ptr [ %1, %10 ], [ %2, %14 ]
  tail call fastcc void @copy_v2_v2(ptr noundef %0, ptr noundef %20) #20
  br label %21

21:                                               ; preds = %19, %14, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %22

22:                                               ; preds = %21, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ortho_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds float, ptr %1, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fneg float %4
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 1
  store float %6, ptr %7, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !44 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v3_v3v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %4, align 4, !tbaa !34
  %8 = load float, ptr %2, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %4, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %8, %10
  %12 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %11)
  %13 = load float, ptr %3, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %4, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %12)
  store float %16, ptr %0, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = load float, ptr %4, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = load float, ptr %9, align 4, !tbaa !34
  %23 = fmul float %21, %22
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %23)
  %25 = getelementptr inbounds float, ptr %3, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = load float, ptr %14, align 4, !tbaa !34
  %28 = tail call float @llvm.fmuladd.f32(float %26, float %27, float %24)
  %29 = getelementptr inbounds float, ptr %0, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = getelementptr inbounds float, ptr %1, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = load float, ptr %4, align 4, !tbaa !34
  %33 = getelementptr inbounds float, ptr %2, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = load float, ptr %9, align 4, !tbaa !34
  %36 = fmul float %34, %35
  %37 = tail call float @llvm.fmuladd.f32(float %31, float %32, float %36)
  %38 = getelementptr inbounds float, ptr %3, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = load float, ptr %14, align 4, !tbaa !34
  %41 = tail call float @llvm.fmuladd.f32(float %39, float %40, float %37)
  %42 = getelementptr inbounds float, ptr %0, i64 2
  store float %41, ptr %42, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v3_v3v3v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = load float, ptr %5, align 4, !tbaa !34
  %9 = load float, ptr %2, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %5, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %9, %11
  %13 = tail call float @llvm.fmuladd.f32(float %7, float %8, float %12)
  %14 = load float, ptr %3, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %5, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %13)
  %18 = load float, ptr %4, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %5, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = tail call float @llvm.fmuladd.f32(float %18, float %20, float %17)
  store float %21, ptr %0, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = load float, ptr %5, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = load float, ptr %10, align 4, !tbaa !34
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = load float, ptr %15, align 4, !tbaa !34
  %33 = tail call float @llvm.fmuladd.f32(float %31, float %32, float %29)
  %34 = getelementptr inbounds float, ptr %4, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = load float, ptr %19, align 4, !tbaa !34
  %37 = tail call float @llvm.fmuladd.f32(float %35, float %36, float %33)
  %38 = getelementptr inbounds float, ptr %0, i64 1
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %1, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = load float, ptr %5, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %2, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = load float, ptr %10, align 4, !tbaa !34
  %45 = fmul float %43, %44
  %46 = tail call float @llvm.fmuladd.f32(float %40, float %41, float %45)
  %47 = getelementptr inbounds float, ptr %3, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = load float, ptr %15, align 4, !tbaa !34
  %50 = tail call float @llvm.fmuladd.f32(float %48, float %49, float %46)
  %51 = getelementptr inbounds float, ptr %4, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = load float, ptr %19, align 4, !tbaa !34
  %54 = tail call float @llvm.fmuladd.f32(float %52, float %53, float %50)
  %55 = getelementptr inbounds float, ptr %0, i64 2
  store float %54, ptr %55, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v4_v4v4v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %4, align 4, !tbaa !34
  %8 = load float, ptr %2, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %4, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %8, %10
  %12 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %11)
  %13 = load float, ptr %3, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %4, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %12)
  store float %16, ptr %0, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = load float, ptr %4, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %2, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = load float, ptr %9, align 4, !tbaa !34
  %23 = fmul float %21, %22
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %23)
  %25 = getelementptr inbounds float, ptr %3, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = load float, ptr %14, align 4, !tbaa !34
  %28 = tail call float @llvm.fmuladd.f32(float %26, float %27, float %24)
  %29 = getelementptr inbounds float, ptr %0, i64 1
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = getelementptr inbounds float, ptr %1, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = load float, ptr %4, align 4, !tbaa !34
  %33 = getelementptr inbounds float, ptr %2, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = load float, ptr %9, align 4, !tbaa !34
  %36 = fmul float %34, %35
  %37 = tail call float @llvm.fmuladd.f32(float %31, float %32, float %36)
  %38 = getelementptr inbounds float, ptr %3, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = load float, ptr %14, align 4, !tbaa !34
  %41 = tail call float @llvm.fmuladd.f32(float %39, float %40, float %37)
  %42 = getelementptr inbounds float, ptr %0, i64 2
  store float %41, ptr %42, align 4, !tbaa !34
  %43 = getelementptr inbounds float, ptr %1, i64 3
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = load float, ptr %4, align 4, !tbaa !34
  %46 = getelementptr inbounds float, ptr %2, i64 3
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = load float, ptr %9, align 4, !tbaa !34
  %49 = fmul float %47, %48
  %50 = tail call float @llvm.fmuladd.f32(float %44, float %45, float %49)
  %51 = getelementptr inbounds float, ptr %3, i64 3
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = load float, ptr %14, align 4, !tbaa !34
  %54 = tail call float @llvm.fmuladd.f32(float %52, float %53, float %50)
  %55 = getelementptr inbounds float, ptr %0, i64 3
  store float %54, ptr %55, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v4_v4v4v4v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = load float, ptr %1, align 4, !tbaa !34
  %8 = load float, ptr %5, align 4, !tbaa !34
  %9 = load float, ptr %2, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %5, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %9, %11
  %13 = tail call float @llvm.fmuladd.f32(float %7, float %8, float %12)
  %14 = load float, ptr %3, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %5, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %16, float %13)
  %18 = load float, ptr %4, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %5, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = tail call float @llvm.fmuladd.f32(float %18, float %20, float %17)
  store float %21, ptr %0, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = load float, ptr %5, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = load float, ptr %10, align 4, !tbaa !34
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = load float, ptr %15, align 4, !tbaa !34
  %33 = tail call float @llvm.fmuladd.f32(float %31, float %32, float %29)
  %34 = getelementptr inbounds float, ptr %4, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = load float, ptr %19, align 4, !tbaa !34
  %37 = tail call float @llvm.fmuladd.f32(float %35, float %36, float %33)
  %38 = getelementptr inbounds float, ptr %0, i64 1
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %1, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = load float, ptr %5, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %2, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = load float, ptr %10, align 4, !tbaa !34
  %45 = fmul float %43, %44
  %46 = tail call float @llvm.fmuladd.f32(float %40, float %41, float %45)
  %47 = getelementptr inbounds float, ptr %3, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = load float, ptr %15, align 4, !tbaa !34
  %50 = tail call float @llvm.fmuladd.f32(float %48, float %49, float %46)
  %51 = getelementptr inbounds float, ptr %4, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = load float, ptr %19, align 4, !tbaa !34
  %54 = tail call float @llvm.fmuladd.f32(float %52, float %53, float %50)
  %55 = getelementptr inbounds float, ptr %0, i64 2
  store float %54, ptr %55, align 4, !tbaa !34
  %56 = getelementptr inbounds float, ptr %1, i64 3
  %57 = load float, ptr %56, align 4, !tbaa !34
  %58 = load float, ptr %5, align 4, !tbaa !34
  %59 = getelementptr inbounds float, ptr %2, i64 3
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = load float, ptr %10, align 4, !tbaa !34
  %62 = fmul float %60, %61
  %63 = tail call float @llvm.fmuladd.f32(float %57, float %58, float %62)
  %64 = getelementptr inbounds float, ptr %3, i64 3
  %65 = load float, ptr %64, align 4, !tbaa !34
  %66 = load float, ptr %15, align 4, !tbaa !34
  %67 = tail call float @llvm.fmuladd.f32(float %65, float %66, float %63)
  %68 = getelementptr inbounds float, ptr %4, i64 3
  %69 = load float, ptr %68, align 4, !tbaa !34
  %70 = load float, ptr %19, align 4, !tbaa !34
  %71 = tail call float @llvm.fmuladd.f32(float %69, float %70, float %67)
  %72 = getelementptr inbounds float, ptr %0, i64 3
  store float %71, ptr %72, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v3_v3v3v3_uv(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fsub float %7, %6
  %9 = load float, ptr %4, align 4, !tbaa !34
  %10 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %6)
  %11 = load float, ptr %3, align 4, !tbaa !34
  %12 = fsub float %11, %6
  %13 = getelementptr inbounds float, ptr %4, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  store float %15, ptr %0, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fsub float %19, %17
  %21 = load float, ptr %4, align 4, !tbaa !34
  %22 = tail call float @llvm.fmuladd.f32(float %20, float %21, float %17)
  %23 = getelementptr inbounds float, ptr %3, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %24, %17
  %26 = load float, ptr %13, align 4, !tbaa !34
  %27 = tail call float @llvm.fmuladd.f32(float %25, float %26, float %22)
  %28 = getelementptr inbounds float, ptr %0, i64 1
  store float %27, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds float, ptr %1, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = getelementptr inbounds float, ptr %2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = fsub float %32, %30
  %34 = load float, ptr %4, align 4, !tbaa !34
  %35 = tail call float @llvm.fmuladd.f32(float %33, float %34, float %30)
  %36 = getelementptr inbounds float, ptr %3, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = fsub float %37, %30
  %39 = load float, ptr %13, align 4, !tbaa !34
  %40 = tail call float @llvm.fmuladd.f32(float %38, float %39, float %35)
  %41 = getelementptr inbounds float, ptr %0, i64 2
  store float %40, ptr %41, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v3_v3v3_uchar(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fsub float 1.000000e+00, %3
  %6 = load i8, ptr %1, align 1, !tbaa !45
  %7 = uitofp i8 %6 to float
  %8 = load i8, ptr %2, align 1, !tbaa !45
  %9 = uitofp i8 %8 to float
  %10 = fmul float %9, %3
  %11 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %10)
  %12 = tail call float @llvm.floor.f32(float %11)
  %13 = fptoui float %12 to i8
  store i8 %13, ptr %0, align 1, !tbaa !45
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !45
  %16 = uitofp i8 %15 to float
  %17 = getelementptr inbounds i8, ptr %2, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !45
  %19 = uitofp i8 %18 to float
  %20 = fmul float %19, %3
  %21 = tail call float @llvm.fmuladd.f32(float %5, float %16, float %20)
  %22 = tail call float @llvm.floor.f32(float %21)
  %23 = fptoui float %22 to i8
  %24 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %23, ptr %24, align 1, !tbaa !45
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !45
  %27 = uitofp i8 %26 to float
  %28 = getelementptr inbounds i8, ptr %2, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !45
  %30 = uitofp i8 %29 to float
  %31 = fmul float %30, %3
  %32 = tail call float @llvm.fmuladd.f32(float %5, float %27, float %31)
  %33 = tail call float @llvm.floor.f32(float %32)
  %34 = fptoui float %33 to i8
  %35 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %34, ptr %35, align 1, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v3_v3v3_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  tail call void @interp_v3_v3v3_uchar(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v4_v4v4_uchar(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  %5 = fsub float 1.000000e+00, %3
  %6 = load i8, ptr %1, align 1, !tbaa !45
  %7 = uitofp i8 %6 to float
  %8 = load i8, ptr %2, align 1, !tbaa !45
  %9 = uitofp i8 %8 to float
  %10 = fmul float %9, %3
  %11 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %10)
  %12 = tail call float @llvm.floor.f32(float %11)
  %13 = fptoui float %12 to i8
  store i8 %13, ptr %0, align 1, !tbaa !45
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !45
  %16 = uitofp i8 %15 to float
  %17 = getelementptr inbounds i8, ptr %2, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !45
  %19 = uitofp i8 %18 to float
  %20 = fmul float %19, %3
  %21 = tail call float @llvm.fmuladd.f32(float %5, float %16, float %20)
  %22 = tail call float @llvm.floor.f32(float %21)
  %23 = fptoui float %22 to i8
  %24 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %23, ptr %24, align 1, !tbaa !45
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !45
  %27 = uitofp i8 %26 to float
  %28 = getelementptr inbounds i8, ptr %2, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !45
  %30 = uitofp i8 %29 to float
  %31 = fmul float %30, %3
  %32 = tail call float @llvm.fmuladd.f32(float %5, float %27, float %31)
  %33 = tail call float @llvm.floor.f32(float %32)
  %34 = fptoui float %33 to i8
  %35 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %34, ptr %35, align 1, !tbaa !45
  %36 = getelementptr inbounds i8, ptr %1, i64 3
  %37 = load i8, ptr %36, align 1, !tbaa !45
  %38 = uitofp i8 %37 to float
  %39 = getelementptr inbounds i8, ptr %2, i64 3
  %40 = load i8, ptr %39, align 1, !tbaa !45
  %41 = uitofp i8 %40 to float
  %42 = fmul float %41, %3
  %43 = tail call float @llvm.fmuladd.f32(float %5, float %38, float %42)
  %44 = tail call float @llvm.floor.f32(float %43)
  %45 = fptoui float %44 to i8
  %46 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %45, ptr %46, align 1, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_v4_v4v4_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  tail call void @interp_v4_v4v4_uchar(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mid_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fadd float %4, %5
  %7 = fmul float %6, 5.000000e-01
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fadd float %9, %11
  %13 = fmul float %12, 5.000000e-01
  %14 = getelementptr inbounds float, ptr %0, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %2, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fadd float %16, %18
  %20 = fmul float %19, 5.000000e-01
  %21 = getelementptr inbounds float, ptr %0, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mid_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fadd float %4, %5
  %7 = fmul float %6, 5.000000e-01
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fadd float %9, %11
  %13 = fmul float %12, 5.000000e-01
  %14 = getelementptr inbounds float, ptr %0, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @mid_v3_v3v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = fadd float %5, %6
  %8 = load float, ptr %3, align 4, !tbaa !34
  %9 = fadd float %7, %8
  %10 = fdiv float %9, 3.000000e+00
  store float %10, ptr %0, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fadd float %12, %14
  %16 = getelementptr inbounds float, ptr %3, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fadd float %15, %17
  %19 = fdiv float %18, 3.000000e+00
  %20 = getelementptr inbounds float, ptr %0, i64 1
  store float %19, ptr %20, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds float, ptr %2, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fadd float %22, %24
  %26 = getelementptr inbounds float, ptr %3, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fadd float %25, %27
  %29 = fdiv float %28, 3.000000e+00
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @mid_v3_v3v3_angle_weighted(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  tail call fastcc void @add_v3_v3v3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  %4 = tail call fastcc float @normalize_v3(ptr noundef %0) #20
  %5 = fmul float %4, 5.000000e-01
  %6 = tail call float @acosf(float noundef %5) #21
  %7 = fmul float %6, 0x3FF45F3060000000
  tail call fastcc void @mul_v3_fl(ptr noundef %0, float noundef %7) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !46 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #0 !PGOFuncName !47 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @mid_v3_angle_weighted(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = tail call fastcc float @normalize_v3(ptr noundef %0) #20
  %3 = tail call float @acosf(float noundef %2) #21
  %4 = fmul float %3, 0x3FF45F3060000000
  tail call fastcc void @mul_v3_fl(ptr noundef %0, float noundef %4) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @flip_v4_v4v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = fadd float %4, %6
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = fadd float %9, %12
  %14 = getelementptr inbounds float, ptr %0, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %2, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %16, %18
  %20 = fadd float %16, %19
  %21 = getelementptr inbounds float, ptr %0, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = getelementptr inbounds float, ptr %1, i64 3
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %2, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %23, %25
  %27 = fadd float %23, %26
  %28 = getelementptr inbounds float, ptr %0, i64 3
  store float %27, ptr %28, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @flip_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = fadd float %4, %6
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = fadd float %9, %12
  %14 = getelementptr inbounds float, ptr %0, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %2, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fsub float %16, %18
  %20 = fadd float %16, %19
  %21 = getelementptr inbounds float, ptr %0, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @flip_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = fadd float %4, %6
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fsub float %9, %11
  %13 = fadd float %9, %12
  %14 = getelementptr inbounds float, ptr %0, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_v3v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %0) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #20
  %6 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #20
  %7 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #20
  %8 = call float @angle_normalized_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !48 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_normalized_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = alloca [3 x float], align 4
  %4 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %1) #20
  %5 = fcmp ult float %4, 0.000000e+00
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc float @len_v3v3(ptr noundef %0, ptr noundef %1) #20
  %8 = fmul float %7, 5.000000e-01
  %9 = tail call fastcc float @saasin(float noundef %8) #20
  %10 = fmul float %9, 2.000000e+00
  br label %16

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call fastcc void @negate_v3_v3(ptr noundef nonnull %3, ptr noundef %1) #20
  %12 = call fastcc float @len_v3v3(ptr noundef %0, ptr noundef nonnull %3) #20
  %13 = fmul float %12, 5.000000e-01
  %14 = tail call fastcc float @saasin(float noundef %13) #20
  %15 = tail call float @llvm.fmuladd.f32(float %14, float -2.000000e+00, float 0x400921FB60000000)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi float [ %10, %6 ], [ %15, %11 ]
  ret float %17
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @cos_v3v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %0) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #20
  %6 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #20
  %7 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #20
  %8 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret float %8
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  %5 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %3, ptr noundef %0) #20
  %6 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #20
  %7 = call float @angle_normalized_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret float %7
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !49 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #20
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #21
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #20
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #20
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_v2v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = alloca [2 x float], align 8
  %5 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %6 = load <2 x float>, ptr %1, align 4, !tbaa !34
  %7 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %8 = fsub <2 x float> %6, %7
  store <2 x float> %8, ptr %4, align 8, !tbaa !34
  %9 = load <2 x float>, ptr %2, align 4, !tbaa !34
  %10 = fsub <2 x float> %6, %9
  store <2 x float> %10, ptr %5, align 8, !tbaa !34
  call fastcc void @normalize_v2(ptr noundef nonnull %4) #20
  call fastcc void @normalize_v2(ptr noundef nonnull %5) #20
  %11 = call float @angle_normalized_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret float %11
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !50 {
  tail call fastcc void @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_normalized_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = alloca [2 x float], align 4
  %4 = tail call fastcc float @dot_v2v2(ptr noundef %0, ptr noundef %1) #20
  %5 = fcmp ult float %4, 0.000000e+00
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc float @len_v2v2(ptr noundef %0, ptr noundef %1) #20
  %8 = fmul float %7, 5.000000e-01
  %9 = tail call fastcc float @saasin(float noundef %8) #20
  %10 = fmul float %9, 2.000000e+00
  br label %16

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call fastcc void @negate_v2_v2(ptr noundef nonnull %3, ptr noundef %1) #20
  %12 = call fastcc float @len_v2v2(ptr noundef %0, ptr noundef nonnull %3) #20
  %13 = fmul float %12, 5.000000e-01
  %14 = tail call fastcc float @saasin(float noundef %13) #20
  %15 = tail call float @llvm.fmuladd.f32(float %14, float -2.000000e+00, float 0x400921FB60000000)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi float [ %10, %6 ], [ %15, %11 ]
  ret float %17
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = alloca [2 x float], align 8
  %4 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = load <2 x float>, ptr %0, align 4, !tbaa !34
  store <2 x float> %5, ptr %3, align 8, !tbaa !34
  %6 = load <2 x float>, ptr %1, align 4, !tbaa !34
  store <2 x float> %6, ptr %4, align 8, !tbaa !34
  call fastcc void @normalize_v2(ptr noundef nonnull %3) #20
  call fastcc void @normalize_v2(ptr noundef nonnull %4) #20
  %7 = call float @angle_normalized_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret float %7
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_signed_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fneg float %6
  %10 = fmul float %8, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %10)
  %12 = tail call fastcc float @dot_v2v2(ptr noundef nonnull %0, ptr noundef nonnull %1) #20
  %13 = tail call float @atan2f(float noundef %11, float noundef %12) #21
  ret float %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saasin(float noundef %0) unnamed_addr #8 !PGOFuncName !51 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @asinf(float noundef %0) #21
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0xBFF921FB60000000, %1 ], [ 0x3FF921FB60000000, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !52 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #20
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !53 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !54 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fsub float %7, %9
  %11 = fmul float %10, %10
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %11)
  %13 = tail call float @llvm.sqrt.f32(float %12)
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !55 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_on_axis_v3v3v3_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %1) #20
  call void @project_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef %3) #20
  call fastcc void @sub_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #20
  call void @project_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %3) #20
  call fastcc void @sub_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %8 = call float @angle_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @project_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %2) #20
  %5 = tail call fastcc float @dot_v3v3(ptr noundef %2, ptr noundef %2) #20
  %6 = fdiv float %4, %5
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fmul float %6, %7
  store float %8, ptr %0, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %6, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %2, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fmul float %6, %14
  %16 = getelementptr inbounds float, ptr %0, i64 2
  store float %15, ptr %16, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !56 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @angle_signed_on_axis_v3v3v3_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %1) #20
  call void @project_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef %3) #20
  call fastcc void @sub_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #20
  call void @project_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %3) #20
  call fastcc void @sub_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %8 = call float @angle_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #20
  %9 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef %3) #20
  %10 = fcmp olt float %9, 0.000000e+00
  %11 = fsub float 0x401921FB60000000, %8
  %12 = select i1 %10, float %11, float %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret float %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !57 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !34
  %15 = load float, ptr %8, align 4, !tbaa !34
  %16 = load float, ptr %2, align 4, !tbaa !34
  %17 = load float, ptr %1, align 4, !tbaa !34
  %18 = load float, ptr %6, align 4, !tbaa !34
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !34
  %23 = load float, ptr %1, align 4, !tbaa !34
  %24 = load float, ptr %10, align 4, !tbaa !34
  %25 = load float, ptr %4, align 4, !tbaa !34
  %26 = load float, ptr %2, align 4, !tbaa !34
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @angle_tri_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %3, ptr noundef %1) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3) #20
  %8 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #20
  %9 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #20
  %10 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #20
  %11 = call float @angle_normalized_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %12 = fsub float 0x400921FB60000000, %11
  store float %12, ptr %0, align 4, !tbaa !34
  %13 = call float @angle_normalized_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %14 = fsub float 0x400921FB60000000, %13
  %15 = getelementptr inbounds float, ptr %0, i64 1
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = load float, ptr %0, align 4, !tbaa !34
  %17 = fadd float %14, %16
  %18 = fsub float 0x400921FB60000000, %17
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @angle_quad_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #6 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %4, ptr noundef %1) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %3, ptr noundef %4) #20
  %10 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #20
  %11 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #20
  %12 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #20
  %13 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #20
  %14 = call float @angle_normalized_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %15 = fsub float 0x400921FB60000000, %14
  store float %15, ptr %0, align 4, !tbaa !34
  %16 = call float @angle_normalized_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  %17 = fsub float 0x400921FB60000000, %16
  %18 = getelementptr inbounds float, ptr %0, i64 1
  store float %17, ptr %18, align 4, !tbaa !34
  %19 = call float @angle_normalized_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  %20 = fsub float 0x400921FB60000000, %19
  %21 = getelementptr inbounds float, ptr %0, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = call float @angle_normalized_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %6) #20
  %23 = fsub float 0x400921FB60000000, %22
  %24 = getelementptr inbounds float, ptr %0, i64 3
  store float %23, ptr %24, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @angle_poly_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #19
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %6 = sext i32 %2 to i64
  %7 = getelementptr ptr, ptr %1, i64 %6
  %8 = getelementptr ptr, ptr %7, i64 -1
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = load ptr, ptr %1, align 8, !tbaa !58
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %9, ptr noundef %10) #20
  %11 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #20
  %12 = icmp sgt i32 %2, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %3
  %14 = zext nneg i32 %2 to i64
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %23, %15 ]
  %17 = trunc i64 %16 to i32
  %18 = urem i32 %17, 3
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 %19
  %21 = getelementptr inbounds ptr, ptr %1, i64 %16
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = add nuw nsw i64 %16, 1
  %24 = icmp eq i64 %23, %14
  %25 = and i64 %23, 4294967295
  %26 = select i1 %24, i64 0, i64 %25
  %27 = getelementptr inbounds ptr, ptr %1, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %20, ptr noundef %22, ptr noundef %28) #20
  %29 = call fastcc float @normalize_v3(ptr noundef nonnull %20) #20
  %30 = trunc i64 %16 to i32
  %31 = add i32 %30, 2
  %32 = urem i32 %31, 3
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 %33
  %35 = call float @angle_normalized_v3v3(ptr noundef nonnull %34, ptr noundef nonnull %20) #20
  %36 = fsub float 0x400921FB60000000, %35
  %37 = getelementptr inbounds float, ptr %0, i64 %16
  store float %36, ptr %37, align 4, !tbaa !34
  %38 = icmp eq i64 %23, %14
  br i1 %38, label %39, label %15, !llvm.loop !60

39:                                               ; preds = %15, %3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @project_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %2) #20
  %5 = tail call fastcc float @dot_v2v2(ptr noundef %2, ptr noundef %2) #20
  %6 = fdiv float %4, %5
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fmul float %6, %7
  store float %8, ptr %0, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %6, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @project_v3_plane(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %2) #20
  %5 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef %1) #20
  %6 = tail call fastcc float @len_squared_v3(ptr noundef %1) #20
  %7 = fdiv float %5, %6
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %4, ptr noundef %1, float noundef %7) #20
  call fastcc void @sub_v3_v3(ptr noundef %0, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !62 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 !PGOFuncName !63 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @bisect_v3_v3v3v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %1) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %3, ptr noundef %2) #20
  %7 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #20
  %8 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #20
  call fastcc void @add_v3_v3v3(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %9 = tail call fastcc float @normalize_v3(ptr noundef %0) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @reflect_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %2) #20
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = fmul float %4, -2.000000e+00
  %8 = tail call float @llvm.fmuladd.f32(float %7, float %6, float %5)
  store float %8, ptr %0, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = tail call float @llvm.fmuladd.f32(float %7, float %12, float %10)
  %14 = getelementptr inbounds float, ptr %0, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %2, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = tail call float @llvm.fmuladd.f32(float %7, float %18, float %16)
  %20 = getelementptr inbounds float, ptr %0, i64 2
  store float %19, ptr %20, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @ortho_basis_v3v3_v3(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = tail call fastcc float @len_squared_v2(ptr noundef %2) #20
  %5 = fcmp ogt float %4, 0x3E80000000000000
  br i1 %5, label %6, label %32

6:                                                ; preds = %3
  %7 = tail call float @sqrtf(float noundef %4) #21
  %8 = fdiv float 1.000000e+00, %7
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %10, %8
  store float %11, ptr %0, align 4, !tbaa !34
  %12 = load float, ptr %2, align 4, !tbaa !34
  %13 = fneg float %12
  %14 = fmul float %8, %13
  %15 = getelementptr inbounds float, ptr %0, i64 1
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %2, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fneg float %18
  %20 = fmul float %14, %19
  store float %20, ptr %1, align 4, !tbaa !34
  %21 = load float, ptr %17, align 4, !tbaa !34
  %22 = load float, ptr %0, align 4, !tbaa !34
  %23 = fmul float %21, %22
  %24 = getelementptr inbounds float, ptr %1, i64 1
  store float %23, ptr %24, align 4, !tbaa !34
  %25 = load float, ptr %2, align 4, !tbaa !34
  %26 = load float, ptr %15, align 4, !tbaa !34
  %27 = load float, ptr %9, align 4, !tbaa !34
  %28 = load float, ptr %0, align 4, !tbaa !34
  %29 = fneg float %27
  %30 = fmul float %28, %29
  %31 = tail call float @llvm.fmuladd.f32(float %25, float %26, float %30)
  br label %39

32:                                               ; preds = %3
  %33 = getelementptr inbounds float, ptr %2, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fcmp olt float %34, 0.000000e+00
  %36 = select i1 %35, float -1.000000e+00, float 1.000000e+00
  store float %36, ptr %0, align 4, !tbaa !34
  %37 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %37, align 4, !tbaa !34
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  %38 = getelementptr inbounds float, ptr %0, i64 1
  store <2 x float> zeroinitializer, ptr %38, align 4, !tbaa !34
  br label %39

39:                                               ; preds = %32, %6
  %40 = phi i64 [ 1, %32 ], [ 2, %6 ]
  %41 = phi float [ 1.000000e+00, %32 ], [ %31, %6 ]
  %42 = getelementptr inbounds float, ptr %1, i64 %40
  store float %41, ptr %42, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v2(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !64 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  ret float %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @axis_dominant_v3_single(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !65 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = tail call float @llvm.fabs.f32(float %2)
  %4 = getelementptr inbounds float, ptr %0, i64 1
  %5 = load <2 x float>, ptr %4, align 4, !tbaa !34
  %6 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %5)
  %7 = extractelement <2 x float> %6, i64 0
  %8 = fcmp ogt float %3, %7
  %9 = extractelement <2 x float> %6, i64 1
  %10 = fcmp ogt float %3, %9
  %11 = select i1 %10, i32 0, i32 2
  %12 = fcmp ogt float %7, %9
  %13 = select i1 %12, i32 1, i32 2
  %14 = select i1 %8, i32 %11, i32 %13
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @rotate_normalized_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #6 {
  %5 = tail call float @cosf(float noundef %3) #21
  %6 = tail call float @sinf(float noundef %3) #21
  %7 = fsub float 1.000000e+00, %5
  %8 = load float, ptr %2, align 4, !tbaa !34
  %9 = fmul float %7, %8
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %8, float %5)
  %11 = load float, ptr %1, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fneg float %15
  %17 = fmul float %6, %16
  %18 = tail call float @llvm.fmuladd.f32(float %9, float %13, float %17)
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fmul float %20, %18
  %22 = tail call float @llvm.fmuladd.f32(float %10, float %11, float %21)
  %23 = fmul float %6, %13
  %24 = tail call float @llvm.fmuladd.f32(float %9, float %15, float %23)
  %25 = getelementptr inbounds float, ptr %1, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = tail call float @llvm.fmuladd.f32(float %24, float %26, float %22)
  store float %27, ptr %0, align 4, !tbaa !34
  %28 = load float, ptr %2, align 4, !tbaa !34
  %29 = fmul float %7, %28
  %30 = load float, ptr %12, align 4, !tbaa !34
  %31 = load float, ptr %14, align 4, !tbaa !34
  %32 = fmul float %6, %31
  %33 = tail call float @llvm.fmuladd.f32(float %29, float %30, float %32)
  %34 = load float, ptr %1, align 4, !tbaa !34
  %35 = fmul float %7, %30
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %30, float %5)
  %37 = load float, ptr %19, align 4, !tbaa !34
  %38 = fmul float %36, %37
  %39 = tail call float @llvm.fmuladd.f32(float %33, float %34, float %38)
  %40 = fneg float %28
  %41 = fmul float %6, %40
  %42 = tail call float @llvm.fmuladd.f32(float %35, float %31, float %41)
  %43 = load float, ptr %25, align 4, !tbaa !34
  %44 = tail call float @llvm.fmuladd.f32(float %42, float %43, float %39)
  %45 = getelementptr inbounds float, ptr %0, i64 1
  store float %44, ptr %45, align 4, !tbaa !34
  %46 = load float, ptr %2, align 4, !tbaa !34
  %47 = fmul float %7, %46
  %48 = load float, ptr %14, align 4, !tbaa !34
  %49 = load float, ptr %12, align 4, !tbaa !34
  %50 = fneg float %49
  %51 = fmul float %6, %50
  %52 = tail call float @llvm.fmuladd.f32(float %47, float %48, float %51)
  %53 = load float, ptr %1, align 4, !tbaa !34
  %54 = fmul float %7, %49
  %55 = fmul float %6, %46
  %56 = tail call float @llvm.fmuladd.f32(float %54, float %48, float %55)
  %57 = load float, ptr %19, align 4, !tbaa !34
  %58 = fmul float %56, %57
  %59 = tail call float @llvm.fmuladd.f32(float %52, float %53, float %58)
  %60 = fmul float %7, %48
  %61 = tail call float @llvm.fmuladd.f32(float %60, float %48, float %5)
  %62 = load float, ptr %25, align 4, !tbaa !34
  %63 = tail call float @llvm.fmuladd.f32(float %61, float %62, float %59)
  %64 = getelementptr inbounds float, ptr %0, i64 2
  store float %63, ptr %64, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @rotate_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #6 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  %6 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %5, ptr noundef %2) #20
  call void @rotate_normalized_v3_v3v3fl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, float noundef %3) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_v2(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fpext float %3 to double
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fpext float %6 to double
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0, double noundef %4, double noundef %7) #20
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_v3(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fpext float %3 to double
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fpext float %9 to double
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %0, double noundef %4, double noundef %7, double noundef %10) #20
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_v4(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = fpext float %3 to double
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds float, ptr %1, i64 3
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fpext float %12 to double
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %0, double noundef %4, double noundef %7, double noundef %10, double noundef %13) #20
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_vn(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %0, i32 noundef %2) #20
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %10, %8 ]
  %10 = add nuw nsw i64 %9, 1
  %11 = getelementptr inbounds float, ptr %1, i64 %9
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fpext float %12 to double
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %13) #20
  %15 = icmp eq i64 %10, %7
  br i1 %15, label %16, label %8, !llvm.loop !66

16:                                               ; preds = %8, %3
  %17 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @minmax_v3v3_v3(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fcmp ogt float %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store float %5, ptr %0, align 4, !tbaa !34
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fcmp ogt float %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store float %12, ptr %9, align 4, !tbaa !34
  br label %15

15:                                               ; preds = %14, %8
  %16 = getelementptr inbounds float, ptr %0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fcmp ogt float %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store float %19, ptr %16, align 4, !tbaa !34
  br label %22

22:                                               ; preds = %21, %15
  %23 = load float, ptr %1, align 4, !tbaa !34
  %24 = load float, ptr %2, align 4, !tbaa !34
  %25 = fcmp olt float %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store float %24, ptr %1, align 4, !tbaa !34
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds float, ptr %1, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = load float, ptr %11, align 4, !tbaa !34
  %31 = fcmp olt float %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store float %30, ptr %28, align 4, !tbaa !34
  br label %33

33:                                               ; preds = %32, %27
  %34 = getelementptr inbounds float, ptr %1, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = load float, ptr %18, align 4, !tbaa !34
  %37 = fcmp olt float %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store float %36, ptr %34, align 4, !tbaa !34
  br label %39

39:                                               ; preds = %38, %33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @minmax_v2v2_v2(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fcmp ogt float %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store float %5, ptr %0, align 4, !tbaa !34
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fcmp ogt float %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store float %12, ptr %9, align 4, !tbaa !34
  br label %15

15:                                               ; preds = %14, %8
  %16 = load float, ptr %1, align 4, !tbaa !34
  %17 = load float, ptr %2, align 4, !tbaa !34
  %18 = fcmp olt float %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store float %17, ptr %1, align 4, !tbaa !34
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = load float, ptr %11, align 4, !tbaa !34
  %24 = fcmp olt float %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store float %23, ptr %21, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %25, %20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @dist_ensure_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #6 {
  %4 = alloca [3 x float], align 4
  %5 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %1, ptr noundef %0) #20, !range !40
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1) #20
  %8 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #20
  call fastcc void @madd_v3_v3v3fl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, float noundef %2) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  br label %9

9:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !67 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fcmp oeq float %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fcmp oeq float %14, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i8 [ 0, %6 ], [ 0, %2 ], [ %18, %12 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #0 !PGOFuncName !68 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @dist_ensure_v2_v2fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) local_unnamed_addr #6 {
  %4 = alloca [2 x float], align 4
  %5 = tail call fastcc zeroext i8 @equals_v2v2(ptr noundef %1, ptr noundef %0) #20, !range !40
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1) #20
  call fastcc void @normalize_v2(ptr noundef nonnull %4) #20
  call fastcc void @madd_v2_v2v2fl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, float noundef %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !69 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fcmp oeq float %8, %10
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i8 [ 0, %2 ], [ %12, %6 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !70 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v2_v2v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #0 !PGOFuncName !71 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @axis_sort_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %0) #20
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fcmp olt float %4, %6
  %8 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  br i1 %7, label %10, label %16

10:                                               ; preds = %2
  %11 = fcmp olt float %9, %4
  br i1 %11, label %12, label %25

12:                                               ; preds = %10
  %13 = load i32, ptr %1, align 4, !tbaa !72
  %14 = getelementptr inbounds i32, ptr %1, i64 2
  %15 = load i32, ptr %14, align 4, !tbaa !72
  store i32 %15, ptr %1, align 4, !tbaa !72
  store i32 %13, ptr %14, align 4, !tbaa !72
  br label %25

16:                                               ; preds = %2
  %17 = fcmp olt float %6, %9
  %18 = load i32, ptr %1, align 4, !tbaa !72
  br i1 %17, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds i32, ptr %1, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !72
  store i32 %21, ptr %1, align 4, !tbaa !72
  store i32 %18, ptr %20, align 4, !tbaa !72
  br label %25

22:                                               ; preds = %16
  %23 = getelementptr inbounds i32, ptr %1, i64 2
  %24 = load i32, ptr %23, align 4, !tbaa !72
  store i32 %24, ptr %1, align 4, !tbaa !72
  store i32 %18, ptr %23, align 4, !tbaa !72
  br label %25

25:                                               ; preds = %19, %22, %10, %12
  %26 = phi float [ %4, %19 ], [ %6, %22 ], [ %6, %10 ], [ %6, %12 ]
  %27 = phi float [ %9, %19 ], [ %4, %22 ], [ %9, %10 ], [ %4, %12 ]
  %28 = fcmp olt float %27, %26
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds i32, ptr %1, i64 1
  %31 = load <2 x i32>, ptr %30, align 4, !tbaa !72
  %32 = shufflevector <2 x i32> %31, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %32, ptr %30, align 4, !tbaa !72
  br label %33

33:                                               ; preds = %29, %25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local double @dot_vn_vn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %2, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = getelementptr inbounds float, ptr %0, i64 %7
  br label %10

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %15, %10 ], [ %2, %5 ]
  %12 = phi ptr [ %18, %10 ], [ %8, %5 ]
  %13 = phi ptr [ %16, %10 ], [ %9, %5 ]
  %14 = phi double [ %22, %10 ], [ 0.000000e+00, %5 ]
  %15 = add nsw i32 %11, -1
  %16 = getelementptr inbounds float, ptr %13, i64 -1
  %17 = load float, ptr %13, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %12, i64 -1
  %19 = load float, ptr %12, align 4, !tbaa !34
  %20 = fmul float %17, %19
  %21 = fpext float %20 to double
  %22 = fadd double %14, %21
  %23 = icmp eq i32 %15, 0
  br i1 %23, label %24, label %10, !llvm.loop !74

24:                                               ; preds = %10, %3
  %25 = phi double [ 0.000000e+00, %3 ], [ %22, %10 ]
  ret double %25
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local double @len_squared_vn(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = sext i32 %1 to i64
  %6 = getelementptr float, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %12, %7 ], [ %1, %4 ]
  %9 = phi ptr [ %11, %7 ], [ %6, %4 ]
  %10 = phi double [ %16, %7 ], [ 0.000000e+00, %4 ]
  %11 = getelementptr inbounds float, ptr %9, i64 -1
  %12 = add nsw i32 %8, -1
  %13 = load float, ptr %11, align 4, !tbaa !34
  %14 = fpext float %13 to double
  %15 = tail call fastcc double @sqr_db(double noundef %14) #20
  %16 = fadd double %10, %15
  %17 = icmp eq i32 %12, 0
  br i1 %17, label %18, label %7, !llvm.loop !75

18:                                               ; preds = %7, %2
  %19 = phi double [ 0.000000e+00, %2 ], [ %16, %7 ]
  ret double %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @sqr_db(double noundef %0) unnamed_addr #13 !PGOFuncName !76 {
  %2 = fmul double %0, %0
  ret double %2
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @normalize_vn_vn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = tail call double @len_squared_vn(ptr noundef %1, i32 noundef %2) #20
  %5 = fcmp ogt double %4, 1.000000e-35
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call double @sqrt(double noundef %4) #21
  %8 = fptrunc double %7 to float
  %9 = fdiv float 1.000000e+00, %8
  tail call void @mul_vn_vn_fl(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %9) #20
  br label %11

10:                                               ; preds = %3
  tail call void @fill_vn_fl(ptr noundef %0, i32 noundef %2, float noundef 0.000000e+00) #20
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi float [ %8, %6 ], [ 0.000000e+00, %10 ]
  ret float %12
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mul_vn_vn_fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, float noundef %3) local_unnamed_addr #14 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %4
  %7 = add nsw i32 %2, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds float, ptr %1, i64 %8
  %10 = getelementptr inbounds float, ptr %0, i64 %8
  br label %11

11:                                               ; preds = %6, %11
  %12 = phi i32 [ %15, %11 ], [ %2, %6 ]
  %13 = phi ptr [ %16, %11 ], [ %9, %6 ]
  %14 = phi ptr [ %19, %11 ], [ %10, %6 ]
  %15 = add nsw i32 %12, -1
  %16 = getelementptr inbounds float, ptr %13, i64 -1
  %17 = load float, ptr %13, align 4, !tbaa !34
  %18 = fmul float %17, %3
  %19 = getelementptr inbounds float, ptr %14, i64 -1
  store float %18, ptr %14, align 4, !tbaa !34
  %20 = icmp eq i32 %15, 0
  br i1 %20, label %21, label %11, !llvm.loop !77

21:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @fill_vn_fl(ptr nocapture noundef writeonly %0, i32 noundef %1, float noundef %2) local_unnamed_addr #15 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = sext i32 %1 to i64
  %7 = getelementptr float, ptr %0, i64 %6
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %12, %8 ], [ %1, %5 ]
  %10 = phi ptr [ %11, %8 ], [ %7, %5 ]
  %11 = getelementptr inbounds float, ptr %10, i64 -1
  %12 = add nsw i32 %9, -1
  store float %2, ptr %11, align 4, !tbaa !34
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %8, !llvm.loop !78

14:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @normalize_vn(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = tail call float @normalize_vn_vn(ptr noundef %0, ptr noundef %0, i32 noundef %1) #20
  ret float %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @range_vn_i(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #15 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %1, -1
  %7 = add nsw i32 %6, %2
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = zext i32 %1 to i64
  %11 = add nuw nsw i64 %10, 3
  %12 = and i64 %11, 8589934588
  %13 = add nsw i64 %10, -1
  %14 = insertelement <4 x i64> poison, i64 %13, i64 0
  %15 = shufflevector <4 x i64> %14, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %16

16:                                               ; preds = %49, %5
  %17 = phi i64 [ 0, %5 ], [ %50, %49 ]
  %18 = trunc i64 %17 to i32
  %19 = sub i32 %7, %18
  %20 = insertelement <4 x i64> poison, i64 %17, i64 0
  %21 = shufflevector <4 x i64> %20, <4 x i64> poison, <4 x i32> zeroinitializer
  %22 = or disjoint <4 x i64> %21, <i64 0, i64 1, i64 2, i64 3>
  %23 = icmp ule <4 x i64> %22, %15
  %24 = extractelement <4 x i1> %23, i64 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = mul i64 %17, -4
  %27 = getelementptr i8, ptr %9, i64 %26
  store i32 %19, ptr %27, align 4, !tbaa !72
  br label %28

28:                                               ; preds = %25, %16
  %29 = extractelement <4 x i1> %23, i64 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = xor i64 %17, -1
  %32 = shl i64 %31, 2
  %33 = getelementptr i8, ptr %9, i64 %32
  %34 = add i32 %19, -1
  store i32 %34, ptr %33, align 4, !tbaa !72
  br label %35

35:                                               ; preds = %30, %28
  %36 = extractelement <4 x i1> %23, i64 2
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = shl i64 %17, 2
  %39 = sub nuw nsw i64 -8, %38
  %40 = getelementptr i8, ptr %9, i64 %39
  %41 = add i32 %19, -2
  store i32 %41, ptr %40, align 4, !tbaa !72
  br label %42

42:                                               ; preds = %37, %35
  %43 = extractelement <4 x i1> %23, i64 3
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = shl i64 %17, 2
  %46 = sub nuw nsw i64 -12, %45
  %47 = getelementptr i8, ptr %9, i64 %46
  %48 = add i32 %19, -3
  store i32 %48, ptr %47, align 4, !tbaa !72
  br label %49

49:                                               ; preds = %44, %42
  %50 = add i64 %17, 4
  %51 = icmp eq i64 %50, %12
  br i1 %51, label %52, label %16, !llvm.loop !79

52:                                               ; preds = %49, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @range_vn_fl(ptr nocapture noundef writeonly %0, i32 noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #15 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %66, label %6

6:                                                ; preds = %4
  %7 = sext i32 %1 to i64
  %8 = getelementptr float, ptr %0, i64 %7
  %9 = zext i32 %1 to i64
  %10 = add nuw nsw i64 %9, 3
  %11 = and i64 %10, 8589934588
  %12 = add nsw i64 %9, -1
  %13 = insertelement <4 x i64> poison, i64 %12, i64 0
  %14 = shufflevector <4 x i64> %13, <4 x i64> poison, <4 x i32> zeroinitializer
  %15 = insertelement <4 x i32> poison, i32 %1, i64 0
  %16 = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> zeroinitializer
  %17 = add <4 x i32> %16, <i32 0, i32 -1, i32 -2, i32 -3>
  %18 = insertelement <4 x float> poison, float %3, i64 0
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> zeroinitializer
  %20 = insertelement <4 x float> poison, float %2, i64 0
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> zeroinitializer
  %22 = getelementptr float, ptr %8, i64 -1
  %23 = getelementptr float, ptr %8, i64 -1
  %24 = getelementptr float, ptr %8, i64 -1
  %25 = getelementptr float, ptr %8, i64 -1
  br label %26

26:                                               ; preds = %62, %6
  %27 = phi i64 [ 0, %6 ], [ %63, %62 ]
  %28 = phi <4 x i32> [ %17, %6 ], [ %64, %62 ]
  %29 = insertelement <4 x i64> poison, i64 %27, i64 0
  %30 = shufflevector <4 x i64> %29, <4 x i64> poison, <4 x i32> zeroinitializer
  %31 = or disjoint <4 x i64> %30, <i64 0, i64 1, i64 2, i64 3>
  %32 = icmp ule <4 x i64> %31, %14
  %33 = add nsw <4 x i32> %28, <i32 -1, i32 -1, i32 -1, i32 -1>
  %34 = sitofp <4 x i32> %33 to <4 x float>
  %35 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %19, <4 x float> %34, <4 x float> %21)
  %36 = extractelement <4 x i1> %32, i64 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = mul i64 %27, -4
  %39 = getelementptr i8, ptr %22, i64 %38
  %40 = extractelement <4 x float> %35, i64 0
  store float %40, ptr %39, align 4, !tbaa !34
  br label %41

41:                                               ; preds = %37, %26
  %42 = extractelement <4 x i1> %32, i64 1
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  %44 = xor i64 %27, -1
  %45 = shl i64 %44, 2
  %46 = getelementptr i8, ptr %23, i64 %45
  %47 = extractelement <4 x float> %35, i64 1
  store float %47, ptr %46, align 4, !tbaa !34
  br label %48

48:                                               ; preds = %43, %41
  %49 = extractelement <4 x i1> %32, i64 2
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = shl i64 %27, 2
  %52 = sub nuw nsw i64 -8, %51
  %53 = getelementptr i8, ptr %24, i64 %52
  %54 = extractelement <4 x float> %35, i64 2
  store float %54, ptr %53, align 4, !tbaa !34
  br label %55

55:                                               ; preds = %50, %48
  %56 = extractelement <4 x i1> %32, i64 3
  br i1 %56, label %57, label %62

57:                                               ; preds = %55
  %58 = shl i64 %27, 2
  %59 = sub nuw nsw i64 -12, %58
  %60 = getelementptr i8, ptr %25, i64 %59
  %61 = extractelement <4 x float> %35, i64 3
  store float %61, ptr %60, align 4, !tbaa !34
  br label %62

62:                                               ; preds = %57, %55
  %63 = add i64 %27, 4
  %64 = add <4 x i32> %28, <i32 -4, i32 -4, i32 -4, i32 -4>
  %65 = icmp eq i64 %63, %11
  br i1 %65, label %66, label %26, !llvm.loop !82

66:                                               ; preds = %62, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @negate_vn(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = sext i32 %1 to i64
  %6 = getelementptr float, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %11, %7 ], [ %1, %4 ]
  %9 = phi ptr [ %10, %7 ], [ %6, %4 ]
  %10 = getelementptr inbounds float, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  %12 = load float, ptr %10, align 4, !tbaa !34
  %13 = fneg float %12
  store float %13, ptr %10, align 4, !tbaa !34
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %7, !llvm.loop !83

15:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @negate_vn_vn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #14 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %2, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = getelementptr inbounds float, ptr %0, i64 %7
  br label %10

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %14, %10 ], [ %2, %5 ]
  %12 = phi ptr [ %15, %10 ], [ %8, %5 ]
  %13 = phi ptr [ %18, %10 ], [ %9, %5 ]
  %14 = add nsw i32 %11, -1
  %15 = getelementptr inbounds float, ptr %12, i64 -1
  %16 = load float, ptr %12, align 4, !tbaa !34
  %17 = fneg float %16
  %18 = getelementptr inbounds float, ptr %13, i64 -1
  store float %17, ptr %13, align 4, !tbaa !34
  %19 = icmp eq i32 %14, 0
  br i1 %19, label %20, label %10, !llvm.loop !84

20:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mul_vn_fl(ptr nocapture noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #14 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = sext i32 %1 to i64
  %7 = getelementptr float, ptr %0, i64 %6
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %12, %8 ], [ %1, %5 ]
  %10 = phi ptr [ %11, %8 ], [ %7, %5 ]
  %11 = getelementptr inbounds float, ptr %10, i64 -1
  %12 = add nsw i32 %9, -1
  %13 = load float, ptr %11, align 4, !tbaa !34
  %14 = fmul float %13, %2
  store float %14, ptr %11, align 4, !tbaa !34
  %15 = icmp eq i32 %12, 0
  br i1 %15, label %16, label %8, !llvm.loop !85

16:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @add_vn_vn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #14 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %2, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = getelementptr inbounds float, ptr %0, i64 %7
  br label %10

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %14, %10 ], [ %2, %5 ]
  %12 = phi ptr [ %15, %10 ], [ %8, %5 ]
  %13 = phi ptr [ %17, %10 ], [ %9, %5 ]
  %14 = add nsw i32 %11, -1
  %15 = getelementptr inbounds float, ptr %12, i64 -1
  %16 = load float, ptr %12, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %13, i64 -1
  %18 = load float, ptr %13, align 4, !tbaa !34
  %19 = fadd float %16, %18
  store float %19, ptr %13, align 4, !tbaa !34
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %21, label %10, !llvm.loop !86

21:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @add_vn_vnvn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #14 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %4
  %7 = add nsw i32 %3, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds float, ptr %2, i64 %8
  %10 = getelementptr inbounds float, ptr %1, i64 %8
  %11 = getelementptr inbounds float, ptr %0, i64 %8
  br label %12

12:                                               ; preds = %6, %12
  %13 = phi i32 [ %17, %12 ], [ %3, %6 ]
  %14 = phi ptr [ %20, %12 ], [ %9, %6 ]
  %15 = phi ptr [ %18, %12 ], [ %10, %6 ]
  %16 = phi ptr [ %23, %12 ], [ %11, %6 ]
  %17 = add nsw i32 %13, -1
  %18 = getelementptr inbounds float, ptr %15, i64 -1
  %19 = load float, ptr %15, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %14, i64 -1
  %21 = load float, ptr %14, align 4, !tbaa !34
  %22 = fadd float %19, %21
  %23 = getelementptr inbounds float, ptr %16, i64 -1
  store float %22, ptr %16, align 4, !tbaa !34
  %24 = icmp eq i32 %17, 0
  br i1 %24, label %25, label %12, !llvm.loop !87

25:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @madd_vn_vn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) local_unnamed_addr #14 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %4
  %7 = add nsw i32 %3, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds float, ptr %1, i64 %8
  %10 = getelementptr inbounds float, ptr %0, i64 %8
  br label %11

11:                                               ; preds = %6, %11
  %12 = phi i32 [ %15, %11 ], [ %3, %6 ]
  %13 = phi ptr [ %16, %11 ], [ %9, %6 ]
  %14 = phi ptr [ %18, %11 ], [ %10, %6 ]
  %15 = add nsw i32 %12, -1
  %16 = getelementptr inbounds float, ptr %13, i64 -1
  %17 = load float, ptr %13, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %14, i64 -1
  %19 = load float, ptr %14, align 4, !tbaa !34
  %20 = tail call float @llvm.fmuladd.f32(float %17, float %2, float %19)
  store float %20, ptr %14, align 4, !tbaa !34
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %22, label %11, !llvm.loop !88

22:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @madd_vn_vnvn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, i32 noundef %4) local_unnamed_addr #14 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %5
  %8 = add nsw i32 %4, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds float, ptr %2, i64 %9
  %11 = getelementptr inbounds float, ptr %1, i64 %9
  %12 = getelementptr inbounds float, ptr %0, i64 %9
  br label %13

13:                                               ; preds = %7, %13
  %14 = phi i32 [ %18, %13 ], [ %4, %7 ]
  %15 = phi ptr [ %21, %13 ], [ %10, %7 ]
  %16 = phi ptr [ %19, %13 ], [ %11, %7 ]
  %17 = phi ptr [ %24, %13 ], [ %12, %7 ]
  %18 = add nsw i32 %14, -1
  %19 = getelementptr inbounds float, ptr %16, i64 -1
  %20 = load float, ptr %16, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %15, i64 -1
  %22 = load float, ptr %15, align 4, !tbaa !34
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %3, float %20)
  %24 = getelementptr inbounds float, ptr %17, i64 -1
  store float %23, ptr %17, align 4, !tbaa !34
  %25 = icmp eq i32 %18, 0
  br i1 %25, label %26, label %13, !llvm.loop !89

26:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sub_vn_vn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #14 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %2, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = getelementptr inbounds float, ptr %0, i64 %7
  br label %10

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %14, %10 ], [ %2, %5 ]
  %12 = phi ptr [ %15, %10 ], [ %8, %5 ]
  %13 = phi ptr [ %17, %10 ], [ %9, %5 ]
  %14 = add nsw i32 %11, -1
  %15 = getelementptr inbounds float, ptr %12, i64 -1
  %16 = load float, ptr %12, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %13, i64 -1
  %18 = load float, ptr %13, align 4, !tbaa !34
  %19 = fsub float %18, %16
  store float %19, ptr %13, align 4, !tbaa !34
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %21, label %10, !llvm.loop !90

21:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sub_vn_vnvn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #14 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %4
  %7 = add nsw i32 %3, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds float, ptr %2, i64 %8
  %10 = getelementptr inbounds float, ptr %1, i64 %8
  %11 = getelementptr inbounds float, ptr %0, i64 %8
  br label %12

12:                                               ; preds = %6, %12
  %13 = phi i32 [ %17, %12 ], [ %3, %6 ]
  %14 = phi ptr [ %20, %12 ], [ %9, %6 ]
  %15 = phi ptr [ %18, %12 ], [ %10, %6 ]
  %16 = phi ptr [ %23, %12 ], [ %11, %6 ]
  %17 = add nsw i32 %13, -1
  %18 = getelementptr inbounds float, ptr %15, i64 -1
  %19 = load float, ptr %15, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %14, i64 -1
  %21 = load float, ptr %14, align 4, !tbaa !34
  %22 = fsub float %19, %21
  %23 = getelementptr inbounds float, ptr %16, i64 -1
  store float %22, ptr %16, align 4, !tbaa !34
  %24 = icmp eq i32 %17, 0
  br i1 %24, label %25, label %12, !llvm.loop !91

25:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @msub_vn_vn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) local_unnamed_addr #14 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %4
  %7 = add nsw i32 %3, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds float, ptr %1, i64 %8
  %10 = getelementptr inbounds float, ptr %0, i64 %8
  br label %11

11:                                               ; preds = %6, %11
  %12 = phi i32 [ %15, %11 ], [ %3, %6 ]
  %13 = phi ptr [ %16, %11 ], [ %9, %6 ]
  %14 = phi ptr [ %18, %11 ], [ %10, %6 ]
  %15 = add nsw i32 %12, -1
  %16 = getelementptr inbounds float, ptr %13, i64 -1
  %17 = load float, ptr %13, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %14, i64 -1
  %19 = load float, ptr %14, align 4, !tbaa !34
  %20 = fneg float %17
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %2, float %19)
  store float %21, ptr %14, align 4, !tbaa !34
  %22 = icmp eq i32 %15, 0
  br i1 %22, label %23, label %11, !llvm.loop !92

23:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @msub_vn_vnvn(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, i32 noundef %4) local_unnamed_addr #14 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %5
  %8 = add nsw i32 %4, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds float, ptr %2, i64 %9
  %11 = getelementptr inbounds float, ptr %1, i64 %9
  %12 = getelementptr inbounds float, ptr %0, i64 %9
  br label %13

13:                                               ; preds = %7, %13
  %14 = phi i32 [ %18, %13 ], [ %4, %7 ]
  %15 = phi ptr [ %21, %13 ], [ %10, %7 ]
  %16 = phi ptr [ %19, %13 ], [ %11, %7 ]
  %17 = phi ptr [ %25, %13 ], [ %12, %7 ]
  %18 = add nsw i32 %14, -1
  %19 = getelementptr inbounds float, ptr %16, i64 -1
  %20 = load float, ptr %16, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %15, i64 -1
  %22 = load float, ptr %15, align 4, !tbaa !34
  %23 = fneg float %22
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %3, float %20)
  %25 = getelementptr inbounds float, ptr %17, i64 -1
  store float %24, ptr %17, align 4, !tbaa !34
  %26 = icmp eq i32 %18, 0
  br i1 %26, label %27, label %13, !llvm.loop !93

27:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @interp_vn_vn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) local_unnamed_addr #14 {
  %5 = fsub float 1.000000e+00, %2
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = add nsw i32 %3, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds float, ptr %1, i64 %9
  %11 = getelementptr inbounds float, ptr %0, i64 %9
  br label %12

12:                                               ; preds = %7, %12
  %13 = phi i32 [ %16, %12 ], [ %3, %7 ]
  %14 = phi ptr [ %22, %12 ], [ %10, %7 ]
  %15 = phi ptr [ %21, %12 ], [ %11, %7 ]
  %16 = add nsw i32 %13, -1
  %17 = load float, ptr %15, align 4, !tbaa !34
  %18 = load float, ptr %14, align 4, !tbaa !34
  %19 = fmul float %18, %2
  %20 = tail call float @llvm.fmuladd.f32(float %5, float %17, float %19)
  store float %20, ptr %15, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %15, i64 -1
  %22 = getelementptr inbounds float, ptr %14, i64 -1
  %23 = icmp eq i32 %16, 0
  br i1 %23, label %24, label %12, !llvm.loop !94

24:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @fill_vn_i(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #15 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = sext i32 %1 to i64
  %7 = getelementptr i32, ptr %0, i64 %6
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %12, %8 ], [ %1, %5 ]
  %10 = phi ptr [ %11, %8 ], [ %7, %5 ]
  %11 = getelementptr inbounds i32, ptr %10, i64 -1
  %12 = add nsw i32 %9, -1
  store i32 %2, ptr %11, align 4, !tbaa !72
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %8, !llvm.loop !95

14:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @fill_vn_short(ptr nocapture noundef writeonly %0, i32 noundef %1, i16 noundef signext %2) local_unnamed_addr #15 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = sext i32 %1 to i64
  %7 = getelementptr i16, ptr %0, i64 %6
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %12, %8 ], [ %1, %5 ]
  %10 = phi ptr [ %11, %8 ], [ %7, %5 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 -1
  %12 = add nsw i32 %9, -1
  store i16 %2, ptr %11, align 2, !tbaa !96
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %8, !llvm.loop !98

14:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @fill_vn_ushort(ptr nocapture noundef writeonly %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #15 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = sext i32 %1 to i64
  %7 = getelementptr i16, ptr %0, i64 %6
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %12, %8 ], [ %1, %5 ]
  %10 = phi ptr [ %11, %8 ], [ %7, %5 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 -1
  %12 = add nsw i32 %9, -1
  store i16 %2, ptr %11, align 2, !tbaa !96
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %8, !llvm.loop !99

14:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #16 !PGOFuncName !100 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !101 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #20
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #21
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #20
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #20
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 !PGOFuncName !102 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #16 !PGOFuncName !103 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @asinf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !104 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #20
  %3 = tail call float @sqrtf(float noundef %2) #21
  ret float %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #18

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"math_vector.c:dot_v3v3"}
!39 = !{!"math_vector.c:dot_v2v2"}
!40 = !{i8 0, i8 2}
!41 = !{i32 0, i32 3}
!42 = !{!"math_vector.c:normalize_v3"}
!43 = !{!"math_vector.c:copy_v3_v3"}
!44 = !{!"math_vector.c:copy_v2_v2"}
!45 = !{!36, !36, i64 0}
!46 = !{!"math_vector.c:add_v3_v3v3"}
!47 = !{!"math_vector.c:mul_v3_fl"}
!48 = !{!"math_vector.c:sub_v3_v3v3"}
!49 = !{!"math_vector.c:normalize_v3_v3"}
!50 = !{!"math_vector.c:normalize_v2"}
!51 = !{!"math_vector.c:saasin"}
!52 = !{!"math_vector.c:len_v3v3"}
!53 = !{!"math_vector.c:negate_v3_v3"}
!54 = !{!"math_vector.c:len_v2v2"}
!55 = !{!"math_vector.c:negate_v2_v2"}
!56 = !{!"math_vector.c:sub_v3_v3"}
!57 = !{!"math_vector.c:cross_v3_v3v3"}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !36, i64 0}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"math_vector.c:len_squared_v3"}
!63 = !{!"math_vector.c:mul_v3_v3fl"}
!64 = !{!"math_vector.c:len_squared_v2"}
!65 = !{!"math_vector.c:axis_dominant_v3_single"}
!66 = distinct !{!66, !61}
!67 = !{!"math_vector.c:equals_v3v3"}
!68 = !{!"math_vector.c:madd_v3_v3v3fl"}
!69 = !{!"math_vector.c:equals_v2v2"}
!70 = !{!"math_vector.c:sub_v2_v2v2"}
!71 = !{!"math_vector.c:madd_v2_v2v2fl"}
!72 = !{!73, !73, i64 0}
!73 = !{!"int", !36, i64 0}
!74 = distinct !{!74, !61}
!75 = distinct !{!75, !61}
!76 = !{!"math_vector.c:sqr_db"}
!77 = distinct !{!77, !61}
!78 = distinct !{!78, !61}
!79 = distinct !{!79, !61, !80, !81}
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = distinct !{!82, !61, !80, !81}
!83 = distinct !{!83, !61}
!84 = distinct !{!84, !61}
!85 = distinct !{!85, !61}
!86 = distinct !{!86, !61}
!87 = distinct !{!87, !61}
!88 = distinct !{!88, !61}
!89 = distinct !{!89, !61}
!90 = distinct !{!90, !61}
!91 = distinct !{!91, !61}
!92 = distinct !{!92, !61}
!93 = distinct !{!93, !61}
!94 = distinct !{!94, !61}
!95 = distinct !{!95, !61}
!96 = !{!97, !97, i64 0}
!97 = !{!"short", !36, i64 0}
!98 = distinct !{!98, !61}
!99 = distinct !{!99, !61}
!100 = !{!"math_vector.c:zero_v3"}
!101 = !{!"math_vector.c:normalize_v2_v2"}
!102 = !{!"math_vector.c:mul_v2_v2fl"}
!103 = !{!"math_vector.c:zero_v2"}
!104 = !{!"math_vector.c:len_v3"}
