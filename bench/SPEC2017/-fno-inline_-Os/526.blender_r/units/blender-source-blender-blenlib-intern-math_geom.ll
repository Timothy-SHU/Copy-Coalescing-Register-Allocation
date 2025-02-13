; ModuleID = 'blender/source/blender/blenlib/intern/math_geom.c'
source_filename = "blender/source/blender/blenlib/intern/math_geom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.IsectRayAABBData = type { [3 x float], [3 x float], [3 x i32] }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.fill_poly_v2i_n = private unnamed_addr constant [16 x i8] c"fill_poly_v2i_n\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"interp_sparse_array up\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"interp_sparse_array tup\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"interp_sparse_array tdown\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @cent_tri_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @cent_quad_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %2, align 4, !tbaa !34
  %8 = fadd float %6, %7
  %9 = load float, ptr %3, align 4, !tbaa !34
  %10 = fadd float %8, %9
  %11 = load float, ptr %4, align 4, !tbaa !34
  %12 = fadd float %10, %11
  %13 = fmul float %12, 2.500000e-01
  store float %13, ptr %0, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fadd float %15, %17
  %19 = getelementptr inbounds float, ptr %3, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fadd float %18, %20
  %22 = getelementptr inbounds float, ptr %4, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fadd float %21, %23
  %25 = fmul float %24, 2.500000e-01
  %26 = getelementptr inbounds float, ptr %0, i64 1
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds float, ptr %2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fadd float %28, %30
  %32 = getelementptr inbounds float, ptr %3, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fadd float %31, %33
  %35 = getelementptr inbounds float, ptr %4, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fadd float %34, %36
  %38 = fmul float %37, 2.500000e-01
  %39 = getelementptr inbounds float, ptr %0, i64 2
  store float %38, ptr %39, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @normal_tri_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = fsub float %5, %6
  %8 = load float, ptr %3, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %3, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = load <2 x float>, ptr %10, align 4, !tbaa !34
  %16 = extractelement <2 x float> %15, i64 0
  %17 = fsub float %16, %12
  %18 = load <2 x float>, ptr %9, align 4, !tbaa !34
  %19 = fsub <2 x float> %18, %15
  %20 = insertelement <2 x float> %15, float %6, i64 0
  %21 = insertelement <2 x float> poison, float %8, i64 0
  %22 = insertelement <2 x float> %21, float %14, i64 1
  %23 = fsub <2 x float> %20, %22
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %25 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %26 = insertelement <2 x float> %25, float %7, i64 1
  %27 = fneg <2 x float> %26
  %28 = insertelement <2 x float> %23, float %17, i64 0
  %29 = fmul <2 x float> %28, %27
  %30 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %24, <2 x float> %29)
  store <2 x float> %30, ptr %0, align 4, !tbaa !34
  %31 = extractelement <2 x float> %19, i64 0
  %32 = fneg float %31
  %33 = extractelement <2 x float> %23, i64 0
  %34 = fmul float %33, %32
  %35 = tail call float @llvm.fmuladd.f32(float %7, float %17, float %34)
  %36 = getelementptr inbounds float, ptr %0, i64 2
  store float %35, ptr %36, align 4, !tbaa !34
  %37 = tail call fastcc float @normalize_v3(ptr noundef nonnull %0) #18
  ret float %37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !38 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #18
  ret float %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @normal_quad_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #1 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %3, align 4, !tbaa !34
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = getelementptr inbounds float, ptr %3, i64 1
  %11 = load float, ptr %2, align 4, !tbaa !34
  %12 = load float, ptr %4, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %4, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %4, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = load <2 x float>, ptr %9, align 4, !tbaa !34
  %23 = load <2 x float>, ptr %10, align 4, !tbaa !34
  %24 = fsub <2 x float> %22, %23
  %25 = insertelement <2 x float> poison, float %19, i64 0
  %26 = insertelement <2 x float> %25, float %11, i64 1
  %27 = insertelement <2 x float> poison, float %21, i64 0
  %28 = insertelement <2 x float> %27, float %12, i64 1
  %29 = fsub <2 x float> %26, %28
  %30 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %31 = insertelement <2 x float> %30, float %8, i64 1
  %32 = fneg <2 x float> %31
  %33 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %34 = insertelement <2 x float> %33, float %17, i64 0
  %35 = fmul <2 x float> %34, %32
  %36 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %29, <2 x float> %35)
  store <2 x float> %36, ptr %0, align 4, !tbaa !34
  %37 = extractelement <2 x float> %24, i64 0
  %38 = fneg float %37
  %39 = extractelement <2 x float> %29, i64 1
  %40 = fmul float %39, %38
  %41 = tail call float @llvm.fmuladd.f32(float %8, float %17, float %40)
  %42 = getelementptr inbounds float, ptr %0, i64 2
  store float %41, ptr %42, align 4, !tbaa !34
  %43 = tail call fastcc float @normalize_v3(ptr noundef nonnull %0) #18
  ret float %43
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @normal_poly_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #4 {
  tail call fastcc void @zero_v3(ptr noundef %0) #18
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = add i32 %2, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [3 x float], ptr %1, i64 %7
  %9 = zext i32 %2 to i64
  br label %10

10:                                               ; preds = %5, %10
  %11 = phi i64 [ 0, %5 ], [ %14, %10 ]
  %12 = phi ptr [ %1, %5 ], [ %15, %10 ]
  %13 = phi ptr [ %8, %5 ], [ %12, %10 ]
  tail call fastcc void @add_newell_cross_v3_v3v3(ptr noundef %0, ptr noundef %13, ptr noundef %12) #18
  %14 = add nuw nsw i64 %11, 1
  %15 = getelementptr inbounds [3 x float], ptr %1, i64 %14
  %16 = icmp eq i64 %14, %9
  br i1 %16, label %17, label %10, !llvm.loop !39

17:                                               ; preds = %10, %3
  %18 = tail call fastcc float @normalize_v3(ptr noundef %0) #18
  ret float %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !41 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_newell_cross_v3_v3v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !42 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = fsub float %5, %7
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %2, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fadd float %10, %12
  %14 = load float, ptr %0, align 4, !tbaa !34
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %14)
  store float %15, ptr %0, align 4, !tbaa !34
  %16 = load float, ptr %9, align 4, !tbaa !34
  %17 = load float, ptr %11, align 4, !tbaa !34
  %18 = fsub float %16, %17
  %19 = load float, ptr %1, align 4, !tbaa !34
  %20 = load float, ptr %2, align 4, !tbaa !34
  %21 = fadd float %19, %20
  %22 = getelementptr inbounds float, ptr %0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %21, float %23)
  store float %24, ptr %22, align 4, !tbaa !34
  %25 = load float, ptr %1, align 4, !tbaa !34
  %26 = load float, ptr %2, align 4, !tbaa !34
  %27 = fsub float %25, %26
  %28 = load float, ptr %4, align 4, !tbaa !34
  %29 = load float, ptr %6, align 4, !tbaa !34
  %30 = fadd float %28, %29
  %31 = getelementptr inbounds float, ptr %0, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = tail call float @llvm.fmuladd.f32(float %27, float %30, float %32)
  store float %33, ptr %31, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @area_quad_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %0) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %3, ptr noundef %0) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %8 = call fastcc float @len_v3(ptr noundef nonnull %7) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %3, ptr noundef %2) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %9 = call fastcc float @len_v3(ptr noundef nonnull %7) #18
  %10 = fadd float %8, %9
  %11 = fmul float %10, 5.000000e-01
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret float %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !43 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !44 {
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
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #1 !PGOFuncName !45 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #18
  %3 = tail call float @sqrtf(float noundef %2) #20
  ret float %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @area_tri_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %1) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %7 = call fastcc float @len_v3(ptr noundef nonnull %6) #18
  %8 = fmul float %7, 5.000000e-01
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret float %8
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @area_tri_signed_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %1) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %8 = call fastcc float @len_v3(ptr noundef nonnull %7) #18
  %9 = fmul float %8, 5.000000e-01
  %10 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef %3) #18
  %11 = fcmp olt float %10, 0.000000e+00
  %12 = fneg float %9
  %13 = select i1 %11, float %12, float %9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !46 {
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

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @area_poly_v3(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %4 = call float @normal_poly_v3(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %1) #18
  %5 = fmul float %4, 5.000000e-01
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret float %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local float @cross_poly_v2(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [2 x float], ptr %0, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %7, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  br label %11

11:                                               ; preds = %4, %11
  %12 = phi float [ %20, %11 ], [ %10, %4 ]
  %13 = phi float [ %17, %11 ], [ %8, %4 ]
  %14 = phi ptr [ %23, %11 ], [ %0, %4 ]
  %15 = phi float [ %22, %11 ], [ 0.000000e+00, %4 ]
  %16 = phi i32 [ %24, %11 ], [ 0, %4 ]
  %17 = load float, ptr %14, align 4, !tbaa !34
  %18 = fsub float %17, %13
  %19 = getelementptr inbounds float, ptr %14, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fadd float %20, %12
  %22 = tail call float @llvm.fmuladd.f32(float %18, float %21, float %15)
  %23 = getelementptr inbounds float, ptr %14, i64 2
  %24 = add nuw i32 %16, 1
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %11, !llvm.loop !47

26:                                               ; preds = %11, %2
  %27 = phi float [ 0.000000e+00, %2 ], [ %22, %11 ]
  ret float %27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local float @area_poly_v2(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = tail call float @cross_poly_v2(ptr noundef %0, i32 noundef %1) #18
  %4 = fmul float %3, 5.000000e-01
  %5 = tail call float @llvm.fabs.f32(float %4)
  ret float %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @cotangent_tri_weight_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %0) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %0) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %7 = call fastcc float @len_v3(ptr noundef nonnull %6) #18
  %8 = fcmp ogt float %7, 0x3E80000000000000
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %11 = fdiv float %10, %7
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi float [ %11, %9 ], [ 0.000000e+00, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret float %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @plane_from_point_normal_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %2) #18
  %4 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %1) #18
  %5 = fneg float %4
  %6 = getelementptr inbounds float, ptr %0, i64 3
  store float %5, ptr %6, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !48 {
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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @plane_to_point_normal_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = tail call fastcc float @normalize_v3_v3(ptr noundef %2, ptr noundef %0) #18
  %5 = getelementptr inbounds float, ptr %0, i64 3
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fdiv float %6, %4
  %8 = fsub float -1.000000e+00, %7
  tail call fastcc void @madd_v3_v3v3fl(ptr noundef %1, ptr noundef %2, ptr noundef %2, float noundef %8) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !49 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #18
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #20
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #18
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #18
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #0 !PGOFuncName !50 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @volume_tetrahedron_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #8 {
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1) #18
  %6 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #18
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3) #18
  %8 = call float @determinant_m3_array(ptr noundef nonnull %5) #20
  %9 = call float @llvm.fabs.f32(float %8)
  %10 = fdiv float %9, 6.000000e+00
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #19
  ret float %10
}

; Function Attrs: optsize
declare float @determinant_m3_array(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @volume_tetrahedron_signed_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #8 {
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1) #18
  %6 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #18
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3) #18
  %8 = call float @determinant_m3_array(ptr noundef nonnull %5) #20
  %9 = fdiv float %8, 6.000000e+00
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #19
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @dist_squared_to_line_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fsub float %6, %8
  store float %9, ptr %4, align 4, !tbaa !34
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = load float, ptr %1, align 4, !tbaa !34
  %12 = fsub float %10, %11
  %13 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %12, ptr %13, align 4, !tbaa !34
  %14 = call fastcc float @len_squared_v2(ptr noundef nonnull %4) #18
  %15 = fcmp une float %14, 0.000000e+00
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load float, ptr %0, align 4, !tbaa !34
  %18 = fsub float %17, %11
  %19 = getelementptr inbounds float, ptr %0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %20, %6
  %22 = fmul float %12, %21
  %23 = tail call float @llvm.fmuladd.f32(float %18, float %9, float %22)
  %24 = fmul float %23, %23
  %25 = fdiv float %24, %14
  br label %26

26:                                               ; preds = %3, %16
  %27 = phi float [ %25, %16 ], [ 0.000000e+00, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret float %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v2(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !51 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  ret float %6
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @dist_to_line_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fsub float %6, %8
  store float %9, ptr %4, align 4, !tbaa !34
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = load float, ptr %1, align 4, !tbaa !34
  %12 = fsub float %10, %11
  %13 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %12, ptr %13, align 4, !tbaa !34
  %14 = call fastcc float @len_squared_v2(ptr noundef nonnull %4) #18
  %15 = fcmp une float %14, 0.000000e+00
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load float, ptr %0, align 4, !tbaa !34
  %18 = fsub float %17, %11
  %19 = getelementptr inbounds float, ptr %0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %20, %6
  %22 = fmul float %12, %21
  %23 = tail call float @llvm.fmuladd.f32(float %18, float %9, float %22)
  %24 = tail call float @llvm.fabs.f32(float %23)
  %25 = tail call float @sqrtf(float noundef %14) #20
  %26 = fdiv float %24, %25
  br label %27

27:                                               ; preds = %3, %16
  %28 = phi float [ %26, %16 ], [ 0.000000e+00, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret float %28
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @dist_squared_to_line_segment_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = load <2 x float>, ptr %2, align 4, !tbaa !34
  %5 = load <2 x float>, ptr %1, align 4, !tbaa !34
  %6 = fsub <2 x float> %4, %5
  %7 = extractelement <2 x float> %6, i64 1
  %8 = fmul float %7, %7
  %9 = extractelement <2 x float> %6, i64 0
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %9, float %8)
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = load float, ptr %0, align 4, !tbaa !34
  %13 = extractelement <2 x float> %5, i64 0
  %14 = fsub float %12, %13
  %15 = getelementptr inbounds float, ptr %0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = extractelement <2 x float> %5, i64 1
  %18 = fsub float %16, %17
  br i1 %11, label %19, label %22

19:                                               ; preds = %3
  %20 = fmul float %18, %18
  %21 = tail call float @llvm.fmuladd.f32(float %14, float %14, float %20)
  br label %41

22:                                               ; preds = %3
  %23 = fmul float %7, %18
  %24 = tail call float @llvm.fmuladd.f32(float %9, float %14, float %23)
  %25 = fdiv float %24, %10
  %26 = fcmp ugt float %25, 0.000000e+00
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = fcmp ult float %25, 1.000000e+00
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = insertelement <2 x float> poison, float %25, i64 0
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> %6, <2 x float> %5)
  br label %33

33:                                               ; preds = %27, %22, %29
  %34 = phi <2 x float> [ %32, %29 ], [ %5, %22 ], [ %4, %27 ]
  %35 = extractelement <2 x float> %34, i64 0
  %36 = fsub float %35, %12
  %37 = extractelement <2 x float> %34, i64 1
  %38 = fsub float %37, %16
  %39 = fmul float %38, %38
  %40 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %39)
  br label %41

41:                                               ; preds = %33, %19
  %42 = phi float [ %21, %19 ], [ %40, %33 ]
  ret float %42
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @dist_to_line_segment_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = tail call float @dist_squared_to_line_segment_v2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  %5 = tail call float @sqrtf(float noundef %4) #20
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @closest_to_line_segment_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %6 = call float @closest_to_line_v2(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  %7 = fcmp ugt float %6, 0.000000e+00
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call fastcc void @copy_v2_v2(ptr noundef %0, ptr noundef %2) #18
  br label %13

9:                                                ; preds = %4
  %10 = fcmp ult float %6, 1.000000e+00
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call fastcc void @copy_v2_v2(ptr noundef %0, ptr noundef %3) #18
  br label %13

12:                                               ; preds = %9
  call fastcc void @copy_v2_v2(ptr noundef %0, ptr noundef nonnull %5) #18
  br label %13

13:                                               ; preds = %11, %12, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local float @closest_to_line_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %6, ptr noundef %3, ptr noundef %2) #18
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #18
  %7 = call fastcc float @dot_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %5) #18
  %8 = call fastcc float @dot_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %6) #18
  %9 = fdiv float %7, %8
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = load float, ptr %6, align 4, !tbaa !34
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %9, float %10)
  store float %12, ptr %0, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %9, float %14)
  %18 = getelementptr inbounds float, ptr %0, i64 1
  store float %17, ptr %18, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !52 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  store float %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @closest_to_line_segment_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  %6 = call float @closest_to_line_v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  %7 = fcmp ugt float %6, 0.000000e+00
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %2) #18
  br label %13

9:                                                ; preds = %4
  %10 = fcmp ult float %6, 1.000000e+00
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %3) #18
  br label %13

12:                                               ; preds = %9
  call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %5) #18
  br label %13

13:                                               ; preds = %11, %12, %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local float @closest_to_line_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %3, ptr noundef %2) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #18
  %7 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #18
  %8 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %6) #18
  %9 = fdiv float %7, %8
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = load float, ptr %6, align 4, !tbaa !34
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %9, float %10)
  store float %12, ptr %0, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %9, float %14)
  %18 = getelementptr inbounds float, ptr %0, i64 1
  store float %17, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = tail call float @llvm.fmuladd.f32(float %22, float %9, float %20)
  %24 = getelementptr inbounds float, ptr %0, i64 2
  store float %23, ptr %24, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @closest_to_plane_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call fastcc float @len_squared_v3(ptr noundef %1) #18
  %5 = tail call fastcc float @plane_point_side_v3(ptr noundef %1, ptr noundef %2) #18
  %6 = fneg float %5
  %7 = fdiv float %6, %4
  tail call fastcc void @madd_v3_v3v3fl(ptr noundef %0, ptr noundef %2, ptr noundef %1, float noundef %7) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !53 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @plane_point_side_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !54 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %0) #18
  %4 = getelementptr inbounds float, ptr %0, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fadd float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @dist_signed_squared_to_plane_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = tail call fastcc float @len_squared_v3(ptr noundef %1) #18
  %4 = tail call fastcc float @plane_point_side_v3(ptr noundef %1, ptr noundef %0) #18
  %5 = fdiv float %4, %3
  %6 = fmul float %5, %5
  %7 = fmul float %3, %6
  %8 = tail call float @llvm.copysign.f32(float %7, float %4)
  ret float %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @dist_squared_to_plane_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = tail call fastcc float @len_squared_v3(ptr noundef %1) #18
  %4 = tail call fastcc float @plane_point_side_v3(ptr noundef %1, ptr noundef %0) #18
  %5 = fdiv float %4, %3
  %6 = fmul float %5, %5
  %7 = fmul float %3, %6
  ret float %7
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @dist_signed_to_plane_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = tail call fastcc float @len_squared_v3(ptr noundef %1) #18
  %4 = tail call fastcc float @plane_point_side_v3(ptr noundef %1, ptr noundef %0) #18
  %5 = fdiv float %4, %3
  %6 = tail call float @sqrtf(float noundef %3) #20
  %7 = fmul float %6, %5
  ret float %7
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @dist_to_plane_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = tail call float @dist_signed_to_plane_v3(ptr noundef %0, ptr noundef %1) #18
  %4 = tail call float @llvm.fabs.f32(float %3)
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local float @dist_squared_to_line_segment_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @closest_to_line_segment_v3(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  %5 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %4, ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !55 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #18
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @dist_to_line_segment_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = tail call float @dist_squared_to_line_segment_v3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  %5 = tail call float @sqrtf(float noundef %4) #20
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local float @dist_squared_to_line_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  %5 = call float @closest_to_line_v3(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  %6 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %4, ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret float %6
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @dist_to_line_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = tail call float @dist_squared_to_line_v3(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  %5 = tail call float @sqrtf(float noundef %4) #20
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @closest_on_tri_to_point_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %3, ptr noundef %2) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %4, ptr noundef %2) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2) #18
  %11 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %8) #18
  %12 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %13 = fcmp ole float %11, 0.000000e+00
  %14 = fcmp ole float %12, 0.000000e+00
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %2) #18
  br label %75

17:                                               ; preds = %5
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %3) #18
  %18 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %9) #18
  %19 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %9) #18
  %20 = fcmp ult float %18, 0.000000e+00
  %21 = fcmp ugt float %19, %18
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %3) #18
  br label %75

24:                                               ; preds = %17
  %25 = fneg float %18
  %26 = fmul float %12, %25
  %27 = tail call float @llvm.fmuladd.f32(float %11, float %19, float %26)
  %28 = fcmp ole float %27, 0.000000e+00
  %29 = fcmp oge float %11, 0.000000e+00
  %30 = and i1 %29, %28
  %31 = fcmp ole float %18, 0.000000e+00
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = fsub float %11, %18
  %35 = fdiv float %11, %34
  call fastcc void @madd_v3_v3v3fl(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, float noundef %35) #18
  br label %75

36:                                               ; preds = %24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %4) #18
  %37 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %10) #18
  %38 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %10) #18
  %39 = fcmp ult float %38, 0.000000e+00
  %40 = fcmp ugt float %37, %38
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %4) #18
  br label %75

43:                                               ; preds = %36
  %44 = fneg float %11
  %45 = fmul float %38, %44
  %46 = tail call float @llvm.fmuladd.f32(float %37, float %12, float %45)
  %47 = fcmp ole float %46, 0.000000e+00
  %48 = fcmp oge float %12, 0.000000e+00
  %49 = select i1 %47, i1 %48, i1 false
  %50 = fcmp ole float %38, 0.000000e+00
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = fsub float %12, %38
  %54 = fdiv float %12, %53
  call fastcc void @madd_v3_v3v3fl(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7, float noundef %54) #18
  br label %75

55:                                               ; preds = %43
  %56 = fneg float %37
  %57 = fmul float %19, %56
  %58 = tail call float @llvm.fmuladd.f32(float %18, float %38, float %57)
  %59 = fcmp ugt float %58, 0.000000e+00
  br i1 %59, label %69, label %60

60:                                               ; preds = %55
  %61 = fsub float %19, %18
  %62 = fcmp ult float %61, 0.000000e+00
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = fsub float %37, %38
  %65 = fcmp ult float %64, 0.000000e+00
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = fadd float %61, %64
  %68 = fdiv float %61, %67
  tail call fastcc void @sub_v3_v3v3(ptr noundef %0, ptr noundef %4, ptr noundef %3) #18
  tail call fastcc void @mul_v3_fl(ptr noundef %0, float noundef %68) #18
  tail call fastcc void @add_v3_v3(ptr noundef %0, ptr noundef %3) #18
  br label %75

69:                                               ; preds = %63, %60, %55
  %70 = fadd float %58, %46
  %71 = fadd float %27, %70
  %72 = fdiv float 1.000000e+00, %71
  %73 = fmul float %46, %72
  %74 = fmul float %27, %72
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %74) #18
  call fastcc void @madd_v3_v3v3fl(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, float noundef %73) #18
  call fastcc void @add_v3_v3(ptr noundef %0, ptr noundef nonnull %7) #18
  br label %75

