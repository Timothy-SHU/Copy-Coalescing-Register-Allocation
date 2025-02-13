; ModuleID = 'blender/source/blender/blenlib/intern/polyfill2d.c'
source_filename = "blender/source/blender/blenlib/intern/polyfill2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.KDRange2D = type { float, float }
%struct.PolyFill = type { ptr, ptr, i32, i32, ptr, i32, %struct.KDTree2D }
%struct.KDTree2D = type { ptr, ptr, i32, i32, ptr }
%struct.PolyIndex = type { ptr, ptr, i32, i8 }
%struct.KDTreeNode2D = type { i32, i32, i32, i8, i16, i32 }
%struct.KDTreeNode2D_head = type { i32, i32, i32 }

@__const.kdtree2d_isect_tri.bounds = private unnamed_addr constant [2 x %struct.KDRange2D] [%struct.KDRange2D { float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000 }, %struct.KDRange2D { float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000 }], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_polyfill_calc_arena(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.PolyFill, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #16
  %7 = zext i32 %1 to i64
  %8 = mul nuw nsw i64 %7, 24
  %9 = tail call ptr @BLI_memarena_alloc(ptr noundef %4, i64 noundef %8) #17
  call fastcc void @polyfill_prepare(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %9) #18
  %10 = getelementptr inbounds %struct.PolyFill, ptr %6, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %5
  %14 = zext i32 %11 to i64
  %15 = mul nuw nsw i64 %14, 20
  %16 = tail call ptr @BLI_memarena_alloc(ptr noundef %4, i64 noundef %15) #17
  %17 = getelementptr inbounds %struct.PolyFill, ptr %6, i64 0, i32 6
  store ptr %16, ptr %17, align 8, !tbaa !41
  %18 = shl nuw nsw i64 %7, 2
  %19 = tail call ptr @BLI_memarena_alloc(ptr noundef %4, i64 noundef %18) #17
  tail call void @llvm.memset.p0.i64(ptr align 1 %19, i8 -1, i64 %18, i1 false)
  %20 = getelementptr inbounds %struct.PolyFill, ptr %6, i64 0, i32 6, i32 4
  store ptr %19, ptr %20, align 8, !tbaa !42
  br label %23

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.PolyFill, ptr %6, i64 0, i32 6, i32 3
  store i32 0, ptr %22, align 4, !tbaa !43
  br label %23

23:                                               ; preds = %21, %13
  call fastcc void @polyfill_calc(ptr noundef nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @polyfill_prepare(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !44 {
  store ptr %5, ptr %0, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 2
  store i32 %2, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 3
  store i32 0, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 4
  store ptr %4, ptr %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !49
  switch i32 %3, label %15 [
    i32 0, label %12
    i32 1, label %19
  ]

12:                                               ; preds = %6
  %13 = tail call float @cross_poly_v2(ptr noundef %1, i32 noundef %2) #17
  %14 = fcmp ult float %13, 0.000000e+00
  br i1 %14, label %15, label %19

15:                                               ; preds = %6, %12
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %15
  %18 = zext i32 %2 to i64
  br label %35

19:                                               ; preds = %6, %12
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %19
  %22 = zext i32 %2 to i64
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ 0, %21 ], [ %25, %23 ]
  %25 = add nuw nsw i64 %24, 1
  %26 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %25
  %27 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %24
  store ptr %26, ptr %27, align 8, !tbaa !50
  %28 = trunc i64 %24 to i32
  %29 = add nuw i64 %24, 4294967295
  %30 = and i64 %29, 4294967295
  %31 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %30
  %32 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %24, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !52
  %33 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %24, i32 2
  store i32 %28, ptr %33, align 8, !tbaa !53
  %34 = icmp eq i64 %25, %22
  br i1 %34, label %52, label %23, !llvm.loop !54

35:                                               ; preds = %17, %35
  %36 = phi i64 [ 0, %17 ], [ %37, %35 ]
  %37 = add nuw nsw i64 %36, 1
  %38 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %37
  %39 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %36
  store ptr %38, ptr %39, align 8, !tbaa !50
  %40 = trunc i64 %36 to i32
  %41 = add nuw i64 %36, 4294967295
  %42 = and i64 %41, 4294967295
  %43 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %42
  %44 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %36, i32 1
  store ptr %43, ptr %44, align 8, !tbaa !52
  %45 = xor i32 %40, -1
  %46 = add i32 %45, %2
  %47 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %36, i32 2
  store i32 %46, ptr %47, align 8, !tbaa !53
  %48 = icmp eq i64 %37, %18
  br i1 %48, label %52, label %35, !llvm.loop !56

49:                                               ; preds = %15, %19
  %50 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 4294967295
  %51 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !52
  store ptr %5, ptr %50, align 8, !tbaa !50
  br label %72

52:                                               ; preds = %23, %35
  %53 = add i32 %2, -1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %54
  %56 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 0, i32 1
  store ptr %55, ptr %56, align 8, !tbaa !52
  store ptr %5, ptr %55, align 8, !tbaa !50
  %57 = icmp eq i32 %2, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %52
  %59 = zext i32 %2 to i64
  br label %60

60:                                               ; preds = %58, %69
  %61 = phi i64 [ 0, %58 ], [ %70, %69 ]
  %62 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %61
  tail call fastcc void @pf_coord_sign_calc(ptr noundef nonnull %0, ptr noundef %62) #18
  %63 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %61, i32 3
  %64 = load i8, ptr %63, align 4, !tbaa !57
  %65 = icmp eq i8 %64, 1
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, ptr %9, align 4, !tbaa !34
  %68 = add i32 %67, 1
  store i32 %68, ptr %9, align 4, !tbaa !34
  br label %69

69:                                               ; preds = %66, %60
  %70 = add nuw nsw i64 %61, 1
  %71 = icmp eq i64 %70, %59
  br i1 %71, label %72, label %60, !llvm.loop !58

72:                                               ; preds = %69, %49, %52
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @polyfill_calc(ptr noundef %0) unnamed_addr #4 !PGOFuncName !59 {
  %2 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6
  %7 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  tail call fastcc void @kdtree2d_new(ptr noundef nonnull %6, i32 noundef %3, ptr noundef %8) #18
  %9 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !47
  %11 = load ptr, ptr %0, align 8, !tbaa !45
  tail call fastcc void @kdtree2d_init(ptr noundef nonnull %6, i32 noundef %10, ptr noundef %11) #18
  tail call fastcc void @kdtree2d_balance(ptr noundef nonnull %6) #18
  tail call fastcc void @kdtree2d_init_mapping(ptr noundef nonnull %6) #18
  br label %12

12:                                               ; preds = %5, %1
  tail call fastcc void @pf_triangulate(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_polyfill_calc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PolyFill, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #16
  %6 = zext i32 %1 to i64
  %7 = mul nuw nsw i64 %6, 24
  %8 = alloca i8, i64 %7, align 16
  call fastcc void @polyfill_prepare(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %8) #18
  %9 = getelementptr inbounds %struct.PolyFill, ptr %5, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %4
  %13 = zext i32 %10 to i64
  %14 = mul nuw nsw i64 %13, 20
  %15 = alloca i8, i64 %14, align 16
  %16 = getelementptr inbounds %struct.PolyFill, ptr %5, i64 0, i32 6
  store ptr %15, ptr %16, align 8, !tbaa !41
  %17 = shl nuw nsw i64 %6, 2
  %18 = alloca i8, i64 %17, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %18, i8 -1, i64 %17, i1 false)
  %19 = getelementptr inbounds %struct.PolyFill, ptr %5, i64 0, i32 6, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !42
  br label %22

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.PolyFill, ptr %5, i64 0, i32 6, i32 3
  store i32 0, ptr %21, align 4, !tbaa !43
  br label %22

22:                                               ; preds = %20, %12
  call fastcc void @polyfill_calc(ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare float @cross_poly_v2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pf_coord_sign_calc(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #5 !PGOFuncName !60 {
  %3 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PolyIndex, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.PolyIndex, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !53
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [2 x float], ptr %4, i64 %9
  %11 = getelementptr inbounds %struct.PolyIndex, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !53
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [2 x float], ptr %4, i64 %13
  %15 = load ptr, ptr %1, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.PolyIndex, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !53
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [2 x float], ptr %4, i64 %18
  %20 = tail call fastcc signext i8 @span_tri_v2_sign(ptr noundef %10, ptr noundef %14, ptr noundef %19) #18, !range !61
  %21 = getelementptr inbounds %struct.PolyIndex, ptr %1, i64 0, i32 3
  store i8 %20, ptr %21, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef signext i8 @span_tri_v2_sign(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !62 {
  %4 = tail call fastcc float @area_tri_signed_v2_alt_2x(ptr noundef %2, ptr noundef %1, ptr noundef %0) #18
  %5 = tail call fastcc signext i8 @signum_i(float noundef %4) #18, !range !61
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef signext i8 @signum_i(float noundef %0) unnamed_addr #7 !PGOFuncName !63 {
  %2 = fcmp oeq float %0, 0.000000e+00
  %3 = fcmp ogt float %0, 0.000000e+00
  %4 = select i1 %3, i8 1, i8 -1
  %5 = select i1 %2, i8 0, i8 %4
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @area_tri_signed_v2_alt_2x(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !64 {
  %4 = load float, ptr %0, align 4, !tbaa !65
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !65
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !65
  %9 = fsub float %6, %8
  %10 = load float, ptr %1, align 4, !tbaa !65
  %11 = getelementptr inbounds float, ptr %0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !65
  %13 = fsub float %8, %12
  %14 = fmul float %10, %13
  %15 = tail call float @llvm.fmuladd.f32(float %4, float %9, float %14)
  %16 = load float, ptr %2, align 4, !tbaa !65
  %17 = fsub float %12, %6
  %18 = tail call float @llvm.fmuladd.f32(float %16, float %17, float %15)
  ret float %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @kdtree2d_new(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 !PGOFuncName !67 {
  %4 = getelementptr inbounds %struct.KDTree2D, ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.KDTree2D, ptr %0, i64 0, i32 2
  store i32 -1, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.KDTree2D, ptr %0, i64 0, i32 3
  store i32 %1, ptr %6, align 4, !tbaa !70
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @kdtree2d_init(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !71 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !72
  %7 = zext i32 %1 to i64
  br label %8

8:                                                ; preds = %5, %22
  %9 = phi i64 [ 0, %5 ], [ %24, %22 ]
  %10 = phi ptr [ %6, %5 ], [ %23, %22 ]
  %11 = getelementptr inbounds %struct.PolyIndex, ptr %2, i64 %9, i32 3
  %12 = load i8, ptr %11, align 4, !tbaa !57
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %22, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.KDTreeNode2D, ptr %10, i64 0, i32 1
  store i32 -1, ptr %15, align 4, !tbaa !73
  store i32 -1, ptr %10, align 4, !tbaa !76
  %16 = getelementptr inbounds %struct.PolyIndex, ptr %2, i64 %9, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.KDTreeNode2D, ptr %10, i64 0, i32 2
  store i32 %17, ptr %18, align 4, !tbaa !77
  %19 = getelementptr inbounds %struct.KDTreeNode2D, ptr %10, i64 0, i32 3
  store i8 0, ptr %19, align 4, !tbaa !78
  %20 = getelementptr inbounds %struct.KDTreeNode2D, ptr %10, i64 0, i32 4
  store i16 0, ptr %20, align 2, !tbaa !79
  %21 = getelementptr inbounds %struct.KDTreeNode2D, ptr %10, i64 1
  br label %22

22:                                               ; preds = %8, %14
  %23 = phi ptr [ %21, %14 ], [ %10, %8 ]
  %24 = add nuw nsw i64 %9, 1
  %25 = icmp eq i64 %24, %7
  br i1 %25, label %26, label %8, !llvm.loop !80

26:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @kdtree2d_balance(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !81 {
  %2 = load ptr, ptr %0, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.KDTree2D, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !70
  %5 = getelementptr inbounds %struct.KDTree2D, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = tail call fastcc i32 @kdtree2d_balance_recursive(ptr noundef %2, i32 noundef %4, i8 noundef zeroext 0, ptr noundef %6, i32 noundef 0) #18
  %8 = getelementptr inbounds %struct.KDTree2D, ptr %0, i64 0, i32 2
  store i32 %7, ptr %8, align 8, !tbaa !69
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @kdtree2d_init_mapping(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !82 {
  %2 = load ptr, ptr %0, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.KDTree2D, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !70
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.KDTree2D, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !83
  br label %9

9:                                                ; preds = %6, %24
  %10 = phi ptr [ %2, %6 ], [ %30, %24 ]
  %11 = phi i32 [ 0, %6 ], [ %29, %24 ]
  %12 = load i32, ptr %10, align 4, !tbaa !76
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds %struct.KDTreeNode2D, ptr %2, i64 %15, i32 5
  store i32 %11, ptr %16, align 4, !tbaa !84
  br label %17

17:                                               ; preds = %14, %9
  %18 = getelementptr inbounds %struct.KDTreeNode2D, ptr %10, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !73
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds %struct.KDTreeNode2D, ptr %2, i64 %22, i32 5
  store i32 %11, ptr %23, align 4, !tbaa !84
  br label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.KDTreeNode2D, ptr %10, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !77
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %8, i64 %27
  store i32 %11, ptr %28, align 4, !tbaa !85
  %29 = add nuw i32 %11, 1
  %30 = getelementptr inbounds %struct.KDTreeNode2D, ptr %10, i64 1
  %31 = load i32, ptr %3, align 4, !tbaa !70
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %9, label %33, !llvm.loop !86

33:                                               ; preds = %24, %1
  %34 = getelementptr inbounds %struct.KDTree2D, ptr %0, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !69
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.KDTreeNode2D, ptr %2, i64 %36, i32 5
  store i32 -1, ptr %37, align 4, !tbaa !84
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pf_triangulate(ptr noundef %0) unnamed_addr #4 !PGOFuncName !87 {
  %2 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !47
  %4 = icmp ugt i32 %3, 3
  br i1 %4, label %5, label %56

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6
  br label %8

8:                                                ; preds = %5, %50
  %9 = phi ptr [ %0, %5 ], [ %53, %50 ]
  %10 = phi i8 [ 0, %5 ], [ %16, %50 ]
  %11 = load ptr, ptr %9, align 8, !tbaa !88
  %12 = tail call fastcc ptr @pf_ear_tip_find(ptr noundef nonnull %0, ptr noundef %11, i8 noundef zeroext %10) #18
  %13 = icmp eq ptr %12, %11
  %14 = icmp eq i8 %10, 0
  %15 = zext i1 %14 to i8
  %16 = select i1 %13, i8 %10, i8 %15
  %17 = getelementptr inbounds %struct.PolyIndex, ptr %12, i64 0, i32 3
  %18 = load i8, ptr %17, align 4, !tbaa !57
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %8
  %21 = load i32, ptr %6, align 4, !tbaa !34
  %22 = add i32 %21, -1
  store i32 %22, ptr %6, align 4, !tbaa !34
  br label %23

23:                                               ; preds = %20, %8
  %24 = getelementptr inbounds %struct.PolyIndex, ptr %12, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = load ptr, ptr %12, align 8, !tbaa !50
  tail call fastcc void @pf_ear_tip_cut(ptr noundef nonnull %0, ptr noundef nonnull %12) #18
  %27 = getelementptr inbounds %struct.PolyIndex, ptr %25, i64 0, i32 3
  %28 = load i8, ptr %27, align 4, !tbaa !57
  %29 = getelementptr inbounds %struct.PolyIndex, ptr %26, i64 0, i32 3
  %30 = load i8, ptr %29, align 4, !tbaa !57
  %31 = icmp eq i8 %28, 1
  br i1 %31, label %40, label %32

32:                                               ; preds = %23
  tail call fastcc void @pf_coord_sign_calc(ptr noundef nonnull %0, ptr noundef nonnull %25) #18
  %33 = load i8, ptr %27, align 4, !tbaa !57
  %34 = icmp eq i8 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, ptr %6, align 4, !tbaa !34
  %37 = add i32 %36, -1
  store i32 %37, ptr %6, align 4, !tbaa !34
  %38 = getelementptr inbounds %struct.PolyIndex, ptr %25, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !53
  tail call fastcc void @kdtree2d_node_remove(ptr noundef nonnull %7, i32 noundef %39) #18
  br label %40

40:                                               ; preds = %32, %35, %23
  %41 = icmp eq i8 %30, 1
  br i1 %41, label %50, label %42

42:                                               ; preds = %40
  tail call fastcc void @pf_coord_sign_calc(ptr noundef nonnull %0, ptr noundef nonnull %26) #18
  %43 = load i8, ptr %29, align 4, !tbaa !57
  %44 = icmp eq i8 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, ptr %6, align 4, !tbaa !34
  %47 = add i32 %46, -1
  store i32 %47, ptr %6, align 4, !tbaa !34
  %48 = getelementptr inbounds %struct.PolyIndex, ptr %26, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !53
  tail call fastcc void @kdtree2d_node_remove(ptr noundef nonnull %7, i32 noundef %49) #18
  br label %50

50:                                               ; preds = %42, %45, %40
  %51 = icmp eq i8 %16, 0
  %52 = getelementptr inbounds %struct.PolyIndex, ptr %25, i64 0, i32 1
  %53 = select i1 %51, ptr %26, ptr %52
  %54 = load i32, ptr %2, align 8, !tbaa !47
  %55 = icmp ugt i32 %54, 3
  br i1 %55, label %8, label %56, !llvm.loop !89

56:                                               ; preds = %50, %1
  %57 = phi i32 [ %3, %1 ], [ %54, %50 ]
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = tail call fastcc ptr @pf_tri_add(ptr noundef nonnull %0) #18
  %61 = load ptr, ptr %0, align 8, !tbaa !45
  %62 = getelementptr inbounds %struct.PolyIndex, ptr %61, i64 0, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !53
  store i32 %63, ptr %60, align 4, !tbaa !85
  %64 = load ptr, ptr %61, align 8, !tbaa !50
  %65 = getelementptr inbounds %struct.PolyIndex, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !53
  %67 = getelementptr inbounds i32, ptr %60, i64 1
  store i32 %66, ptr %67, align 4, !tbaa !85
  %68 = load ptr, ptr %64, align 8, !tbaa !50
  %69 = getelementptr inbounds %struct.PolyIndex, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !53
  %71 = getelementptr inbounds i32, ptr %60, i64 2
  store i32 %70, ptr %71, align 4, !tbaa !85
  br label %72

72:                                               ; preds = %59, %56
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @kdtree2d_balance_recursive(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) unnamed_addr #12 !PGOFuncName !90 {
  %6 = alloca %struct.KDTreeNode2D_head, align 4
  %7 = alloca %struct.KDTreeNode2D_head, align 4
  switch i32 %1, label %9 [
    i32 0, label %61
    i32 1, label %8
  ]

8:                                                ; preds = %5
  br label %61

9:                                                ; preds = %5
  %10 = add i32 %1, -1
  %11 = lshr i32 %1, 1
  %12 = zext nneg i8 %2 to i64
  br label %13

13:                                               ; preds = %9, %53
  %14 = phi i32 [ %10, %9 ], [ %56, %53 ]
  %15 = phi i32 [ 0, %9 ], [ %59, %53 ]
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %16, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !77
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [2 x float], ptr %3, i64 %19, i64 %12
  %21 = load float, ptr %20, align 4, !tbaa !65
  %22 = add i32 %15, -1
  br label %23

23:                                               ; preds = %51, %13
  %24 = phi i32 [ %22, %13 ], [ %28, %51 ]
  %25 = phi i32 [ %14, %13 ], [ %38, %51 ]
  br label %26

26:                                               ; preds = %26, %23
  %27 = phi i32 [ %24, %23 ], [ %28, %26 ]
  %28 = add i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %29, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !77
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [2 x float], ptr %3, i64 %32, i64 %12
  %34 = load float, ptr %33, align 4, !tbaa !65
  %35 = fcmp olt float %34, %21
  br i1 %35, label %26, label %36, !llvm.loop !91

36:                                               ; preds = %26, %36
  %37 = phi i32 [ %38, %36 ], [ %25, %26 ]
  %38 = add i32 %37, -1
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %39, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !77
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [2 x float], ptr %3, i64 %42, i64 %12
  %44 = load float, ptr %43, align 4, !tbaa !65
  %45 = fcmp ogt float %44, %21
  %46 = icmp ugt i32 %38, %15
  %47 = and i1 %46, %45
  br i1 %47, label %36, label %48, !llvm.loop !92

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %29
  %50 = icmp ult i32 %28, %38
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %39
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %49, i64 12, i1 false), !tbaa.struct !93
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %49, ptr noundef nonnull align 4 dereferenceable(12) %52, i64 12, i1 false), !tbaa.struct !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %52, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6)
  br label %23

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %49, i64 12, i1 false), !tbaa.struct !93
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %49, ptr noundef nonnull align 4 dereferenceable(12) %54, i64 12, i1 false), !tbaa.struct !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %54, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7)
  %55 = icmp ult i32 %28, %11
  %56 = select i1 %55, i32 %14, i32 %27
  %57 = icmp ugt i32 %28, %11
  %58 = add i32 %27, 2
  %59 = select i1 %57, i32 %15, i32 %58
  %60 = icmp ugt i32 %56, %59
  br i1 %60, label %13, label %63, !llvm.loop !94

61:                                               ; preds = %5, %8, %63
  %62 = phi i32 [ %77, %63 ], [ %4, %8 ], [ -1, %5 ]
  ret i32 %62

63:                                               ; preds = %53
  %64 = zext nneg i32 %11 to i64
  %65 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %64
  %66 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %64, i32 3
  store i8 %2, ptr %66, align 4, !tbaa !78
  %67 = icmp eq i8 %2, 0
  %68 = zext i1 %67 to i8
  %69 = tail call fastcc i32 @kdtree2d_balance_recursive(ptr noundef nonnull %0, i32 noundef %11, i8 noundef zeroext %68, ptr noundef nonnull %3, i32 noundef %4) #18
  store i32 %69, ptr %65, align 4, !tbaa !76
  %70 = add nuw i32 %11, 1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %71
  %73 = sub i32 %1, %70
  %74 = add i32 %70, %4
  %75 = tail call fastcc i32 @kdtree2d_balance_recursive(ptr noundef nonnull %72, i32 noundef %73, i8 noundef zeroext %68, ptr noundef nonnull %3, i32 noundef %74) #18
  %76 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %64, i32 1
  store i32 %75, ptr %76, align 4, !tbaa !73
  %77 = add i32 %11, %4
  br label %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @pf_ear_tip_find(ptr noundef %0, ptr noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #4 !PGOFuncName !95 {
  %4 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  br label %10

9:                                                ; preds = %15
  br i1 %6, label %31, label %21

10:                                               ; preds = %7, %15
  %11 = phi i32 [ %5, %7 ], [ %16, %15 ]
  %12 = phi ptr [ %1, %7 ], [ %19, %15 ]
  %13 = tail call fastcc zeroext i8 @pf_ear_tip_check(ptr noundef %0, ptr noundef %12) #18, !range !96
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = add i32 %11, -1
  %17 = getelementptr inbounds %struct.PolyIndex, ptr %12, i64 0, i32 1
  %18 = select i1 %8, ptr %12, ptr %17
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  %20 = icmp eq i32 %16, 0
  br i1 %20, label %9, label %10, !llvm.loop !97

21:                                               ; preds = %9, %27
  %22 = phi i32 [ %28, %27 ], [ %5, %9 ]
  %23 = phi ptr [ %29, %27 ], [ %1, %9 ]
  %24 = getelementptr inbounds %struct.PolyIndex, ptr %23, i64 0, i32 3
  %25 = load i8, ptr %24, align 4, !tbaa !57
  %26 = icmp eq i8 %25, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = add i32 %22, -1
  %29 = load ptr, ptr %23, align 8, !tbaa !50
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %21, !llvm.loop !98

31:                                               ; preds = %10, %21, %27, %3, %9
  %32 = phi ptr [ %1, %9 ], [ %1, %3 ], [ %23, %21 ], [ %29, %27 ], [ %12, %10 ]
  ret ptr %32
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pf_ear_tip_cut(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #11 !PGOFuncName !99 {
  %3 = tail call fastcc ptr @pf_tri_add(ptr noundef %0) #18
  %4 = getelementptr inbounds %struct.PolyIndex, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !53
  store i32 %7, ptr %3, align 4, !tbaa !85
  %8 = getelementptr inbounds %struct.PolyIndex, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds i32, ptr %3, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !85
  %11 = load ptr, ptr %1, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.PolyIndex, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !53
  %14 = getelementptr inbounds i32, ptr %3, i64 2
  store i32 %13, ptr %14, align 4, !tbaa !85
  tail call fastcc void @pf_coord_remove(ptr noundef %0, ptr noundef nonnull %1) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @kdtree2d_node_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !100 {
  %3 = getelementptr inbounds %struct.KDTree2D, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %45, label %9

9:                                                ; preds = %2
  store i32 -1, ptr %6, align 4, !tbaa !85
  %10 = load ptr, ptr %0, align 8, !tbaa !72
  %11 = zext i32 %7 to i64
  %12 = getelementptr inbounds %struct.KDTreeNode2D, ptr %10, i64 %11
  %13 = getelementptr inbounds %struct.KDTree2D, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !70
  %15 = add i32 %14, -1
  store i32 %15, ptr %13, align 4, !tbaa !70
  %16 = getelementptr inbounds %struct.KDTreeNode2D, ptr %10, i64 %11, i32 4
  %17 = load i16, ptr %16, align 2, !tbaa !79
  %18 = or i16 %17, 1
  store i16 %18, ptr %16, align 2, !tbaa !79
  %19 = load i32, ptr %12, align 4, !tbaa !76
  br label %20

20:                                               ; preds = %33, %9
  %21 = phi i32 [ %19, %9 ], [ %40, %33 ]
  %22 = phi ptr [ %12, %9 ], [ %35, %33 ]
  %23 = phi i32 [ %7, %9 ], [ %31, %33 ]
  %24 = icmp eq i32 %21, -1
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.KDTreeNode2D, ptr %22, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !73
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.KDTreeNode2D, ptr %22, i64 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !84
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds %struct.KDTreeNode2D, ptr %10, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !76
  %37 = icmp eq i32 %36, %23
  %38 = getelementptr inbounds %struct.KDTreeNode2D, ptr %10, i64 %34, i32 1
  %39 = select i1 %37, ptr %35, ptr %38
  %40 = select i1 %37, i32 -1, i32 %36
  store i32 -1, ptr %39, align 4, !tbaa !85
  %41 = getelementptr inbounds %struct.KDTreeNode2D, ptr %10, i64 %34, i32 4
  %42 = load i16, ptr %41, align 2, !tbaa !79
  %43 = and i16 %42, 1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %20

45:                                               ; preds = %33, %29, %20, %25, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @pf_tri_add(ptr nocapture noundef %0) unnamed_addr #14 !PGOFuncName !101 {
  %2 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !49
  %7 = zext i32 %5 to i64
  %8 = getelementptr inbounds [3 x i32], ptr %3, i64 %7
  ret ptr %8
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @pf_ear_tip_check(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !102 {
  %3 = alloca [3 x i32], align 4
  %4 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.PolyIndex, ptr %1, i64 0, i32 3
  %9 = load i8, ptr %8, align 4, !tbaa !57
  %10 = icmp eq i8 %9, -1
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  %12 = getelementptr inbounds %struct.PolyIndex, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !53
  store i32 %13, ptr %3, align 4, !tbaa !85
  %14 = getelementptr inbounds i32, ptr %3, i64 1
  %15 = load ptr, ptr %1, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.PolyIndex, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !53
  store i32 %17, ptr %14, align 4, !tbaa !85
  %18 = getelementptr inbounds i32, ptr %3, i64 2
  %19 = getelementptr inbounds %struct.PolyIndex, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = getelementptr inbounds %struct.PolyIndex, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !53
  store i32 %22, ptr %18, align 4, !tbaa !85
  %23 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6
  %24 = call fastcc zeroext i8 @kdtree2d_isect_tri(ptr noundef nonnull %23, ptr noundef nonnull %3) #18, !range !96
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  %25 = xor i8 %24, 1
  br label %26

26:                                               ; preds = %11, %7, %2
  %27 = phi i8 [ 1, %2 ], [ 0, %7 ], [ %25, %11 ]
  ret i8 %27
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @kdtree2d_isect_tri(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #4 !PGOFuncName !103 {
  %3 = alloca [3 x ptr], align 16
  %4 = alloca [2 x %struct.KDRange2D], align 16
  %5 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.kdtree2d_isect_tri.bounds, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.KDTree2D, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = getelementptr inbounds %struct.KDRange2D, ptr %4, i64 0, i32 1
  %9 = getelementptr inbounds [2 x %struct.KDRange2D], ptr %4, i64 0, i64 1
  %10 = getelementptr inbounds [2 x %struct.KDRange2D], ptr %4, i64 0, i64 1, i32 1
  br label %11

11:                                               ; preds = %2, %39
  %12 = phi i64 [ 0, %2 ], [ %41, %39 ]
  %13 = phi float [ 0x47EFFFFFE0000000, %2 ], [ %26, %39 ]
  %14 = phi float [ 0xC7EFFFFFE0000000, %2 ], [ %30, %39 ]
  %15 = phi float [ 0x47EFFFFFE0000000, %2 ], [ %36, %39 ]
  %16 = phi float [ 0xC7EFFFFFE0000000, %2 ], [ %40, %39 ]
  %17 = getelementptr inbounds i32, ptr %1, i64 %12
  %18 = load i32, ptr %17, align 4, !tbaa !85
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [2 x float], ptr %7, i64 %19
  %21 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 %12
  store ptr %20, ptr %21, align 8, !tbaa !88
  call fastcc void @add_v2_v2(ptr noundef nonnull %5, ptr noundef %20) #18
  %22 = load float, ptr %20, align 4, !tbaa !65
  %23 = fcmp ogt float %13, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  store float %22, ptr %4, align 16, !tbaa !104
  br label %25

25:                                               ; preds = %24, %11
  %26 = phi float [ %22, %24 ], [ %13, %11 ]
  %27 = fcmp olt float %14, %22
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store float %22, ptr %8, align 4, !tbaa !106
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi float [ %22, %28 ], [ %14, %25 ]
  %31 = getelementptr inbounds float, ptr %20, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !65
  %33 = fcmp ogt float %15, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store float %32, ptr %9, align 8, !tbaa !104
  br label %35

35:                                               ; preds = %34, %29
  %36 = phi float [ %32, %34 ], [ %15, %29 ]
  %37 = fcmp olt float %16, %32
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store float %32, ptr %10, align 4, !tbaa !106
  br label %39

39:                                               ; preds = %35, %38
  %40 = phi float [ %16, %35 ], [ %32, %38 ]
  %41 = add nuw nsw i64 %12, 1
  %42 = icmp eq i64 %41, 3
  br i1 %42, label %43, label %11, !llvm.loop !107

43:                                               ; preds = %39
  call fastcc void @mul_v2_fl(ptr noundef nonnull %5) #18
  %44 = load ptr, ptr %0, align 8, !tbaa !72
  %45 = getelementptr inbounds %struct.KDTree2D, ptr %0, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !69
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.KDTreeNode2D, ptr %44, i64 %47
  %49 = call fastcc zeroext i8 @kdtree2d_isect_tri_recursive(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %48) #18, !range !96
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret i8 %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !108 {
  %3 = load float, ptr %1, align 4, !tbaa !65
  %4 = load float, ptr %0, align 4, !tbaa !65
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !65
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !65
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0) unnamed_addr #14 !PGOFuncName !109 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !65
  %3 = fmul <2 x float> %2, <float 0x3FD5555560000000, float 0x3FD5555560000000>
  store <2 x float> %3, ptr %0, align 4, !tbaa !65
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @kdtree2d_isect_tri_recursive(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #15 !PGOFuncName !110 {
  %7 = getelementptr inbounds %struct.KDTree2D, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.KDTreeNode2D, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !77
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [2 x float], ptr %8, i64 %11
  %13 = getelementptr inbounds %struct.KDTreeNode2D, ptr %5, i64 0, i32 4
  %14 = load i16, ptr %13, align 2, !tbaa !79
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %6
  %18 = load float, ptr %12, align 4, !tbaa !65
  %19 = load float, ptr %4, align 4, !tbaa !104
  %20 = fcmp ult float %18, %19
  br i1 %20, label %60, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.KDRange2D, ptr %4, i64 0, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !106
  %24 = fcmp ugt float %18, %23
  br i1 %24, label %60, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds float, ptr %12, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !65
  %28 = getelementptr inbounds %struct.KDRange2D, ptr %4, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !104
  %30 = fcmp ult float %27, %29
  br i1 %30, label %60, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.KDRange2D, ptr %4, i64 1, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !106
  %34 = fcmp ugt float %27, %33
  br i1 %34, label %60, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %2, align 8, !tbaa !88
  %37 = getelementptr inbounds ptr, ptr %2, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !88
  %39 = tail call fastcc signext i8 @span_tri_v2_sign(ptr noundef %36, ptr noundef %38, ptr noundef nonnull %12) #18, !range !61
  %40 = icmp eq i8 %39, -1
  br i1 %40, label %60, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds ptr, ptr %2, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !88
  %44 = tail call fastcc signext i8 @span_tri_v2_sign(ptr noundef %38, ptr noundef %43, ptr noundef nonnull %12) #18, !range !61
  %45 = icmp eq i8 %44, -1
  br i1 %45, label %60, label %46

46:                                               ; preds = %41
  %47 = tail call fastcc signext i8 @span_tri_v2_sign(ptr noundef %43, ptr noundef %36, ptr noundef nonnull %12) #18, !range !61
  %48 = icmp eq i8 %47, -1
  br i1 %48, label %60, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %1, align 4, !tbaa !85
  %51 = icmp eq i32 %10, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds i32, ptr %1, i64 1
  %54 = load i32, ptr %53, align 4, !tbaa !85
  %55 = icmp eq i32 %10, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds i32, ptr %1, i64 2
  %58 = load i32, ptr %57, align 4, !tbaa !85
  %59 = icmp eq i32 %10, %58
  br i1 %59, label %60, label %124

60:                                               ; preds = %17, %21, %25, %31, %49, %52, %56, %46, %41, %35, %6
  %61 = getelementptr inbounds %struct.KDTreeNode2D, ptr %5, i64 0, i32 3
  %62 = load i8, ptr %61, align 4, !tbaa !78
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds float, ptr %3, i64 %63
  %65 = load float, ptr %64, align 4, !tbaa !65
  %66 = getelementptr inbounds float, ptr %12, i64 %63
  %67 = load float, ptr %66, align 4, !tbaa !65
  %68 = fcmp ogt float %65, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.KDTreeNode2D, ptr %5, i64 0, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !73
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %83, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.KDRange2D, ptr %4, i64 %63, i32 1
  %75 = load float, ptr %74, align 4, !tbaa !106
  %76 = fcmp olt float %67, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load ptr, ptr %0, align 8, !tbaa !72
  %79 = zext i32 %71 to i64
  %80 = getelementptr inbounds %struct.KDTreeNode2D, ptr %78, i64 %79
  %81 = tail call fastcc zeroext i8 @kdtree2d_isect_tri_recursive(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %80) #18, !range !96
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %124

83:                                               ; preds = %77, %73, %69
  %84 = load i32, ptr %5, align 4, !tbaa !76
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %123, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.KDRange2D, ptr %4, i64 %63
  %88 = load float, ptr %87, align 4, !tbaa !104
  %89 = fcmp ogt float %67, %88
  br i1 %89, label %90, label %123

90:                                               ; preds = %86
  %91 = load ptr, ptr %0, align 8, !tbaa !72
  %92 = zext i32 %84 to i64
  %93 = getelementptr inbounds %struct.KDTreeNode2D, ptr %91, i64 %92
  %94 = tail call fastcc zeroext i8 @kdtree2d_isect_tri_recursive(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %93) #18, !range !96
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %123, label %124

96:                                               ; preds = %60
  %97 = load i32, ptr %5, align 4, !tbaa !76
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %109, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.KDRange2D, ptr %4, i64 %63
  %101 = load float, ptr %100, align 4, !tbaa !104
  %102 = fcmp ogt float %67, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load ptr, ptr %0, align 8, !tbaa !72
  %105 = zext i32 %97 to i64
  %106 = getelementptr inbounds %struct.KDTreeNode2D, ptr %104, i64 %105
  %107 = tail call fastcc zeroext i8 @kdtree2d_isect_tri_recursive(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %106) #18, !range !96
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %103, %99, %96
  %110 = getelementptr inbounds %struct.KDTreeNode2D, ptr %5, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !73
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %123, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.KDRange2D, ptr %4, i64 %63, i32 1
  %115 = load float, ptr %114, align 4, !tbaa !106
  %116 = fcmp olt float %67, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load ptr, ptr %0, align 8, !tbaa !72
  %119 = zext i32 %111 to i64
  %120 = getelementptr inbounds %struct.KDTreeNode2D, ptr %118, i64 %119
  %121 = tail call fastcc zeroext i8 @kdtree2d_isect_tri_recursive(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %120) #18, !range !96
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %109, %113, %117, %83, %86, %90
  br label %124

124:                                              ; preds = %117, %103, %90, %77, %56, %123
  %125 = phi i8 [ 0, %123 ], [ 1, %56 ], [ 1, %77 ], [ 1, %90 ], [ 1, %103 ], [ 1, %117 ]
  ret i8 %125
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pf_coord_remove(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #11 !PGOFuncName !111 {
  %3 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6
  %8 = getelementptr inbounds %struct.PolyIndex, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !53
  tail call fastcc void @kdtree2d_node_remove(ptr noundef nonnull %7, i32 noundef %9) #18
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.PolyIndex, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = load ptr, ptr %1, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.PolyIndex, ptr %13, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !52
  store ptr %13, ptr %12, align 8, !tbaa !50
  %15 = load ptr, ptr %0, align 8, !tbaa !45
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store ptr %13, ptr %0, align 8, !tbaa !45
  br label %18

18:                                               ; preds = %17, %10
  %19 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !47
  %21 = add i32 %20, -1
  store i32 %21, ptr %19, align 8, !tbaa !47
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }

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
!34 = !{!35, !39, i64 20}
!35 = !{!"PolyFill", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !36, i64 24, !39, i64 32, !40, i64 40}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"KDTree2D", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !36, i64 24}
!41 = !{!35, !36, i64 40}
!42 = !{!35, !36, i64 64}
!43 = !{!35, !39, i64 60}
!44 = !{!"polyfill2d.c:polyfill_prepare"}
!45 = !{!35, !36, i64 0}
!46 = !{!35, !36, i64 8}
!47 = !{!35, !39, i64 16}
!48 = !{!35, !36, i64 24}
!49 = !{!35, !39, i64 32}
!50 = !{!51, !36, i64 0}
!51 = !{!"PolyIndex", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 20}
!52 = !{!51, !36, i64 8}
!53 = !{!51, !39, i64 16}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = distinct !{!56, !55}
!57 = !{!51, !37, i64 20}
!58 = distinct !{!58, !55}
!59 = !{!"polyfill2d.c:polyfill_calc"}
!60 = !{!"polyfill2d.c:pf_coord_sign_calc"}
!61 = !{i8 -1, i8 2}
!62 = !{!"polyfill2d.c:span_tri_v2_sign"}
!63 = !{!"polyfill2d.c:signum_i"}
!64 = !{!"polyfill2d.c:area_tri_signed_v2_alt_2x"}
!65 = !{!66, !66, i64 0}
!66 = !{!"float", !37, i64 0}
!67 = !{!"polyfill2d.c:kdtree2d_new"}
!68 = !{!40, !36, i64 8}
!69 = !{!40, !39, i64 16}
!70 = !{!40, !39, i64 20}
!71 = !{!"polyfill2d.c:kdtree2d_init"}
!72 = !{!40, !36, i64 0}
!73 = !{!74, !39, i64 4}
!74 = !{!"KDTreeNode2D", !39, i64 0, !39, i64 4, !39, i64 8, !37, i64 12, !75, i64 14, !39, i64 16}
!75 = !{!"short", !37, i64 0}
!76 = !{!74, !39, i64 0}
!77 = !{!74, !39, i64 8}
!78 = !{!74, !37, i64 12}
!79 = !{!74, !75, i64 14}
!80 = distinct !{!80, !55}
!81 = !{!"polyfill2d.c:kdtree2d_balance"}
!82 = !{!"polyfill2d.c:kdtree2d_init_mapping"}
!83 = !{!40, !36, i64 24}
!84 = !{!74, !39, i64 16}
!85 = !{!39, !39, i64 0}
!86 = distinct !{!86, !55}
!87 = !{!"polyfill2d.c:pf_triangulate"}
!88 = !{!36, !36, i64 0}
!89 = distinct !{!89, !55}
!90 = !{!"polyfill2d.c:kdtree2d_balance_recursive"}
!91 = distinct !{!91, !55}
!92 = distinct !{!92, !55}
!93 = !{i64 0, i64 4, !85, i64 4, i64 4, !85, i64 8, i64 4, !85}
!94 = distinct !{!94, !55}
!95 = !{!"polyfill2d.c:pf_ear_tip_find"}
!96 = !{i8 0, i8 2}
!97 = distinct !{!97, !55}
!98 = distinct !{!98, !55}
!99 = !{!"polyfill2d.c:pf_ear_tip_cut"}
!100 = !{!"polyfill2d.c:kdtree2d_node_remove"}
!101 = !{!"polyfill2d.c:pf_tri_add"}
!102 = !{!"polyfill2d.c:pf_ear_tip_check"}
!103 = !{!"polyfill2d.c:kdtree2d_isect_tri"}
!104 = !{!105, !66, i64 0}
!105 = !{!"KDRange2D", !66, i64 0, !66, i64 4}
!106 = !{!105, !66, i64 4}
!107 = distinct !{!107, !55}
!108 = !{!"polyfill2d.c:add_v2_v2"}
!109 = !{!"polyfill2d.c:mul_v2_fl"}
!110 = !{!"polyfill2d.c:kdtree2d_isect_tri_recursive"}
!111 = !{!"polyfill2d.c:pf_coord_remove"}
