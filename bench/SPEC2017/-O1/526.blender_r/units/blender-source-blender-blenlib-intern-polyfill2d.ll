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

; Function Attrs: nounwind uwtable
define dso_local void @BLI_polyfill_calc_arena(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.PolyFill, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #9
  %7 = zext i32 %1 to i64
  %8 = mul nuw nsw i64 %7, 24
  %9 = tail call ptr @BLI_memarena_alloc(ptr noundef %4, i64 noundef %8) #9
  call fastcc void @polyfill_prepare(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %9)
  %10 = getelementptr inbounds %struct.PolyFill, ptr %6, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %5
  %14 = zext i32 %11 to i64
  %15 = mul nuw nsw i64 %14, 20
  %16 = tail call ptr @BLI_memarena_alloc(ptr noundef %4, i64 noundef %15) #9
  %17 = getelementptr inbounds %struct.PolyFill, ptr %6, i64 0, i32 6
  store ptr %16, ptr %17, align 8, !tbaa !41
  %18 = shl nuw nsw i64 %7, 2
  %19 = tail call ptr @BLI_memarena_alloc(ptr noundef %4, i64 noundef %18) #9
  tail call void @llvm.memset.p0.i64(ptr align 1 %19, i8 -1, i64 %18, i1 false)
  %20 = getelementptr inbounds %struct.PolyFill, ptr %6, i64 0, i32 6, i32 4
  store ptr %19, ptr %20, align 8, !tbaa !42
  br label %23

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.PolyFill, ptr %6, i64 0, i32 6, i32 3
  store i32 0, ptr %22, align 4, !tbaa !43
  br label %23

23:                                               ; preds = %21, %13
  call fastcc void @polyfill_calc(ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @polyfill_prepare(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  store ptr %5, ptr %0, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 2
  store i32 %2, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 3
  store i32 0, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 4
  store ptr %4, ptr %10, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !48
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = tail call float @cross_poly_v2(ptr noundef %1, i32 noundef %2) #9
  %15 = fcmp oge float %14, 0.000000e+00
  %16 = select i1 %15, i32 1, i32 -1
  br label %17

17:                                               ; preds = %6, %13
  %18 = phi i32 [ %16, %13 ], [ %3, %6 ]
  %19 = icmp eq i32 %18, 1
  %20 = icmp eq i32 %2, 0
  br i1 %19, label %24, label %21

21:                                               ; preds = %17
  br i1 %20, label %53, label %22

22:                                               ; preds = %21
  %23 = zext i32 %2 to i64
  br label %39

24:                                               ; preds = %17
  br i1 %20, label %53, label %25

25:                                               ; preds = %24
  %26 = zext i32 %2 to i64
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i64 [ 0, %25 ], [ %29, %27 ]
  %29 = add nuw nsw i64 %28, 1
  %30 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %29
  %31 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %28
  store ptr %30, ptr %31, align 8, !tbaa !49
  %32 = add nuw i64 %28, 4294967295
  %33 = and i64 %32, 4294967295
  %34 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %33
  %35 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %28, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !51
  %36 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %28, i32 2
  %37 = trunc i64 %28 to i32
  store i32 %37, ptr %36, align 8, !tbaa !52
  %38 = icmp eq i64 %29, %26
  br i1 %38, label %53, label %27, !llvm.loop !53

39:                                               ; preds = %22, %39
  %40 = phi i64 [ 0, %22 ], [ %41, %39 ]
  %41 = add nuw nsw i64 %40, 1
  %42 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %41
  %43 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %40
  store ptr %42, ptr %43, align 8, !tbaa !49
  %44 = add nuw i64 %40, 4294967295
  %45 = and i64 %44, 4294967295
  %46 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %45
  %47 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %40, i32 1
  store ptr %46, ptr %47, align 8, !tbaa !51
  %48 = trunc i64 %40 to i32
  %49 = xor i32 %48, -1
  %50 = add i32 %49, %2
  %51 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %40, i32 2
  store i32 %50, ptr %51, align 8, !tbaa !52
  %52 = icmp eq i64 %41, %23
  br i1 %52, label %53, label %39, !llvm.loop !56

53:                                               ; preds = %39, %27, %21, %24
  %54 = add i32 %2, -1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %55
  %57 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 0, i32 1
  store ptr %56, ptr %57, align 8, !tbaa !51
  store ptr %5, ptr %56, align 8, !tbaa !49
  %58 = icmp eq i32 %2, 0
  br i1 %58, label %106, label %59

59:                                               ; preds = %53
  %60 = load ptr, ptr %7, align 8, !tbaa !45
  %61 = zext i32 %2 to i64
  br label %62

62:                                               ; preds = %59, %103
  %63 = phi i64 [ 0, %59 ], [ %104, %103 ]
  %64 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %63
  %65 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %63, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !51
  %67 = getelementptr inbounds %struct.PolyIndex, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !52
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [2 x float], ptr %60, i64 %69
  %71 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %63, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !52
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [2 x float], ptr %60, i64 %73
  %75 = load ptr, ptr %64, align 8, !tbaa !49
  %76 = getelementptr inbounds %struct.PolyIndex, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !52
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [2 x float], ptr %60, i64 %78
  %80 = load float, ptr %79, align 4, !tbaa !57
  %81 = getelementptr inbounds float, ptr %74, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !57
  %83 = getelementptr inbounds float, ptr %70, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !57
  %85 = fsub float %82, %84
  %86 = load float, ptr %74, align 4, !tbaa !57
  %87 = getelementptr inbounds float, ptr %79, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !57
  %89 = fsub float %84, %88
  %90 = fmul float %86, %89
  %91 = tail call float @llvm.fmuladd.f32(float %80, float %85, float %90)
  %92 = load float, ptr %70, align 4, !tbaa !57
  %93 = fsub float %88, %82
  %94 = tail call float @llvm.fmuladd.f32(float %92, float %93, float %91)
  %95 = fcmp une float %94, 0.000000e+00
  %96 = fcmp ogt float %94, 0.000000e+00
  %97 = select i1 %96, i8 1, i8 -1
  %98 = select i1 %95, i8 %97, i8 0
  %99 = getelementptr inbounds %struct.PolyIndex, ptr %5, i64 %63, i32 3
  store i8 %98, ptr %99, align 4, !tbaa !59
  br i1 %96, label %103, label %100

100:                                              ; preds = %62
  %101 = load i32, ptr %9, align 4, !tbaa !34
  %102 = add i32 %101, 1
  store i32 %102, ptr %9, align 4, !tbaa !34
  br label %103

103:                                              ; preds = %100, %62
  %104 = add nuw nsw i64 %63, 1
  %105 = icmp eq i64 %104, %61
  br i1 %105, label %106, label %62, !llvm.loop !60

106:                                              ; preds = %103, %53
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @polyfill_calc(ptr noundef %0) unnamed_addr #4 {
  %2 = alloca [3 x ptr], align 16
  %3 = alloca [2 x %struct.KDRange2D], align 16
  %4 = alloca [2 x float], align 8
  %5 = alloca [3 x i32], align 4
  %6 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %77, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !61
  %14 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6, i32 2
  store i32 -1, ptr %14, align 8, !tbaa !62
  %15 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6, i32 3
  store i32 %7, ptr %15, align 4, !tbaa !63
  %16 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !46
  %18 = load ptr, ptr %0, align 8, !tbaa !44
  %19 = load ptr, ptr %10, align 8, !tbaa !64
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %9
  %22 = zext i32 %17 to i64
  br label %23

23:                                               ; preds = %21, %37
  %24 = phi i64 [ 0, %21 ], [ %39, %37 ]
  %25 = phi ptr [ %19, %21 ], [ %38, %37 ]
  %26 = getelementptr inbounds %struct.PolyIndex, ptr %18, i64 %24, i32 3
  %27 = load i8, ptr %26, align 4, !tbaa !59
  %28 = icmp eq i8 %27, 1
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.KDTreeNode2D, ptr %25, i64 0, i32 1
  store i32 -1, ptr %30, align 4, !tbaa !65
  store i32 -1, ptr %25, align 4, !tbaa !68
  %31 = getelementptr inbounds %struct.PolyIndex, ptr %18, i64 %24, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !52
  %33 = getelementptr inbounds %struct.KDTreeNode2D, ptr %25, i64 0, i32 2
  store i32 %32, ptr %33, align 4, !tbaa !69
  %34 = getelementptr inbounds %struct.KDTreeNode2D, ptr %25, i64 0, i32 3
  store i8 0, ptr %34, align 4, !tbaa !70
  %35 = getelementptr inbounds %struct.KDTreeNode2D, ptr %25, i64 0, i32 4
  store i16 0, ptr %35, align 2, !tbaa !71
  %36 = getelementptr inbounds %struct.KDTreeNode2D, ptr %25, i64 1
  br label %37

37:                                               ; preds = %29, %23
  %38 = phi ptr [ %36, %29 ], [ %25, %23 ]
  %39 = add nuw nsw i64 %24, 1
  %40 = icmp eq i64 %39, %22
  br i1 %40, label %41, label %23, !llvm.loop !72

41:                                               ; preds = %37, %9
  %42 = tail call fastcc i32 @kdtree2d_balance_recursive(ptr noundef %19, i32 noundef %7, i8 noundef zeroext 0, ptr noundef %12, i32 noundef 0)
  store i32 %42, ptr %14, align 8, !tbaa !62
  %43 = load ptr, ptr %10, align 8, !tbaa !64
  %44 = load i32, ptr %15, align 4, !tbaa !63
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %73, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !73
  br label %49

49:                                               ; preds = %46, %64
  %50 = phi ptr [ %43, %46 ], [ %70, %64 ]
  %51 = phi i32 [ 0, %46 ], [ %69, %64 ]
  %52 = load i32, ptr %50, align 4, !tbaa !68
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = zext i32 %52 to i64
  %56 = getelementptr inbounds %struct.KDTreeNode2D, ptr %43, i64 %55, i32 5
  store i32 %51, ptr %56, align 4, !tbaa !74
  br label %57

57:                                               ; preds = %54, %49
  %58 = getelementptr inbounds %struct.KDTreeNode2D, ptr %50, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !65
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = zext i32 %59 to i64
  %63 = getelementptr inbounds %struct.KDTreeNode2D, ptr %43, i64 %62, i32 5
  store i32 %51, ptr %63, align 4, !tbaa !74
  br label %64

64:                                               ; preds = %61, %57
  %65 = getelementptr inbounds %struct.KDTreeNode2D, ptr %50, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !69
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %48, i64 %67
  store i32 %51, ptr %68, align 4, !tbaa !75
  %69 = add nuw i32 %51, 1
  %70 = getelementptr inbounds %struct.KDTreeNode2D, ptr %50, i64 1
  %71 = load i32, ptr %15, align 4, !tbaa !63
  %72 = icmp ult i32 %69, %71
  br i1 %72, label %49, label %73, !llvm.loop !76

73:                                               ; preds = %64, %41
  %74 = load i32, ptr %14, align 8, !tbaa !62
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.KDTreeNode2D, ptr %43, i64 %75, i32 5
  store i32 -1, ptr %76, align 4, !tbaa !74
  br label %77

77:                                               ; preds = %73, %1
  %78 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !46
  %80 = icmp ugt i32 %79, 3
  br i1 %80, label %81, label %454

81:                                               ; preds = %77
  %82 = getelementptr inbounds i32, ptr %5, i64 1
  %83 = getelementptr inbounds i32, ptr %5, i64 2
  %84 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6
  %85 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6, i32 1
  %86 = getelementptr inbounds float, ptr %4, i64 1
  %87 = getelementptr inbounds %struct.KDRange2D, ptr %3, i64 0, i32 1
  %88 = getelementptr inbounds [2 x %struct.KDRange2D], ptr %3, i64 0, i64 1
  %89 = getelementptr inbounds [2 x %struct.KDRange2D], ptr %3, i64 0, i64 1, i32 1
  %90 = getelementptr inbounds float, ptr %4, i64 1
  %91 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6, i32 2
  %92 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 4
  %93 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 5
  %94 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6, i32 3
  %95 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6, i32 4
  %96 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6
  %97 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6, i32 3
  %98 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 1
  %99 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6, i32 4
  %100 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6
  %101 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6, i32 3
  %102 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 1
  %103 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6, i32 4
  %104 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6
  %105 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 6, i32 3
  br label %106

106:                                              ; preds = %81, %448
  %107 = phi i32 [ %79, %81 ], [ %452, %448 ]
  %108 = phi ptr [ %0, %81 ], [ %451, %448 ]
  %109 = phi i8 [ 0, %81 ], [ %212, %448 ]
  %110 = load ptr, ptr %108, align 8, !tbaa !77
  %111 = load i32, ptr %6, align 4, !tbaa !34
  %112 = icmp eq i32 %111, 0
  %113 = icmp eq i8 %109, 0
  br label %114

114:                                              ; preds = %106, %192
  %115 = phi i32 [ %107, %106 ], [ %117, %192 ]
  %116 = phi ptr [ %110, %106 ], [ %195, %192 ]
  %117 = add i32 %115, -1
  br i1 %112, label %189, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.PolyIndex, ptr %116, i64 0, i32 3
  %120 = load i8, ptr %119, align 4, !tbaa !59
  %121 = icmp eq i8 %120, -1
  br i1 %121, label %189, label %122

122:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %123 = getelementptr inbounds %struct.PolyIndex, ptr %116, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !52
  store i32 %124, ptr %5, align 4, !tbaa !75
  %125 = load ptr, ptr %116, align 8, !tbaa !49
  %126 = getelementptr inbounds %struct.PolyIndex, ptr %125, i64 0, i32 2
  %127 = load i32, ptr %126, align 8, !tbaa !52
  store i32 %127, ptr %82, align 4, !tbaa !75
  %128 = getelementptr inbounds %struct.PolyIndex, ptr %116, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !51
  %130 = getelementptr inbounds %struct.PolyIndex, ptr %129, i64 0, i32 2
  %131 = load i32, ptr %130, align 8, !tbaa !52
  store i32 %131, ptr %83, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @__const.kdtree2d_isect_tri.bounds, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8
  %132 = load ptr, ptr %85, align 8, !tbaa !61
  %133 = load float, ptr %86, align 4, !tbaa !57
  %134 = load float, ptr %3, align 16, !tbaa !78
  %135 = load float, ptr %87, align 4, !tbaa !80
  %136 = load float, ptr %88, align 8, !tbaa !78
  %137 = load float, ptr %89, align 4, !tbaa !80
  br label %138

138:                                              ; preds = %122, %174
  %139 = phi i64 [ 0, %122 ], [ %176, %174 ]
  %140 = phi float [ 0.000000e+00, %122 ], [ %152, %174 ]
  %141 = phi float [ %133, %122 ], [ %155, %174 ]
  %142 = phi float [ %134, %122 ], [ %160, %174 ]
  %143 = phi float [ %135, %122 ], [ %165, %174 ]
  %144 = phi float [ %136, %122 ], [ %170, %174 ]
  %145 = phi float [ %137, %122 ], [ %175, %174 ]
  %146 = getelementptr inbounds i32, ptr %5, i64 %139
  %147 = load i32, ptr %146, align 4, !tbaa !75
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [2 x float], ptr %132, i64 %148
  %150 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 %139
  store ptr %149, ptr %150, align 8, !tbaa !77
  %151 = load float, ptr %149, align 4, !tbaa !57
  %152 = fadd float %151, %140
  store float %152, ptr %4, align 8, !tbaa !57
  %153 = getelementptr inbounds float, ptr %149, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !57
  %155 = fadd float %154, %141
  store float %155, ptr %86, align 4, !tbaa !57
  %156 = load float, ptr %149, align 4, !tbaa !57
  %157 = fcmp ogt float %142, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %138
  store float %156, ptr %3, align 16, !tbaa !78
  br label %159

159:                                              ; preds = %158, %138
  %160 = phi float [ %156, %158 ], [ %142, %138 ]
  %161 = load float, ptr %149, align 4, !tbaa !57
  %162 = fcmp olt float %143, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store float %161, ptr %87, align 4, !tbaa !80
  br label %164

164:                                              ; preds = %163, %159
  %165 = phi float [ %161, %163 ], [ %143, %159 ]
  %166 = load float, ptr %153, align 4, !tbaa !57
  %167 = fcmp ogt float %144, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  store float %166, ptr %88, align 8, !tbaa !78
  br label %169

169:                                              ; preds = %168, %164
  %170 = phi float [ %166, %168 ], [ %144, %164 ]
  %171 = load float, ptr %153, align 4, !tbaa !57
  %172 = fcmp olt float %145, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store float %171, ptr %89, align 4, !tbaa !80
  br label %174

174:                                              ; preds = %173, %169
  %175 = phi float [ %171, %173 ], [ %145, %169 ]
  %176 = add nuw nsw i64 %139, 1
  %177 = icmp eq i64 %176, 3
  br i1 %177, label %178, label %138, !llvm.loop !81

178:                                              ; preds = %174
  %179 = load float, ptr %4, align 8, !tbaa !57
  %180 = fmul float %179, 0x3FD5555560000000
  store float %180, ptr %4, align 8, !tbaa !57
  %181 = load float, ptr %90, align 4, !tbaa !57
  %182 = fmul float %181, 0x3FD5555560000000
  store float %182, ptr %90, align 4, !tbaa !57
  %183 = load ptr, ptr %84, align 8, !tbaa !64
  %184 = load i32, ptr %91, align 8, !tbaa !62
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.KDTreeNode2D, ptr %183, i64 %185
  %187 = call fastcc zeroext i8 @kdtree2d_isect_tri_recursive(ptr noundef nonnull %84, ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %186), !range !82
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  %188 = xor i8 %187, 1
  br label %189

189:                                              ; preds = %178, %118, %114
  %190 = phi i8 [ 1, %114 ], [ 0, %118 ], [ %188, %178 ]
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %207

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.PolyIndex, ptr %116, i64 0, i32 1
  %194 = select i1 %113, ptr %116, ptr %193
  %195 = load ptr, ptr %194, align 8, !tbaa !77
  %196 = icmp eq i32 %117, 0
  br i1 %196, label %197, label %114, !llvm.loop !83

197:                                              ; preds = %192, %203
  %198 = phi i32 [ %204, %203 ], [ %107, %192 ]
  %199 = phi ptr [ %205, %203 ], [ %110, %192 ]
  %200 = getelementptr inbounds %struct.PolyIndex, ptr %199, i64 0, i32 3
  %201 = load i8, ptr %200, align 4, !tbaa !59
  %202 = icmp eq i8 %201, -1
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = add i32 %198, -1
  %205 = load ptr, ptr %199, align 8, !tbaa !49
  %206 = icmp eq i32 %204, 0
  br i1 %206, label %207, label %197, !llvm.loop !84

207:                                              ; preds = %189, %197, %203
  %208 = phi ptr [ %199, %197 ], [ %205, %203 ], [ %116, %189 ]
  %209 = icmp eq ptr %208, %110
  %210 = icmp eq i8 %109, 0
  %211 = zext i1 %210 to i8
  %212 = select i1 %209, i8 %109, i8 %211
  %213 = getelementptr inbounds %struct.PolyIndex, ptr %208, i64 0, i32 3
  %214 = load i8, ptr %213, align 4, !tbaa !59
  %215 = icmp eq i8 %214, 1
  br i1 %215, label %219, label %216

216:                                              ; preds = %207
  %217 = load i32, ptr %6, align 4, !tbaa !34
  %218 = add i32 %217, -1
  store i32 %218, ptr %6, align 4, !tbaa !34
  br label %219

219:                                              ; preds = %216, %207
  %220 = getelementptr inbounds %struct.PolyIndex, ptr %208, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !51
  %222 = load ptr, ptr %208, align 8, !tbaa !49
  %223 = load ptr, ptr %92, align 8, !tbaa !47
  %224 = load i32, ptr %93, align 8, !tbaa !48
  %225 = add i32 %224, 1
  store i32 %225, ptr %93, align 8, !tbaa !48
  %226 = zext i32 %224 to i64
  %227 = getelementptr inbounds [3 x i32], ptr %223, i64 %226
  %228 = getelementptr inbounds %struct.PolyIndex, ptr %221, i64 0, i32 2
  %229 = load i32, ptr %228, align 8, !tbaa !52
  store i32 %229, ptr %227, align 4, !tbaa !75
  %230 = getelementptr inbounds %struct.PolyIndex, ptr %208, i64 0, i32 2
  %231 = load i32, ptr %230, align 8, !tbaa !52
  %232 = getelementptr inbounds i32, ptr %227, i64 1
  store i32 %231, ptr %232, align 4, !tbaa !75
  %233 = getelementptr inbounds %struct.PolyIndex, ptr %222, i64 0, i32 2
  %234 = load i32, ptr %233, align 8, !tbaa !52
  %235 = getelementptr inbounds i32, ptr %227, i64 2
  store i32 %234, ptr %235, align 4, !tbaa !75
  %236 = load i32, ptr %94, align 4, !tbaa !43
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %280, label %238

238:                                              ; preds = %219
  %239 = load i32, ptr %230, align 8, !tbaa !52
  %240 = load ptr, ptr %95, align 8, !tbaa !73
  %241 = zext i32 %239 to i64
  %242 = getelementptr inbounds i32, ptr %240, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !75
  %244 = icmp eq i32 %243, -1
  br i1 %244, label %280, label %245

245:                                              ; preds = %238
  store i32 -1, ptr %242, align 4, !tbaa !75
  %246 = load ptr, ptr %96, align 8, !tbaa !64
  %247 = zext i32 %243 to i64
  %248 = getelementptr inbounds %struct.KDTreeNode2D, ptr %246, i64 %247
  %249 = load i32, ptr %97, align 4, !tbaa !63
  %250 = add i32 %249, -1
  store i32 %250, ptr %97, align 4, !tbaa !63
  %251 = getelementptr inbounds %struct.KDTreeNode2D, ptr %246, i64 %247, i32 4
  %252 = load i16, ptr %251, align 2, !tbaa !71
  %253 = or i16 %252, 1
  store i16 %253, ptr %251, align 2, !tbaa !71
  br label %254

254:                                              ; preds = %267, %245
  %255 = phi ptr [ %248, %245 ], [ %278, %267 ]
  %256 = phi i32 [ %243, %245 ], [ %279, %267 ]
  %257 = load i32, ptr %255, align 4, !tbaa !68
  %258 = icmp eq i32 %257, -1
  br i1 %258, label %259, label %280

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.KDTreeNode2D, ptr %255, i64 0, i32 1
  %261 = load i32, ptr %260, align 4, !tbaa !65
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %280

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.KDTreeNode2D, ptr %255, i64 0, i32 5
  %265 = load i32, ptr %264, align 4, !tbaa !74
  %266 = icmp eq i32 %265, -1
  br i1 %266, label %280, label %267

267:                                              ; preds = %263
  %268 = zext i32 %265 to i64
  %269 = getelementptr inbounds %struct.KDTreeNode2D, ptr %246, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !68
  %271 = icmp eq i32 %270, %256
  %272 = getelementptr inbounds %struct.KDTreeNode2D, ptr %246, i64 %268, i32 1
  %273 = select i1 %271, ptr %269, ptr %272
  store i32 -1, ptr %273, align 4, !tbaa !75
  %274 = getelementptr inbounds %struct.KDTreeNode2D, ptr %246, i64 %268, i32 4
  %275 = load i16, ptr %274, align 2, !tbaa !71
  %276 = and i16 %275, 1
  %277 = icmp eq i16 %276, 0
  %278 = select i1 %277, ptr %255, ptr %269
  %279 = select i1 %277, i32 %256, i32 %265
  br i1 %277, label %280, label %254

280:                                              ; preds = %267, %263, %259, %254, %238, %219
  %281 = getelementptr inbounds %struct.PolyIndex, ptr %222, i64 0, i32 1
  store ptr %221, ptr %281, align 8, !tbaa !51
  %282 = load ptr, ptr %220, align 8, !tbaa !51
  store ptr %222, ptr %282, align 8, !tbaa !49
  %283 = load ptr, ptr %0, align 8, !tbaa !44
  %284 = icmp eq ptr %283, %208
  br i1 %284, label %285, label %287

285:                                              ; preds = %280
  %286 = load ptr, ptr %208, align 8, !tbaa !49
  store ptr %286, ptr %0, align 8, !tbaa !44
  br label %287

287:                                              ; preds = %285, %280
  %288 = load i32, ptr %78, align 8, !tbaa !46
  %289 = add i32 %288, -1
  store i32 %289, ptr %78, align 8, !tbaa !46
  %290 = getelementptr inbounds %struct.PolyIndex, ptr %221, i64 0, i32 3
  %291 = load i8, ptr %290, align 4, !tbaa !59
  %292 = getelementptr inbounds %struct.PolyIndex, ptr %222, i64 0, i32 3
  %293 = load i8, ptr %292, align 4, !tbaa !59
  %294 = icmp eq i8 %291, 1
  br i1 %294, label %372, label %295

295:                                              ; preds = %287
  %296 = load ptr, ptr %98, align 8, !tbaa !45
  %297 = getelementptr inbounds %struct.PolyIndex, ptr %221, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !51
  %299 = getelementptr inbounds %struct.PolyIndex, ptr %298, i64 0, i32 2
  %300 = load i32, ptr %299, align 8, !tbaa !52
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds [2 x float], ptr %296, i64 %301
  %303 = load i32, ptr %228, align 8, !tbaa !52
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds [2 x float], ptr %296, i64 %304
  %306 = load ptr, ptr %221, align 8, !tbaa !49
  %307 = getelementptr inbounds %struct.PolyIndex, ptr %306, i64 0, i32 2
  %308 = load i32, ptr %307, align 8, !tbaa !52
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds [2 x float], ptr %296, i64 %309
  %311 = load float, ptr %310, align 4, !tbaa !57
  %312 = getelementptr inbounds float, ptr %305, i64 1
  %313 = load float, ptr %312, align 4, !tbaa !57
  %314 = getelementptr inbounds float, ptr %302, i64 1
  %315 = load float, ptr %314, align 4, !tbaa !57
  %316 = fsub float %313, %315
  %317 = load float, ptr %305, align 4, !tbaa !57
  %318 = getelementptr inbounds float, ptr %310, i64 1
  %319 = load float, ptr %318, align 4, !tbaa !57
  %320 = fsub float %315, %319
  %321 = fmul float %317, %320
  %322 = call float @llvm.fmuladd.f32(float %311, float %316, float %321)
  %323 = load float, ptr %302, align 4, !tbaa !57
  %324 = fsub float %319, %313
  %325 = call float @llvm.fmuladd.f32(float %323, float %324, float %322)
  %326 = fcmp une float %325, 0.000000e+00
  %327 = fcmp ogt float %325, 0.000000e+00
  %328 = select i1 %327, i8 1, i8 -1
  %329 = select i1 %326, i8 %328, i8 0
  store i8 %329, ptr %290, align 4, !tbaa !59
  br i1 %327, label %330, label %372

330:                                              ; preds = %295
  %331 = load i32, ptr %6, align 4, !tbaa !34
  %332 = add i32 %331, -1
  store i32 %332, ptr %6, align 4, !tbaa !34
  %333 = load ptr, ptr %99, align 8, !tbaa !73
  %334 = getelementptr inbounds i32, ptr %333, i64 %304
  %335 = load i32, ptr %334, align 4, !tbaa !75
  %336 = icmp eq i32 %335, -1
  br i1 %336, label %372, label %337

337:                                              ; preds = %330
  store i32 -1, ptr %334, align 4, !tbaa !75
  %338 = load ptr, ptr %100, align 8, !tbaa !64
  %339 = zext i32 %335 to i64
  %340 = getelementptr inbounds %struct.KDTreeNode2D, ptr %338, i64 %339
  %341 = load i32, ptr %101, align 4, !tbaa !63
  %342 = add i32 %341, -1
  store i32 %342, ptr %101, align 4, !tbaa !63
  %343 = getelementptr inbounds %struct.KDTreeNode2D, ptr %338, i64 %339, i32 4
  %344 = load i16, ptr %343, align 2, !tbaa !71
  %345 = or i16 %344, 1
  store i16 %345, ptr %343, align 2, !tbaa !71
  br label %346

346:                                              ; preds = %359, %337
  %347 = phi ptr [ %340, %337 ], [ %370, %359 ]
  %348 = phi i32 [ %335, %337 ], [ %371, %359 ]
  %349 = load i32, ptr %347, align 4, !tbaa !68
  %350 = icmp eq i32 %349, -1
  br i1 %350, label %351, label %372

351:                                              ; preds = %346
  %352 = getelementptr inbounds %struct.KDTreeNode2D, ptr %347, i64 0, i32 1
  %353 = load i32, ptr %352, align 4, !tbaa !65
  %354 = icmp eq i32 %353, -1
  br i1 %354, label %355, label %372

355:                                              ; preds = %351
  %356 = getelementptr inbounds %struct.KDTreeNode2D, ptr %347, i64 0, i32 5
  %357 = load i32, ptr %356, align 4, !tbaa !74
  %358 = icmp eq i32 %357, -1
  br i1 %358, label %372, label %359

359:                                              ; preds = %355
  %360 = zext i32 %357 to i64
  %361 = getelementptr inbounds %struct.KDTreeNode2D, ptr %338, i64 %360
  %362 = load i32, ptr %361, align 4, !tbaa !68
  %363 = icmp eq i32 %362, %348
  %364 = getelementptr inbounds %struct.KDTreeNode2D, ptr %338, i64 %360, i32 1
  %365 = select i1 %363, ptr %361, ptr %364
  store i32 -1, ptr %365, align 4, !tbaa !75
  %366 = getelementptr inbounds %struct.KDTreeNode2D, ptr %338, i64 %360, i32 4
  %367 = load i16, ptr %366, align 2, !tbaa !71
  %368 = and i16 %367, 1
  %369 = icmp eq i16 %368, 0
  %370 = select i1 %369, ptr %347, ptr %361
  %371 = select i1 %369, i32 %348, i32 %357
  br i1 %369, label %372, label %346

372:                                              ; preds = %359, %355, %351, %346, %330, %295, %287
  %373 = icmp eq i8 %293, 1
  br i1 %373, label %448, label %374

374:                                              ; preds = %372
  %375 = load ptr, ptr %102, align 8, !tbaa !45
  %376 = load i32, ptr %228, align 8, !tbaa !52
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds [2 x float], ptr %375, i64 %377
  %379 = load i32, ptr %233, align 8, !tbaa !52
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds [2 x float], ptr %375, i64 %380
  %382 = load ptr, ptr %222, align 8, !tbaa !49
  %383 = getelementptr inbounds %struct.PolyIndex, ptr %382, i64 0, i32 2
  %384 = load i32, ptr %383, align 8, !tbaa !52
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds [2 x float], ptr %375, i64 %385
  %387 = load float, ptr %386, align 4, !tbaa !57
  %388 = getelementptr inbounds float, ptr %381, i64 1
  %389 = load float, ptr %388, align 4, !tbaa !57
  %390 = getelementptr inbounds float, ptr %378, i64 1
  %391 = load float, ptr %390, align 4, !tbaa !57
  %392 = fsub float %389, %391
  %393 = load float, ptr %381, align 4, !tbaa !57
  %394 = getelementptr inbounds float, ptr %386, i64 1
  %395 = load float, ptr %394, align 4, !tbaa !57
  %396 = fsub float %391, %395
  %397 = fmul float %393, %396
  %398 = call float @llvm.fmuladd.f32(float %387, float %392, float %397)
  %399 = load float, ptr %378, align 4, !tbaa !57
  %400 = fsub float %395, %389
  %401 = call float @llvm.fmuladd.f32(float %399, float %400, float %398)
  %402 = fcmp une float %401, 0.000000e+00
  %403 = fcmp ogt float %401, 0.000000e+00
  %404 = select i1 %403, i8 1, i8 -1
  %405 = select i1 %402, i8 %404, i8 0
  store i8 %405, ptr %292, align 4, !tbaa !59
  br i1 %403, label %406, label %448

406:                                              ; preds = %374
  %407 = load i32, ptr %6, align 4, !tbaa !34
  %408 = add i32 %407, -1
  store i32 %408, ptr %6, align 4, !tbaa !34
  %409 = load ptr, ptr %103, align 8, !tbaa !73
  %410 = getelementptr inbounds i32, ptr %409, i64 %380
  %411 = load i32, ptr %410, align 4, !tbaa !75
  %412 = icmp eq i32 %411, -1
  br i1 %412, label %448, label %413

413:                                              ; preds = %406
  store i32 -1, ptr %410, align 4, !tbaa !75
  %414 = load ptr, ptr %104, align 8, !tbaa !64
  %415 = zext i32 %411 to i64
  %416 = getelementptr inbounds %struct.KDTreeNode2D, ptr %414, i64 %415
  %417 = load i32, ptr %105, align 4, !tbaa !63
  %418 = add i32 %417, -1
  store i32 %418, ptr %105, align 4, !tbaa !63
  %419 = getelementptr inbounds %struct.KDTreeNode2D, ptr %414, i64 %415, i32 4
  %420 = load i16, ptr %419, align 2, !tbaa !71
  %421 = or i16 %420, 1
  store i16 %421, ptr %419, align 2, !tbaa !71
  br label %422

422:                                              ; preds = %435, %413
  %423 = phi ptr [ %416, %413 ], [ %446, %435 ]
  %424 = phi i32 [ %411, %413 ], [ %447, %435 ]
  %425 = load i32, ptr %423, align 4, !tbaa !68
  %426 = icmp eq i32 %425, -1
  br i1 %426, label %427, label %448

427:                                              ; preds = %422
  %428 = getelementptr inbounds %struct.KDTreeNode2D, ptr %423, i64 0, i32 1
  %429 = load i32, ptr %428, align 4, !tbaa !65
  %430 = icmp eq i32 %429, -1
  br i1 %430, label %431, label %448

431:                                              ; preds = %427
  %432 = getelementptr inbounds %struct.KDTreeNode2D, ptr %423, i64 0, i32 5
  %433 = load i32, ptr %432, align 4, !tbaa !74
  %434 = icmp eq i32 %433, -1
  br i1 %434, label %448, label %435

435:                                              ; preds = %431
  %436 = zext i32 %433 to i64
  %437 = getelementptr inbounds %struct.KDTreeNode2D, ptr %414, i64 %436
  %438 = load i32, ptr %437, align 4, !tbaa !68
  %439 = icmp eq i32 %438, %424
  %440 = getelementptr inbounds %struct.KDTreeNode2D, ptr %414, i64 %436, i32 1
  %441 = select i1 %439, ptr %437, ptr %440
  store i32 -1, ptr %441, align 4, !tbaa !75
  %442 = getelementptr inbounds %struct.KDTreeNode2D, ptr %414, i64 %436, i32 4
  %443 = load i16, ptr %442, align 2, !tbaa !71
  %444 = and i16 %443, 1
  %445 = icmp eq i16 %444, 0
  %446 = select i1 %445, ptr %423, ptr %437
  %447 = select i1 %445, i32 %424, i32 %433
  br i1 %445, label %448, label %422

448:                                              ; preds = %435, %431, %427, %422, %406, %374, %372
  %449 = icmp eq i8 %212, 0
  %450 = getelementptr inbounds %struct.PolyIndex, ptr %221, i64 0, i32 1
  %451 = select i1 %449, ptr %222, ptr %450
  %452 = load i32, ptr %78, align 8, !tbaa !46
  %453 = icmp ugt i32 %452, 3
  br i1 %453, label %106, label %454, !llvm.loop !85

454:                                              ; preds = %448, %77
  %455 = phi i32 [ %79, %77 ], [ %452, %448 ]
  %456 = icmp eq i32 %455, 3
  br i1 %456, label %457, label %476

457:                                              ; preds = %454
  %458 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 4
  %459 = load ptr, ptr %458, align 8, !tbaa !47
  %460 = getelementptr inbounds %struct.PolyFill, ptr %0, i64 0, i32 5
  %461 = load i32, ptr %460, align 8, !tbaa !48
  %462 = add i32 %461, 1
  store i32 %462, ptr %460, align 8, !tbaa !48
  %463 = zext i32 %461 to i64
  %464 = getelementptr inbounds [3 x i32], ptr %459, i64 %463
  %465 = load ptr, ptr %0, align 8, !tbaa !44
  %466 = getelementptr inbounds %struct.PolyIndex, ptr %465, i64 0, i32 2
  %467 = load i32, ptr %466, align 8, !tbaa !52
  store i32 %467, ptr %464, align 4, !tbaa !75
  %468 = load ptr, ptr %465, align 8, !tbaa !49
  %469 = getelementptr inbounds %struct.PolyIndex, ptr %468, i64 0, i32 2
  %470 = load i32, ptr %469, align 8, !tbaa !52
  %471 = getelementptr inbounds i32, ptr %464, i64 1
  store i32 %470, ptr %471, align 4, !tbaa !75
  %472 = load ptr, ptr %468, align 8, !tbaa !49
  %473 = getelementptr inbounds %struct.PolyIndex, ptr %472, i64 0, i32 2
  %474 = load i32, ptr %473, align 8, !tbaa !52
  %475 = getelementptr inbounds i32, ptr %464, i64 2
  store i32 %474, ptr %475, align 4, !tbaa !75
  br label %476

476:                                              ; preds = %454, %457
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BLI_polyfill_calc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PolyFill, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  %6 = zext i32 %1 to i64
  %7 = mul nuw nsw i64 %6, 24
  %8 = alloca i8, i64 %7, align 16
  call fastcc void @polyfill_prepare(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %8)
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
  call fastcc void @polyfill_calc(ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  ret void
}

declare float @cross_poly_v2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @kdtree2d_balance_recursive(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) unnamed_addr #6 {
  %6 = alloca %struct.KDTreeNode2D_head, align 4
  %7 = alloca %struct.KDTreeNode2D_head, align 4
  switch i32 %1, label %9 [
    i32 0, label %63
    i32 1, label %8
  ]

8:                                                ; preds = %5
  br label %63

9:                                                ; preds = %5
  %10 = add i32 %1, -1
  %11 = lshr i32 %1, 1
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %65, label %13

13:                                               ; preds = %9
  %14 = zext nneg i8 %2 to i64
  br label %15

15:                                               ; preds = %13, %55
  %16 = phi i32 [ %10, %13 ], [ %58, %55 ]
  %17 = phi i32 [ 0, %13 ], [ %61, %55 ]
  %18 = zext i32 %16 to i64
  %19 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %18, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !69
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [2 x float], ptr %3, i64 %21, i64 %14
  %23 = load float, ptr %22, align 4, !tbaa !57
  %24 = add i32 %17, -1
  br label %25

25:                                               ; preds = %53, %15
  %26 = phi i32 [ %24, %15 ], [ %30, %53 ]
  %27 = phi i32 [ %16, %15 ], [ %40, %53 ]
  br label %28

28:                                               ; preds = %28, %25
  %29 = phi i32 [ %26, %25 ], [ %30, %28 ]
  %30 = add i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %31, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !69
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [2 x float], ptr %3, i64 %34, i64 %14
  %36 = load float, ptr %35, align 4, !tbaa !57
  %37 = fcmp olt float %36, %23
  br i1 %37, label %28, label %38, !llvm.loop !86

38:                                               ; preds = %28, %38
  %39 = phi i32 [ %40, %38 ], [ %27, %28 ]
  %40 = add i32 %39, -1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %41, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !69
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [2 x float], ptr %3, i64 %44, i64 %14
  %46 = load float, ptr %45, align 4, !tbaa !57
  %47 = fcmp ogt float %46, %23
  %48 = icmp ugt i32 %40, %17
  %49 = and i1 %48, %47
  br i1 %49, label %38, label %50, !llvm.loop !87

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %31
  %52 = icmp ult i32 %30, %40
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %41
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %51, i64 12, i1 false), !tbaa.struct !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %51, ptr noundef nonnull align 4 dereferenceable(12) %54, i64 12, i1 false), !tbaa.struct !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %54, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !88
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6)
  br label %25, !llvm.loop !89

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %51, i64 12, i1 false), !tbaa.struct !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %51, ptr noundef nonnull align 4 dereferenceable(12) %56, i64 12, i1 false), !tbaa.struct !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %56, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !88
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7)
  %57 = icmp ult i32 %30, %11
  %58 = select i1 %57, i32 %16, i32 %29
  %59 = icmp ugt i32 %30, %11
  %60 = add i32 %29, 2
  %61 = select i1 %59, i32 %17, i32 %60
  %62 = icmp ugt i32 %58, %61
  br i1 %62, label %15, label %65, !llvm.loop !90