75:                                               ; preds = %69, %66, %52, %42, %33, %23, %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #0 !PGOFuncName !56 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !57 {
  %3 = load float, ptr %1, align 4, !tbaa !34
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @isect_line_line_v2_int(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = load i32, ptr %1, align 4, !tbaa !58
  %6 = load i32, ptr %0, align 4, !tbaa !58
  %7 = sub nsw i32 %5, %6
  %8 = getelementptr inbounds i32, ptr %3, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !58
  %10 = getelementptr inbounds i32, ptr %2, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !58
  %12 = sub nsw i32 %9, %11
  %13 = mul nsw i32 %12, %7
  %14 = getelementptr inbounds i32, ptr %1, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !58
  %16 = getelementptr inbounds i32, ptr %0, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !58
  %18 = sub nsw i32 %15, %17
  %19 = load i32, ptr %3, align 4, !tbaa !58
  %20 = load i32, ptr %2, align 4, !tbaa !58
  %21 = sub nsw i32 %19, %20
  %22 = mul nsw i32 %21, %18
  %23 = icmp eq i32 %13, %22
  br i1 %23, label %55, label %24

24:                                               ; preds = %4
  %25 = sub nsw i32 %13, %22
  %26 = sitofp i32 %25 to float
  %27 = sub nsw i32 %17, %11
  %28 = mul nsw i32 %21, %27
  %29 = sub nsw i32 %6, %20
  %30 = mul nsw i32 %29, %12
  %31 = sub nsw i32 %28, %30
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %32, %26
  %34 = mul nsw i32 %27, %7
  %35 = mul nsw i32 %29, %18
  %36 = sub nsw i32 %34, %35
  %37 = sitofp i32 %36 to float
  %38 = fdiv float %37, %26
  %39 = fcmp oge float %33, 0.000000e+00
  %40 = fcmp ole float %33, 1.000000e+00
  %41 = and i1 %39, %40
  %42 = fcmp oge float %38, 0.000000e+00
  %43 = select i1 %41, i1 %42, i1 false
  %44 = fcmp ole float %38, 1.000000e+00
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %55

46:                                               ; preds = %24
  %47 = fcmp oeq float %33, 0.000000e+00
  %48 = fcmp oeq float %33, 1.000000e+00
  %49 = or i1 %47, %48
  %50 = fcmp oeq float %38, 0.000000e+00
  %51 = select i1 %49, i1 true, i1 %50
  %52 = fcmp oeq float %38, 1.000000e+00
  %53 = select i1 %51, i1 true, i1 %52
  %54 = select i1 %53, i32 1, i32 2
  br label %55

55:                                               ; preds = %24, %46, %4
  %56 = phi i32 [ -1, %4 ], [ %54, %46 ], [ 0, %24 ]
  ret i32 %56
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @isect_line_line_v2_point(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %1, align 4, !tbaa !34
  %7 = load float, ptr %0, align 4, !tbaa !34
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %3, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fsub float %15, %17
  %19 = load float, ptr %3, align 4, !tbaa !34
  %20 = load float, ptr %2, align 4, !tbaa !34
  %21 = fsub float %19, %20
  %22 = fneg float %18
  %23 = fmul float %21, %22
  %24 = tail call float @llvm.fmuladd.f32(float %8, float %13, float %23)
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %60, label %26

26:                                               ; preds = %5
  %27 = fsub float %20, %19
  %28 = fneg float %17
  %29 = fmul float %6, %28
  %30 = tail call float @llvm.fmuladd.f32(float %7, float %15, float %29)
  %31 = fsub float %7, %6
  %32 = fneg float %12
  %33 = fmul float %19, %32
  %34 = tail call float @llvm.fmuladd.f32(float %20, float %10, float %33)
  %35 = fneg float %31
  %36 = fmul float %34, %35
  %37 = tail call float @llvm.fmuladd.f32(float %27, float %30, float %36)
  %38 = fdiv float %37, %24
  store float %38, ptr %4, align 4, !tbaa !34
  %39 = load float, ptr %11, align 4, !tbaa !34
  %40 = load float, ptr %9, align 4, !tbaa !34
  %41 = fsub float %39, %40
  %42 = load float, ptr %0, align 4, !tbaa !34
  %43 = load float, ptr %14, align 4, !tbaa !34
  %44 = load float, ptr %16, align 4, !tbaa !34
  %45 = load float, ptr %1, align 4, !tbaa !34
  %46 = fneg float %44
  %47 = fmul float %45, %46
  %48 = tail call float @llvm.fmuladd.f32(float %42, float %43, float %47)
  %49 = fsub float %44, %43
  %50 = load float, ptr %2, align 4, !tbaa !34
  %51 = load float, ptr %3, align 4, !tbaa !34
  %52 = fneg float %39
  %53 = fmul float %51, %52
  %54 = tail call float @llvm.fmuladd.f32(float %50, float %40, float %53)
  %55 = fneg float %49
  %56 = fmul float %54, %55
  %57 = tail call float @llvm.fmuladd.f32(float %41, float %48, float %56)
  %58 = fdiv float %57, %24
  %59 = getelementptr inbounds float, ptr %4, i64 1
  store float %58, ptr %59, align 4, !tbaa !34
  br label %60

60:                                               ; preds = %5, %26
  %61 = phi i32 [ 2, %26 ], [ -1, %5 ]
  ret i32 %61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @isect_line_line_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %3, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %0, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = load float, ptr %3, align 4, !tbaa !34
  %16 = load float, ptr %2, align 4, !tbaa !34
  %17 = insertelement <2 x float> poison, float %8, i64 0
  %18 = insertelement <2 x float> %17, float %12, i64 1
  %19 = insertelement <2 x float> poison, float %10, i64 0
  %20 = insertelement <2 x float> %19, float %14, i64 1
  %21 = fsub <2 x float> %18, %20
  %22 = insertelement <2 x float> poison, float %15, i64 0
  %23 = insertelement <2 x float> %22, float %5, i64 1
  %24 = insertelement <2 x float> poison, float %16, i64 0
  %25 = insertelement <2 x float> %24, float %6, i64 1
  %26 = fsub <2 x float> %23, %25
  %27 = extractelement <2 x float> %21, i64 1
  %28 = fneg float %27
  %29 = extractelement <2 x float> %26, i64 0
  %30 = fmul float %29, %28
  %31 = extractelement <2 x float> %26, i64 1
  %32 = extractelement <2 x float> %21, i64 0
  %33 = tail call float @llvm.fmuladd.f32(float %31, float %32, float %30)
  %34 = fcmp oeq float %33, 0.000000e+00
  br i1 %34, label %64, label %35

35:                                               ; preds = %4
  %36 = fsub float %14, %10
  %37 = fsub float %6, %16
  %38 = fneg float %37
  %39 = insertelement <2 x float> poison, float %38, i64 0
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer
  %41 = fmul <2 x float> %21, %40
  %42 = insertelement <2 x float> poison, float %36, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %43, <2 x float> %26, <2 x float> %41)
  %45 = insertelement <2 x float> poison, float %33, i64 0
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> zeroinitializer
  %47 = fdiv <2 x float> %44, %46
  %48 = extractelement <2 x float> %47, i64 0
  %49 = fcmp oge float %48, 0.000000e+00
  %50 = fcmp ole float %48, 1.000000e+00
  %51 = and i1 %49, %50
  %52 = extractelement <2 x float> %47, i64 1
  %53 = fcmp oge float %52, 0.000000e+00
  %54 = select i1 %51, i1 %53, i1 false
  %55 = fcmp ole float %52, 1.000000e+00
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %64

57:                                               ; preds = %35
  %58 = shufflevector <2 x float> %47, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %59 = freeze <4 x float> %58
  %60 = fcmp oeq <4 x float> %59, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %61 = bitcast <4 x i1> %60 to i4
  %62 = icmp eq i4 %61, 0
  %63 = select i1 %62, i32 2, i32 1
  br label %64

64:                                               ; preds = %35, %57, %4
  %65 = phi i32 [ -1, %4 ], [ %63, %57 ], [ 0, %35 ]
  ret i32 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @isect_seg_seg_v2_point(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #8 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = load float, ptr %1, align 4, !tbaa !34
  %10 = load float, ptr %2, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %16 = load <2 x float>, ptr %3, align 4, !tbaa !34
  %17 = insertelement <2 x float> %16, float %12, i64 1
  %18 = insertelement <2 x float> %15, float %10, i64 0
  %19 = fsub <2 x float> %17, %18
  %20 = insertelement <2 x float> %16, float %9, i64 0
  %21 = insertelement <2 x float> %15, float %14, i64 1
  %22 = fsub <2 x float> %20, %21
  %23 = fsub <2 x float> %15, %16
  %24 = extractelement <2 x float> %19, i64 1
  %25 = fneg float %24
  %26 = extractelement <2 x float> %19, i64 0
  %27 = fmul float %26, %25
  %28 = extractelement <2 x float> %22, i64 0
  %29 = extractelement <2 x float> %22, i64 1
  %30 = tail call float @llvm.fmuladd.f32(float %28, float %29, float %27)
  %31 = fcmp oeq float %30, 0.000000e+00
  br i1 %31, label %32, label %82

32:                                               ; preds = %5
  %33 = extractelement <2 x float> %23, i64 0
  %34 = fmul float %33, %25
  %35 = extractelement <2 x float> %23, i64 1
  %36 = tail call float @llvm.fmuladd.f32(float %28, float %35, float %34)
  %37 = fcmp oeq float %36, 0.000000e+00
  br i1 %37, label %38, label %100

38:                                               ; preds = %32
  %39 = fneg float %29
  %40 = fmul float %33, %39
  %41 = tail call float @llvm.fmuladd.f32(float %26, float %35, float %40)
  %42 = fcmp oeq float %41, 0.000000e+00
  br i1 %42, label %43, label %100

43:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %44 = tail call fastcc zeroext i8 @equals_v2v2(ptr noundef nonnull %0, ptr noundef nonnull %1) #18, !range !60
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %48 = fcmp ogt float %47, 0x3D71979980000000
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = tail call fastcc zeroext i8 @equals_v2v2(ptr noundef nonnull %0, ptr noundef nonnull %2) #18, !range !60
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %79, label %52

52:                                               ; preds = %49
  tail call fastcc void @copy_v2_v2(ptr noundef %4, ptr noundef nonnull %0) #18
  br label %79

53:                                               ; preds = %46, %43
  %54 = phi ptr [ %3, %43 ], [ %1, %46 ]
  %55 = phi ptr [ %2, %43 ], [ %0, %46 ]
  %56 = phi ptr [ %1, %43 ], [ %3, %46 ]
  %57 = phi ptr [ %0, %43 ], [ %2, %46 ]
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %55, ptr noundef nonnull %57) #18
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %56, ptr noundef nonnull %57) #18
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %56, ptr noundef nonnull %57) #18
  %58 = call fastcc float @dot_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %59 = call fastcc float @dot_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %8) #18
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %54, ptr noundef nonnull %57) #18
  %60 = call fastcc float @dot_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %61 = insertelement <2 x float> poison, float %58, i64 0
  %62 = insertelement <2 x float> %61, float %60, i64 1
  %63 = insertelement <2 x float> poison, float %59, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = fdiv <2 x float> %62, %64
  %66 = extractelement <2 x float> %65, i64 0
  %67 = extractelement <2 x float> %65, i64 1
  %68 = fcmp ogt float %66, %67
  %69 = select i1 %68, float %67, float %66
  %70 = select i1 %68, float %66, float %67
  %71 = fcmp ogt float %69, 0x3FF0000100000000
  %72 = fcmp olt float %70, 0xBEB0C6F7A0000000
  %73 = or i1 %71, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %53
  %75 = tail call fastcc float @max_ff(float noundef %69) #18
  %76 = tail call fastcc float @min_ff(float noundef %70) #18
  %77 = fcmp oeq float %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  tail call void @interp_v2_v2v2(ptr noundef %4, ptr noundef nonnull %57, ptr noundef nonnull %56, float noundef %75) #20
  br label %79

79:                                               ; preds = %78, %52, %49, %53
  %80 = phi i32 [ -1, %53 ], [ -1, %49 ], [ 1, %52 ], [ 1, %78 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %100

81:                                               ; preds = %74
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %100

82:                                               ; preds = %5
  %83 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %84 = fneg <2 x float> %22
  %85 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %86 = fmul <2 x float> %85, %84
  %87 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %83, <2 x float> %86)
  %88 = insertelement <2 x float> poison, float %30, i64 0
  %89 = shufflevector <2 x float> %88, <2 x float> poison, <2 x i32> zeroinitializer
  %90 = fdiv <2 x float> %87, %89
  %91 = shufflevector <2 x float> %90, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %92 = fcmp ole <4 x float> %91, <float 0x3FF0000100000000, float 0x3FF0000100000000, float 0xBEB0C6F7A0000000, float 0xBEB0C6F7A0000000>
  %93 = fcmp oge <4 x float> %91, <float 0x3FF0000100000000, float 0x3FF0000100000000, float 0xBEB0C6F7A0000000, float 0xBEB0C6F7A0000000>
  %94 = shufflevector <4 x i1> %92, <4 x i1> %93, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %95 = freeze <4 x i1> %94
  %96 = bitcast <4 x i1> %95 to i4
  %97 = icmp eq i4 %96, -1
  br i1 %97, label %98, label %100

98:                                               ; preds = %82
  %99 = extractelement <2 x float> %90, i64 1
  tail call void @interp_v2_v2v2(ptr noundef %4, ptr noundef nonnull %0, ptr noundef nonnull %1, float noundef %99) #20
  br label %100

100:                                              ; preds = %32, %38, %81, %79, %82, %98
  %101 = phi i32 [ 1, %98 ], [ -1, %82 ], [ %80, %79 ], [ -1, %81 ], [ -1, %38 ], [ -1, %32 ]
  ret i32 %101
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !61 {
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
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !62 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #18
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !63 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !64 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0) unnamed_addr #11 !PGOFuncName !65 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = select i1 %2, float 0.000000e+00, float %0
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0) unnamed_addr #11 !PGOFuncName !66 {
  %2 = fcmp ogt float %0, 1.000000e+00
  %3 = select i1 %2, float 1.000000e+00, float %0
  ret float %3
}

; Function Attrs: optsize
declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @isect_seg_seg_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %6 = load <2 x float>, ptr %3, align 4, !tbaa !34
  %7 = fsub <2 x float> %6, %5
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %9 = load <2 x float>, ptr %2, align 4, !tbaa !34
  %10 = fsub <2 x float> %9, %5
  %11 = fmul <2 x float> %10, %8
  %12 = extractelement <2 x float> %11, i64 0
  %13 = extractelement <2 x float> %11, i64 1
  %14 = fcmp ogt float %12, %13
  %15 = load <2 x float>, ptr %1, align 4, !tbaa !34
  %16 = fsub <2 x float> %9, %15
  %17 = fsub <2 x float> %6, %15
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %19 = fmul <2 x float> %16, %18
  %20 = extractelement <2 x float> %19, i64 0
  %21 = extractelement <2 x float> %19, i64 1
  %22 = fcmp ule float %20, %21
  %23 = xor i1 %14, %22
  br i1 %23, label %37, label %24

24:                                               ; preds = %4
  %25 = fsub <2 x float> %15, %5
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %27 = fmul <2 x float> %10, %26
  %28 = extractelement <2 x float> %27, i64 0
  %29 = extractelement <2 x float> %27, i64 1
  %30 = fcmp ogt float %29, %28
  %31 = fmul <2 x float> %8, %25
  %32 = extractelement <2 x float> %31, i64 0
  %33 = extractelement <2 x float> %31, i64 1
  %34 = fcmp ogt float %32, %33
  %35 = xor i1 %30, %34
  %36 = zext i1 %35 to i8
  br label %37

37:                                               ; preds = %24, %4
  %38 = phi i8 [ 0, %4 ], [ %36, %24 ]
  ret i8 %38
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef i32 @isect_line_sphere_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #1 {
  %7 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  %8 = load <2 x float>, ptr %1, align 4, !tbaa !34
  %9 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %10 = fsub <2 x float> %8, %9
  store <2 x float> %10, ptr %7, align 8, !tbaa !34
  %11 = getelementptr inbounds float, ptr %7, i64 2
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  store float %16, ptr %11, align 8, !tbaa !34
  %17 = call fastcc float @len_squared_v3(ptr noundef nonnull %7) #18
  %18 = load float, ptr %2, align 4, !tbaa !34
  %19 = extractelement <2 x float> %9, i64 0
  %20 = fsub float %19, %18
  %21 = getelementptr inbounds float, ptr %2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = extractelement <2 x float> %9, i64 1
  %24 = fsub float %23, %22
  %25 = extractelement <2 x float> %10, i64 1
  %26 = fmul float %25, %24
  %27 = extractelement <2 x float> %10, i64 0
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %20, float %26)
  %29 = getelementptr inbounds float, ptr %2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fsub float %15, %30
  %32 = tail call float @llvm.fmuladd.f32(float %16, float %31, float %28)
  %33 = fmul float %32, 2.000000e+00
  %34 = tail call fastcc float @len_squared_v3(ptr noundef nonnull %2) #18
  %35 = tail call fastcc float @len_squared_v3(ptr noundef nonnull %0) #18
  %36 = fadd float %34, %35
  %37 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %0) #18
  %38 = tail call float @llvm.fmuladd.f32(float %37, float -2.000000e+00, float %36)
  %39 = fneg float %3
  %40 = tail call float @llvm.fmuladd.f32(float %39, float %3, float %38)
  %41 = fmul float %17, -4.000000e+00
  %42 = fmul float %41, %40
  %43 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %42)
  %44 = fcmp olt float %43, 0.000000e+00
  br i1 %44, label %61, label %45

45:                                               ; preds = %6
  %46 = fcmp oeq float %43, 0.000000e+00
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = fneg float %33
  %49 = fmul float %17, 2.000000e+00
  %50 = fdiv float %48, %49
  call fastcc void @madd_v3_v3v3fl(ptr noundef %4, ptr noundef nonnull %0, ptr noundef nonnull %7, float noundef %50) #18
  br label %61

51:                                               ; preds = %45
  %52 = fcmp ogt float %43, 0.000000e+00
  br i1 %52, label %53, label %61

53:                                               ; preds = %51
  %54 = tail call float @sqrtf(float noundef %43) #20
  %55 = fneg float %33
  %56 = fsub float %54, %33
  %57 = fmul float %17, 2.000000e+00
  %58 = fdiv float %56, %57
  call fastcc void @madd_v3_v3v3fl(ptr noundef %4, ptr noundef nonnull %0, ptr noundef nonnull %7, float noundef %58) #18
  %59 = fsub float %55, %54
  %60 = fdiv float %59, %57
  call fastcc void @madd_v3_v3v3fl(ptr noundef %5, ptr noundef nonnull %0, ptr noundef nonnull %7, float noundef %60) #18
  br label %61

61:                                               ; preds = %51, %6, %53, %47
  %62 = phi i32 [ 1, %47 ], [ 2, %53 ], [ 0, %6 ], [ -1, %51 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  ret i32 %62
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef i32 @isect_line_sphere_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #1 {
  %7 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %8 = load <2 x float>, ptr %1, align 4, !tbaa !34
  %9 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %10 = fsub <2 x float> %8, %9
  store <2 x float> %10, ptr %7, align 8, !tbaa !34
  %11 = call fastcc float @dot_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %7) #18
  %12 = load float, ptr %2, align 4, !tbaa !34
  %13 = extractelement <2 x float> %9, i64 0
  %14 = fsub float %13, %12
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = extractelement <2 x float> %9, i64 1
  %18 = fsub float %17, %16
  %19 = extractelement <2 x float> %10, i64 1
  %20 = fmul float %19, %18
  %21 = extractelement <2 x float> %10, i64 0
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %14, float %20)
  %23 = fmul float %22, 2.000000e+00
  %24 = tail call fastcc float @dot_v2v2(ptr noundef nonnull %2, ptr noundef nonnull %2) #18
  %25 = tail call fastcc float @dot_v2v2(ptr noundef nonnull %0, ptr noundef nonnull %0) #18
  %26 = fadd float %24, %25
  %27 = tail call fastcc float @dot_v2v2(ptr noundef nonnull %2, ptr noundef nonnull %0) #18
  %28 = tail call float @llvm.fmuladd.f32(float %27, float -2.000000e+00, float %26)
  %29 = fneg float %3
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %3, float %28)
  %31 = fmul float %11, -4.000000e+00
  %32 = fmul float %31, %30
  %33 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %32)
  %34 = fcmp olt float %33, 0.000000e+00
  br i1 %34, label %51, label %35

35:                                               ; preds = %6
  %36 = fcmp oeq float %33, 0.000000e+00
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = fneg float %23
  %39 = fmul float %11, 2.000000e+00
  %40 = fdiv float %38, %39
  call fastcc void @madd_v2_v2v2fl(ptr noundef %4, ptr noundef nonnull %0, ptr noundef nonnull %7, float noundef %40) #18
  br label %51

41:                                               ; preds = %35
  %42 = fcmp ogt float %33, 0.000000e+00
  br i1 %42, label %43, label %51

43:                                               ; preds = %41
  %44 = tail call float @sqrtf(float noundef %33) #20
  %45 = fneg float %23
  %46 = fsub float %44, %23
  %47 = fmul float %11, 2.000000e+00
  %48 = fdiv float %46, %47
  call fastcc void @madd_v2_v2v2fl(ptr noundef %4, ptr noundef nonnull %0, ptr noundef nonnull %7, float noundef %48) #18
  %49 = fsub float %45, %44
  %50 = fdiv float %49, %47
  call fastcc void @madd_v2_v2v2fl(ptr noundef %5, ptr noundef nonnull %0, ptr noundef nonnull %7, float noundef %50) #18
  br label %51

51:                                               ; preds = %41, %6, %43, %37
  %52 = phi i32 [ 1, %37 ], [ 2, %43 ], [ 0, %6 ], [ -1, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  ret i32 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v2_v2v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #0 !PGOFuncName !67 {
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local zeroext i8 @isect_point_poly_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #12 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %44, label %6

6:                                                ; preds = %4
  %7 = add i32 %2, -1
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = zext i32 %2 to i64
  br label %11

11:                                               ; preds = %6, %39
  %12 = phi i64 [ 0, %6 ], [ %41, %39 ]
  %13 = phi i8 [ 0, %6 ], [ %40, %39 ]
  %14 = phi i32 [ %7, %6 ], [ %42, %39 ]
  %15 = getelementptr inbounds [2 x float], ptr %1, i64 %12, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fcmp ogt float %16, %9
  %18 = zext i32 %14 to i64
  %19 = getelementptr inbounds [2 x float], ptr %1, i64 %18, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fcmp ule float %20, %9
  %22 = xor i1 %17, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds [2 x float], ptr %1, i64 %18
  %25 = getelementptr inbounds [2 x float], ptr %1, i64 %12
  %26 = load float, ptr %0, align 4, !tbaa !34
  %27 = load float, ptr %24, align 4, !tbaa !34
  %28 = load float, ptr %25, align 4, !tbaa !34
  %29 = fsub float %27, %28
  %30 = fsub float %9, %16
  %31 = fmul float %30, %29
  %32 = fsub float %20, %16
  %33 = fdiv float %31, %32
  %34 = fadd float %28, %33
  %35 = fcmp olt float %26, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = icmp eq i8 %13, 0
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %11, %23, %36
  %40 = phi i8 [ %38, %36 ], [ %13, %23 ], [ %13, %11 ]
  %41 = add nuw nsw i64 %12, 1
  %42 = trunc i64 %12 to i32
  %43 = icmp eq i64 %41, %10
  br i1 %43, label %44, label %11, !llvm.loop !68

44:                                               ; preds = %39, %4
  %45 = phi i8 [ 0, %4 ], [ %40, %39 ]
  ret i8 %45
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local zeroext i8 @isect_point_poly_v2_int(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #12 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %44, label %6

6:                                                ; preds = %4
  %7 = add i32 %2, -1
  %8 = getelementptr inbounds i32, ptr %0, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !58
  %10 = zext i32 %2 to i64
  br label %11

11:                                               ; preds = %6, %39
  %12 = phi i64 [ 0, %6 ], [ %41, %39 ]
  %13 = phi i8 [ 0, %6 ], [ %40, %39 ]
  %14 = phi i32 [ %7, %6 ], [ %42, %39 ]
  %15 = getelementptr inbounds [2 x i32], ptr %1, i64 %12, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !58
  %17 = icmp sgt i32 %16, %9
  %18 = zext i32 %14 to i64
  %19 = getelementptr inbounds [2 x i32], ptr %1, i64 %18, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !58
  %21 = icmp sle i32 %20, %9
  %22 = xor i1 %17, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds [2 x i32], ptr %1, i64 %18
  %25 = getelementptr inbounds [2 x i32], ptr %1, i64 %12
  %26 = load i32, ptr %0, align 4, !tbaa !58
  %27 = load i32, ptr %24, align 4, !tbaa !58
  %28 = load i32, ptr %25, align 4, !tbaa !58
  %29 = sub nsw i32 %27, %28
  %30 = sub nsw i32 %9, %16
  %31 = mul nsw i32 %29, %30
  %32 = sub nsw i32 %20, %16
  %33 = sdiv i32 %31, %32
  %34 = add nsw i32 %33, %28
  %35 = icmp slt i32 %26, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = icmp eq i8 %13, 0
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %11, %23, %36
  %40 = phi i8 [ %38, %36 ], [ %13, %23 ], [ %13, %11 ]
  %41 = add nuw nsw i64 %12, 1
  %42 = trunc i64 %12 to i32
  %43 = icmp eq i64 %41, %10
  br i1 %43, label %44, label %11, !llvm.loop !69

44:                                               ; preds = %39, %4
  %45 = phi i8 [ 0, %4 ], [ %40, %39 ]
  ret i8 %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @isect_point_tri_v2_cw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = tail call fastcc float @line_point_side_v2(ptr noundef %1, ptr noundef %2, ptr noundef %0) #18
  %6 = fcmp ult float %5, 0.000000e+00
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc float @line_point_side_v2(ptr noundef %2, ptr noundef %3, ptr noundef %0) #18
  %9 = fcmp ult float %8, 0.000000e+00
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc float @line_point_side_v2(ptr noundef %3, ptr noundef %1, ptr noundef %0) #18
  %12 = fcmp ult float %11, 0.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %10, %4
  br label %14

14:                                               ; preds = %10, %13
  %15 = phi i8 [ 0, %13 ], [ 1, %10 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @line_point_side_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !70 {
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = load float, ptr %1, align 4, !tbaa !34
  %13 = fsub float %12, %5
  %14 = getelementptr inbounds float, ptr %0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %15, %10
  %17 = fneg float %13
  %18 = fmul float %16, %17
  %19 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %18)
  ret float %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @isect_point_tri_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = tail call fastcc float @line_point_side_v2(ptr noundef %1, ptr noundef %2, ptr noundef %0) #18
  %6 = fcmp ult float %5, 0.000000e+00
  %7 = tail call fastcc float @line_point_side_v2(ptr noundef %2, ptr noundef %3, ptr noundef %0) #18
  %8 = fcmp ult float %7, 0.000000e+00
  br i1 %6, label %13, label %9

9:                                                ; preds = %4
  br i1 %8, label %17, label %10

10:                                               ; preds = %9
  %11 = tail call fastcc float @line_point_side_v2(ptr noundef %3, ptr noundef %1, ptr noundef %0) #18
  %12 = fcmp ult float %11, 0.000000e+00
  br i1 %12, label %17, label %18

13:                                               ; preds = %4
  br i1 %8, label %14, label %17

14:                                               ; preds = %13
  %15 = tail call fastcc float @line_point_side_v2(ptr noundef %3, ptr noundef %1, ptr noundef %0) #18
  %16 = fcmp ult float %15, 0.000000e+00
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %14, %9, %10
  br label %18

18:                                               ; preds = %14, %10, %17
  %19 = phi i32 [ 0, %17 ], [ 1, %10 ], [ -1, %14 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @isect_point_quad_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #6 {
  %6 = tail call fastcc float @line_point_side_v2(ptr noundef %1, ptr noundef %2, ptr noundef %0) #18
  %7 = fcmp ult float %6, 0.000000e+00
  %8 = tail call fastcc float @line_point_side_v2(ptr noundef %2, ptr noundef %3, ptr noundef %0) #18
  %9 = fcmp ult float %8, 0.000000e+00
  br i1 %7, label %17, label %10

10:                                               ; preds = %5
  br i1 %9, label %24, label %11

11:                                               ; preds = %10
  %12 = tail call fastcc float @line_point_side_v2(ptr noundef %3, ptr noundef %4, ptr noundef %0) #18
  %13 = fcmp ult float %12, 0.000000e+00
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc float @line_point_side_v2(ptr noundef %4, ptr noundef %1, ptr noundef %0) #18
  %16 = fcmp ult float %15, 0.000000e+00
  br i1 %16, label %24, label %25

17:                                               ; preds = %5
  br i1 %9, label %18, label %24

18:                                               ; preds = %17
  %19 = tail call fastcc float @line_point_side_v2(ptr noundef %3, ptr noundef %4, ptr noundef %0) #18
  %20 = fcmp ult float %19, 0.000000e+00
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = tail call fastcc float @line_point_side_v2(ptr noundef %4, ptr noundef %1, ptr noundef %0) #18
  %23 = fcmp ult float %22, 0.000000e+00
  br i1 %23, label %25, label %24

24:                                               ; preds = %17, %21, %18, %10, %14, %11
  br label %25

25:                                               ; preds = %21, %14, %24
  %26 = phi i32 [ 0, %24 ], [ 1, %14 ], [ -1, %21 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_line_tri_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef %3, ptr noundef %2) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef %4, ptr noundef %2) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %1, ptr noundef %0) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %12) #18
  %14 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %8) #18
  %15 = fcmp oeq float %14, 0.000000e+00
  br i1 %15, label %40, label %16

16:                                               ; preds = %7
  %17 = fdiv float 1.000000e+00, %14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %2) #18
  %18 = call fastcc float @dot_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %8) #18
  %19 = fmul float %17, %18
  %20 = fcmp olt float %19, 0.000000e+00
  %21 = fcmp ogt float %19, 1.000000e+00
  %22 = or i1 %20, %21
  br i1 %22, label %40, label %23

23:                                               ; preds = %16
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %9, ptr noundef nonnull %11) #18
  %24 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %13) #18
  %25 = fmul float %17, %24
  %26 = fcmp olt float %25, 0.000000e+00
  %27 = fadd float %19, %25
  %28 = fcmp ogt float %27, 1.000000e+00
  %29 = or i1 %26, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %23
  %31 = call fastcc float @dot_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #18
  %32 = fmul float %17, %31
  store float %32, ptr %5, align 4, !tbaa !34
  %33 = fcmp olt float %32, 0.000000e+00
  %34 = fcmp ogt float %32, 1.000000e+00
  %35 = or i1 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = icmp eq ptr %6, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  store float %19, ptr %6, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %6, i64 1
  store float %25, ptr %39, align 4, !tbaa !34
  br label %40

40:                                               ; preds = %36, %38, %30, %23, %16, %7
  %41 = phi i8 [ 0, %7 ], [ 0, %16 ], [ 0, %23 ], [ 0, %30 ], [ 1, %38 ], [ 1, %36 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  ret i8 %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_line_tri_epsilon_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr noundef writeonly %6, float noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef %3, ptr noundef %2) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef %4, ptr noundef %2) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef %1, ptr noundef %0) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %13) #18
  %15 = call fastcc float @dot_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %9) #18
  %16 = fcmp oeq float %15, 0.000000e+00
  br i1 %16, label %43, label %17

17:                                               ; preds = %8
  %18 = fdiv float 1.000000e+00, %15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %0, ptr noundef %2) #18
  %19 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %9) #18
  %20 = fmul float %18, %19
  %21 = fneg float %7
  %22 = fcmp olt float %20, %21
  br i1 %22, label %43, label %23

23:                                               ; preds = %17
  %24 = fadd float %7, 1.000000e+00
  %25 = fcmp ogt float %20, %24
  br i1 %25, label %43, label %26

26:                                               ; preds = %23
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %10, ptr noundef nonnull %12) #18
  %27 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %14) #18
  %28 = fmul float %18, %27
  %29 = fcmp olt float %28, %21
  %30 = fadd float %20, %28
  %31 = fcmp ogt float %30, %24
  %32 = or i1 %29, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %26
  %34 = call fastcc float @dot_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %14) #18
  %35 = fmul float %18, %34
  store float %35, ptr %5, align 4, !tbaa !34
  %36 = fcmp olt float %35, 0.000000e+00
  %37 = fcmp ogt float %35, 1.000000e+00
  %38 = or i1 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = icmp eq ptr %6, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  store float %20, ptr %6, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %6, i64 1
  store float %28, ptr %42, align 4, !tbaa !34
  br label %43

43:                                               ; preds = %39, %41, %33, %26, %17, %23, %8
  %44 = phi i8 [ 0, %8 ], [ 0, %23 ], [ 0, %17 ], [ 0, %26 ], [ 0, %33 ], [ 1, %41 ], [ 1, %39 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  ret i8 %44
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_ray_tri_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %3, ptr noundef %2) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef %4, ptr noundef %2) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull %11) #18
  %13 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %8) #18
  %14 = fcmp ogt float %13, 0xBE45798EE0000000
  %15 = fcmp olt float %13, 0x3E45798EE0000000
  %16 = and i1 %14, %15
  br i1 %16, label %39, label %17

17:                                               ; preds = %7
  %18 = fdiv float 1.000000e+00, %13
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %2) #18
  %19 = call fastcc float @dot_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %8) #18
  %20 = fmul float %18, %19
  %21 = fcmp olt float %20, 0.000000e+00
  %22 = fcmp ogt float %20, 1.000000e+00
  %23 = or i1 %21, %22
  br i1 %23, label %39, label %24

24:                                               ; preds = %17
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %10) #18
  %25 = call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %12) #18
  %26 = fmul float %18, %25
  %27 = fcmp olt float %26, 0.000000e+00
  %28 = fadd float %20, %26
  %29 = fcmp ogt float %28, 1.000000e+00
  %30 = or i1 %27, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %24
  %32 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #18
  %33 = fmul float %18, %32
  store float %33, ptr %5, align 4, !tbaa !34
  %34 = fcmp olt float %33, 0.000000e+00
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = icmp eq ptr %6, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %35
  store float %20, ptr %6, align 4, !tbaa !34
  %38 = getelementptr inbounds float, ptr %6, i64 1
  store float %26, ptr %38, align 4, !tbaa !34
  br label %39

39:                                               ; preds = %35, %37, %31, %24, %17, %7
  %40 = phi i8 [ 0, %7 ], [ 0, %17 ], [ 0, %24 ], [ 0, %31 ], [ 1, %37 ], [ 1, %35 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  ret i8 %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local zeroext i8 @isect_ray_plane_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %3, ptr noundef %2) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef %4, ptr noundef %2) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull %11) #18
  %13 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %8) #18
  %14 = fcmp ogt float %13, 0xBE45798EE0000000
  %15 = fcmp olt float %13, 0x3E45798EE0000000
  %16 = and i1 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %7
  %18 = fdiv float 1.000000e+00, %13
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %2) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %10) #18
  %19 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #18
  %20 = fmul float %18, %19
  store float %20, ptr %5, align 4, !tbaa !34
  %21 = icmp eq i32 %6, 0
  %22 = fcmp uge float %20, 0.000000e+00
  %23 = select i1 %21, i1 true, i1 %22
  %24 = zext i1 %23 to i8
  br label %25

25:                                               ; preds = %17, %7
  %26 = phi i8 [ 0, %7 ], [ %24, %17 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  ret i8 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_ray_tri_epsilon_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr noundef writeonly %6, float noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef %3, ptr noundef %2) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef %4, ptr noundef %2) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %12) #18
  %14 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %9) #18
  %15 = fcmp oeq float %14, 0.000000e+00
  br i1 %15, label %40, label %16

16:                                               ; preds = %8
  %17 = fdiv float 1.000000e+00, %14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %0, ptr noundef %2) #18
  %18 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %9) #18
  %19 = fmul float %17, %18
  %20 = fneg float %7
  %21 = fcmp olt float %19, %20
  br i1 %21, label %40, label %22

22:                                               ; preds = %16
  %23 = fadd float %7, 1.000000e+00
  %24 = fcmp ogt float %19, %23
  br i1 %24, label %40, label %25

25:                                               ; preds = %22
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %10, ptr noundef nonnull %11) #18
  %26 = call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %13) #18
  %27 = fmul float %17, %26
  %28 = fcmp olt float %27, %20
  %29 = fadd float %19, %27
  %30 = fcmp ogt float %29, %23
  %31 = or i1 %28, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = call fastcc float @dot_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #18
  %34 = fmul float %17, %33
  store float %34, ptr %5, align 4, !tbaa !34
  %35 = fcmp olt float %34, 0.000000e+00
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = icmp eq ptr %6, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  store float %19, ptr %6, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %6, i64 1
  store float %27, ptr %39, align 4, !tbaa !34
  br label %40

40:                                               ; preds = %36, %38, %32, %25, %16, %22, %8
  %41 = phi i8 [ 0, %8 ], [ 0, %22 ], [ 0, %16 ], [ 0, %25 ], [ 0, %32 ], [ 1, %38 ], [ 1, %36 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  ret i8 %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_ray_tri_threshold_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr noundef writeonly %6, float noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef %3, ptr noundef %2) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef %4, ptr noundef %2) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %12) #18
  %14 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %9) #18
  %15 = fcmp ogt float %14, 0xBEB0C6F7A0000000
  %16 = fcmp olt float %14, 0x3EB0C6F7A0000000
  %17 = and i1 %15, %16
  br i1 %17, label %64, label %18

18:                                               ; preds = %8
  %19 = fdiv float 1.000000e+00, %14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %0, ptr noundef %2) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %10, ptr noundef nonnull %11) #18
  %20 = call fastcc float @dot_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #18
  %21 = fmul float %19, %20
  store float %21, ptr %5, align 4, !tbaa !34
  %22 = fcmp olt float %21, 0.000000e+00
  br i1 %22, label %64, label %23

23:                                               ; preds = %18
  %24 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %9) #18
  %25 = fmul float %19, %24
  %26 = call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %13) #18
  %27 = fmul float %19, %26
  %28 = fcmp ogt float %25, 0.000000e+00
  %29 = fcmp ogt float %27, 0.000000e+00
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = fadd float %25, %27
  %33 = fcmp ogt float %32, 1.000000e+00
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = fadd float %32, -1.000000e+00
  %36 = fmul float %35, 5.000000e-01
  %37 = fsub float %25, %36
  %38 = fsub float %27, %36
  br label %52

39:                                               ; preds = %31, %23
  %40 = fcmp olt float %25, 0.000000e+00
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  %42 = fcmp ogt float %25, 1.000000e+00
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = fadd float %25, -1.000000e+00
  br label %45

45:                                               ; preds = %41, %39, %43
  %46 = phi float [ %44, %43 ], [ %25, %39 ], [ 0.000000e+00, %41 ]
  %47 = fcmp olt float %27, 0.000000e+00
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = fcmp ogt float %27, 1.000000e+00
  br i1 %49, label %50, label %52

50:                                               ; preds = %48
  %51 = fadd float %27, -1.000000e+00
  br label %52

52:                                               ; preds = %48, %45, %50, %34
  %53 = phi float [ %37, %34 ], [ %46, %50 ], [ %46, %45 ], [ %46, %48 ]
  %54 = phi float [ %38, %34 ], [ %51, %50 ], [ %27, %45 ], [ 0.000000e+00, %48 ]
  call fastcc void @mul_v3_fl(ptr noundef nonnull %11, float noundef %53) #18
  call fastcc void @mul_v3_fl(ptr noundef nonnull %12, float noundef %54) #18
  %55 = call fastcc float @len_squared_v3(ptr noundef nonnull %11) #18
  %56 = call fastcc float @len_squared_v3(ptr noundef nonnull %12) #18
  %57 = fadd float %55, %56
  %58 = fmul float %7, %7
  %59 = fcmp ogt float %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %52
  %61 = icmp eq ptr %6, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %60
  store float %25, ptr %6, align 4, !tbaa !34
  %63 = getelementptr inbounds float, ptr %6, i64 1
  store float %27, ptr %63, align 4, !tbaa !34
  br label %64

64:                                               ; preds = %60, %62, %52, %18, %8
  %65 = phi i8 [ 0, %8 ], [ 0, %18 ], [ 0, %52 ], [ 1, %62 ], [ 1, %60 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  ret i8 %65
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @isect_point_planes_v3(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #12 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %10

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, %6
  br i1 %9, label %15, label %10, !llvm.loop !71

10:                                               ; preds = %5, %7
  %11 = phi i64 [ 0, %5 ], [ %8, %7 ]
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 %11
  %13 = tail call fastcc float @plane_point_side_v3(ptr noundef %12, ptr noundef %2) #18
  %14 = fcmp ogt float %13, 0.000000e+00
  br i1 %14, label %15, label %7

15:                                               ; preds = %10, %7, %3
  %16 = phi i8 [ 1, %3 ], [ 1, %7 ], [ 0, %10 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_line_plane_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %1) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %3) #18
  %8 = call fastcc float @dot_v3v3(ptr noundef %4, ptr noundef nonnull %6) #18
  %9 = tail call float @llvm.fabs.f32(float %8)
  %10 = fcmp ogt float %9, 0x3E80000000000000
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = call fastcc float @dot_v3v3(ptr noundef %4, ptr noundef nonnull %7) #18
  %13 = fneg float %12
  %14 = fdiv float %13, %8
  call fastcc void @madd_v3_v3v3fl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, float noundef %14) #18
  br label %15

15:                                               ; preds = %5, %11
  %16 = phi i8 [ 1, %11 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_plane_plane_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  tail call fastcc void @cross_v3_v3v3(ptr noundef %1, ptr noundef %3, ptr noundef %5) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef %3, ptr noundef %1) #18
  call fastcc void @add_v3_v3(ptr noundef nonnull %7, ptr noundef %2) #18
  %8 = call zeroext i8 @isect_line_plane_v3(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7, ptr noundef %4, ptr noundef %5) #18, !range !60
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local zeroext i8 @isect_sweeping_sphere_tri_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef %6, ptr nocapture noundef %7) local_unnamed_addr #1 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 8
  %13 = alloca [3 x float], align 8
  %14 = alloca [3 x float], align 8
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #19
  %18 = fmul float %2, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %4, ptr noundef %3) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %5, ptr noundef %3) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef %1, ptr noundef %0) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %10) #18
  %19 = call fastcc float @normalize_v3(ptr noundef nonnull %14) #18
  %20 = call fastcc float @dot_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %13) #18
  %21 = fcmp ogt float %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %8
  call fastcc void @negate_v3(ptr noundef nonnull %14) #18
  br label %23

23:                                               ; preds = %22, %8
  %24 = call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef nonnull %14) #18
  %25 = call fastcc float @dot_v3v3(ptr noundef %3, ptr noundef nonnull %14) #18
  %26 = fsub float %24, %25
  %27 = call fastcc float @dot_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %13) #18
  %28 = tail call float @llvm.fabs.f32(float %27)
  %29 = fcmp olt float %28, 0x3EB0C6F7A0000000
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = tail call float @llvm.fabs.f32(float %26)
  %32 = fcmp ult float %31, %2
  br i1 %32, label %101, label %212

33:                                               ; preds = %23
  %34 = fneg float %26
  %35 = insertelement <2 x float> poison, float %2, i64 0
  %36 = insertelement <2 x float> %35, float %34, i64 1
  %37 = insertelement <2 x float> poison, float %26, i64 0
  %38 = insertelement <2 x float> %37, float %2, i64 1
  %39 = fsub <2 x float> %36, %38
  %40 = insertelement <2 x float> poison, float %27, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = fdiv <2 x float> %39, %41
  %43 = extractelement <2 x float> %42, i64 0
  %44 = extractelement <2 x float> %42, i64 1
  %45 = fcmp ogt float %43, %44
  %46 = select i1 %45, float %44, float %43
  %47 = select i1 %45, float %43, float %44
  %48 = fcmp ogt float %46, 1.000000e+00
  %49 = fcmp olt float %47, 0.000000e+00
  %50 = or i1 %48, %49
  br i1 %50, label %212, label %51

51:                                               ; preds = %33
  %52 = fcmp olt float %46, 0.000000e+00
  %53 = select i1 %52, float 0.000000e+00, float %46
  %54 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %55 = load <2 x float>, ptr %13, align 8, !tbaa !34
  %56 = insertelement <2 x float> poison, float %53, i64 0
  %57 = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> zeroinitializer
  %58 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %55, <2 x float> %57, <2 x float> %54)
  %59 = load <2 x float>, ptr %14, align 8, !tbaa !34
  %60 = fneg <2 x float> %59
  %61 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> %61, <2 x float> %58)
  store <2 x float> %62, ptr %12, align 8, !tbaa !34
  %63 = getelementptr inbounds float, ptr %0, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %66 = load float, ptr %65, align 8, !tbaa !34
  %67 = tail call float @llvm.fmuladd.f32(float %66, float %53, float %64)
  %68 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %69 = load float, ptr %68, align 8, !tbaa !34
  %70 = fneg float %69
  %71 = tail call float @llvm.fmuladd.f32(float %70, float %2, float %67)
  %72 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  store float %71, ptr %72, align 8, !tbaa !34
  %73 = call fastcc float @dot_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %9) #18
  %74 = call fastcc float @dot_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #18
  %75 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %10) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef %3) #18
  %76 = call fastcc float @dot_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %9) #18
  %77 = call fastcc float @dot_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %10) #18
  %78 = insertelement <2 x float> poison, float %76, i64 0
  %79 = insertelement <2 x float> %78, float %77, i64 1
  %80 = fneg <2 x float> %79
  %81 = insertelement <2 x float> poison, float %74, i64 0
  %82 = shufflevector <2 x float> %81, <2 x float> poison, <2 x i32> zeroinitializer
  %83 = fmul <2 x float> %82, %80
  %84 = shufflevector <2 x float> %79, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %85 = insertelement <2 x float> poison, float %73, i64 0
  %86 = insertelement <2 x float> %85, float %75, i64 1
  %87 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %84, <2 x float> %86, <2 x float> %83)
  %88 = extractelement <2 x float> %87, i64 0
  %89 = extractelement <2 x float> %87, i64 1
  %90 = fadd float %88, %89
  %91 = fneg float %74
  %92 = fmul float %74, %91
  %93 = tail call float @llvm.fmuladd.f32(float %73, float %75, float %92)
  %94 = fsub float %90, %93
  %95 = fcmp ole float %94, 0.000000e+00
  %96 = fcmp oge float %89, 0.000000e+00
  %97 = and i1 %96, %95
  %98 = fcmp oge float %88, 0.000000e+00
  %99 = and i1 %98, %97
  br i1 %99, label %100, label %101

100:                                              ; preds = %51
  store float %53, ptr %6, align 4, !tbaa !34
  call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef nonnull %12) #18
  br label %212

101:                                              ; preds = %51, %30
  store float 1.000000e+00, ptr %6, align 4, !tbaa !34
  %102 = call fastcc float @dot_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %13) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %15, ptr noundef %0, ptr noundef %3) #18
  %103 = call fastcc float @dot_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %15) #18
  %104 = fmul float %103, 2.000000e+00
  %105 = call fastcc float @dot_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %15) #18
  %106 = fsub float %105, %18
  %107 = tail call fastcc zeroext i8 @getLowestRoot(float noundef %102, float noundef %104, float noundef %106, float noundef 1.000000e+00, ptr noundef nonnull %6) #18, !range !60
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %3) #18
  br label %110

110:                                              ; preds = %109, %101
  %111 = phi i8 [ 1, %109 ], [ 0, %101 ]
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %15, ptr noundef %0, ptr noundef %4) #18
  %112 = call fastcc float @dot_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %15) #18
  %113 = fmul float %112, 2.000000e+00
  %114 = call fastcc float @dot_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %15) #18
  %115 = fsub float %114, %18
  %116 = load float, ptr %6, align 4, !tbaa !34
  %117 = tail call fastcc zeroext i8 @getLowestRoot(float noundef %102, float noundef %113, float noundef %115, float noundef %116, ptr noundef nonnull %6) #18, !range !60
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %110
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %4) #18
  br label %120

120:                                              ; preds = %119, %110
  %121 = phi i8 [ 1, %119 ], [ %111, %110 ]
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %15, ptr noundef %0, ptr noundef %5) #18
  %122 = call fastcc float @dot_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %15) #18
  %123 = fmul float %122, 2.000000e+00
  %124 = call fastcc float @dot_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %15) #18
  %125 = fsub float %124, %18
  %126 = load float, ptr %6, align 4, !tbaa !34
  %127 = tail call fastcc zeroext i8 @getLowestRoot(float noundef %102, float noundef %123, float noundef %125, float noundef %126, ptr noundef nonnull %6) #18, !range !60
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %120
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %5) #18
  br label %130

130:                                              ; preds = %129, %120
  %131 = phi i8 [ 1, %129 ], [ %121, %120 ]
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef %5, ptr noundef %4) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %16, ptr noundef %3, ptr noundef %0) #18
  %132 = call fastcc float @dot_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %9) #18
  %133 = call fastcc float @dot_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %13) #18
  %134 = call fastcc float @dot_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %16) #18
  %135 = fneg float %102
  %136 = fmul float %133, %133
  %137 = tail call float @llvm.fmuladd.f32(float %132, float %135, float %136)
  %138 = call fastcc float @dot_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %16) #18
  %139 = fneg float %133
  %140 = fmul float %134, %139
  %141 = tail call float @llvm.fmuladd.f32(float %132, float %138, float %140)
  %142 = fmul float %141, 2.000000e+00
  %143 = call fastcc float @dot_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %16) #18
  %144 = fsub float %18, %143
  %145 = fmul float %134, %134
  %146 = tail call float @llvm.fmuladd.f32(float %132, float %144, float %145)
  %147 = load float, ptr %6, align 4, !tbaa !34
  %148 = call fastcc zeroext i8 @getLowestRoot(float noundef %137, float noundef %142, float noundef %146, float noundef %147, ptr noundef nonnull %17) #18, !range !60
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %130
  %151 = load float, ptr %17, align 4, !tbaa !34
  %152 = fneg float %134
  %153 = tail call float @llvm.fmuladd.f32(float %133, float %151, float %152)
  %154 = fdiv float %153, %132
  %155 = fcmp oge float %154, 0.000000e+00
  %156 = fcmp ole float %154, 1.000000e+00
  %157 = and i1 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  store float %151, ptr %6, align 4, !tbaa !34
  call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef nonnull %9) #18
  tail call fastcc void @mul_v3_fl(ptr noundef %7, float noundef %154) #18
  tail call fastcc void @add_v3_v3(ptr noundef %7, ptr noundef %3) #18
  br label %159

159:                                              ; preds = %150, %158, %130
  %160 = phi i8 [ 1, %158 ], [ %131, %150 ], [ %131, %130 ]
  %161 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %10) #18
  %162 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %13) #18
  %163 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %16) #18
  %164 = fmul float %162, %162
  %165 = tail call float @llvm.fmuladd.f32(float %161, float %135, float %164)
  %166 = fneg float %162
  %167 = fmul float %163, %166
  %168 = tail call float @llvm.fmuladd.f32(float %161, float %138, float %167)
  %169 = fmul float %168, 2.000000e+00
  %170 = fmul float %163, %163
  %171 = tail call float @llvm.fmuladd.f32(float %161, float %144, float %170)
  %172 = load float, ptr %6, align 4, !tbaa !34
  %173 = call fastcc zeroext i8 @getLowestRoot(float noundef %165, float noundef %169, float noundef %171, float noundef %172, ptr noundef nonnull %17) #18, !range !60
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %184, label %175

175:                                              ; preds = %159
  %176 = load float, ptr %17, align 4, !tbaa !34
  %177 = fneg float %163
  %178 = tail call float @llvm.fmuladd.f32(float %162, float %176, float %177)
  %179 = fdiv float %178, %161
  %180 = fcmp oge float %179, 0.000000e+00
  %181 = fcmp ole float %179, 1.000000e+00
  %182 = and i1 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %175
  store float %176, ptr %6, align 4, !tbaa !34
  call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef nonnull %10) #18
  tail call fastcc void @mul_v3_fl(ptr noundef %7, float noundef %179) #18
  tail call fastcc void @add_v3_v3(ptr noundef %7, ptr noundef %3) #18
  br label %184

184:                                              ; preds = %175, %183, %159
  %185 = phi i8 [ 1, %183 ], [ %160, %175 ], [ %160, %159 ]
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %16, ptr noundef %4, ptr noundef %0) #18
  %186 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %11) #18
  %187 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %13) #18
  %188 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %16) #18
  %189 = fmul float %187, %187
  %190 = tail call float @llvm.fmuladd.f32(float %186, float %135, float %189)
  %191 = call fastcc float @dot_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %16) #18
  %192 = fneg float %187
  %193 = fmul float %188, %192
  %194 = tail call float @llvm.fmuladd.f32(float %186, float %191, float %193)
  %195 = fmul float %194, 2.000000e+00
  %196 = call fastcc float @dot_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %16) #18
  %197 = fsub float %18, %196
  %198 = fmul float %188, %188
  %199 = tail call float @llvm.fmuladd.f32(float %186, float %197, float %198)
  %200 = load float, ptr %6, align 4, !tbaa !34
  %201 = call fastcc zeroext i8 @getLowestRoot(float noundef %190, float noundef %195, float noundef %199, float noundef %200, ptr noundef nonnull %17) #18, !range !60
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %212, label %203

203:                                              ; preds = %184
  %204 = load float, ptr %17, align 4, !tbaa !34
  %205 = fneg float %188
  %206 = tail call float @llvm.fmuladd.f32(float %187, float %204, float %205)
  %207 = fdiv float %206, %186
  %208 = fcmp oge float %207, 0.000000e+00
  %209 = fcmp ole float %207, 1.000000e+00
  %210 = and i1 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  store float %204, ptr %6, align 4, !tbaa !34
  call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef nonnull %11) #18
  tail call fastcc void @mul_v3_fl(ptr noundef %7, float noundef %207) #18
  tail call fastcc void @add_v3_v3(ptr noundef %7, ptr noundef %4) #18
  br label %212

212:                                              ; preds = %33, %100, %184, %211, %203, %30
  %213 = phi i8 [ 0, %30 ], [ 1, %211 ], [ %185, %203 ], [ %185, %184 ], [ 0, %33 ], [ 1, %100 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  ret i8 %213
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !72 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc noundef zeroext i8 @getLowestRoot(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #13 !PGOFuncName !73 {
  %6 = fmul float %0, -4.000000e+00
  %7 = fmul float %6, %2
  %8 = tail call float @llvm.fmuladd.f32(float %1, float %1, float %7)
  %9 = fcmp ult float %8, 0.000000e+00
  br i1 %9, label %36, label %10

10:                                               ; preds = %5
  %11 = tail call float @sqrtf(float noundef %8) #20
  %12 = fneg float %1
  %13 = fmul float %0, 2.000000e+00
  %14 = insertelement <2 x float> poison, float %12, i64 0
  %15 = insertelement <2 x float> %14, float %11, i64 1
  %16 = insertelement <2 x float> poison, float %11, i64 0
  %17 = insertelement <2 x float> %16, float %1, i64 1
  %18 = fsub <2 x float> %15, %17
  %19 = insertelement <2 x float> poison, float %13, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fdiv <2 x float> %18, %20
  %22 = extractelement <2 x float> %21, i64 0
  %23 = extractelement <2 x float> %21, i64 1
  %24 = fcmp ogt float %22, %23
  %25 = select i1 %24, float %23, float %22
  %26 = fcmp ogt float %25, 0.000000e+00
  %27 = fcmp olt float %25, %3
  %28 = and i1 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %10
  %30 = select i1 %24, float %22, float %23
  %31 = fcmp ogt float %30, 0.000000e+00
  %32 = fcmp olt float %30, %3
  %33 = and i1 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %10
  %35 = phi float [ %25, %10 ], [ %30, %29 ]
  store float %35, ptr %4, align 4, !tbaa !34
  br label %36

36:                                               ; preds = %34, %5, %29
  %37 = phi i8 [ 0, %29 ], [ 0, %5 ], [ 1, %34 ]
  ret i8 %37
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local zeroext i8 @isect_axial_line_tri_v3(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  %11 = add nsw i32 %0, 1
  %12 = srem i32 %11, 3
  %13 = add nsw i32 %0, 2
  %14 = srem i32 %13, 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %4, ptr noundef %3) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %5, ptr noundef %3) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %3, ptr noundef %1) #18
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %18
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %15
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fneg float %22
  %26 = fmul float %24, %25
  %27 = tail call float @llvm.fmuladd.f32(float %17, float %20, float %26)
  %28 = fcmp ogt float %27, 0xBEB0C6F7A0000000
  %29 = fcmp olt float %27, 0x3EB0C6F7A0000000
  %30 = and i1 %28, %29
  br i1 %30, label %86, label %31

31:                                               ; preds = %7
  %32 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %18
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %15
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = fneg float %35
  %37 = fmul float %20, %36
  %38 = tail call float @llvm.fmuladd.f32(float %33, float %24, float %37)
  %39 = fdiv float %38, %27
  %40 = fcmp olt float %39, 0.000000e+00
  %41 = fcmp ogt float %39, 1.000000e+00
  %42 = or i1 %40, %41
  br i1 %42, label %86, label %43

43:                                               ; preds = %31
  %44 = fcmp ogt float %24, 0xBEB0C6F7A0000000
  %45 = fcmp olt float %24, 0x3EB0C6F7A0000000
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = fcmp ogt float %20, 0xBEB0C6F7A0000000
  %49 = fcmp olt float %20, 0x3EB0C6F7A0000000
  %50 = and i1 %48, %49
  br i1 %50, label %86, label %51

51:                                               ; preds = %47
  %52 = fneg float %33
  %53 = fneg float %39
  %54 = tail call float @llvm.fmuladd.f32(float %53, float %22, float %52)
  %55 = fdiv float %54, %20
  br label %60

56:                                               ; preds = %43
  %57 = fneg float %39
  %58 = tail call float @llvm.fmuladd.f32(float %57, float %17, float %36)
  %59 = fdiv float %58, %24
  br label %60

60:                                               ; preds = %56, %51
  %61 = phi float [ %55, %51 ], [ %59, %56 ]
  %62 = fcmp olt float %61, 0.000000e+00
  %63 = fadd float %39, %61
  %64 = fcmp ogt float %63, 1.000000e+00
  %65 = or i1 %62, %64
  br i1 %65, label %86, label %66

66:                                               ; preds = %60
  %67 = sext i32 %0 to i64
  %68 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !34
  %70 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %67
  %71 = load float, ptr %70, align 4, !tbaa !34
  %72 = tail call float @llvm.fmuladd.f32(float %61, float %71, float %69)
  %73 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %67
  %74 = load float, ptr %73, align 4, !tbaa !34
  %75 = tail call float @llvm.fmuladd.f32(float %39, float %74, float %72)
  %76 = getelementptr inbounds float, ptr %2, i64 %67
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = getelementptr inbounds float, ptr %1, i64 %67
  %79 = load float, ptr %78, align 4, !tbaa !34
  %80 = fsub float %77, %79
  %81 = fdiv float %75, %80
  store float %81, ptr %6, align 4, !tbaa !34
  %82 = fcmp uge float %81, 0.000000e+00
  %83 = fcmp ule float %81, 1.000000e+00
  %84 = and i1 %82, %83
  %85 = zext i1 %84 to i8
  br label %86