63:                                               ; preds = %8, %5, %65
  %64 = phi i32 [ %79, %65 ], [ %4, %8 ], [ -1, %5 ]
  ret i32 %64

65:                                               ; preds = %55, %9
  %66 = zext nneg i32 %11 to i64
  %67 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %66
  %68 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %66, i32 3
  store i8 %2, ptr %68, align 4, !tbaa !70
  %69 = icmp eq i8 %2, 0
  %70 = zext i1 %69 to i8
  %71 = tail call fastcc i32 @kdtree2d_balance_recursive(ptr noundef %0, i32 noundef %11, i8 noundef zeroext %70, ptr noundef %3, i32 noundef %4)
  store i32 %71, ptr %67, align 4, !tbaa !68
  %72 = add nuw i32 %11, 1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %73
  %75 = sub i32 %1, %72
  %76 = add i32 %72, %4
  %77 = tail call fastcc i32 @kdtree2d_balance_recursive(ptr noundef nonnull %74, i32 noundef %75, i8 noundef zeroext %70, ptr noundef %3, i32 noundef %76)
  %78 = getelementptr inbounds %struct.KDTreeNode2D, ptr %0, i64 %66, i32 1
  store i32 %77, ptr %78, align 4, !tbaa !65
  %79 = add i32 %11, %4
  br label %63
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @kdtree2d_isect_tri_recursive(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #8 {
  %7 = getelementptr inbounds %struct.KDTree2D, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.KDTreeNode2D, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !69
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [2 x float], ptr %8, i64 %11
  %13 = getelementptr inbounds %struct.KDTreeNode2D, ptr %5, i64 0, i32 4
  %14 = load i16, ptr %13, align 2, !tbaa !71
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %84

17:                                               ; preds = %6
  %18 = load float, ptr %12, align 4, !tbaa !57
  %19 = load float, ptr %4, align 4, !tbaa !78
  %20 = fcmp ult float %18, %19
  br i1 %20, label %84, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.KDRange2D, ptr %4, i64 0, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !80
  %24 = fcmp ugt float %18, %23
  br i1 %24, label %84, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds float, ptr %12, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !57
  %28 = getelementptr inbounds %struct.KDRange2D, ptr %4, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !78
  %30 = fcmp ult float %27, %29
  br i1 %30, label %84, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.KDRange2D, ptr %4, i64 1, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !80
  %34 = fcmp ugt float %27, %33
  br i1 %34, label %84, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %2, align 8, !tbaa !77
  %37 = getelementptr inbounds ptr, ptr %2, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !77
  %39 = getelementptr inbounds float, ptr %38, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !57
  %41 = getelementptr inbounds float, ptr %36, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !57
  %43 = fsub float %40, %42
  %44 = load float, ptr %38, align 4, !tbaa !57
  %45 = fsub float %42, %27
  %46 = fmul float %44, %45
  %47 = tail call float @llvm.fmuladd.f32(float %18, float %43, float %46)
  %48 = load float, ptr %36, align 4, !tbaa !57
  %49 = fsub float %27, %40
  %50 = tail call float @llvm.fmuladd.f32(float %48, float %49, float %47)
  %51 = fcmp ult float %50, 0.000000e+00
  br i1 %51, label %84, label %52

52:                                               ; preds = %35
  %53 = getelementptr inbounds ptr, ptr %2, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !77
  %55 = getelementptr inbounds float, ptr %54, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !57
  %57 = fsub float %56, %40
  %58 = load float, ptr %54, align 4, !tbaa !57
  %59 = fsub float %40, %27
  %60 = fmul float %59, %58
  %61 = tail call float @llvm.fmuladd.f32(float %18, float %57, float %60)
  %62 = fsub float %27, %56
  %63 = tail call float @llvm.fmuladd.f32(float %44, float %62, float %61)
  %64 = fcmp ult float %63, 0.000000e+00
  br i1 %64, label %84, label %65

65:                                               ; preds = %52
  %66 = fsub float %42, %56
  %67 = fsub float %56, %27
  %68 = fmul float %48, %67
  %69 = tail call float @llvm.fmuladd.f32(float %18, float %66, float %68)
  %70 = fsub float %27, %42
  %71 = tail call float @llvm.fmuladd.f32(float %58, float %70, float %69)
  %72 = fcmp ult float %71, 0.000000e+00
  br i1 %72, label %84, label %73

73:                                               ; preds = %65
  %74 = load i32, ptr %1, align 4, !tbaa !75
  %75 = icmp eq i32 %10, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds i32, ptr %1, i64 1
  %78 = load i32, ptr %77, align 4, !tbaa !75
  %79 = icmp eq i32 %10, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds i32, ptr %1, i64 2
  %82 = load i32, ptr %81, align 4, !tbaa !75
  %83 = icmp eq i32 %10, %82
  br i1 %83, label %84, label %148

84:                                               ; preds = %17, %21, %25, %31, %73, %76, %80, %65, %52, %35, %6
  %85 = getelementptr inbounds %struct.KDTreeNode2D, ptr %5, i64 0, i32 3
  %86 = load i8, ptr %85, align 4, !tbaa !70
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds float, ptr %3, i64 %87
  %89 = load float, ptr %88, align 4, !tbaa !57
  %90 = getelementptr inbounds float, ptr %12, i64 %87
  %91 = load float, ptr %90, align 4, !tbaa !57
  %92 = fcmp ogt float %89, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.KDTreeNode2D, ptr %5, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !65
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %107, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.KDRange2D, ptr %4, i64 %87, i32 1
  %99 = load float, ptr %98, align 4, !tbaa !80
  %100 = fcmp olt float %91, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load ptr, ptr %0, align 8, !tbaa !64
  %103 = zext i32 %95 to i64
  %104 = getelementptr inbounds %struct.KDTreeNode2D, ptr %102, i64 %103
  %105 = tail call fastcc zeroext i8 @kdtree2d_isect_tri_recursive(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %104), !range !82
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %148

107:                                              ; preds = %101, %97, %93
  %108 = load i32, ptr %5, align 4, !tbaa !68
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %147, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.KDRange2D, ptr %4, i64 %87
  %112 = load float, ptr %111, align 4, !tbaa !78
  %113 = fcmp ogt float %91, %112
  br i1 %113, label %114, label %147

114:                                              ; preds = %110
  %115 = load ptr, ptr %0, align 8, !tbaa !64
  %116 = zext i32 %108 to i64
  %117 = getelementptr inbounds %struct.KDTreeNode2D, ptr %115, i64 %116
  %118 = tail call fastcc zeroext i8 @kdtree2d_isect_tri_recursive(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %117), !range !82
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %147, label %148

120:                                              ; preds = %84
  %121 = load i32, ptr %5, align 4, !tbaa !68
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %133, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.KDRange2D, ptr %4, i64 %87
  %125 = load float, ptr %124, align 4, !tbaa !78
  %126 = fcmp ogt float %91, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load ptr, ptr %0, align 8, !tbaa !64
  %129 = zext i32 %121 to i64
  %130 = getelementptr inbounds %struct.KDTreeNode2D, ptr %128, i64 %129
  %131 = tail call fastcc zeroext i8 @kdtree2d_isect_tri_recursive(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %130), !range !82
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %127, %123, %120
  %134 = getelementptr inbounds %struct.KDTreeNode2D, ptr %5, i64 0, i32 1
  %135 = load i32, ptr %134, align 4, !tbaa !65
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %147, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.KDRange2D, ptr %4, i64 %87, i32 1
  %139 = load float, ptr %138, align 4, !tbaa !80
  %140 = fcmp olt float %91, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load ptr, ptr %0, align 8, !tbaa !64
  %143 = zext i32 %135 to i64
  %144 = getelementptr inbounds %struct.KDTreeNode2D, ptr %142, i64 %143
  %145 = tail call fastcc zeroext i8 @kdtree2d_isect_tri_recursive(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %144), !range !82
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %133, %137, %141, %107, %110, %114
  br label %148

148:                                              ; preds = %141, %127, %114, %101, %80, %147
  %149 = phi i8 [ 0, %147 ], [ 1, %80 ], [ 1, %101 ], [ 1, %114 ], [ 1, %127 ], [ 1, %141 ]
  ret i8 %149
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

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
!44 = !{!35, !36, i64 0}
!45 = !{!35, !36, i64 8}
!46 = !{!35, !39, i64 16}
!47 = !{!35, !36, i64 24}
!48 = !{!35, !39, i64 32}
!49 = !{!50, !36, i64 0}
!50 = !{!"PolyIndex", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 20}
!51 = !{!50, !36, i64 8}
!52 = !{!50, !39, i64 16}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = distinct !{!56, !54, !55}
!57 = !{!58, !58, i64 0}
!58 = !{!"float", !37, i64 0}
!59 = !{!50, !37, i64 20}
!60 = distinct !{!60, !54, !55}
!61 = !{!40, !36, i64 8}
!62 = !{!40, !39, i64 16}
!63 = !{!40, !39, i64 20}
!64 = !{!40, !36, i64 0}
!65 = !{!66, !39, i64 4}
!66 = !{!"KDTreeNode2D", !39, i64 0, !39, i64 4, !39, i64 8, !37, i64 12, !67, i64 14, !39, i64 16}
!67 = !{!"short", !37, i64 0}
!68 = !{!66, !39, i64 0}
!69 = !{!66, !39, i64 8}
!70 = !{!66, !37, i64 12}
!71 = !{!66, !67, i64 14}
!72 = distinct !{!72, !54, !55}
!73 = !{!40, !36, i64 24}
!74 = !{!66, !39, i64 16}
!75 = !{!39, !39, i64 0}
!76 = distinct !{!76, !54, !55}
!77 = !{!36, !36, i64 0}
!78 = !{!79, !58, i64 0}
!79 = !{!"KDRange2D", !58, i64 0, !58, i64 4}
!80 = !{!79, !58, i64 4}
!81 = distinct !{!81, !54, !55}
!82 = !{i8 0, i8 2}
!83 = distinct !{!83, !54, !55}
!84 = distinct !{!84, !54, !55}
!85 = distinct !{!85, !54, !55}
!86 = distinct !{!86, !54, !55}
!87 = distinct !{!87, !54, !55}
!88 = !{i64 0, i64 4, !75, i64 4, i64 4, !75, i64 8, i64 4, !75}
!89 = distinct !{!89, !55}
!90 = distinct !{!90, !54, !55}