86:                                               ; preds = %66, %60, %47, %31, %7
  %87 = phi i8 [ 0, %7 ], [ 0, %31 ], [ 0, %47 ], [ 0, %60 ], [ %85, %66 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  ret i8 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @isect_line_line_epsilon_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5, float noundef %6) local_unnamed_addr #8 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %2, ptr noundef %0) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %0) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %3, ptr noundef %2) #18
  %19 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %8) #18
  %20 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %9) #18
  %21 = call fastcc float @dot_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %14) #18
  %22 = fcmp oeq float %21, 1.000000e+00
  %23 = fcmp oeq float %21, -1.000000e+00
  %24 = or i1 %22, %23
  br i1 %24, label %39, label %25

25:                                               ; preds = %7
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %26 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %11) #18
  %27 = fcmp oeq float %26, 0.000000e+00
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #18
  %30 = tail call float @llvm.fabs.f32(float %29)
  %31 = fcmp ugt float %30, %6
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %9) #18
  %33 = call fastcc float @dot_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %11) #18
  %34 = fdiv float %33, %26
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %34) #18
  call fastcc void @add_v3_v3v3(ptr noundef %4, ptr noundef %0, ptr noundef nonnull %8) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef %4) #18
  br label %39

35:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %16, ptr noundef %0, ptr noundef %2) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  call void @project_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull %15) #20
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %17, ptr noundef %2, ptr noundef nonnull %16) #18
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %18, ptr noundef %3, ptr noundef nonnull %16) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %17, ptr noundef %0) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %0) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %18, ptr noundef nonnull %17) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %9) #18
  %36 = call fastcc float @dot_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %11) #18
  %37 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %11) #18
  %38 = fdiv float %36, %37
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %38) #18
  call fastcc void @add_v3_v3v3(ptr noundef %4, ptr noundef %0, ptr noundef nonnull %8) #18
  call fastcc void @sub_v3_v3v3(ptr noundef %5, ptr noundef %4, ptr noundef nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #19
  br label %39

39:                                               ; preds = %25, %7, %35, %32
  %40 = phi i32 [ 1, %32 ], [ 2, %35 ], [ 0, %7 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  ret i32 %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !74 {
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

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @isect_line_line_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #8 {
  %7 = tail call i32 @isect_line_line_epsilon_v3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, float noundef 0x3EB0C6F7A0000000) #18, !range !75
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_line_line_strict_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #1 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %2, ptr noundef %0) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %0) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %3, ptr noundef %2) #18
  %15 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %7) #18
  %16 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %8) #18
  %17 = call fastcc float @dot_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %14) #18
  %18 = fcmp oeq float %17, 1.000000e+00
  %19 = fcmp oeq float %17, -1.000000e+00
  %20 = or i1 %18, %19
  %21 = fcmp oeq float %17, 0.000000e+00
  %22 = or i1 %21, %20
  br i1 %22, label %50, label %23

23:                                               ; preds = %6
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %24 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %10) #18
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %50, label %26

26:                                               ; preds = %23
  %27 = call fastcc float @dot_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #18
  %28 = fcmp ogt float %27, 0xBEB0C6F7A0000000
  %29 = fcmp olt float %27, 0x3EB0C6F7A0000000
  %30 = and i1 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %8) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %7) #18
  %32 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %10) #18
  %33 = call fastcc float @dot_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %10) #18
  %34 = insertelement <2 x float> poison, float %32, i64 0
  %35 = insertelement <2 x float> %34, float %33, i64 1
  %36 = insertelement <2 x float> poison, float %24, i64 0
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %38 = fdiv <2 x float> %35, %37
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %40 = fcmp ole <4 x float> %39, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %41 = fcmp oge <4 x float> %39, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %42 = shufflevector <4 x i1> %40, <4 x i1> %41, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %43 = freeze <4 x i1> %42
  %44 = bitcast <4 x i1> %43 to i4
  %45 = icmp eq i4 %44, -1
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = extractelement <2 x float> %38, i64 0
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %47) #18
  call fastcc void @add_v3_v3v3(ptr noundef %4, ptr noundef %0, ptr noundef nonnull %7) #18
  %48 = icmp eq ptr %5, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store float %47, ptr %5, align 4, !tbaa !34
  br label %50

50:                                               ; preds = %26, %49, %46, %31, %23, %6
  %51 = phi i8 [ 0, %6 ], [ 0, %23 ], [ 1, %49 ], [ 1, %46 ], [ 0, %31 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  ret i8 %51
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @isect_aabb_aabb_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = load float, ptr %0, align 4, !tbaa !34
  %6 = load float, ptr %3, align 4, !tbaa !34
  %7 = fcmp olt float %5, %6
  br i1 %7, label %8, label %37

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fcmp olt float %10, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = getelementptr inbounds float, ptr %0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %3, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fcmp olt float %16, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load float, ptr %2, align 4, !tbaa !34
  %22 = load float, ptr %1, align 4, !tbaa !34
  %23 = fcmp olt float %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = getelementptr inbounds float, ptr %2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %1, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fcmp olt float %26, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = getelementptr inbounds float, ptr %2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds float, ptr %1, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fcmp olt float %32, %34
  %36 = zext i1 %35 to i8
  br label %37

37:                                               ; preds = %30, %24, %20, %14, %8, %4
  %38 = phi i8 [ 0, %24 ], [ 0, %20 ], [ 0, %14 ], [ 0, %8 ], [ 0, %4 ], [ %36, %30 ]
  ret i8 %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @isect_ray_aabb_initialize(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %1) #18
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 1, i64 1
  %8 = getelementptr inbounds float, ptr %2, i64 2
  %9 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 1, i64 2
  %10 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 2
  %11 = fdiv float 1.000000e+00, %4
  store float %11, ptr %5, align 4, !tbaa !34
  %12 = load float, ptr %6, align 4, !tbaa !34
  %13 = fdiv float 1.000000e+00, %12
  store float %13, ptr %7, align 4, !tbaa !34
  %14 = load float, ptr %8, align 4, !tbaa !34
  %15 = fdiv float 1.000000e+00, %14
  store float %15, ptr %9, align 4, !tbaa !34
  %16 = insertelement <2 x float> poison, float %11, i64 0
  %17 = insertelement <2 x float> %16, float %13, i64 1
  %18 = fcmp olt <2 x float> %17, zeroinitializer
  %19 = zext <2 x i1> %18 to <2 x i32>
  store <2 x i32> %19, ptr %10, align 4, !tbaa !58
  %20 = fcmp olt float %15, 0.000000e+00
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 2, i64 2
  store i32 %21, ptr %22, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_ray_aabb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca [2 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %1) #18
  %6 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %2) #18
  %7 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !58
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 1
  %13 = sub nsw i32 1, %8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 2, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !58
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 %19, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = sub nsw i32 1, %18
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 %23, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %27 = insertelement <2 x float> poison, float %16, i64 0
  %28 = insertelement <2 x float> %27, float %21, i64 1
  %29 = fsub <2 x float> %28, %26
  %30 = load <2 x float>, ptr %12, align 4, !tbaa !34
  %31 = fmul <2 x float> %30, %29
  %32 = insertelement <2 x float> poison, float %11, i64 0
  %33 = insertelement <2 x float> %32, float %25, i64 1
  %34 = fsub <2 x float> %33, %26
  %35 = fmul <2 x float> %30, %34
  %36 = extractelement <2 x float> %35, i64 0
  %37 = extractelement <2 x float> %35, i64 1
  %38 = fcmp ogt float %36, %37
  %39 = extractelement <2 x float> %31, i64 0
  %40 = extractelement <2 x float> %31, i64 1
  %41 = fcmp ogt float %40, %39
  %42 = select i1 %38, i1 true, i1 %41
  br i1 %42, label %75, label %43

43:                                               ; preds = %4
  %44 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %45 = fcmp olt <2 x float> %44, %31
  %46 = extractelement <2 x i1> %45, i64 1
  %47 = select i1 %46, float %40, float %36
  %48 = extractelement <2 x i1> %45, i64 0
  %49 = select i1 %48, float %37, float %39
  %50 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 2, i64 2
  %51 = load i32, ptr %50, align 4, !tbaa !58
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 %52, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !34
  %57 = fsub float %54, %56
  %58 = getelementptr inbounds %struct.IsectRayAABBData, ptr %0, i64 0, i32 1, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !34
  %60 = fmul float %57, %59
  %61 = sub nsw i32 1, %51
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 %62, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = fsub float %64, %56
  %66 = fmul float %59, %65
  %67 = fcmp ogt float %47, %66
  %68 = fcmp ogt float %60, %49
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %43
  %71 = icmp eq ptr %3, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %70
  %73 = fcmp ogt float %60, %47
  %74 = select i1 %73, float %60, float %47
  store float %74, ptr %3, align 4, !tbaa !34
  br label %75

75:                                               ; preds = %70, %72, %43, %4
  %76 = phi i8 [ 0, %4 ], [ 0, %43 ], [ 1, %72 ], [ 1, %70 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  ret i8 %76
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local float @line_point_factor_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %1) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1) #18
  %6 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5) #18
  %7 = fcmp une float %6, 0.000000e+00
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %10 = fdiv float %9, %6
  br label %11

11:                                               ; preds = %3, %8
  %12 = phi float [ %10, %8 ], [ 0.000000e+00, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret float %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local float @line_point_factor_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %1) #18
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1) #18
  %6 = call fastcc float @dot_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %5) #18
  %7 = fcmp une float %6, 0.000000e+00
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = call fastcc float @dot_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %10 = fdiv float %9, %6
  br label %11

11:                                               ; preds = %3, %8
  %12 = phi float [ %10, %8 ], [ 0.000000e+00, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret float %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local float @line_plane_factor_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %3, ptr noundef %2) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %0) #18
  %7 = call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %5) #18
  %8 = fcmp une float %7, 0.000000e+00
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %6) #18
  %11 = fneg float %10
  %12 = fdiv float %11, %7
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi float [ %12, %9 ], [ 0.000000e+00, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret float %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @limit_dist_v3(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #8 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = tail call fastcc float @len_v3v3(ptr noundef %0, ptr noundef %1) #18
  %7 = fcmp ogt float %6, %2
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  %9 = fdiv float %2, %6
  %10 = fmul float %9, 5.000000e-01
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %1) #18
  %11 = fsub float 5.000000e-01, %10
  call void @interp_v3_v3v3(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef %11) #20
  %12 = fadd float %10, 5.000000e-01
  call void @interp_v3_v3v3(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef %12) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  br label %13

13:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !76 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #18
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret float %4
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @isect_point_tri_v2_int(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 {
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 8
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  %11 = insertelement <2 x i32> poison, i32 %0, i64 0
  %12 = insertelement <2 x i32> %11, i32 %3, i64 1
  %13 = sitofp <2 x i32> %12 to <2 x float>
  %14 = extractelement <2 x float> %13, i64 0
  store float %14, ptr %7, align 4, !tbaa !34
  %15 = sitofp i32 %1 to float
  %16 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  store <2 x float> %13, ptr %8, align 8, !tbaa !34
  %17 = sitofp i32 %2 to float
  store float %17, ptr %9, align 4, !tbaa !34
  %18 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  store float %15, ptr %18, align 4, !tbaa !34
  %19 = insertelement <2 x i32> poison, i32 %4, i64 0
  %20 = insertelement <2 x i32> %19, i32 %5, i64 1
  %21 = sitofp <2 x i32> %20 to <2 x float>
  store <2 x float> %21, ptr %10, align 8, !tbaa !34
  %22 = call i32 @isect_point_tri_v2(ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #18, !range !77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local zeroext i8 @isect_point_tri_prism_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = tail call fastcc zeroext i8 @point_in_slice(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18, !range !60
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @point_in_slice(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %1) #18, !range !60
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc zeroext i8 @point_in_slice(ptr noundef %0, ptr noundef %3, ptr noundef %1, ptr noundef %2) #18, !range !60
  br label %12

12:                                               ; preds = %10, %7, %4
  %13 = phi i8 [ 0, %4 ], [ 0, %7 ], [ %11, %10 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc zeroext i8 @point_in_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !78 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  %8 = call float @closest_to_line_v3(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %1) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1) #18
  %9 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %5) #18
  %10 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %7) #18
  %11 = fdiv float %9, %10
  %12 = fcmp uge float %11, 0.000000e+00
  %13 = fcmp ule float %11, 1.000000e+00
  %14 = and i1 %12, %13
  %15 = zext i1 %14 to i8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @isect_point_tri_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x float], align 16
  %10 = tail call zeroext i8 @isect_point_tri_prism_v3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18, !range !60
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %13 = call fastcc float @len_squared_v3(ptr noundef nonnull %6) #18
  %14 = fcmp une float %13, 0.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #19
  call void @plane_from_point_normal_v3(ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %6) #18
  call void @closest_to_plane_v3(ptr noundef %4, ptr noundef nonnull %9, ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #19
  br label %17

16:                                               ; preds = %12
  tail call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef %0) #18
  br label %17

17:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  br label %18

18:                                               ; preds = %5, %17
  %19 = phi i8 [ 1, %17 ], [ 0, %5 ]
  ret i8 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @clip_segment_v3_plane(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %0) #18
  %6 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef %2) #18
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc float @plane_point_side_v3(ptr noundef %2, ptr noundef %0) #18
  %10 = fneg float %9
  %11 = fdiv float %10, %6
  %12 = fcmp ogt float %6, 0.000000e+00
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = fcmp ult float %11, 1.000000e+00
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call fastcc void @zero_v3(ptr noundef %0) #18
  tail call fastcc void @zero_v3(ptr noundef %1) #18
  br label %25

16:                                               ; preds = %13
  %17 = fcmp ogt float %11, 0.000000e+00
  br i1 %17, label %18, label %25

18:                                               ; preds = %16
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %4, float noundef %11) #18
  call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %5) #18
  br label %25

19:                                               ; preds = %8
  %20 = fcmp ugt float %11, 0.000000e+00
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call fastcc void @zero_v3(ptr noundef %0) #18
  tail call fastcc void @zero_v3(ptr noundef %1) #18
  br label %25

22:                                               ; preds = %19
  %23 = fcmp olt float %11, 1.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %4, float noundef %11) #18
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %5) #18
  br label %25

25:                                               ; preds = %22, %16, %3, %24, %21, %18, %15
  %26 = phi i8 [ 0, %15 ], [ 1, %18 ], [ 0, %21 ], [ 1, %24 ], [ 1, %3 ], [ 1, %16 ], [ 1, %22 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret i8 %26
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @clip_segment_v3_plane_n(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #14 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %0) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %1) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %7) #18
  %9 = icmp sgt i32 %3, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %4
  %11 = zext nneg i32 %3 to i64
  br label %12

12:                                               ; preds = %10, %38
  %13 = phi i64 [ 0, %10 ], [ %39, %38 ]
  %14 = getelementptr inbounds [4 x float], ptr %2, i64 %13
  %15 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef %14) #18
  %16 = fcmp une float %15, 0.000000e+00
  br i1 %16, label %17, label %38

17:                                               ; preds = %12
  %18 = call fastcc float @plane_point_side_v3(ptr noundef %14, ptr noundef nonnull %5) #18
  %19 = fneg float %18
  %20 = fdiv float %19, %15
  %21 = fcmp ogt float %15, 0.000000e+00
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = fcmp ult float %20, 1.000000e+00
  br i1 %23, label %24, label %42

24:                                               ; preds = %22
  %25 = fcmp ogt float %20, 0.000000e+00
  br i1 %25, label %26, label %38

26:                                               ; preds = %24
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %7, float noundef %20) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #18
  %27 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %28 = fcmp olt float %27, 0.000000e+00
  br i1 %28, label %42, label %38

29:                                               ; preds = %17
  %30 = fcmp olt float %15, 0.000000e+00
  br i1 %30, label %31, label %38

31:                                               ; preds = %29
  %32 = fcmp ugt float %20, 0.000000e+00
  br i1 %32, label %33, label %42

33:                                               ; preds = %31
  %34 = fcmp olt float %20, 1.000000e+00
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7, float noundef %20) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #18
  %36 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %37 = fcmp olt float %36, 0.000000e+00
  br i1 %37, label %42, label %38

38:                                               ; preds = %26, %24, %33, %35, %29, %12
  %39 = add nuw nsw i64 %13, 1
  %40 = icmp eq i64 %39, %11
  br i1 %40, label %41, label %12, !llvm.loop !79

41:                                               ; preds = %38, %4
  call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %5) #18
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %6) #18
  br label %42

42:                                               ; preds = %35, %31, %26, %22, %41
  %43 = phi i8 [ 1, %41 ], [ 0, %22 ], [ 0, %26 ], [ 0, %31 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret i8 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @plot_line_v2v2i(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #8 {
  %5 = load i32, ptr %0, align 4, !tbaa !58
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !58
  %8 = load i32, ptr %1, align 4, !tbaa !58
  %9 = getelementptr inbounds i32, ptr %1, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !58
  %11 = icmp sgt i32 %8, %5
  %12 = sub nsw i32 %8, %5
  %13 = select i1 %11, i32 1, i32 -1
  %14 = tail call i32 @llvm.abs.i32(i32 %12, i1 true)
  %15 = shl nuw i32 %14, 1
  %16 = icmp sgt i32 %10, %7
  %17 = sub nsw i32 %10, %7
  %18 = select i1 %16, i32 1, i32 -1
  %19 = tail call i32 @llvm.abs.i32(i32 %17, i1 true)
  %20 = shl nuw i32 %19, 1
  %21 = tail call zeroext i8 %2(i32 noundef %5, i32 noundef %7, ptr noundef %3) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %71, label %23

23:                                               ; preds = %4
  %24 = icmp slt i32 %15, %20
  br i1 %24, label %48, label %25

25:                                               ; preds = %23
  %26 = ashr exact i32 %15, 1
  %27 = sub nsw i32 %20, %26
  br label %28

28:                                               ; preds = %41, %25
  %29 = phi i32 [ %7, %25 ], [ %42, %41 ]
  %30 = phi i32 [ %5, %25 ], [ %44, %41 ]
  %31 = phi i32 [ %27, %25 ], [ %45, %41 ]
  %32 = icmp eq i32 %30, %8
  br i1 %32, label %71, label %33

33:                                               ; preds = %28
  %34 = icmp sgt i32 %31, -1
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = icmp ne i32 %31, 0
  %37 = or i1 %11, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = add nsw i32 %29, %18
  %40 = sub nsw i32 %31, %15
  br label %41

41:                                               ; preds = %38, %35, %33
  %42 = phi i32 [ %39, %38 ], [ %29, %35 ], [ %29, %33 ]
  %43 = phi i32 [ %40, %38 ], [ 0, %35 ], [ %31, %33 ]
  %44 = add nsw i32 %30, %13
  %45 = add nsw i32 %43, %20
  %46 = tail call zeroext i8 %2(i32 noundef %44, i32 noundef %42, ptr noundef %3) #20
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %71, label %28, !llvm.loop !80

48:                                               ; preds = %23
  %49 = ashr exact i32 %20, 1
  %50 = sub nsw i32 %15, %49
  br label %51

51:                                               ; preds = %64, %48
  %52 = phi i32 [ %7, %48 ], [ %67, %64 ]
  %53 = phi i32 [ %5, %48 ], [ %65, %64 ]
  %54 = phi i32 [ %50, %48 ], [ %68, %64 ]
  %55 = icmp eq i32 %52, %10
  br i1 %55, label %71, label %56

56:                                               ; preds = %51
  %57 = icmp sgt i32 %54, -1
  br i1 %57, label %58, label %64

58:                                               ; preds = %56
  %59 = icmp ne i32 %54, 0
  %60 = or i1 %16, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = add nsw i32 %53, %13
  %63 = sub nsw i32 %54, %20
  br label %64

64:                                               ; preds = %61, %58, %56
  %65 = phi i32 [ %62, %61 ], [ %53, %58 ], [ %53, %56 ]
  %66 = phi i32 [ %63, %61 ], [ 0, %58 ], [ %54, %56 ]
  %67 = add nsw i32 %52, %18
  %68 = add nsw i32 %66, %15
  %69 = tail call zeroext i8 %2(i32 noundef %65, i32 noundef %67, ptr noundef %3) #20
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %51, !llvm.loop !81

71:                                               ; preds = %41, %28, %64, %51, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fill_poly_v2i_n(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr noundef %7) local_unnamed_addr #8 {
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !82
  %10 = add nsw i32 %5, 1
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr %9(i64 noundef %12, ptr noundef nonnull @__func__.fill_poly_v2i_n) #20
  %14 = icmp slt i32 %1, %3
  br i1 %14, label %15, label %112

15:                                               ; preds = %8
  %16 = add nsw i32 %5, -1
  %17 = icmp sgt i32 %5, 0
  %18 = zext nneg i32 %5 to i64
  br label %19

19:                                               ; preds = %15, %109
  %20 = phi i32 [ %1, %15 ], [ %110, %109 ]
  br i1 %17, label %24, label %109

21:                                               ; preds = %55
  %22 = add nsw i32 %56, -1
  %23 = icmp sgt i32 %56, 1
  br i1 %23, label %64, label %60

24:                                               ; preds = %19, %55
  %25 = phi i64 [ %57, %55 ], [ 0, %19 ]
  %26 = phi i32 [ %56, %55 ], [ 0, %19 ]
  %27 = phi i32 [ %58, %55 ], [ %16, %19 ]
  %28 = getelementptr inbounds [2 x i32], ptr %4, i64 %25
  %29 = getelementptr inbounds [2 x i32], ptr %4, i64 %25, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !58
  %31 = icmp slt i32 %30, %20
  %32 = sext i32 %27 to i64
  %33 = getelementptr inbounds [2 x i32], ptr %4, i64 %32, i64 1
  %34 = load i32, ptr %33, align 4, !tbaa !58
  %35 = icmp slt i32 %34, %20
  br i1 %31, label %36, label %37

36:                                               ; preds = %24
  br i1 %35, label %55, label %38

37:                                               ; preds = %24
  br i1 %35, label %38, label %55

38:                                               ; preds = %37, %36
  %39 = load i32, ptr %28, align 4, !tbaa !58
  %40 = sitofp i32 %39 to double
  %41 = sub nsw i32 %20, %30
  %42 = sitofp i32 %41 to double
  %43 = getelementptr inbounds [2 x i32], ptr %4, i64 %32
  %44 = sub nsw i32 %34, %30
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %42, %45
  %47 = load i32, ptr %43, align 4, !tbaa !58
  %48 = sub nsw i32 %47, %39
  %49 = sitofp i32 %48 to double
  %50 = tail call double @llvm.fmuladd.f64(double %46, double %49, double %40)
  %51 = fptosi double %50 to i32
  %52 = add nsw i32 %26, 1
  %53 = sext i32 %26 to i64
  %54 = getelementptr inbounds i32, ptr %13, i64 %53
  store i32 %51, ptr %54, align 4, !tbaa !58
  br label %55

55:                                               ; preds = %36, %37, %38
  %56 = phi i32 [ %52, %38 ], [ %26, %37 ], [ %26, %36 ]
  %57 = add nuw nsw i64 %25, 1
  %58 = trunc i64 %25 to i32
  %59 = icmp eq i64 %57, %18
  br i1 %59, label %21, label %24, !llvm.loop !84

60:                                               ; preds = %76, %21
  %61 = icmp sgt i32 %56, 0
  br i1 %61, label %62, label %109

62:                                               ; preds = %60
  %63 = sub nsw i32 %20, %1
  br label %79

64:                                               ; preds = %21, %76
  %65 = phi i32 [ %77, %76 ], [ 0, %21 ]
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %13, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !58
  %69 = add nsw i32 %65, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %13, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !58
  %73 = icmp sgt i32 %68, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  store i32 %72, ptr %67, align 4, !tbaa !58
  store i32 %68, ptr %71, align 4, !tbaa !58
  %75 = tail call i32 @llvm.usub.sat.i32(i32 %65, i32 1)
  br label %76

76:                                               ; preds = %74, %64
  %77 = phi i32 [ %75, %74 ], [ %69, %64 ]
  %78 = icmp slt i32 %77, %22
  br i1 %78, label %64, label %60, !llvm.loop !85

79:                                               ; preds = %62, %105
  %80 = phi i64 [ 0, %62 ], [ %106, %105 ]
  %81 = getelementptr inbounds i32, ptr %13, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !58
  %83 = icmp slt i32 %82, %2
  br i1 %83, label %84, label %109

84:                                               ; preds = %79
  %85 = or disjoint i64 %80, 1
  %86 = getelementptr inbounds i32, ptr %13, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !58
  %88 = icmp sgt i32 %87, %0
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = icmp slt i32 %82, %0
  br i1 %90, label %91, label %92

91:                                               ; preds = %89
  store i32 %0, ptr %81, align 4, !tbaa !58
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i32 [ %0, %91 ], [ %82, %89 ]
  %94 = icmp sgt i32 %87, %2
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 %2, ptr %86, align 4, !tbaa !58
  br label %96

96:                                               ; preds = %95, %92
  %97 = phi i32 [ %2, %95 ], [ %87, %92 ]
  %98 = icmp slt i32 %93, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %96, %99
  %100 = phi i32 [ %102, %99 ], [ %93, %96 ]
  %101 = sub nsw i32 %100, %0
  tail call void %6(i32 noundef %101, i32 noundef %63, ptr noundef %7) #20
  %102 = add nsw i32 %100, 1
  %103 = load i32, ptr %86, align 4, !tbaa !58
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %99, label %105, !llvm.loop !86

105:                                              ; preds = %99, %96, %84
  %106 = add nuw i64 %80, 2
  %107 = trunc i64 %106 to i32
  %108 = icmp sgt i32 %56, %107
  br i1 %108, label %79, label %109, !llvm.loop !87

109:                                              ; preds = %79, %105, %19, %60
  %110 = add i32 %20, 1
  %111 = icmp eq i32 %110, %3
  br i1 %111, label %112, label %19, !llvm.loop !88

112:                                              ; preds = %109, %8
  %113 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  tail call void %113(ptr noundef %13) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @axis_dominant_v3_to_m3(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds [3 x float], ptr %0, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %1) #18
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 1
  tail call void @ortho_basis_v3v3_v3(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  tail call void @transpose_m3(ptr noundef %0) #20
  ret void
}

; Function Attrs: optsize
declare void @ortho_basis_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @transpose_m3(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_weights_face_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  %11 = getelementptr inbounds float, ptr %0, i64 3
  %12 = getelementptr inbounds float, ptr %0, i64 2
  %13 = getelementptr inbounds float, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %14 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %5, ptr noundef %1) #18, !range !60
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  store float 1.000000e+00, ptr %0, align 4, !tbaa !34
  br label %49

17:                                               ; preds = %6
  %18 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %5, ptr noundef %2) #18, !range !60
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store float 1.000000e+00, ptr %13, align 4, !tbaa !34
  br label %49

21:                                               ; preds = %17
  %22 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %5, ptr noundef %3) #18, !range !60
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store float 1.000000e+00, ptr %12, align 4, !tbaa !34
  br label %49

25:                                               ; preds = %21
  %26 = icmp eq ptr %4, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %25
  %28 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %5, ptr noundef nonnull %4) #18, !range !60
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store float 1.000000e+00, ptr %11, align 4, !tbaa !34
  br label %49

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %3) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %2, ptr noundef nonnull %4) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %32 = call fastcc zeroext i8 @barycentric_weights(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %10, ptr noundef nonnull %0) #18, !range !60
  %33 = load <2 x float>, ptr %12, align 4, !tbaa !34
  %34 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %34, ptr %12, align 4, !tbaa !34
  %35 = icmp eq i8 %32, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load float, ptr %0, align 4, !tbaa !34
  %38 = fcmp olt float %37, 0.000000e+00
  br i1 %38, label %39, label %48

39:                                               ; preds = %36, %31
  %40 = call fastcc zeroext i8 @barycentric_weights(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %10, ptr noundef nonnull %7) #18, !range !60
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  %43 = load <2 x float>, ptr %7, align 8, !tbaa !34
  store <2 x float> %43, ptr %13, align 4, !tbaa !34
  %44 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %45 = load float, ptr %44, align 8, !tbaa !34
  store float %45, ptr %11, align 4, !tbaa !34
  br label %48

46:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %3) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %2, ptr noundef %3) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %47 = call fastcc zeroext i8 @barycentric_weights(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef nonnull %10, ptr noundef nonnull %0) #18, !range !60
  br label %48

48:                                               ; preds = %36, %42, %39, %46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  br label %49

49:                                               ; preds = %20, %30, %48, %24, %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !89 {
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
define internal fastcc noundef zeroext i8 @barycentric_weights(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) unnamed_addr #0 !PGOFuncName !90 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  call fastcc void @axis_dominant_v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %4) #18
  %9 = load i32, ptr %7, align 4, !tbaa !58
  %10 = load i32, ptr %8, align 4, !tbaa !58
  %11 = tail call fastcc float @tri_signed_area(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %9, i32 noundef %10) #18
  store float %11, ptr %5, align 4, !tbaa !34
  %12 = tail call fastcc float @tri_signed_area(ptr noundef %2, ptr noundef %0, ptr noundef %3, i32 noundef %9, i32 noundef %10) #18
  %13 = getelementptr inbounds float, ptr %5, i64 1
  store float %12, ptr %13, align 4, !tbaa !34
  %14 = tail call fastcc float @tri_signed_area(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %9, i32 noundef %10) #18
  %15 = getelementptr inbounds float, ptr %5, i64 2
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = fadd float %11, %12
  %17 = fadd float %16, %14
  %18 = tail call float @llvm.fabs.f32(float %17)
  %19 = fcmp ogt float %18, 0x3E80000000000000
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = fdiv float 1.000000e+00, %17
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %21) #18
  br label %23

22:                                               ; preds = %6
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %5) #18
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i8 [ 0, %20 ], [ 1, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  ret i8 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @barycentric_inside_triangle_v2(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = fcmp ogt float %2, 0.000000e+00
  %4 = fcmp olt float %2, 1.000000e+00
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fcmp ogt float %8, 0.000000e+00
  %10 = fcmp olt float %8, 1.000000e+00
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fcmp ogt float %14, 0.000000e+00
  %16 = fcmp olt float %14, 1.000000e+00
  %17 = and i1 %15, %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %1, %6, %12
  %19 = fcmp ult float %2, 0.000000e+00
  %20 = fcmp ugt float %2, 1.000000e+00
  %21 = or i1 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds float, ptr %0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fcmp ult float %24, 0.000000e+00
  %26 = fcmp ugt float %24, 1.000000e+00
  %27 = or i1 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds float, ptr %0, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fcmp ult float %30, 0.000000e+00
  %32 = fcmp ugt float %30, 1.000000e+00
  %33 = or i1 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %18, %22, %28
  br label %35

35:                                               ; preds = %28, %12, %34
  %36 = phi i32 [ 0, %34 ], [ 1, %12 ], [ 2, %28 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @barycentric_coords_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = load float, ptr %1, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = load float, ptr %2, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fsub float %11, %14
  %16 = insertelement <2 x float> poison, float %12, i64 0
  %17 = insertelement <2 x float> %16, float %6, i64 1
  %18 = insertelement <2 x float> poison, float %9, i64 0
  %19 = insertelement <2 x float> %18, float %12, i64 1
  %20 = fsub <2 x float> %17, %19
  %21 = fsub float %8, %14
  %22 = extractelement <2 x float> %20, i64 0
  %23 = fmul float %22, %21
  %24 = extractelement <2 x float> %20, i64 1
  %25 = tail call float @llvm.fmuladd.f32(float %15, float %24, float %23)
  %26 = tail call float @llvm.fabs.f32(float %25)
  %27 = fcmp ogt float %26, 0x3E80000000000000
  br i1 %27, label %28, label %51

28:                                               ; preds = %5
  %29 = getelementptr inbounds float, ptr %3, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = load float, ptr %3, align 4, !tbaa !34
  %32 = fsub float %31, %12
  %33 = fsub float %30, %14
  %34 = fsub float %14, %8
  %35 = insertelement <2 x float> poison, float %33, i64 0
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  %37 = fmul <2 x float> %20, %36
  %38 = insertelement <2 x float> poison, float %15, i64 0
  %39 = insertelement <2 x float> %38, float %34, i64 1
  %40 = insertelement <2 x float> poison, float %32, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> %41, <2 x float> %37)
  %43 = insertelement <2 x float> poison, float %25, i64 0
  %44 = shufflevector <2 x float> %43, <2 x float> poison, <2 x i32> zeroinitializer
  %45 = fdiv <2 x float> %42, %44
  store <2 x float> %45, ptr %4, align 4, !tbaa !34
  %46 = extractelement <2 x float> %45, i64 0
  %47 = fsub float 1.000000e+00, %46
  %48 = extractelement <2 x float> %45, i64 1
  %49 = fsub float %47, %48
  %50 = getelementptr inbounds float, ptr %4, i64 2
  store float %49, ptr %50, align 4, !tbaa !34
  br label %51

51:                                               ; preds = %5, %28
  %52 = phi i8 [ 1, %28 ], [ 0, %5 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @barycentric_weights_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc float @area_tri_signed_v2(ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  store float %6, ptr %4, align 4, !tbaa !34
  %7 = tail call fastcc float @area_tri_signed_v2(ptr noundef %2, ptr noundef %0, ptr noundef %3) #18
  %8 = getelementptr inbounds float, ptr %4, i64 1
  store float %7, ptr %8, align 4, !tbaa !34
  %9 = tail call fastcc float @area_tri_signed_v2(ptr noundef %0, ptr noundef %1, ptr noundef %3) #18
  %10 = getelementptr inbounds float, ptr %4, i64 2
  store float %9, ptr %10, align 4, !tbaa !34
  %11 = fadd float %6, %7
  %12 = fadd float %11, %9
  %13 = fcmp une float %12, 0.000000e+00
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = fdiv float 1.000000e+00, %12
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %15) #18
  br label %17

16:                                               ; preds = %5
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %4) #18
  br label %17

17:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @area_tri_signed_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !91 {
  %4 = load float, ptr %0, align 4, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = fsub float %13, %8
  %15 = load float, ptr %2, align 4, !tbaa !34
  %16 = fsub float %15, %5
  %17 = fmul float %14, %16
  %18 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %17)
  %19 = fmul float %18, 5.000000e-01
  ret float %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !92 {
  store <2 x float> <float 0x3FD5555560000000, float 0x3FD5555560000000>, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0x3FD5555560000000, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @barycentric_weights_v2_persp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc float @area_tri_signed_v2(ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  %7 = getelementptr inbounds float, ptr %0, i64 3
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fdiv float %6, %8
  store float %9, ptr %4, align 4, !tbaa !34
  %10 = tail call fastcc float @area_tri_signed_v2(ptr noundef %2, ptr noundef %0, ptr noundef %3) #18
  %11 = getelementptr inbounds float, ptr %1, i64 3
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fdiv float %10, %12
  %14 = getelementptr inbounds float, ptr %4, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = tail call fastcc float @area_tri_signed_v2(ptr noundef %0, ptr noundef %1, ptr noundef %3) #18
  %16 = getelementptr inbounds float, ptr %2, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = fdiv float %15, %17
  %19 = getelementptr inbounds float, ptr %4, i64 2
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = fadd float %9, %13
  %21 = fadd float %20, %18
  %22 = fcmp une float %21, 0.000000e+00
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = fdiv float 1.000000e+00, %21
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %24) #18
  br label %26

25:                                               ; preds = %5
  store float 0x3FD5555560000000, ptr %19, align 4, !tbaa !34
  store <2 x float> <float 0x3FD5555560000000, float 0x3FD5555560000000>, ptr %4, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %25, %23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @barycentric_weights_v2_quad(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x [2 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #19
  %8 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %9 = getelementptr inbounds [2 x float], ptr %7, i64 1
  %10 = load <2 x float>, ptr %1, align 4, !tbaa !34
  %11 = load <2 x float>, ptr %4, align 4, !tbaa !34
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %13 = shufflevector <2 x float> %8, <2 x float> %10, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %14 = fsub <4 x float> %13, %12
  store <4 x float> %14, ptr %7, align 16, !tbaa !34
  %15 = getelementptr inbounds [2 x float], ptr %7, i64 2
  %16 = load <2 x float>, ptr %2, align 4, !tbaa !34
  %17 = getelementptr inbounds [2 x float], ptr %7, i64 3
  %18 = load <2 x float>, ptr %3, align 4, !tbaa !34
  %19 = shufflevector <2 x float> %16, <2 x float> %18, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %20 = fsub <4 x float> %19, %12
  store <4 x float> %20, ptr %15, align 16, !tbaa !34
  %21 = call fastcc float @len_v2(ptr noundef nonnull %7) #18
  %22 = call fastcc float @len_v2(ptr noundef nonnull %9) #18
  %23 = call fastcc float @len_v2(ptr noundef nonnull %15) #18
  %24 = call fastcc float @len_v2(ptr noundef nonnull %17) #18
  %25 = fcmp olt float %21, 0x3E80000000000000
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %5, align 4, !tbaa !34
  br label %100

27:                                               ; preds = %6
  %28 = fcmp olt float %22, 0x3E80000000000000
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %5, align 4, !tbaa !34
  br label %100

30:                                               ; preds = %27
  %31 = fcmp olt float %23, 0x3E80000000000000
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %5, align 4, !tbaa !34
  br label %100

33:                                               ; preds = %30
  %34 = fcmp olt float %24, 0x3E80000000000000
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %5, align 4, !tbaa !34
  br label %100

36:                                               ; preds = %33
  %37 = call fastcc float @cross_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %9) #18
  %38 = fcmp une float %37, 0.000000e+00
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = call fastcc float @dot_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %9) #18
  %41 = fneg float %40
  %42 = tail call float @llvm.fmuladd.f32(float %21, float %22, float %41)
  %43 = fdiv float %42, %37
  %44 = tail call float @llvm.fabs.f32(float %43)
  br label %45

45:                                               ; preds = %36, %39
  %46 = phi float [ %44, %39 ], [ 0.000000e+00, %36 ]
  %47 = call fastcc float @cross_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %15) #18
  %48 = fcmp une float %47, 0.000000e+00
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = call fastcc float @dot_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %15) #18
  %51 = fneg float %50
  %52 = tail call float @llvm.fmuladd.f32(float %22, float %23, float %51)
  %53 = fdiv float %52, %47
  %54 = tail call float @llvm.fabs.f32(float %53)
  br label %55

55:                                               ; preds = %45, %49
  %56 = phi float [ %54, %49 ], [ 0.000000e+00, %45 ]
  %57 = call fastcc float @cross_v2v2(ptr noundef nonnull %15, ptr noundef nonnull %17) #18
  %58 = fcmp une float %57, 0.000000e+00
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = call fastcc float @dot_v2v2(ptr noundef nonnull %15, ptr noundef nonnull %17) #18
  %61 = fneg float %60
  %62 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %61)
  %63 = fdiv float %62, %57
  %64 = tail call float @llvm.fabs.f32(float %63)
  br label %65

65:                                               ; preds = %55, %59
  %66 = phi float [ %64, %59 ], [ 0.000000e+00, %55 ]
  %67 = call fastcc float @cross_v2v2(ptr noundef nonnull %17, ptr noundef nonnull %7) #18
  %68 = fcmp une float %67, 0.000000e+00
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = call fastcc float @dot_v2v2(ptr noundef nonnull %17, ptr noundef nonnull %7) #18
  %71 = fneg float %70
  %72 = tail call float @llvm.fmuladd.f32(float %24, float %21, float %71)
  %73 = fdiv float %72, %67
  %74 = tail call float @llvm.fabs.f32(float %73)
  br label %75

75:                                               ; preds = %65, %69
  %76 = phi float [ %74, %69 ], [ 0.000000e+00, %65 ]
  %77 = insertelement <4 x float> poison, float %46, i64 0
  %78 = insertelement <4 x float> %77, float %66, i64 1
  %79 = shufflevector <4 x float> %78, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %80 = insertelement <4 x float> poison, float %76, i64 0
  %81 = insertelement <4 x float> %80, float %56, i64 1
  %82 = shufflevector <4 x float> %81, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %83 = fadd <4 x float> %79, %82
  %84 = insertelement <4 x float> poison, float %21, i64 0
  %85 = insertelement <4 x float> %84, float %22, i64 1
  %86 = insertelement <4 x float> %85, float %23, i64 2
  %87 = insertelement <4 x float> %86, float %24, i64 3
  %88 = fdiv <4 x float> %83, %87
  store <4 x float> %88, ptr %5, align 4, !tbaa !34
  %89 = shufflevector <4 x float> %88, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %90 = fadd <4 x float> %89, %88
  %91 = shufflevector <4 x float> %88, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %92 = fadd <4 x float> %91, %90
  %93 = shufflevector <4 x float> %88, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %94 = fadd <4 x float> %93, %92
  %95 = extractelement <4 x float> %94, i64 0
  %96 = fcmp une float %95, 0.000000e+00
  br i1 %96, label %97, label %99

97:                                               ; preds = %75
  %98 = fdiv float 1.000000e+00, %95
  tail call fastcc void @mul_v4_fl(ptr noundef nonnull %5, float noundef %98) #18
  br label %100

99:                                               ; preds = %75
  tail call fastcc void @copy_v4_fl(ptr noundef nonnull %5) #18
  br label %100

100:                                              ; preds = %97, %99, %29, %35, %32, %26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !93 {
  %2 = load float, ptr %0, align 4, !tbaa !34
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @cross_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !94 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = load float, ptr %1, align 4, !tbaa !34
  %9 = fneg float %7
  %10 = fmul float %8, %9
  %11 = tail call float @llvm.fmuladd.f32(float %3, float %5, float %10)
  ret float %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v4_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #0 !PGOFuncName !95 {
  %3 = load <4 x float>, ptr %0, align 4, !tbaa !34
  %4 = insertelement <4 x float> poison, float %1, i64 0
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer
  %6 = fmul <4 x float> %3, %5
  store <4 x float> %6, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v4_fl(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !96 {
  store <4 x float> <float 2.500000e-01, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01>, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @transform_point_by_tri_v3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #8 {
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x [3 x float]], align 16
  %14 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #19
  %15 = call float @normal_tri_v3(ptr noundef nonnull %9, ptr noundef %2, ptr noundef %3, ptr noundef %4) #18
  %16 = call float @normal_tri_v3(ptr noundef nonnull %10, ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %11, ptr noundef nonnull %10) #18
  call void @mul_v3_m3v3(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef %1) #20
  call void @mul_v3_m3v3(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef %5) #20
  %17 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 1
  call void @mul_v3_m3v3(ptr noundef nonnull %17, ptr noundef nonnull %11, ptr noundef %6) #20
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 2
  call void @mul_v3_m3v3(ptr noundef nonnull %18, ptr noundef nonnull %11, ptr noundef %7) #20
  call void @barycentric_weights_v2(ptr noundef nonnull %13, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %12, ptr noundef nonnull %14) #18
  call void @interp_v3_v3v3v3(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %14) #20
  %19 = call float @area_tri_v3(ptr noundef %2, ptr noundef %3, ptr noundef %4) #18
  %20 = call float @sqrtf(float noundef %19) #20
  %21 = call fastcc float @area_tri_v2(ptr noundef nonnull %13, ptr noundef nonnull %17, ptr noundef nonnull %18) #18
  %22 = call float @sqrtf(float noundef %21) #20
  %23 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %26 = load float, ptr %25, align 8, !tbaa !34
  %27 = fsub float %24, %26
  %28 = fdiv float %27, %22
  %29 = fmul float %20, %28
  call fastcc void @madd_v3_v3v3fl(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %9, float noundef %29) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @interp_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @area_tri_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !97 {
  %4 = tail call fastcc float @area_tri_signed_v2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  %5 = tail call float @llvm.fabs.f32(float %4)
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @transform_point_by_seg_v3(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #8 {
  %7 = tail call float @line_point_factor_v3(ptr noundef %1, ptr noundef %4, ptr noundef %5) #18
  tail call void @interp_v3_v3v3(ptr noundef %0, ptr noundef %2, ptr noundef %3, float noundef %7) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @interp_sparse_array(ptr nocapture noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #8 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %110

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %16, %7 ]
  %9 = phi i32 [ 0, %5 ], [ %15, %7 ]
  %10 = phi i32 [ 0, %5 ], [ %14, %7 ]
  %11 = getelementptr inbounds float, ptr %0, i64 %8
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fcmp oeq float %12, %2
  %14 = select i1 %13, i32 %10, i32 1
  %15 = select i1 %13, i32 1, i32 %9
  %16 = add nuw nsw i64 %8, 1
  %17 = icmp eq i64 %16, %6
  br i1 %17, label %18, label %7, !llvm.loop !98

18:                                               ; preds = %7
  %19 = icmp eq i32 %14, 0
  %20 = icmp eq i32 %15, 0
  %21 = select i1 %19, i1 true, i1 %20
  %22 = sext i1 %19 to i32
  br i1 %21, label %110, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !82
  %25 = zext nneg i32 %1 to i64
  %26 = shl nuw nsw i64 %25, 2
  %27 = tail call ptr %24(i64 noundef %26, ptr noundef nonnull @.str) #20
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !82
  %29 = tail call ptr %28(i64 noundef %26, ptr noundef nonnull @.str) #20
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !82
  %31 = tail call ptr %30(i64 noundef %26, ptr noundef nonnull @.str.1) #20
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !82
  %33 = tail call ptr %32(i64 noundef %26, ptr noundef nonnull @.str.2) #20
  br i1 %4, label %34, label %105

34:                                               ; preds = %23
  %35 = zext nneg i32 %1 to i64
  br label %39

36:                                               ; preds = %50
  br i1 %4, label %37, label %105

37:                                               ; preds = %36
  %38 = zext nneg i32 %1 to i64
  br label %58

39:                                               ; preds = %34, %50
  %40 = phi i64 [ 0, %34 ], [ %53, %50 ]
  %41 = phi i32 [ 0, %34 ], [ %52, %50 ]
  %42 = phi float [ %2, %34 ], [ %51, %50 ]
  %43 = getelementptr inbounds float, ptr %0, i64 %40
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = fcmp oeq float %44, %2
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = getelementptr inbounds float, ptr %27, i64 %40
  store float %42, ptr %47, align 4, !tbaa !34
  %48 = add nsw i32 %41, 1
  %49 = getelementptr inbounds i32, ptr %31, i64 %40
  store i32 %48, ptr %49, align 4, !tbaa !58
  br label %50

50:                                               ; preds = %39, %46
  %51 = phi float [ %42, %46 ], [ %44, %39 ]
  %52 = phi i32 [ %48, %46 ], [ 0, %39 ]
  %53 = add nuw nsw i64 %40, 1
  %54 = icmp eq i64 %53, %35
  br i1 %54, label %36, label %39, !llvm.loop !99

55:                                               ; preds = %70
  br i1 %4, label %56, label %105

56:                                               ; preds = %55
  %57 = zext nneg i32 %1 to i64
  br label %74

58:                                               ; preds = %37, %70
  %59 = phi i64 [ %38, %37 ], [ %62, %70 ]
  %60 = phi i32 [ 0, %37 ], [ %72, %70 ]
  %61 = phi float [ %2, %37 ], [ %71, %70 ]
  %62 = add nsw i64 %59, -1
  %63 = getelementptr inbounds float, ptr %0, i64 %62
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = fcmp oeq float %64, %2
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = getelementptr inbounds float, ptr %29, i64 %62
  store float %61, ptr %67, align 4, !tbaa !34
  %68 = add nsw i32 %60, 1
  %69 = getelementptr inbounds i32, ptr %33, i64 %62
  store i32 %68, ptr %69, align 4, !tbaa !58
  br label %70

70:                                               ; preds = %58, %66
  %71 = phi float [ %61, %66 ], [ %64, %58 ]
  %72 = phi i32 [ %68, %66 ], [ 0, %58 ]
  %73 = icmp ugt i64 %59, 1
  br i1 %73, label %58, label %55, !llvm.loop !100

74:                                               ; preds = %56, %102
  %75 = phi i64 [ 0, %56 ], [ %103, %102 ]
  %76 = getelementptr inbounds float, ptr %0, i64 %75
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = fcmp oeq float %77, %2
  br i1 %78, label %79, label %102

79:                                               ; preds = %74
  %80 = getelementptr inbounds float, ptr %27, i64 %75
  %81 = load float, ptr %80, align 4, !tbaa !34
  %82 = fcmp une float %81, %2
  %83 = getelementptr inbounds float, ptr %29, i64 %75
  %84 = load float, ptr %83, align 4, !tbaa !34
  %85 = fcmp une float %84, %2
  br i1 %82, label %86, label %99

86:                                               ; preds = %79
  br i1 %85, label %87, label %100

87:                                               ; preds = %86
  %88 = getelementptr inbounds i32, ptr %33, i64 %75
  %89 = load i32, ptr %88, align 4, !tbaa !58
  %90 = sitofp i32 %89 to float
  %91 = getelementptr inbounds i32, ptr %31, i64 %75
  %92 = load i32, ptr %91, align 4, !tbaa !58
  %93 = sitofp i32 %92 to float
  %94 = fmul float %84, %93
  %95 = tail call float @llvm.fmuladd.f32(float %81, float %90, float %94)
  %96 = add nsw i32 %92, %89
  %97 = sitofp i32 %96 to float
  %98 = fdiv float %95, %97
  br label %100

99:                                               ; preds = %79
  br i1 %85, label %100, label %102

100:                                              ; preds = %99, %86, %87
  %101 = phi float [ %98, %87 ], [ %81, %86 ], [ %84, %99 ]
  store float %101, ptr %76, align 4, !tbaa !34
  br label %102

102:                                              ; preds = %100, %74, %99
  %103 = add nuw nsw i64 %75, 1
  %104 = icmp eq i64 %103, %57
  br i1 %104, label %105, label %74, !llvm.loop !101

105:                                              ; preds = %102, %23, %36, %55
  %106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  tail call void %106(ptr noundef %27) #20
  %107 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  tail call void %107(ptr noundef %29) #20
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  tail call void %108(ptr noundef %31) #20
  %109 = load ptr, ptr @MEM_freeN, align 8, !tbaa !82
  tail call void %109(ptr noundef %33) #20
  br label %110

110:                                              ; preds = %18, %3, %105
  %111 = phi i32 [ 1, %105 ], [ %22, %18 ], [ -1, %3 ]
  ret i32 %111
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @interp_weights_poly_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #4 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr [3 x float], ptr %1, i64 %5
  %7 = getelementptr [3 x float], ptr %6, i64 -1
  %8 = tail call fastcc float @mean_value_half_tan_v3(ptr noundef %3, ptr noundef %7, ptr noundef %1) #18
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %4
  %11 = getelementptr inbounds [3 x float], ptr %1, i64 1
  %12 = zext nneg i32 %2 to i64
  br label %13

13:                                               ; preds = %10, %24
  %14 = phi i64 [ 0, %10 ], [ %31, %24 ]
  %15 = phi ptr [ %1, %10 ], [ %16, %24 ]
  %16 = phi ptr [ %11, %10 ], [ %36, %24 ]
  %17 = phi float [ %8, %10 ], [ %25, %24 ]
  %18 = phi float [ 0.000000e+00, %10 ], [ %30, %24 ]
  %19 = tail call fastcc float @len_squared_v3v3(ptr noundef %3, ptr noundef %15) #18
  %20 = fcmp olt float %19, 0x3DDB7CDFC0000000
  br i1 %20, label %38, label %21

21:                                               ; preds = %13
  %22 = tail call float @dist_squared_to_line_segment_v3(ptr noundef %3, ptr noundef %15, ptr noundef %16) #18
  %23 = fcmp olt float %22, 0x3DDB7CDFC0000000
  br i1 %23, label %41, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc float @mean_value_half_tan_v3(ptr noundef %3, ptr noundef %15, ptr noundef %16) #18
  %26 = fadd float %17, %25
  %27 = tail call float @sqrtf(float noundef %19) #20
  %28 = fdiv float %26, %27
  %29 = getelementptr inbounds float, ptr %0, i64 %14
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = fadd float %18, %28
  %31 = add nuw nsw i64 %14, 1
  %32 = trunc i64 %14 to i32
  %33 = add i32 %32, 2
  %34 = urem i32 %33, %2
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [3 x float], ptr %1, i64 %35
  %37 = icmp eq i64 %31, %12
  br i1 %37, label %54, label %13

38:                                               ; preds = %13
  %39 = shl nuw nsw i64 %12, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %39, i1 false), !tbaa !34
  %40 = and i64 %14, 4294967295
  br label %66

41:                                               ; preds = %21
  %42 = trunc i64 %14 to i32
  %43 = tail call fastcc float @len_v3v3(ptr noundef %3, ptr noundef %15) #18
  %44 = tail call fastcc float @len_v3v3(ptr noundef %3, ptr noundef %16) #18
  %45 = fadd float %43, %44
  %46 = shl nuw nsw i64 %12, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %46, i1 false), !tbaa !34
  %47 = fdiv float %44, %45
  %48 = and i64 %14, 4294967295
  %49 = getelementptr inbounds float, ptr %0, i64 %48
  store float %47, ptr %49, align 4, !tbaa !34
  %50 = fdiv float %43, %45
  %51 = add nuw nsw i32 %42, 1
  %52 = urem i32 %51, %2
  %53 = zext nneg i32 %52 to i64
  br label %66

54:                                               ; preds = %24
  %55 = fcmp une float %30, 0.000000e+00
  %56 = and i1 %55, %9
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = zext nneg i32 %2 to i64
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi i64 [ 0, %57 ], [ %64, %59 ]
  %61 = getelementptr inbounds float, ptr %0, i64 %60
  %62 = load float, ptr %61, align 4, !tbaa !34
  %63 = fdiv float %62, %30
  store float %63, ptr %61, align 4, !tbaa !34
  %64 = add nuw nsw i64 %60, 1
  %65 = icmp eq i64 %64, %58
  br i1 %65, label %70, label %59, !llvm.loop !102

66:                                               ; preds = %38, %41
  %67 = phi i64 [ %53, %41 ], [ %40, %38 ]
  %68 = phi float [ %50, %41 ], [ 1.000000e+00, %38 ]
  %69 = getelementptr inbounds float, ptr %0, i64 %67
  store float %68, ptr %69, align 4, !tbaa !34
  br label %70

70:                                               ; preds = %59, %66, %4, %54
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @mean_value_half_tan_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !103 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %0) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %0) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %7 = call fastcc float @len_v3(ptr noundef nonnull %6) #18
  %8 = fcmp une float %7, 0.000000e+00
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %11 = call fastcc float @len_v3(ptr noundef nonnull %4) #18
  %12 = call fastcc float @len_v3(ptr noundef nonnull %5) #18
  %13 = fmul float %11, %12
  %14 = fsub float %13, %10
  %15 = fdiv float %14, %7
  br label %16

16:                                               ; preds = %3, %9
  %17 = phi float [ %15, %9 ], [ 0.000000e+00, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret float %17
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @interp_weights_poly_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #4 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr [2 x float], ptr %1, i64 %5
  %7 = getelementptr [2 x float], ptr %6, i64 -1
  %8 = tail call fastcc float @mean_value_half_tan_v2(ptr noundef %3, ptr noundef %7, ptr noundef %1) #18
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %4
  %11 = getelementptr inbounds [2 x float], ptr %1, i64 1
  %12 = zext nneg i32 %2 to i64
  br label %13

13:                                               ; preds = %10, %24
  %14 = phi i64 [ 0, %10 ], [ %31, %24 ]
  %15 = phi ptr [ %1, %10 ], [ %16, %24 ]
  %16 = phi ptr [ %11, %10 ], [ %36, %24 ]
  %17 = phi float [ %8, %10 ], [ %25, %24 ]
  %18 = phi float [ 0.000000e+00, %10 ], [ %30, %24 ]
  %19 = tail call fastcc float @len_squared_v2v2(ptr noundef %3, ptr noundef %15) #18
  %20 = fcmp olt float %19, 0x3DDB7CDFC0000000
  br i1 %20, label %38, label %21

21:                                               ; preds = %13
  %22 = tail call float @dist_squared_to_line_segment_v2(ptr noundef %3, ptr noundef %15, ptr noundef %16) #18
  %23 = fcmp olt float %22, 0x3DDB7CDFC0000000
  br i1 %23, label %41, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc float @mean_value_half_tan_v2(ptr noundef %3, ptr noundef %15, ptr noundef %16) #18
  %26 = fadd float %17, %25
  %27 = tail call float @sqrtf(float noundef %19) #20
  %28 = fdiv float %26, %27
  %29 = getelementptr inbounds float, ptr %0, i64 %14
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = fadd float %18, %28
  %31 = add nuw nsw i64 %14, 1
  %32 = trunc i64 %14 to i32
  %33 = add i32 %32, 2
  %34 = urem i32 %33, %2
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [2 x float], ptr %1, i64 %35
  %37 = icmp eq i64 %31, %12
  br i1 %37, label %54, label %13

38:                                               ; preds = %13
  %39 = shl nuw nsw i64 %12, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %39, i1 false), !tbaa !34
  %40 = and i64 %14, 4294967295
  br label %66

41:                                               ; preds = %21
  %42 = trunc i64 %14 to i32
  %43 = tail call fastcc float @len_v2v2(ptr noundef %3, ptr noundef %15) #18
  %44 = tail call fastcc float @len_v2v2(ptr noundef %3, ptr noundef %16) #18
  %45 = fadd float %43, %44
  %46 = shl nuw nsw i64 %12, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %46, i1 false), !tbaa !34
  %47 = fdiv float %44, %45
  %48 = and i64 %14, 4294967295
  %49 = getelementptr inbounds float, ptr %0, i64 %48
  store float %47, ptr %49, align 4, !tbaa !34
  %50 = fdiv float %43, %45
  %51 = add nuw nsw i32 %42, 1
  %52 = urem i32 %51, %2
  %53 = zext nneg i32 %52 to i64
  br label %66

54:                                               ; preds = %24
  %55 = fcmp une float %30, 0.000000e+00
  %56 = and i1 %55, %9
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = zext nneg i32 %2 to i64
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi i64 [ 0, %57 ], [ %64, %59 ]
  %61 = getelementptr inbounds float, ptr %0, i64 %60
  %62 = load float, ptr %61, align 4, !tbaa !34
  %63 = fdiv float %62, %30
  store float %63, ptr %61, align 4, !tbaa !34
  %64 = add nuw nsw i64 %60, 1
  %65 = icmp eq i64 %64, %58
  br i1 %65, label %70, label %59, !llvm.loop !104

66:                                               ; preds = %38, %41
  %67 = phi i64 [ %53, %41 ], [ %40, %38 ]
  %68 = phi float [ %50, %41 ], [ 1.000000e+00, %38 ]
  %69 = getelementptr inbounds float, ptr %0, i64 %67
  store float %68, ptr %69, align 4, !tbaa !34
  br label %70

70:                                               ; preds = %59, %66, %4, %54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @mean_value_half_tan_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !105 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %0) #18
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %0) #18
  %6 = call fastcc float @cross_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %7 = fcmp une float %6, 0.000000e+00
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = call fastcc float @dot_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %10 = call fastcc float @len_v2(ptr noundef nonnull %4) #18
  %11 = call fastcc float @len_v2(ptr noundef nonnull %5) #18
  %12 = fmul float %10, %11
  %13 = fsub float %12, %9
  %14 = fdiv float %13, %6
  br label %15

15:                                               ; preds = %3, %8
  %16 = phi float [ %14, %8 ], [ 0.000000e+00, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret float %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !106 {
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
define dso_local void @interp_cubic_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, float noundef %6) local_unnamed_addr #0 {
  %8 = fmul float %6, %6
  %9 = fmul float %8, %6
  %10 = load float, ptr %3, align 4, !tbaa !34
  %11 = load float, ptr %5, align 4, !tbaa !34
  %12 = fadd float %10, %11
  %13 = load float, ptr %2, align 4, !tbaa !34
  %14 = load float, ptr %4, align 4, !tbaa !34
  %15 = fsub float %13, %14
  %16 = tail call float @llvm.fmuladd.f32(float %15, float 2.000000e+00, float %12)
  %17 = getelementptr inbounds float, ptr %3, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %5, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fadd float %18, %20
  %22 = getelementptr inbounds float, ptr %2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds float, ptr %4, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %23, %25
  %27 = tail call float @llvm.fmuladd.f32(float %26, float 2.000000e+00, float %21)
  %28 = getelementptr inbounds float, ptr %3, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds float, ptr %5, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fadd float %29, %31
  %33 = getelementptr inbounds float, ptr %2, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = getelementptr inbounds float, ptr %4, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fsub float %34, %36
  %38 = tail call float @llvm.fmuladd.f32(float %37, float 2.000000e+00, float %32)
  %39 = fneg float %11
  %40 = tail call float @llvm.fmuladd.f32(float %10, float -2.000000e+00, float %39)
  %41 = tail call float @llvm.fmuladd.f32(float %15, float -3.000000e+00, float %40)
  %42 = fneg float %20
  %43 = tail call float @llvm.fmuladd.f32(float %18, float -2.000000e+00, float %42)
  %44 = tail call float @llvm.fmuladd.f32(float %26, float -3.000000e+00, float %43)
  %45 = fneg float %31
  %46 = tail call float @llvm.fmuladd.f32(float %29, float -2.000000e+00, float %45)
  %47 = tail call float @llvm.fmuladd.f32(float %37, float -3.000000e+00, float %46)
  %48 = fmul float %8, %41
  %49 = tail call float @llvm.fmuladd.f32(float %16, float %9, float %48)
  %50 = tail call float @llvm.fmuladd.f32(float %10, float %6, float %49)
  %51 = fadd float %13, %50
  store float %51, ptr %0, align 4, !tbaa !34
  %52 = fmul float %8, %44
  %53 = tail call float @llvm.fmuladd.f32(float %27, float %9, float %52)
  %54 = load float, ptr %17, align 4, !tbaa !34
  %55 = tail call float @llvm.fmuladd.f32(float %54, float %6, float %53)
  %56 = load float, ptr %22, align 4, !tbaa !34
  %57 = fadd float %55, %56
  %58 = getelementptr inbounds float, ptr %0, i64 1
  store float %57, ptr %58, align 4, !tbaa !34
  %59 = fmul float %8, %47
  %60 = tail call float @llvm.fmuladd.f32(float %38, float %9, float %59)
  %61 = load float, ptr %28, align 4, !tbaa !34
  %62 = tail call float @llvm.fmuladd.f32(float %61, float %6, float %60)
  %63 = load float, ptr %33, align 4, !tbaa !34
  %64 = fadd float %62, %63
  %65 = getelementptr inbounds float, ptr %0, i64 2
  store float %64, ptr %65, align 4, !tbaa !34
  %66 = fmul float %16, 3.000000e+00
  %67 = fmul float %41, 2.000000e+00
  %68 = fmul float %67, %6
  %69 = tail call float @llvm.fmuladd.f32(float %66, float %8, float %68)
  %70 = load float, ptr %3, align 4, !tbaa !34
  %71 = fadd float %69, %70
  store float %71, ptr %1, align 4, !tbaa !34
  %72 = fmul float %27, 3.000000e+00
  %73 = fmul float %44, 2.000000e+00
  %74 = fmul float %73, %6
  %75 = tail call float @llvm.fmuladd.f32(float %72, float %8, float %74)
  %76 = load float, ptr %17, align 4, !tbaa !34
  %77 = fadd float %75, %76
  %78 = getelementptr inbounds float, ptr %1, i64 1
  store float %77, ptr %78, align 4, !tbaa !34
  %79 = fmul float %38, 3.000000e+00
  %80 = fmul float %47, 2.000000e+00
  %81 = fmul float %80, %6
  %82 = tail call float @llvm.fmuladd.f32(float %79, float %8, float %81)
  %83 = load float, ptr %28, align 4, !tbaa !34
  %84 = fadd float %82, %83
  %85 = getelementptr inbounds float, ptr %1, i64 2
  store float %84, ptr %85, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @resolve_tri_uv_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = load float, ptr %4, align 4, !tbaa !34
  %8 = fsub float %6, %7
  %9 = fpext float %8 to double
  %10 = load float, ptr %3, align 4, !tbaa !34
  %11 = fsub float %10, %7
  %12 = fpext float %11 to double
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %4, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds float, ptr %3, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %20, %16
  %22 = fpext float %21 to double
  %23 = fneg double %18
  %24 = fmul double %12, %23
  %25 = tail call double @llvm.fmuladd.f64(double %9, double %22, double %24)
  %26 = fcmp ule double %25, 0xBCB0000000000000
  %27 = fcmp uge double %25, 0x3CB0000000000000
  %28 = or i1 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %5
  %30 = load float, ptr %1, align 4, !tbaa !34
  %31 = fsub float %30, %7
  %32 = fpext float %31 to double
  %33 = getelementptr inbounds float, ptr %1, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = fsub float %34, %16
  %36 = fpext float %35 to double
  %37 = fneg double %12
  %38 = insertelement <2 x double> poison, double %37, i64 0
  %39 = insertelement <2 x double> %38, double %9, i64 1
  %40 = insertelement <2 x double> poison, double %36, i64 0
  %41 = shufflevector <2 x double> %40, <2 x double> poison, <2 x i32> zeroinitializer
  %42 = fmul <2 x double> %39, %41
  %43 = insertelement <2 x double> poison, double %22, i64 0
  %44 = insertelement <2 x double> %43, double %23, i64 1
  %45 = insertelement <2 x double> poison, double %32, i64 0
  %46 = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> zeroinitializer
  %47 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %44, <2 x double> %46, <2 x double> %42)
  %48 = insertelement <2 x double> poison, double %25, i64 0
  %49 = shufflevector <2 x double> %48, <2 x double> poison, <2 x i32> zeroinitializer
  %50 = fdiv <2 x double> %47, %49
  %51 = fptrunc <2 x double> %50 to <2 x float>
  store <2 x float> %51, ptr %0, align 4, !tbaa !34
  br label %53

52:                                               ; preds = %5
  tail call fastcc void @zero_v2(ptr noundef %0) #18
  br label %53

53:                                               ; preds = %52, %29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !107 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @resolve_tri_uv_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %3, ptr noundef %2) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %4, ptr noundef %2) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2) #18
  %9 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %6) #18
  %10 = fpext float %9 to double
  %11 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %12 = fpext float %11 to double
  %13 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %7) #18
  %14 = fpext float %13 to double
  %15 = fneg double %12
  %16 = fmul double %15, %12
  %17 = tail call double @llvm.fmuladd.f64(double %10, double %14, double %16)
  %18 = fcmp ule double %17, 0xBCB0000000000000
  %19 = fcmp uge double %17, 0x3CB0000000000000
  %20 = or i1 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %5
  %22 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7) #18
  %23 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %6) #18
  %24 = fpext float %22 to double
  %25 = fpext float %23 to double
  %26 = fmul double %15, %25
  %27 = tail call double @llvm.fmuladd.f64(double %10, double %24, double %26)
  %28 = fdiv double %27, %17
  %29 = fptrunc double %28 to float
  %30 = fmul double %15, %24
  %31 = tail call double @llvm.fmuladd.f64(double %14, double %25, double %30)
  %32 = fdiv double %31, %17
  %33 = fptrunc double %32 to float
  %34 = getelementptr inbounds float, ptr %0, i64 1
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = fsub float 1.000000e+00, %33
  %36 = fsub float %35, %29
  store float %36, ptr %0, align 4, !tbaa !34
  br label %38

37:                                               ; preds = %5
  tail call fastcc void @zero_v2(ptr noundef %0) #18
  br label %38

38:                                               ; preds = %37, %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @resolve_quad_uv_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #8 {
  tail call void @resolve_quad_uv_v2_deriv(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @resolve_quad_uv_v2_deriv(ptr nocapture noundef %0, ptr noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) local_unnamed_addr #8 {
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = load float, ptr %3, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %4, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %3, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = load float, ptr %4, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %5, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = load float, ptr %5, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %6, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = load float, ptr %6, align 4, !tbaa !34
  %24 = load float, ptr %2, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = insertelement <2 x float> poison, float %17, i64 0
  %28 = insertelement <2 x float> %27, float %12, i64 1
  %29 = insertelement <2 x float> poison, float %20, i64 0
  %30 = insertelement <2 x float> %29, float %23, i64 1
  %31 = fsub <2 x float> %28, %30
  %32 = insertelement <2 x float> poison, float %16, i64 0
  %33 = insertelement <2 x float> %32, float %14, i64 1
  %34 = insertelement <2 x float> poison, float %26, i64 0
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer
  %36 = fsub <2 x float> %33, %35
  %37 = fneg <2 x float> %36
  %38 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %39 = fmul <2 x float> %38, %37
  %40 = extractelement <2 x float> %39, i64 0
  %41 = insertelement <2 x float> poison, float %14, i64 0
  %42 = insertelement <2 x float> %41, float %16, i64 1
  %43 = insertelement <2 x float> poison, float %19, i64 0
  %44 = insertelement <2 x float> %43, float %22, i64 1
  %45 = fsub <2 x float> %42, %44
  %46 = insertelement <2 x float> poison, float %12, i64 0
  %47 = insertelement <2 x float> %46, float %17, i64 1
  %48 = insertelement <2 x float> poison, float %24, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  %50 = fsub <2 x float> %47, %49
  %51 = extractelement <2 x float> %50, i64 0
  %52 = extractelement <2 x float> %45, i64 1
  %53 = tail call float @llvm.fmuladd.f32(float %51, float %52, float %40)
  %54 = fpext float %53 to double
  %55 = fmul <2 x float> %31, %37
  %56 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %50, <2 x float> %45, <2 x float> %55)
  %57 = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %58 = fadd <2 x float> %56, %57
  %59 = extractelement <2 x float> %58, i64 0
  %60 = fpext float %59 to double
  %61 = fmul double %60, 5.000000e-01
  %62 = shufflevector <2 x float> %37, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %63 = fmul <2 x float> %31, %62
  %64 = extractelement <2 x float> %63, i64 0
  %65 = extractelement <2 x float> %50, i64 1
  %66 = extractelement <2 x float> %45, i64 0
  %67 = tail call float @llvm.fmuladd.f32(float %65, float %66, float %64)
  %68 = fpext float %67 to double
  %69 = tail call double @llvm.fmuladd.f64(double %61, double -2.000000e+00, double %54)
  %70 = fadd double %69, %68
  tail call fastcc void @zero_v2(ptr noundef %0) #18
  %71 = fcmp ogt double %70, 0xBCB0000000000000
  %72 = fcmp olt double %70, 0x3CB0000000000000
  %73 = and i1 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %7
  %75 = fsub double %54, %68
  %76 = fcmp ule double %75, 0xBCB0000000000000
  %77 = fcmp uge double %75, 0x3CB0000000000000
  %78 = or i1 %76, %77
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = load float, ptr %0, align 4, !tbaa !34
  br label %113

81:                                               ; preds = %74
  %82 = fdiv double %54, %75
  %83 = fptrunc double %82 to float
  store float %83, ptr %0, align 4, !tbaa !34
  br label %113

84:                                               ; preds = %7
  %85 = fneg <2 x float> %33
  %86 = insertelement <2 x float> %27, float %20, i64 1
  %87 = fmul <2 x float> %86, %85
  %88 = insertelement <2 x float> %41, float %19, i64 1
  %89 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %47, <2 x float> %88, <2 x float> %87)
  %90 = shufflevector <2 x float> %89, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %91 = fadd <2 x float> %89, %90
  %92 = extractelement <2 x float> %91, i64 0
  %93 = fneg float %19
  %94 = fmul float %23, %93
  %95 = tail call float @llvm.fmuladd.f32(float %20, float %22, float %94)
  %96 = fadd float %92, %95
  %97 = fneg float %22
  %98 = fmul float %12, %97
  %99 = tail call float @llvm.fmuladd.f32(float %23, float %16, float %98)
  %100 = fadd float %99, %96
  %101 = fneg double %54
  %102 = fmul double %101, %68
  %103 = tail call double @llvm.fmuladd.f64(double %61, double %61, double %102)
  %104 = fcmp olt double %103, 0.000000e+00
  %105 = select i1 %104, double 0.000000e+00, double %103
  %106 = tail call double @llvm.sqrt.f64(double %105)
  %107 = fcmp ogt float %100, 0.000000e+00
  %108 = select i1 %107, double -1.000000e+00, double 1.000000e+00
  %109 = fsub double %54, %61
  %110 = tail call double @llvm.fmuladd.f64(double %108, double %106, double %109)
  %111 = fdiv double %110, %70
  %112 = fptrunc double %111 to float
  store float %112, ptr %0, align 4, !tbaa !34
  br label %113

113:                                              ; preds = %79, %81, %84
  %114 = phi float [ %80, %79 ], [ %83, %81 ], [ %112, %84 ]
  %115 = fsub float 1.000000e+00, %114
  %116 = load <2 x float>, ptr %3, align 4, !tbaa !34
  %117 = load <2 x float>, ptr %6, align 4, !tbaa !34
  %118 = fsub <2 x float> %116, %117
  %119 = load <2 x float>, ptr %4, align 4, !tbaa !34
  %120 = load <2 x float>, ptr %5, align 4, !tbaa !34
  %121 = fsub <2 x float> %119, %120
  %122 = insertelement <2 x float> poison, float %114, i64 0
  %123 = shufflevector <2 x float> %122, <2 x float> poison, <2 x i32> zeroinitializer
  %124 = fmul <2 x float> %123, %121
  %125 = insertelement <2 x float> poison, float %115, i64 0
  %126 = shufflevector <2 x float> %125, <2 x float> poison, <2 x i32> zeroinitializer
  %127 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %126, <2 x float> %118, <2 x float> %124)
  %128 = fpext <2 x float> %127 to <2 x double>
  %129 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %128)
  %130 = extractelement <2 x double> %129, i64 0
  %131 = extractelement <2 x double> %129, i64 1
  %132 = fcmp olt double %130, %131
  %133 = extractelement <2 x double> %128, i64 0
  %134 = extractelement <2 x double> %128, i64 1
  %135 = select i1 %132, double %134, double %133
  %136 = fcmp ule double %135, 0xBCB0000000000000
  %137 = fcmp uge double %135, 0x3CB0000000000000
  %138 = or i1 %136, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %113
  %140 = zext i1 %132 to i64
  %141 = getelementptr inbounds float, ptr %3, i64 %140
  %142 = load float, ptr %141, align 4, !tbaa !34
  %143 = getelementptr inbounds float, ptr %2, i64 %140
  %144 = load float, ptr %143, align 4, !tbaa !34
  %145 = fsub float %142, %144
  %146 = getelementptr inbounds float, ptr %4, i64 %140
  %147 = load float, ptr %146, align 4, !tbaa !34
  %148 = fsub float %147, %144
  %149 = fmul float %114, %148
  %150 = tail call float @llvm.fmuladd.f32(float %115, float %145, float %149)
  %151 = fpext float %150 to double
  %152 = fdiv double %151, %135
  %153 = fptrunc double %152 to float
  %154 = getelementptr inbounds float, ptr %0, i64 1
  store float %153, ptr %154, align 4, !tbaa !34
  br label %155

155:                                              ; preds = %139, %113
  %156 = icmp eq ptr %1, null
  br i1 %156, label %188, label %157

157:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  tail call fastcc void @zero_v2(ptr noundef nonnull %1) #18
  %158 = getelementptr inbounds [2 x float], ptr %1, i64 1
  tail call fastcc void @zero_v2(ptr noundef nonnull %158) #18
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %3) #18
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %159 = getelementptr inbounds float, ptr %0, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !34
  call void @interp_v2_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, float noundef %160) #20
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %3) #18
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %161 = load float, ptr %0, align 4, !tbaa !34
  call void @interp_v2_v2v2(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %9, float noundef %161) #20
  %162 = load float, ptr %11, align 4, !tbaa !34
  %163 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !34
  %165 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !34
  %167 = load float, ptr %10, align 4, !tbaa !34
  %168 = fneg float %166
  %169 = fmul float %167, %168
  %170 = call float @llvm.fmuladd.f32(float %162, float %164, float %169)
  %171 = fcmp ogt float %170, 0xBCB0000000000000
  %172 = fcmp olt float %170, 0x3CB0000000000000
  %173 = and i1 %171, %172
  br i1 %173, label %187, label %174

174:                                              ; preds = %157
  %175 = fpext float %170 to double
  %176 = fdiv double 1.000000e+00, %175
  %177 = fneg float %167
  %178 = insertelement <4 x float> poison, float %168, i64 0
  %179 = insertelement <4 x float> %178, float %162, i64 1
  %180 = insertelement <4 x float> %179, float %164, i64 2
  %181 = insertelement <4 x float> %180, float %177, i64 3
  %182 = fpext <4 x float> %181 to <4 x double>
  %183 = insertelement <4 x double> poison, double %176, i64 0
  %184 = shufflevector <4 x double> %183, <4 x double> poison, <4 x i32> zeroinitializer
  %185 = fmul <4 x double> %184, %182
  %186 = fptrunc <4 x double> %185 to <4 x float>
  store <4 x float> %186, ptr %1, align 4, !tbaa !34
  br label %187

187:                                              ; preds = %157, %174
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br label %188

188:                                              ; preds = %187, %155
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_bilinear_quad_v3(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  tail call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef %0) #18
  %6 = fsub float 1.000000e+00, %1
  %7 = fsub float 1.000000e+00, %2
  %8 = fmul float %6, %7
  tail call fastcc void @mul_v3_fl(ptr noundef %3, float noundef %8) #18
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %9) #18
  %10 = fmul float %7, %1
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %10) #18
  call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %5) #18
  %11 = getelementptr inbounds [3 x float], ptr %0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %11) #18
  %12 = fmul float %1, %2
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %12) #18
  call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %5) #18
  %13 = getelementptr inbounds [3 x float], ptr %0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %13) #18
  %14 = fmul float %6, %2
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %14) #18
  call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @interp_barycentric_tri_v3(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  tail call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef %0) #18
  tail call fastcc void @mul_v3_fl(ptr noundef %3, float noundef %1) #18
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %2) #18
  call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %5) #18
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #18
  %8 = fsub float 1.000000e+00, %1
  %9 = fsub float %8, %2
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %9) #18
  call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @orthographic_m4(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #8 {
  %8 = insertelement <2 x float> poison, float %2, i64 0
  %9 = insertelement <2 x float> %8, float %4, i64 1
  %10 = insertelement <2 x float> poison, float %1, i64 0
  %11 = insertelement <2 x float> %10, float %3, i64 1
  %12 = fsub <2 x float> %9, %11
  %13 = fsub float %6, %5
  %14 = extractelement <2 x float> %12, i64 0
  %15 = fcmp oeq float %14, 0.000000e+00
  %16 = extractelement <2 x float> %12, i64 1
  %17 = fcmp oeq float %16, 0.000000e+00
  %18 = or i1 %15, %17
  %19 = fcmp oeq float %13, 0.000000e+00
  %20 = or i1 %18, %19
  br i1 %20, label %35, label %21

21:                                               ; preds = %7
  tail call void @unit_m4(ptr noundef %0) #20
  %22 = fdiv float 2.000000e+00, %14
  store float %22, ptr %0, align 4, !tbaa !34
  %23 = fadd <2 x float> %11, %9
  %24 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %25 = fdiv float 2.000000e+00, %16
  %26 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = fneg <2 x float> %23
  %28 = fdiv <2 x float> %27, %12
  store <2 x float> %28, ptr %24, align 4, !tbaa !34
  %29 = fdiv float -2.000000e+00, %13
  %30 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %29, ptr %30, align 4, !tbaa !34
  %31 = fadd float %5, %6
  %32 = fneg float %31
  %33 = fdiv float %32, %13
  %34 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  store float %33, ptr %34, align 4, !tbaa !34
  br label %35

35:                                               ; preds = %7, %21
  ret void
}

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @perspective_m4(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #5 {
  %8 = insertelement <2 x float> poison, float %2, i64 0
  %9 = insertelement <2 x float> %8, float %4, i64 1
  %10 = insertelement <2 x float> poison, float %1, i64 0
  %11 = insertelement <2 x float> %10, float %3, i64 1
  %12 = fsub <2 x float> %9, %11
  %13 = fsub float %6, %5
  %14 = extractelement <2 x float> %12, i64 0
  %15 = fcmp oeq float %14, 0.000000e+00
  %16 = extractelement <2 x float> %12, i64 1
  %17 = fcmp oeq float %16, 0.000000e+00
  %18 = or i1 %15, %17
  %19 = fcmp oeq float %13, 0.000000e+00
  %20 = or i1 %18, %19
  br i1 %20, label %42, label %21

21:                                               ; preds = %7
  %22 = fmul float %5, 2.000000e+00
  %23 = fdiv float %22, %14
  store float %23, ptr %0, align 4, !tbaa !34
  %24 = fdiv float %22, %16
  %25 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = fadd <2 x float> %11, %9
  %27 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %28 = fdiv <2 x float> %26, %12
  store <2 x float> %28, ptr %27, align 4, !tbaa !34
  %29 = fadd float %5, %6
  %30 = fneg float %29
  %31 = fdiv float %30, %13
  %32 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  store float %31, ptr %32, align 4, !tbaa !34
  %33 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %34 = fmul float %5, -2.000000e+00
  %35 = fmul float %34, %6
  %36 = fdiv float %35, %13
  %37 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  store float %36, ptr %37, align 4, !tbaa !34
  %38 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  store float 0.000000e+00, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  store float 0.000000e+00, ptr %39, align 4, !tbaa !34
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %33, align 4, !tbaa !34
  %40 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  store <2 x float> zeroinitializer, ptr %40, align 4, !tbaa !34
  %41 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  br label %42

42:                                               ; preds = %7, %21
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @window_translate_m4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) local_unnamed_addr #1 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = fcmp oeq float %8, -1.000000e+00
  br i1 %9, label %10, label %42

10:                                               ; preds = %4
  %11 = getelementptr inbounds [4 x float], ptr %0, i64 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  %12 = load float, ptr %1, align 4, !tbaa !34
  store float %12, ptr %5, align 4, !tbaa !34
  %13 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  store float %20, ptr %6, align 4, !tbaa !34
  %21 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %22, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = call fastcc float @len_v3(ptr noundef nonnull %5) #18
  %28 = call fastcc float @len_v3(ptr noundef nonnull %6) #18
  %29 = load float, ptr %0, align 4, !tbaa !34
  %30 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = insertelement <2 x float> poison, float %27, i64 0
  %33 = insertelement <2 x float> %32, float %28, i64 1
  %34 = fdiv <2 x float> <float 1.000000e+00, float 1.000000e+00>, %33
  %35 = insertelement <2 x float> poison, float %29, i64 0
  %36 = insertelement <2 x float> %35, float %31, i64 1
  %37 = fmul <2 x float> %34, %36
  %38 = load <2 x float>, ptr %11, align 4, !tbaa !34
  %39 = insertelement <2 x float> poison, float %2, i64 0
  %40 = insertelement <2 x float> %39, float %3, i64 1
  %41 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> %40, <2 x float> %38)
  store <2 x float> %41, ptr %11, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  br label %48

42:                                               ; preds = %4
  %43 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %44 = load <2 x float>, ptr %43, align 4, !tbaa !34
  %45 = insertelement <2 x float> poison, float %2, i64 0
  %46 = insertelement <2 x float> %45, float %3, i64 1
  %47 = fadd <2 x float> %44, %46
  store <2 x float> %47, ptr %43, align 4, !tbaa !34
  br label %48

48:                                               ; preds = %42, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @polarview_m4(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #8 {
  tail call void @unit_m4(ptr noundef %0) #20
  %6 = fneg float %1
  tail call void @translate_m4(ptr noundef %0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %6) #20
  %7 = fneg float %4
  tail call void @rotate_m4(ptr noundef %0, i8 noundef zeroext 90, float noundef %7) #20
  %8 = fneg float %3
  tail call void @rotate_m4(ptr noundef %0, i8 noundef zeroext 88, float noundef %8) #20
  %9 = fneg float %2
  tail call void @rotate_m4(ptr noundef %0, i8 noundef zeroext 90, float noundef %9) #20
  ret void
}

; Function Attrs: optsize
declare void @translate_m4(ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @rotate_m4(ptr noundef, i8 noundef zeroext, float noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lookat_m4(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #8 {
  %9 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #19
  tail call void @unit_m4(ptr noundef %0) #20
  call void @unit_m4(ptr noundef nonnull %9) #20
  %10 = fneg float %7
  call void @rotate_m4(ptr noundef %0, i8 noundef zeroext 90, float noundef %10) #20
  %11 = fsub float %4, %1
  %12 = fsub float %5, %2
  %13 = fsub float %6, %3
  %14 = fmul float %13, %13
  %15 = call float @llvm.fmuladd.f32(float %11, float %11, float %14)
  %16 = call float @llvm.fmuladd.f32(float %12, float %12, float %15)
  %17 = call float @llvm.sqrt.f32(float %16)
  %18 = call float @llvm.sqrt.f32(float %15)
  %19 = fcmp une float %17, 0.000000e+00
  %20 = fneg float %12
  %21 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 1, i64 1
  %22 = insertelement <2 x float> poison, float %18, i64 0
  %23 = insertelement <2 x float> %22, float %20, i64 1
  %24 = insertelement <2 x float> poison, float %17, i64 0
  %25 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = fdiv <2 x float> %23, %25
  %27 = insertelement <2 x i1> poison, i1 %19, i64 0
  %28 = shufflevector <2 x i1> %27, <2 x i1> poison, <2 x i32> zeroinitializer
  %29 = select <2 x i1> %28, <2 x float> %26, <2 x float> <float 1.000000e+00, float 0.000000e+00>
  store <2 x float> %29, ptr %21, align 4, !tbaa !34
  %30 = extractelement <2 x float> %29, i64 1
  %31 = fneg float %30
  %32 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2, i64 1
  store float %31, ptr %32, align 4, !tbaa !34
  %33 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2, i64 2
  %34 = extractelement <2 x float> %29, i64 0
  store float %34, ptr %33, align 8, !tbaa !34
  call fastcc void @i_multmatrix(ptr noundef nonnull %9, ptr noundef %0) #18
  store float 0.000000e+00, ptr %32, align 4, !tbaa !34
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %21, align 4, !tbaa !34
  %35 = fcmp une float %18, 0.000000e+00
  %36 = fdiv float %11, %18
  %37 = fneg float %13
  %38 = fdiv float %37, %18
  %39 = select i1 %35, float %38, float 1.000000e+00
  %40 = select i1 %35, float %36, float 0.000000e+00
  %41 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2
  store float %39, ptr %9, align 16, !tbaa !34
  %42 = fneg float %40
  %43 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 2
  store float %42, ptr %43, align 8, !tbaa !34
  store float %40, ptr %41, align 16, !tbaa !34
  store float %39, ptr %33, align 8, !tbaa !34
  call fastcc void @i_multmatrix(ptr noundef nonnull %9, ptr noundef %0) #18
  %44 = fneg float %1
  %45 = fneg float %2
  %46 = fneg float %3
  call void @translate_m4(ptr noundef %0, float noundef %44, float noundef %45, float noundef %46) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @i_multmatrix(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #8 !PGOFuncName !108 {
  %3 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %4 = load <4 x float>, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 0
  %6 = load <4 x float>, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 0
  %8 = load <4 x float>, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 0
  %10 = load <4 x float>, ptr %9, align 4, !tbaa !34
  br label %11

11:                                               ; preds = %11, %2
  %12 = phi i64 [ 0, %2 ], [ %34, %11 ]
  %13 = getelementptr inbounds [4 x float], ptr %0, i64 %12, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [4 x float], ptr %0, i64 %12, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 %12, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds [4 x float], ptr %0, i64 %12
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = insertelement <4 x float> poison, float %18, i64 0
  %22 = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> zeroinitializer
  %23 = insertelement <4 x float> poison, float %20, i64 0
  %24 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> zeroinitializer
  %25 = insertelement <4 x float> poison, float %16, i64 0
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> zeroinitializer
  %27 = insertelement <4 x float> poison, float %14, i64 0
  %28 = shufflevector <4 x float> %27, <4 x float> poison, <4 x i32> zeroinitializer
  %29 = fmul <4 x float> %22, %6
  %30 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %24, <4 x float> %4, <4 x float> %29)
  %31 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %8, <4 x float> %30)
  %32 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %28, <4 x float> %10, <4 x float> %31)
  %33 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 %12, i64 0
  store <4 x float> %32, ptr %33, align 16, !tbaa !34
  %34 = add nuw nsw i64 %12, 1
  %35 = icmp eq i64 %34, 4
  br i1 %35, label %36, label %11, !llvm.loop !109

36:                                               ; preds = %11
  call void @copy_m4_m4(ptr noundef nonnull %1, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @box_clip_bounds_m4(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef %2) #20
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %8 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %10 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %11 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %12 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %13 = icmp eq ptr %1, null
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = getelementptr inbounds float, ptr %1, i64 3
  %16 = getelementptr inbounds float, ptr %1, i64 2
  br label %17

17:                                               ; preds = %70, %3
  %18 = phi i32 [ -1, %3 ], [ %81, %70 ]
  %19 = phi i32 [ 0, %3 ], [ %83, %70 ]
  %20 = and i32 %19, 1
  %21 = xor i32 %20, 1
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [3 x float], ptr %0, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !34
  store float %24, ptr %5, align 16, !tbaa !34
  %25 = and i32 %19, 2
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr %7, ptr %6
  %28 = load float, ptr %27, align 4, !tbaa !34
  store float %28, ptr %8, align 4, !tbaa !34
  %29 = icmp ult i32 %19, 4
  %30 = select i1 %29, ptr %10, ptr %9
  %31 = load float, ptr %30, align 4, !tbaa !34
  store float %31, ptr %11, align 8, !tbaa !34
  store float 1.000000e+00, ptr %12, align 4, !tbaa !34
  call void @mul_m4_v4(ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %32 = load float, ptr %5, align 16, !tbaa !34
  br i1 %13, label %55, label %33

33:                                               ; preds = %17
  %34 = load float, ptr %14, align 4, !tbaa !34
  %35 = load float, ptr %12, align 4, !tbaa !34
  %36 = fmul float %34, %35
  %37 = fcmp ogt float %32, %36
  %38 = zext i1 %37 to i32
  %39 = load float, ptr %1, align 4, !tbaa !34
  %40 = fmul float %35, %39
  %41 = fcmp olt float %32, %40
  %42 = or disjoint i32 %38, 2
  %43 = select i1 %41, i32 %42, i32 %38
  %44 = load float, ptr %8, align 4, !tbaa !34
  %45 = load float, ptr %15, align 4, !tbaa !34
  %46 = fmul float %35, %45
  %47 = fcmp ogt float %44, %46
  %48 = or disjoint i32 %43, 4
  %49 = select i1 %47, i32 %48, i32 %43
  %50 = load float, ptr %16, align 4, !tbaa !34
  %51 = fmul float %35, %50
  %52 = fcmp olt float %44, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %33
  %54 = or disjoint i32 %49, 8
  br label %70

55:                                               ; preds = %17
  %56 = load float, ptr %12, align 4, !tbaa !34
  %57 = fneg float %56
  %58 = fcmp olt float %32, %57
  %59 = zext i1 %58 to i32
  %60 = fcmp ogt float %32, %56
  %61 = or disjoint i32 %59, 2
  %62 = select i1 %60, i32 %61, i32 %59
  %63 = load float, ptr %8, align 4, !tbaa !34
  %64 = fcmp olt float %63, %57
  %65 = or disjoint i32 %62, 4
  %66 = select i1 %64, i32 %65, i32 %62
  %67 = fcmp ogt float %63, %56
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = or disjoint i32 %66, 8
  br label %70

70:                                               ; preds = %55, %68, %33, %53
  %71 = phi float [ %35, %53 ], [ %35, %33 ], [ %56, %68 ], [ %56, %55 ]
  %72 = phi i32 [ %54, %53 ], [ %49, %33 ], [ %69, %68 ], [ %66, %55 ]
  %73 = load float, ptr %11, align 8, !tbaa !34
  %74 = fneg float %71
  %75 = fcmp olt float %73, %74
  %76 = or i32 %72, 16
  %77 = select i1 %75, i32 %76, i32 %72
  %78 = fcmp ogt float %73, %71
  %79 = or i32 %77, 32
  %80 = select i1 %78, i32 %79, i32 %77
  %81 = and i32 %80, %18
  %82 = icmp eq i32 %81, 0
  %83 = add nuw nsw i32 %19, 1
  %84 = icmp eq i32 %83, 8
  %85 = select i1 %82, i1 true, i1 %84
  br i1 %85, label %86, label %17, !llvm.loop !110

86:                                               ; preds = %70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret i32 %81
}

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @box_minmax_bounds_m4(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #8 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %0) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %1) #18
  %8 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %9 = getelementptr inbounds [3 x float], ptr %2, i64 1, i64 1
  %10 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %11 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %12 = getelementptr inbounds [3 x float], ptr %2, i64 1, i64 2
  %13 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  br label %14

14:                                               ; preds = %4, %14
  %15 = phi i32 [ 0, %4 ], [ %28, %14 ]
  %16 = and i32 %15, 1
  %17 = xor i32 %16, 1
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [3 x float], ptr %2, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !34
  store float %20, ptr %7, align 4, !tbaa !34
  %21 = and i32 %15, 2
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr %9, ptr %8
  %24 = load float, ptr %23, align 4, !tbaa !34
  store float %24, ptr %10, align 4, !tbaa !34
  %25 = icmp ult i32 %15, 4
  %26 = select i1 %25, ptr %12, ptr %11
  %27 = load float, ptr %26, align 4, !tbaa !34
  store float %27, ptr %13, align 4, !tbaa !34
  call void @mul_m4_v3(ptr noundef %3, ptr noundef nonnull %7) #20
  call void @minmax_v3v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %28 = add nuw nsw i32 %15, 1
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %14, !llvm.loop !111

30:                                               ; preds = %14
  call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %5) #18
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @map_to_tube(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #13 {
  %6 = fadd float %4, 1.000000e+00
  %7 = fmul float %6, 5.000000e-01
  store float %7, ptr %1, align 4, !tbaa !34
  %8 = fmul float %3, %3
  %9 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %8)
  %10 = tail call float @llvm.sqrt.f32(float %9)
  %11 = fcmp ogt float %10, 0.000000e+00
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = fdiv float %2, %10
  %14 = fdiv float %3, %10
  %15 = tail call float @atan2f(float noundef %13, float noundef %14) #20
  %16 = fdiv float %15, 0x400921FB60000000
  %17 = fsub float 1.000000e+00, %16
  %18 = fmul float %17, 5.000000e-01
  store float %18, ptr %0, align 4, !tbaa !34
  br label %20

19:                                               ; preds = %5
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  br label %20

20:                                               ; preds = %19, %12
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local void @map_to_sphere(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #13 {
  %6 = fmul float %3, %3
  %7 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %6)
  %8 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %7)
  %9 = tail call float @llvm.sqrt.f32(float %8)
  %10 = fcmp ogt float %9, 0.000000e+00
  br i1 %10, label %11, label %26

11:                                               ; preds = %5
  %12 = fcmp oeq float %2, 0.000000e+00
  %13 = fcmp oeq float %3, 0.000000e+00
  %14 = and i1 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call float @atan2f(float noundef %2, float noundef %3) #20
  %17 = fdiv float %16, 0x400921FB60000000
  %18 = fsub float 1.000000e+00, %17
  %19 = fmul float %18, 5.000000e-01
  br label %20

20:                                               ; preds = %11, %15
  %21 = phi float [ %19, %15 ], [ 0.000000e+00, %11 ]
  store float %21, ptr %0, align 4, !tbaa !34
  %22 = fdiv float %4, %9
  %23 = tail call fastcc float @saacos(float noundef %22) #18
  %24 = fdiv float %23, 0x400921FB60000000
  %25 = fsub float 1.000000e+00, %24
  br label %27

26:                                               ; preds = %5
  store float 0.000000e+00, ptr %0, align 4, !tbaa !34
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi float [ 0.000000e+00, %26 ], [ %25, %20 ]
  store float %28, ptr %1, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #13 !PGOFuncName !112 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #20
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @accumulate_vertex_normals(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr noundef readonly %8) local_unnamed_addr #4 {
  %10 = alloca [4 x [3 x float]], align 16
  %11 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #19
  %12 = icmp eq ptr %3, null
  %13 = icmp eq ptr %8, null
  %14 = or i1 %12, %13
  %15 = select i1 %14, i32 3, i32 4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %6, ptr noundef %5) #18
  %16 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %16, ptr noundef %7, ptr noundef %6) #18
  %17 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 2
  br i1 %14, label %18, label %19

18:                                               ; preds = %9
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %17, ptr noundef %5, ptr noundef %7) #18
  br label %22

19:                                               ; preds = %9
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %8, ptr noundef %7) #18
  %20 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %20, ptr noundef %5, ptr noundef nonnull %8) #18
  %21 = call fastcc float @normalize_v3(ptr noundef nonnull %20) #18
  br label %22

22:                                               ; preds = %19, %18
  %23 = call fastcc float @normalize_v3(ptr noundef nonnull %10) #18
  %24 = call fastcc float @normalize_v3(ptr noundef nonnull %16) #18
  %25 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 2
  %26 = call fastcc float @normalize_v3(ptr noundef nonnull %25) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #19
  store ptr %0, ptr %11, align 16, !tbaa !82
  %27 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %1, ptr %27, align 8, !tbaa !82
  %28 = getelementptr inbounds ptr, ptr %11, i64 2
  store ptr %2, ptr %28, align 16, !tbaa !82
  %29 = getelementptr inbounds ptr, ptr %11, i64 3
  store ptr %3, ptr %29, align 8, !tbaa !82
  %30 = add nsw i32 %15, -1
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 %31
  %33 = zext nneg i32 %15 to i64
  br label %34

34:                                               ; preds = %22, %34
  %35 = phi i64 [ 0, %22 ], [ %43, %34 ]
  %36 = phi ptr [ %32, %22 ], [ %37, %34 ]
  %37 = getelementptr inbounds [4 x [3 x float]], ptr %10, i64 0, i64 %35
  %38 = call fastcc float @dot_v3v3(ptr noundef nonnull %37, ptr noundef nonnull %36) #18
  %39 = fneg float %38
  %40 = tail call fastcc float @saacos(float noundef %39) #18
  %41 = getelementptr inbounds [4 x ptr], ptr %11, i64 0, i64 %35
  %42 = load ptr, ptr %41, align 8, !tbaa !82
  tail call fastcc void @madd_v3_v3fl(ptr noundef %42, ptr noundef %4, float noundef %40) #18
  %43 = add nuw nsw i64 %35, 1
  %44 = icmp eq i64 %43, %33
  br i1 %44, label %45, label %34, !llvm.loop !113

45:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 !PGOFuncName !114 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %0, align 4, !tbaa !34
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !34
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @accumulate_vertex_normals_poly(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %5
  %8 = zext nneg i32 %4 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %12, %9 ]
  %11 = getelementptr inbounds [3 x float], ptr %3, i64 %10
  %12 = add nuw nsw i64 %10, 1
  %13 = icmp eq i64 %12, %8
  %14 = and i64 %12, 4294967295
  %15 = select i1 %13, i64 0, i64 %14
  %16 = getelementptr inbounds ptr, ptr %2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !82
  %18 = getelementptr inbounds ptr, ptr %2, i64 %10
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  tail call fastcc void @sub_v3_v3v3(ptr noundef %11, ptr noundef %17, ptr noundef %19) #18
  %20 = tail call fastcc float @normalize_v3(ptr noundef %11) #18
  %21 = icmp eq i64 %12, %8
  br i1 %21, label %22, label %9, !llvm.loop !115

22:                                               ; preds = %9
  br i1 %6, label %23, label %39

23:                                               ; preds = %22
  %24 = zext nneg i32 %4 to i64
  %25 = getelementptr [3 x float], ptr %3, i64 %24
  %26 = getelementptr [3 x float], ptr %25, i64 -1
  %27 = zext nneg i32 %4 to i64
  br label %28

28:                                               ; preds = %23, %28
  %29 = phi i64 [ 0, %23 ], [ %37, %28 ]
  %30 = phi ptr [ %26, %23 ], [ %31, %28 ]
  %31 = getelementptr inbounds [3 x float], ptr %3, i64 %29
  %32 = tail call fastcc float @dot_v3v3(ptr noundef %31, ptr noundef %30) #18
  %33 = fneg float %32
  %34 = tail call fastcc float @saacos(float noundef %33) #18
  %35 = getelementptr inbounds ptr, ptr %0, i64 %29
  %36 = load ptr, ptr %35, align 8, !tbaa !82
  tail call fastcc void @madd_v3_v3fl(ptr noundef %36, ptr noundef %1, float noundef %34) #18
  %37 = add nuw nsw i64 %29, 1
  %38 = icmp eq i64 %37, %27
  br i1 %38, label %39, label %28, !llvm.loop !116

39:                                               ; preds = %28, %5, %22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @tangent_from_uv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x float], align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 8
  %12 = alloca [3 x float], align 8
  %13 = load float, ptr %1, align 4, !tbaa !34
  %14 = load float, ptr %0, align 4, !tbaa !34
  %15 = fsub float %13, %14
  %16 = load float, ptr %2, align 4, !tbaa !34
  %17 = fsub float %16, %14
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds float, ptr %0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %19, %21
  %23 = getelementptr inbounds float, ptr %2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %24, %21
  %26 = fneg float %17
  %27 = fmul float %22, %26
  %28 = tail call float @llvm.fmuladd.f32(float %15, float %25, float %27)
  %29 = fcmp une float %28, 0.000000e+00
  br i1 %29, label %30, label %67

30:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #19
  %31 = fdiv float 1.000000e+00, %28
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef %3, ptr noundef %4) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef %3, ptr noundef %5) #18
  %32 = fneg float %22
  %33 = load <2 x float>, ptr %11, align 8, !tbaa !34
  %34 = load <2 x float>, ptr %12, align 8, !tbaa !34
  %35 = insertelement <2 x float> poison, float %32, i64 0
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  %37 = fmul <2 x float> %34, %36
  %38 = insertelement <2 x float> poison, float %25, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> %33, <2 x float> %37)
  %41 = insertelement <2 x float> poison, float %31, i64 0
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %43 = fmul <2 x float> %42, %40
  store <2 x float> %43, ptr %7, align 4, !tbaa !34
  %44 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %45 = load float, ptr %44, align 8, !tbaa !34
  %46 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %47 = load float, ptr %46, align 8, !tbaa !34
  %48 = fmul float %47, %32
  %49 = tail call float @llvm.fmuladd.f32(float %25, float %45, float %48)
  %50 = fmul float %31, %49
  %51 = getelementptr inbounds float, ptr %7, i64 2
  store float %50, ptr %51, align 4, !tbaa !34
  %52 = insertelement <2 x float> poison, float %26, i64 0
  %53 = shufflevector <2 x float> %52, <2 x float> poison, <2 x i32> zeroinitializer
  %54 = fmul <2 x float> %33, %53
  %55 = insertelement <2 x float> poison, float %15, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer
  %57 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %56, <2 x float> %34, <2 x float> %54)
  %58 = fmul <2 x float> %42, %57
  store <2 x float> %58, ptr %9, align 8, !tbaa !34
  %59 = fmul float %45, %26
  %60 = tail call float @llvm.fmuladd.f32(float %15, float %47, float %59)
  %61 = fmul float %31, %60
  %62 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float %61, ptr %62, align 8, !tbaa !34
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef nonnull %9) #18
  %63 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef %6) #18
  %64 = fcmp olt float %63, 0.000000e+00
  br i1 %64, label %65, label %66

65:                                               ; preds = %30
  tail call fastcc void @negate_v3(ptr noundef nonnull %7) #18
  br label %66

66:                                               ; preds = %65, %30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  br label %68

67:                                               ; preds = %8
  tail call fastcc void @zero_v3(ptr noundef %7) #18
  br label %68

68:                                               ; preds = %67, %66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vcloud_estimate_transform(i32 noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef readonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #8 {
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x [3 x float]], align 16
  %15 = alloca [3 x [3 x float]], align 16
  %16 = alloca [3 x [3 x float]], align 16
  %17 = alloca [3 x [3 x float]], align 16
  %18 = alloca [3 x float], align 8
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x [3 x float]], align 16
  %22 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  %23 = icmp eq ptr %5, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %9
  tail call fastcc void @zero_v3(ptr noundef nonnull %5) #18
  br label %25

25:                                               ; preds = %24, %9
  %26 = icmp eq ptr %6, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  tail call fastcc void @zero_v3(ptr noundef nonnull %6) #18
  br label %28

28:                                               ; preds = %27, %25
  %29 = icmp ne ptr %7, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  tail call void @unit_m3(ptr noundef nonnull %7) #20
  br label %31

31:                                               ; preds = %30, %28
  %32 = icmp ne ptr %8, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  tail call void @unit_m3(ptr noundef nonnull %8) #20
  br label %34

34:                                               ; preds = %33, %31
  %35 = icmp ne ptr %1, null
  %36 = icmp ne ptr %3, null
  %37 = and i1 %35, %36
  %38 = icmp sgt i32 %0, 0
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %166

40:                                               ; preds = %34
  %41 = icmp eq ptr %2, null
  %42 = icmp eq ptr %4, null
  %43 = zext nneg i32 %0 to i64
  br label %44

44:                                               ; preds = %40, %64
  %45 = phi i64 [ 0, %40 ], [ %66, %64 ]
  %46 = phi float [ 0.000000e+00, %40 ], [ %56, %64 ]
  %47 = phi float [ 0.000000e+00, %40 ], [ %65, %64 ]
  br i1 %41, label %53, label %48

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #19
  %49 = getelementptr inbounds [3 x float], ptr %1, i64 %45
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %49) #18
  %50 = getelementptr inbounds float, ptr %2, i64 %45
  %51 = load float, ptr %50, align 4, !tbaa !34
  call fastcc void @mul_v3_fl(ptr noundef nonnull %12, float noundef %51) #18
  call fastcc void @add_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %12) #18
  %52 = fadd float %46, %51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  br label %55

53:                                               ; preds = %44
  %54 = getelementptr inbounds [3 x float], ptr %1, i64 %45
  call fastcc void @add_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %54) #18
  br label %55

55:                                               ; preds = %53, %48
  %56 = phi float [ %52, %48 ], [ %46, %53 ]
  br i1 %42, label %62, label %57

57:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #19
  %58 = getelementptr inbounds [3 x float], ptr %3, i64 %45
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %58) #18
  %59 = getelementptr inbounds float, ptr %4, i64 %45
  %60 = load float, ptr %59, align 4, !tbaa !34
  call fastcc void @mul_v3_fl(ptr noundef nonnull %13, float noundef %60) #18
  call fastcc void @add_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %13) #18
  %61 = fadd float %47, %60
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #19
  br label %64

62:                                               ; preds = %55
  %63 = getelementptr inbounds [3 x float], ptr %3, i64 %45
  call fastcc void @add_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %63) #18
  br label %64

64:                                               ; preds = %57, %62
  %65 = phi float [ %61, %57 ], [ %47, %62 ]
  %66 = add nuw nsw i64 %45, 1
  %67 = icmp eq i64 %66, %43
  br i1 %67, label %68, label %44, !llvm.loop !117

68:                                               ; preds = %64
  %69 = icmp ne ptr %2, null
  %70 = icmp ne ptr %4, null
  %71 = and i1 %69, %70
  %72 = sitofp i32 %0 to float
  %73 = select i1 %71, float %65, float %72
  %74 = select i1 %71, float %56, float %72
  %75 = fdiv float 1.000000e+00, %74
  call fastcc void @mul_v3_fl(ptr noundef nonnull %10, float noundef %75) #18
  %76 = fdiv float 1.000000e+00, %73
  call fastcc void @mul_v3_fl(ptr noundef nonnull %11, float noundef %76) #18
  br i1 %23, label %78, label %77

77:                                               ; preds = %68
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %10) #18
  br label %78

78:                                               ; preds = %77, %68
  br i1 %26, label %80, label %79

79:                                               ; preds = %78
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %11) #18
  br label %80

80:                                               ; preds = %79, %78
  %81 = or i1 %29, %32
  br i1 %81, label %82, label %166

82:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #19
  call void @zero_m3(ptr noundef nonnull %14) #20
  call void @zero_m3(ptr noundef nonnull %15) #20
  %83 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 1
  %84 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 1, i64 1
  %85 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 2
  %86 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 2, i64 2
  %87 = getelementptr inbounds [3 x [3 x float]], ptr %15, i64 0, i64 1, i64 1
  %88 = getelementptr inbounds [3 x [3 x float]], ptr %15, i64 0, i64 2, i64 2
  %89 = load <4 x float>, ptr %14, align 16, !tbaa !34
  %90 = load <4 x float>, ptr %84, align 16, !tbaa !34
  %91 = load float, ptr %86, align 16, !tbaa !34
  %92 = load <4 x float>, ptr %15, align 16, !tbaa !34
  %93 = load <4 x float>, ptr %87, align 16, !tbaa !34
  %94 = load float, ptr %88, align 16, !tbaa !34
  br label %95

95:                                               ; preds = %82, %95
  %96 = phi i64 [ 0, %82 ], [ %130, %95 ]
  %97 = phi float [ %94, %82 ], [ %129, %95 ]
  %98 = phi float [ %91, %82 ], [ %122, %95 ]
  %99 = phi <4 x float> [ %89, %82 ], [ %113, %95 ]
  %100 = phi <4 x float> [ %90, %82 ], [ %120, %95 ]
  %101 = phi <4 x float> [ %92, %82 ], [ %125, %95 ]
  %102 = phi <4 x float> [ %93, %82 ], [ %128, %95 ]
  %103 = getelementptr inbounds [3 x float], ptr %3, i64 %96
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %103, ptr noundef nonnull %11) #18
  %104 = getelementptr inbounds [3 x float], ptr %1, i64 %96
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %104, ptr noundef nonnull %10) #18
  %105 = load float, ptr %19, align 4, !tbaa !34
  %106 = load <2 x float>, ptr %83, align 4, !tbaa !34
  %107 = load <2 x float>, ptr %18, align 8, !tbaa !34
  %108 = shufflevector <2 x float> %107, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %109 = insertelement <4 x float> poison, float %105, i64 0
  %110 = shufflevector <2 x float> %106, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %111 = shufflevector <4 x float> %109, <4 x float> %110, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %112 = shufflevector <4 x float> %111, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %113 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %108, <4 x float> %112, <4 x float> %99)
  %114 = load float, ptr %85, align 8, !tbaa !34
  %115 = shufflevector <2 x float> %107, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %116 = insertelement <2 x float> %115, float %114, i64 1
  %117 = shufflevector <2 x float> %116, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %118 = insertelement <4 x float> %110, float %105, i64 2
  %119 = shufflevector <4 x float> %118, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %120 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %117, <4 x float> %119, <4 x float> %100)
  %121 = extractelement <2 x float> %106, i64 1
  %122 = call float @llvm.fmuladd.f32(float %114, float %121, float %98)
  %123 = shufflevector <2 x float> %107, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %124 = insertelement <4 x float> %123, float %114, i64 2
  %125 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %108, <4 x float> %124, <4 x float> %101)
  %126 = shufflevector <2 x float> %107, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 1>
  %127 = insertelement <4 x float> %126, float %114, i64 1
  %128 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %117, <4 x float> %127, <4 x float> %102)
  %129 = call float @llvm.fmuladd.f32(float %114, float %114, float %97)
  %130 = add nuw nsw i64 %96, 1
  %131 = icmp eq i64 %130, %43
  br i1 %131, label %132, label %95, !llvm.loop !118

132:                                              ; preds = %95
  store <4 x float> %113, ptr %14, align 16, !tbaa !34
  store <4 x float> %120, ptr %84, align 16, !tbaa !34
  store float %122, ptr %86, align 16, !tbaa !34
  store <4 x float> %125, ptr %15, align 16, !tbaa !34
  store <4 x float> %128, ptr %87, align 16, !tbaa !34
  store float %129, ptr %88, align 16, !tbaa !34
  call void @copy_m3_m3(ptr noundef nonnull %16, ptr noundef nonnull %14) #20
  %133 = load float, ptr %16, align 16, !tbaa !34
  store float %133, ptr %20, align 4, !tbaa !34
  %134 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 1, i64 1
  %135 = load float, ptr %134, align 16, !tbaa !34
  %136 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 1
  store float %135, ptr %136, align 4, !tbaa !34
  %137 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 2, i64 2
  %138 = load float, ptr %137, align 16, !tbaa !34
  %139 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 2
  store float %138, ptr %139, align 4, !tbaa !34
  %140 = call fastcc float @len_v3(ptr noundef nonnull %20) #18
  %141 = fdiv float 1.000000e+00, %140
  call void @mul_m3_fl(ptr noundef nonnull %16, float noundef %141) #20
  %142 = call float @determinant_m3_array(ptr noundef nonnull %16) #20
  %143 = fsub float 0.000000e+00, %142
  %144 = fmul float %143, %143
  %145 = fcmp ule float %144, 0x3EB0C6F7A0000000
  br i1 %145, label %165, label %146

146:                                              ; preds = %132, %146
  %147 = phi i32 [ %151, %146 ], [ 0, %132 ]
  %148 = phi float [ %150, %146 ], [ %142, %132 ]
  %149 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %17, ptr noundef nonnull %16) #20
  call void @transpose_m3(ptr noundef nonnull %17) #20
  call void @add_m3_m3m3(ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull %17) #20
  call void @mul_m3_fl(ptr noundef nonnull %16, float noundef 5.000000e-01) #20
  %150 = call float @determinant_m3_array(ptr noundef nonnull %16) #20
  %151 = add nuw nsw i32 %147, 1
  %152 = fsub float %148, %150
  %153 = fmul float %152, %152
  %154 = fcmp ogt float %153, 0x3EB0C6F7A0000000
  %155 = icmp ult i32 %147, 14
  %156 = select i1 %154, i1 %155, i1 false
  br i1 %156, label %146, label %157, !llvm.loop !119

157:                                              ; preds = %146
  br i1 %145, label %165, label %158

158:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %22) #19
  br i1 %29, label %159, label %160

159:                                              ; preds = %158
  call void @copy_m3_m3(ptr noundef nonnull %7, ptr noundef nonnull %16) #20
  br label %160

160:                                              ; preds = %159, %158
  %161 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %22, ptr noundef nonnull %16) #20
  %162 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %17, ptr noundef nonnull %15) #20
  call void @mul_m3_m3m3(ptr noundef nonnull %16, ptr noundef nonnull %14, ptr noundef nonnull %17) #20
  call void @mul_m3_m3m3(ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %16) #20
  br i1 %32, label %163, label %164

163:                                              ; preds = %160
  call void @copy_m3_m3(ptr noundef nonnull %8, ptr noundef nonnull %21) #20
  br label %164

164:                                              ; preds = %163, %160
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %21) #19
  br label %165

165:                                              ; preds = %132, %164, %157
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #19
  br label %166

166:                                              ; preds = %165, %80, %34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @zero_m3(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @mul_m3_fl(ptr noundef, float noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @add_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @form_factor_visible_quad(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %0) #18
  %11 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %2) #18
  %12 = fsub float %11, %10
  %13 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %3) #18
  %14 = fsub float %13, %10
  %15 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %4) #18
  %16 = fsub float %15, %10
  %17 = tail call float @llvm.fabs.f32(float %12)
  %18 = fcmp olt float %17, 0x3EB0C6F7A0000000
  %19 = select i1 %18, float 0.000000e+00, float %12
  %20 = tail call float @llvm.fabs.f32(float %14)
  %21 = fcmp olt float %20, 0x3EB0C6F7A0000000
  %22 = select i1 %21, float 0.000000e+00, float %14
  %23 = tail call float @llvm.fabs.f32(float %16)
  %24 = fcmp olt float %23, 0x3EB0C6F7A0000000
  %25 = select i1 %24, float 0.000000e+00, float %16
  %26 = fcmp ogt float %19, 0.000000e+00
  br i1 %26, label %27, label %65

27:                                               ; preds = %9
  %28 = fcmp ogt float %22, 0.000000e+00
  br i1 %28, label %29, label %40

29:                                               ; preds = %27
  %30 = fcmp ogt float %25, 0.000000e+00
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  tail call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef %2) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %6, ptr noundef %3) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %4) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %7) #18
  br label %116

32:                                               ; preds = %29
  %33 = fcmp olt float %25, 0.000000e+00
  tail call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef %2) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %6, ptr noundef %3) #18
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = fsub float %22, %25
  %36 = fdiv float %22, %35
  tail call fastcc void @vec_add_dir(ptr noundef %7, ptr noundef %3, ptr noundef %4, float noundef %36) #18
  %37 = fsub float %19, %25
  %38 = fdiv float %19, %37
  tail call fastcc void @vec_add_dir(ptr noundef %8, ptr noundef %2, ptr noundef %4, float noundef %38) #18
  br label %116

39:                                               ; preds = %32
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %4) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %7) #18
  br label %116

40:                                               ; preds = %27
  %41 = fcmp olt float %22, 0.000000e+00
  %42 = fcmp ogt float %25, 0.000000e+00
  br i1 %41, label %43, label %57

43:                                               ; preds = %40
  br i1 %42, label %44, label %49

44:                                               ; preds = %43
  tail call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef %2) #18
  %45 = fsub float %19, %22
  %46 = fdiv float %19, %45
  tail call fastcc void @vec_add_dir(ptr noundef %6, ptr noundef %2, ptr noundef %3, float noundef %46) #18
  %47 = fsub float %22, %25
  %48 = fdiv float %22, %47
  tail call fastcc void @vec_add_dir(ptr noundef %7, ptr noundef %3, ptr noundef %4, float noundef %48) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %4) #18
  br label %116

49:                                               ; preds = %43
  %50 = fcmp olt float %25, 0.000000e+00
  tail call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef %2) #18
  %51 = fsub float %19, %22
  %52 = fdiv float %19, %51
  tail call fastcc void @vec_add_dir(ptr noundef %6, ptr noundef %2, ptr noundef %3, float noundef %52) #18
  br i1 %50, label %53, label %56

53:                                               ; preds = %49
  %54 = fsub float %19, %25
  %55 = fdiv float %19, %54
  tail call fastcc void @vec_add_dir(ptr noundef %7, ptr noundef %2, ptr noundef %4, float noundef %55) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %7) #18
  br label %116

56:                                               ; preds = %49
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %4) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %7) #18
  br label %116

57:                                               ; preds = %40
  br i1 %42, label %58, label %59

58:                                               ; preds = %57
  tail call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef %2) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %6, ptr noundef %3) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %4) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %7) #18
  br label %116

59:                                               ; preds = %57
  %60 = fcmp olt float %25, 0.000000e+00
  tail call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef %2) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %6, ptr noundef %3) #18
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = fsub float %19, %25
  %63 = fdiv float %19, %62
  tail call fastcc void @vec_add_dir(ptr noundef %7, ptr noundef %2, ptr noundef %4, float noundef %63) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %7) #18
  br label %116

64:                                               ; preds = %59
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %4) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %7) #18
  br label %116

65:                                               ; preds = %9
  %66 = fcmp olt float %19, 0.000000e+00
  %67 = fcmp ogt float %22, 0.000000e+00
  br i1 %66, label %68, label %97

68:                                               ; preds = %65
  br i1 %67, label %69, label %84

69:                                               ; preds = %68
  %70 = fcmp ogt float %25, 0.000000e+00
  br i1 %70, label %71, label %76

71:                                               ; preds = %69
  %72 = fsub float %19, %22
  %73 = fdiv float %19, %72
  tail call fastcc void @vec_add_dir(ptr noundef %5, ptr noundef %2, ptr noundef %3, float noundef %73) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %6, ptr noundef %3) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %4) #18
  %74 = fsub float %19, %25
  %75 = fdiv float %19, %74
  tail call fastcc void @vec_add_dir(ptr noundef %8, ptr noundef %2, ptr noundef %4, float noundef %75) #18
  br label %116

76:                                               ; preds = %69
  %77 = fcmp olt float %25, 0.000000e+00
  %78 = fsub float %19, %22
  %79 = fdiv float %19, %78
  tail call fastcc void @vec_add_dir(ptr noundef %5, ptr noundef %2, ptr noundef %3, float noundef %79) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %6, ptr noundef %3) #18
  br i1 %77, label %80, label %83

80:                                               ; preds = %76
  %81 = fsub float %22, %25
  %82 = fdiv float %22, %81
  tail call fastcc void @vec_add_dir(ptr noundef %7, ptr noundef %3, ptr noundef %4, float noundef %82) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %7) #18
  br label %116

83:                                               ; preds = %76
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %4) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %7) #18
  br label %116

84:                                               ; preds = %68
  %85 = fcmp olt float %22, 0.000000e+00
  %86 = fcmp ogt float %25, 0.000000e+00
  br i1 %85, label %87, label %93

87:                                               ; preds = %84
  br i1 %86, label %88, label %116

88:                                               ; preds = %87
  %89 = fsub float %19, %25
  %90 = fdiv float %19, %89
  tail call fastcc void @vec_add_dir(ptr noundef %5, ptr noundef %2, ptr noundef %4, float noundef %90) #18
  %91 = fsub float %22, %25
  %92 = fdiv float %22, %91
  tail call fastcc void @vec_add_dir(ptr noundef %6, ptr noundef %3, ptr noundef %4, float noundef %92) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %4) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %7) #18
  br label %116

93:                                               ; preds = %84
  br i1 %86, label %94, label %116

94:                                               ; preds = %93
  %95 = fsub float %19, %25
  %96 = fdiv float %19, %95
  tail call fastcc void @vec_add_dir(ptr noundef %5, ptr noundef %2, ptr noundef %4, float noundef %96) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %6, ptr noundef %3) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %4) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %7) #18
  br label %116

97:                                               ; preds = %65
  br i1 %67, label %98, label %107

98:                                               ; preds = %97
  %99 = fcmp ogt float %25, 0.000000e+00
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  tail call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef %2) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %6, ptr noundef %3) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %4) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %7) #18
  br label %116

101:                                              ; preds = %98
  %102 = fcmp olt float %25, 0.000000e+00
  tail call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef %2) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %6, ptr noundef %3) #18
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = fsub float %22, %25
  %105 = fdiv float %22, %104
  tail call fastcc void @vec_add_dir(ptr noundef %7, ptr noundef %3, ptr noundef %4, float noundef %105) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %7) #18
  br label %116

106:                                              ; preds = %101
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %4) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %7) #18
  br label %116

107:                                              ; preds = %97
  %108 = fcmp olt float %22, 0.000000e+00
  %109 = fcmp ogt float %25, 0.000000e+00
  br i1 %108, label %110, label %114

110:                                              ; preds = %107
  br i1 %109, label %111, label %116

111:                                              ; preds = %110
  tail call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef %2) #18
  %112 = fsub float %22, %25
  %113 = fdiv float %22, %112
  tail call fastcc void @vec_add_dir(ptr noundef %6, ptr noundef %3, ptr noundef %4, float noundef %113) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %4) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %7) #18
  br label %116

114:                                              ; preds = %107
  br i1 %109, label %115, label %116

115:                                              ; preds = %114
  tail call fastcc void @copy_v3_v3(ptr noundef %5, ptr noundef %2) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %6, ptr noundef %3) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %7, ptr noundef %4) #18
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef %7) #18
  br label %116

116:                                              ; preds = %53, %56, %44, %61, %64, %58, %31, %39, %34, %103, %106, %100, %115, %111, %80, %83, %71, %94, %88, %114, %110, %93, %87
  %117 = phi i8 [ 0, %87 ], [ 0, %93 ], [ 0, %110 ], [ 0, %114 ], [ 1, %88 ], [ 1, %94 ], [ 1, %71 ], [ 1, %83 ], [ 1, %80 ], [ 1, %111 ], [ 1, %115 ], [ 1, %100 ], [ 1, %106 ], [ 1, %103 ], [ 1, %34 ], [ 1, %39 ], [ 1, %31 ], [ 1, %58 ], [ 1, %64 ], [ 1, %61 ], [ 1, %44 ], [ 1, %56 ], [ 1, %53 ]
  ret i8 %117
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @vec_add_dir(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #0 !PGOFuncName !120 {
  %5 = load float, ptr %1, align 4, !tbaa !34
  %6 = load float, ptr %2, align 4, !tbaa !34
  %7 = fsub float %6, %5
  %8 = tail call float @llvm.fmuladd.f32(float %3, float %7, float %5)
  store float %8, ptr %0, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fsub float %12, %10
  %14 = tail call float @llvm.fmuladd.f32(float %3, float %13, float %10)
  %15 = getelementptr inbounds float, ptr %0, i64 1
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fsub float %19, %17
  %21 = tail call float @llvm.fmuladd.f32(float %3, float %20, float %17)
  %22 = getelementptr inbounds float, ptr %0, i64 2
  store float %21, ptr %22, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @form_factor_quad(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) local_unnamed_addr #1 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %0) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %3, ptr noundef %0) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %4, ptr noundef %0) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %5, ptr noundef %0) #18
  call fastcc void @ff_normalize(ptr noundef nonnull %7) #18
  call fastcc void @ff_normalize(ptr noundef nonnull %8) #18
  call fastcc void @ff_normalize(ptr noundef nonnull %9) #18
  call fastcc void @ff_normalize(ptr noundef nonnull %10) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %7) #18
  call fastcc void @ff_normalize(ptr noundef nonnull %11) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef nonnull %8) #18
  call fastcc void @ff_normalize(ptr noundef nonnull %12) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %10, ptr noundef nonnull %9) #18
  call fastcc void @ff_normalize(ptr noundef nonnull %13) #18
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %7, ptr noundef nonnull %10) #18
  call fastcc void @ff_normalize(ptr noundef nonnull %14) #18
  %15 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %16 = tail call fastcc float @saacosf(float noundef %15) #18
  %17 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %18 = tail call fastcc float @saacosf(float noundef %17) #18
  %19 = call fastcc float @dot_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #18
  %20 = tail call fastcc float @saacosf(float noundef %19) #18
  %21 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %7) #18
  %22 = tail call fastcc float @saacosf(float noundef %21) #18
  %23 = call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %11) #18
  %24 = call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %12) #18
  %25 = call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %13) #18
  %26 = call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %14) #18
  %27 = fmul float %18, %24
  %28 = tail call float @llvm.fmuladd.f32(float %16, float %23, float %27)
  %29 = tail call float @llvm.fmuladd.f32(float %20, float %25, float %28)
  %30 = tail call float @llvm.fmuladd.f32(float %22, float %26, float %29)
  %31 = fmul float %30, 5.000000e-01
  %32 = fdiv float %31, 0x400921FB60000000
  %33 = fcmp ogt float %32, 0.000000e+00
  %34 = select i1 %33, float %32, float 0.000000e+00
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  ret float %34
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @ff_normalize(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !121 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #18
  %3 = fcmp ogt float %2, 0x38AA95A5C0000000
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call float @sqrtf(float noundef %2) #20
  %6 = fdiv float 1.000000e+00, %5
  %7 = load <2 x float>, ptr %0, align 4, !tbaa !34
  %8 = insertelement <2 x float> poison, float %6, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = fmul <2 x float> %7, %9
  store <2 x float> %10, ptr %0, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fmul float %6, %12
  store float %13, ptr %11, align 4, !tbaa !34
  br label %14

14:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacosf(float noundef %0) unnamed_addr #13 !PGOFuncName !122 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #20
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local float @form_factor_hemi_poly(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef readonly %5) local_unnamed_addr #1 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  %11 = call zeroext i8 @form_factor_visible_quad(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #18, !range !60
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = call float @form_factor_quad(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #18
  %15 = fadd float %14, 0.000000e+00
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi float [ %15, %13 ], [ 0.000000e+00, %6 ]
  %18 = icmp eq ptr %5, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = call zeroext i8 @form_factor_visible_quad(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #18, !range !60
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = call float @form_factor_quad(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #18
  %24 = fadd float %17, %23
  br label %25

25:                                               ; preds = %22, %19, %16
  %26 = phi float [ %24, %22 ], [ %17, %19 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  ret float %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @is_quad_convex_v3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x [2 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #19
  %10 = call float @normal_tri_v3(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  %11 = fcmp ogt float %10, 0x3E80000000000000
  %12 = call float @normal_tri_v3(ptr noundef nonnull %7, ptr noundef %0, ptr noundef %2, ptr noundef %3) #18
  %13 = fcmp ogt float %12, 0x3E80000000000000
  br i1 %11, label %14, label %22

14:                                               ; preds = %4
  br i1 %13, label %15, label %21

15:                                               ; preds = %14
  %16 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %17 = fcmp olt float %16, 0.000000e+00
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call fastcc void @negate_v3(ptr noundef nonnull %7) #18
  br label %19

19:                                               ; preds = %18, %15
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %20 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #18
  br label %24

21:                                               ; preds = %14
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  br label %24

22:                                               ; preds = %4
  br i1 %13, label %23, label %31

23:                                               ; preds = %22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #18
  br label %24

24:                                               ; preds = %19, %21, %23
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %9, ptr noundef nonnull %5) #18
  call void @mul_v2_m3v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %0) #20
  %25 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 1
  call void @mul_v2_m3v3(ptr noundef nonnull %25, ptr noundef nonnull %9, ptr noundef %1) #20
  %26 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 2
  call void @mul_v2_m3v3(ptr noundef nonnull %26, ptr noundef nonnull %9, ptr noundef %2) #20
  %27 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 3
  call void @mul_v2_m3v3(ptr noundef nonnull %27, ptr noundef nonnull %9, ptr noundef %3) #20
  %28 = call i32 @isect_line_line_v2(ptr noundef nonnull %8, ptr noundef nonnull %26, ptr noundef nonnull %25, ptr noundef nonnull %27) #18, !range !123
  %29 = icmp sgt i32 %28, 0
  %30 = zext i1 %29 to i8
  br label %31

31:                                               ; preds = %22, %24
  %32 = phi i8 [ %30, %24 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret i8 %32
}

; Function Attrs: optsize
declare void @mul_v2_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_quad_convex_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #6 {
  %5 = tail call i32 @isect_line_line_v2(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef %3) #18, !range !123
  %6 = icmp sgt i32 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @is_poly_convex_v2(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #16 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = add i32 %1, -1
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [2 x float], ptr %0, i64 %6
  %8 = add i32 %1, -2
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [2 x float], ptr %0, i64 %9
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %4, ptr noundef %10, ptr noundef %7) #18
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %2, %25
  %13 = phi ptr [ %14, %25 ], [ %7, %2 ]
  %14 = phi ptr [ %27, %25 ], [ %0, %2 ]
  %15 = phi i32 [ %28, %25 ], [ 0, %2 ]
  %16 = phi i32 [ %26, %25 ], [ 0, %2 ]
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %13, ptr noundef %14) #18
  %17 = call fastcc float @cross_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %3) #18
  %18 = fcmp olt float %17, 0.000000e+00
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = fcmp ogt float %17, 0.000000e+00
  br i1 %20, label %21, label %25

21:                                               ; preds = %19, %12
  %22 = phi i32 [ 1, %12 ], [ 2, %19 ]
  %23 = or i32 %16, %22
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %30, label %25

25:                                               ; preds = %19, %21
  %26 = phi i32 [ %23, %21 ], [ %16, %19 ]
  call fastcc void @copy_v2_v2(ptr noundef nonnull %4, ptr noundef nonnull %3) #18
  %27 = getelementptr inbounds float, ptr %14, i64 2
  %28 = add nuw i32 %15, 1
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %30, label %12, !llvm.loop !124

30:                                               ; preds = %25, %21, %2
  %31 = phi i8 [ 1, %2 ], [ 0, %21 ], [ 1, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i8 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 !PGOFuncName !125 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @axis_dominant_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !126 {
  %4 = load float, ptr %2, align 4, !tbaa !34
  %5 = tail call float @llvm.fabs.f32(float %4)
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load <2 x float>, ptr %6, align 4, !tbaa !34
  %8 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %7)
  %9 = extractelement <2 x float> %8, i64 1
  %10 = fcmp ult float %9, %5
  %11 = extractelement <2 x float> %8, i64 0
  %12 = fcmp ult float %9, %11
  %13 = select i1 %10, i1 true, i1 %12
  %14 = fcmp ult float %11, %5
  %15 = fcmp ult float %11, %9
  %16 = or i1 %14, %15
  %17 = select i1 %13, i1 %16, i1 false
  %18 = zext i1 %17 to i32
  %19 = select i1 %13, i32 2, i32 1
  store i32 %18, ptr %0, align 4, !tbaa !58
  store i32 %19, ptr %1, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @tri_signed_area(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 !PGOFuncName !127 {
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds float, ptr %0, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 %6
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fsub float %8, %10
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds float, ptr %1, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 %12
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 %12
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = fsub float %19, %14
  %21 = getelementptr inbounds float, ptr %2, i64 %6
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = fsub float %22, %10
  %24 = fmul float %20, %23
  %25 = tail call float @llvm.fmuladd.f32(float %11, float %17, float %24)
  %26 = fmul float %25, 5.000000e-01
  ret float %26
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #17

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize }

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
!38 = !{!"math_geom.c:normalize_v3"}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"math_geom.c:zero_v3"}
!42 = !{!"math_geom.c:add_newell_cross_v3_v3v3"}
!43 = !{!"math_geom.c:sub_v3_v3v3"}
!44 = !{!"math_geom.c:cross_v3_v3v3"}
!45 = !{!"math_geom.c:len_v3"}
!46 = !{!"math_geom.c:dot_v3v3"}
!47 = distinct !{!47, !40}
!48 = !{!"math_geom.c:copy_v3_v3"}
!49 = !{!"math_geom.c:normalize_v3_v3"}
!50 = !{!"math_geom.c:madd_v3_v3v3fl"}
!51 = !{!"math_geom.c:len_squared_v2"}
!52 = !{!"math_geom.c:copy_v2_v2"}
!53 = !{!"math_geom.c:len_squared_v3"}
!54 = !{!"math_geom.c:plane_point_side_v3"}
!55 = !{!"math_geom.c:len_squared_v3v3"}
!56 = !{!"math_geom.c:mul_v3_fl"}
!57 = !{!"math_geom.c:add_v3_v3"}
!58 = !{!59, !59, i64 0}
!59 = !{!"int", !36, i64 0}
!60 = !{i8 0, i8 2}
!61 = !{!"math_geom.c:equals_v2v2"}
!62 = !{!"math_geom.c:len_squared_v2v2"}
!63 = !{!"math_geom.c:sub_v2_v2v2"}
!64 = !{!"math_geom.c:dot_v2v2"}
!65 = !{!"math_geom.c:max_ff"}
!66 = !{!"math_geom.c:min_ff"}
!67 = !{!"math_geom.c:madd_v2_v2v2fl"}
!68 = distinct !{!68, !40}
!69 = distinct !{!69, !40}
!70 = !{!"math_geom.c:line_point_side_v2"}
!71 = distinct !{!71, !40}
!72 = !{!"math_geom.c:negate_v3"}
!73 = !{!"math_geom.c:getLowestRoot"}
!74 = !{!"math_geom.c:add_v3_v3v3"}
!75 = !{i32 0, i32 3}
!76 = !{!"math_geom.c:len_v3v3"}
!77 = !{i32 -1, i32 2}
!78 = !{!"math_geom.c:point_in_slice"}
!79 = distinct !{!79, !40}
!80 = distinct !{!80, !40}
!81 = distinct !{!81, !40}
!82 = !{!83, !83, i64 0}
!83 = !{!"any pointer", !36, i64 0}
!84 = distinct !{!84, !40}
!85 = distinct !{!85, !40}
!86 = distinct !{!86, !40}
!87 = distinct !{!87, !40}
!88 = distinct !{!88, !40}
!89 = !{!"math_geom.c:equals_v3v3"}
!90 = !{!"math_geom.c:barycentric_weights"}
!91 = !{!"math_geom.c:area_tri_signed_v2"}
!92 = !{!"math_geom.c:copy_v3_fl"}
!93 = !{!"math_geom.c:len_v2"}
!94 = !{!"math_geom.c:cross_v2v2"}
!95 = !{!"math_geom.c:mul_v4_fl"}
!96 = !{!"math_geom.c:copy_v4_fl"}
!97 = !{!"math_geom.c:area_tri_v2"}
!98 = distinct !{!98, !40}
!99 = distinct !{!99, !40}
!100 = distinct !{!100, !40}
!101 = distinct !{!101, !40}
!102 = distinct !{!102, !40}
!103 = !{!"math_geom.c:mean_value_half_tan_v3"}
!104 = distinct !{!104, !40}
!105 = !{!"math_geom.c:mean_value_half_tan_v2"}
!106 = !{!"math_geom.c:len_v2v2"}
!107 = !{!"math_geom.c:zero_v2"}
!108 = !{!"math_geom.c:i_multmatrix"}
!109 = distinct !{!109, !40}
!110 = distinct !{!110, !40}
!111 = distinct !{!111, !40}
!112 = !{!"math_geom.c:saacos"}
!113 = distinct !{!113, !40}
!114 = !{!"math_geom.c:madd_v3_v3fl"}
!115 = distinct !{!115, !40}
!116 = distinct !{!116, !40}
!117 = distinct !{!117, !40}
!118 = distinct !{!118, !40}
!119 = distinct !{!119, !40}
!120 = !{!"math_geom.c:vec_add_dir"}
!121 = !{!"math_geom.c:ff_normalize"}
!122 = !{!"math_geom.c:saacosf"}
!123 = !{i32 -1, i32 3}
!124 = distinct !{!124, !40}
!125 = !{!"math_geom.c:mul_v3_v3fl"}
!126 = !{!"math_geom.c:axis_dominant_v3"}
!127 = !{!"math_geom.c:tri_signed_area"}
