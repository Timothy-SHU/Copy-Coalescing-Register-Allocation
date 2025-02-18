; ModuleID = 'blender/source/blender/blenlib/intern/BLI_kdopbvh.c'
source_filename = "blender/source/blender/blenlib/intern/BLI_kdopbvh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BVHTree = type { ptr, ptr, ptr, ptr, float, i32, i32, i8, i8, i8, i8 }
%struct.BVHNode = type { ptr, ptr, ptr, i32, i8, i8 }
%struct.BVHBuildHelper = type { i32, i32, [32 x i32], [32 x i32], i32 }
%struct.BVHOverlapData = type { ptr, ptr, ptr, i8, i8 }
%struct.BVHTreeOverlap = type { i32, i32 }
%struct.BVHNearestData = type { ptr, ptr, ptr, ptr, [13 x float], %struct.BVHTreeNearest }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }
%struct.BVHRayCastData = type { ptr, ptr, ptr, %struct.BVHTreeRay, [13 x float], [13 x float], [6 x i32], %struct.BVHTreeRayHit }
%struct.BVHTreeRay = type { [3 x float], [3 x float], float }
%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.RangeQueryData = type { ptr, ptr, float, i32, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"BVHTree\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"BVHNodes\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"BVHNodeBV\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"BVHNodeArray\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"BVHOverlapData_star\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"BVHOverlapData\00", align 1
@__func__.BLI_bvhtree_overlap = private unnamed_addr constant [20 x i8] c"BLI_bvhtree_overlap\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"BVHTreeOverlap\00", align 1
@KDOP_AXES = internal unnamed_addr constant [13 x [3 x float]] [[3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float -1.000000e+00]], align 16
@switch.table.BLI_bvhtree_new = private unnamed_addr constant [11 x i8] c"\00\00\00\00\00\00\07\00\00\00\00", align 1
@switch.table.BLI_bvhtree_new.7 = private unnamed_addr constant [11 x i8] c"\03\04\0D\0D\07\0D\0D\0D\0D\0D\0D", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_bvhtree_new(i32 noundef %0, float noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 48, ptr noundef nonnull @.str) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %111, label %8

8:                                                ; preds = %4
  %9 = fcmp olt float %1, 0x3E80000000000000
  %10 = select i1 %9, float 0x3E80000000000000, float %1
  %11 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 10
  store i8 %2, ptr %12, align 1, !tbaa !42
  %13 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 9
  store i8 %3, ptr %13, align 2, !tbaa !43
  %14 = zext i8 %3 to i32
  %15 = add i8 %3, -6
  %16 = tail call i8 @llvm.fshl.i8(i8 %15, i8 %15, i8 7)
  %17 = icmp ult i8 %16, 11
  br i1 %17, label %18, label %86

18:                                               ; preds = %8
  %19 = zext nneg i8 %16 to i16
  %20 = lshr i16 1107, %19
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %86, label %23

23:                                               ; preds = %18
  %24 = zext nneg i8 %16 to i64
  %25 = getelementptr inbounds [11 x i8], ptr @switch.table.BLI_bvhtree_new, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1
  %27 = zext nneg i8 %16 to i64
  %28 = getelementptr inbounds [11 x i8], ptr @switch.table.BLI_bvhtree_new.7, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 7
  store i8 %26, ptr %30, align 4, !tbaa !44
  %31 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 8
  store i8 %29, ptr %31, align 1, !tbaa !45
  %32 = zext i8 %2 to i32
  %33 = add i32 %0, -3
  %34 = add i32 %33, %32
  %35 = add nsw i32 %32, -1
  %36 = sdiv i32 %34, %35
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 1)
  %38 = add i32 %32, %0
  %39 = add i32 %38, %37
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %41 = sext i32 %39 to i64
  %42 = shl nsw i64 %41, 3
  %43 = tail call ptr %40(i64 noundef %42, ptr noundef nonnull @.str.1) #10
  store ptr %43, ptr %6, align 8, !tbaa !46
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %45 = mul nsw i32 %39, %14
  %46 = sext i32 %45 to i64
  %47 = shl nsw i64 %46, 2
  %48 = tail call ptr %44(i64 noundef %47, ptr noundef nonnull @.str.2) #10
  %49 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !47
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %51 = mul nsw i32 %39, %32
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 3
  %54 = tail call ptr %50(i64 noundef %53, ptr noundef nonnull @.str.2) #10
  %55 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !48
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %57 = shl nsw i64 %41, 5
  %58 = tail call ptr %56(i64 noundef %57, ptr noundef nonnull @.str.3) #10
  %59 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !49
  %60 = load ptr, ptr %6, align 8, !tbaa !46
  %61 = icmp eq ptr %60, null
  br i1 %61, label %86, label %62

62:                                               ; preds = %23
  %63 = load ptr, ptr %49, align 8, !tbaa !47
  %64 = icmp eq ptr %63, null
  br i1 %64, label %86, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %55, align 8, !tbaa !48
  %67 = icmp eq ptr %66, null
  %68 = icmp eq ptr %58, null
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %86, label %70

70:                                               ; preds = %65
  %71 = icmp sgt i32 %39, 0
  br i1 %71, label %72, label %111

72:                                               ; preds = %70
  %73 = zext i8 %3 to i64
  %74 = zext i8 %2 to i64
  %75 = zext nneg i32 %39 to i64
  br label %76

76:                                               ; preds = %72, %76
  %77 = phi i64 [ 0, %72 ], [ %84, %76 ]
  %78 = mul nuw nsw i64 %77, %73
  %79 = getelementptr inbounds float, ptr %63, i64 %78
  %80 = getelementptr inbounds %struct.BVHNode, ptr %58, i64 %77, i32 2
  store ptr %79, ptr %80, align 8, !tbaa !50
  %81 = mul nuw nsw i64 %77, %74
  %82 = getelementptr inbounds ptr, ptr %66, i64 %81
  %83 = getelementptr inbounds %struct.BVHNode, ptr %58, i64 %77
  store ptr %82, ptr %83, align 8, !tbaa !52
  %84 = add nuw nsw i64 %77, 1
  %85 = icmp eq i64 %84, %75
  br i1 %85, label %111, label %76, !llvm.loop !53

86:                                               ; preds = %18, %8, %23, %62, %65
  %87 = load ptr, ptr %6, align 8, !tbaa !46
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %90(ptr noundef nonnull %87) #10
  store ptr null, ptr %6, align 8, !tbaa !46
  br label %91

91:                                               ; preds = %89, %86
  %92 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !47
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %96(ptr noundef nonnull %93) #10
  store ptr null, ptr %92, align 8, !tbaa !47
  br label %97

97:                                               ; preds = %95, %91
  %98 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !48
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %102(ptr noundef nonnull %99) #10
  store ptr null, ptr %98, align 8, !tbaa !48
  br label %103

103:                                              ; preds = %101, %97
  %104 = getelementptr inbounds %struct.BVHTree, ptr %6, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !49
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %108(ptr noundef nonnull %105) #10
  store ptr null, ptr %104, align 8, !tbaa !49
  br label %109

109:                                              ; preds = %107, %103
  %110 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %110(ptr noundef nonnull %6) #10
  br label %111

111:                                              ; preds = %76, %70, %4, %109
  %112 = phi ptr [ null, %109 ], [ %6, %4 ], [ %6, %70 ], [ %6, %76 ]
  ret ptr %112
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BLI_bvhtree_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  tail call void %4(ptr noundef %5) #10
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  tail call void %6(ptr noundef %8) #10
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  tail call void %9(ptr noundef %11) #10
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  tail call void %12(ptr noundef %14) #10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %0) #10
  br label %16

16:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_bvhtree_balance(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.BVHBuildHelper, align 4
  %3 = alloca [33 x i32], align 16
  %4 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !56
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.BVHNode, ptr %5, i64 %8
  %10 = load ptr, ptr %0, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 10
  %12 = load i8, ptr %11, align 1, !tbaa !42
  %13 = zext i8 %12 to i32
  %14 = sub nsw i32 2, %13
  %15 = add i32 %7, -3
  %16 = add i32 %15, %13
  %17 = add nsw i32 %13, -1
  %18 = sdiv i32 %16, %17
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 1)
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %2) #10
  %20 = getelementptr inbounds %struct.BVHNode, ptr %5, i64 %8, i32 1
  store ptr null, ptr %20, align 8, !tbaa !57
  %21 = icmp eq i32 %7, 1
  br i1 %21, label %22, label %95

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.BVHNode, ptr %5, i64 %8, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 7
  %26 = load i8, ptr %25, align 4, !tbaa !44
  %27 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 8
  %28 = load i8, ptr %27, align 1, !tbaa !45
  %29 = icmp eq i8 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %33, %22
  %31 = zext i8 %28 to i64
  %32 = icmp ult i8 %26, %28
  br i1 %32, label %40, label %65

33:                                               ; preds = %22, %33
  %34 = phi i8 [ %38, %33 ], [ %26, %22 ]
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [2 x float], ptr %24, i64 %35
  store float 0x47EFFFFFE0000000, ptr %36, align 4, !tbaa !58
  %37 = getelementptr inbounds [2 x float], ptr %24, i64 %35, i64 1
  store float 0xC7EFFFFFE0000000, ptr %37, align 4, !tbaa !58
  %38 = add i8 %34, 1
  %39 = icmp eq i8 %38, %28
  br i1 %39, label %30, label %33, !llvm.loop !59

40:                                               ; preds = %30
  %41 = zext i8 %26 to i64
  %42 = load ptr, ptr %10, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.BVHNode, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !50
  br label %45

45:                                               ; preds = %62, %40
  %46 = phi i64 [ %41, %40 ], [ %63, %62 ]
  %47 = shl nuw nsw i64 %46, 1
  %48 = getelementptr inbounds float, ptr %44, i64 %47
  %49 = load float, ptr %48, align 4, !tbaa !58
  %50 = getelementptr inbounds float, ptr %24, i64 %47
  %51 = load float, ptr %50, align 4, !tbaa !58
  %52 = fcmp olt float %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store float %49, ptr %50, align 4, !tbaa !58
  br label %54

54:                                               ; preds = %53, %45
  %55 = or disjoint i64 %47, 1
  %56 = getelementptr inbounds float, ptr %44, i64 %55
  %57 = load float, ptr %56, align 4, !tbaa !58
  %58 = getelementptr inbounds float, ptr %24, i64 %55
  %59 = load float, ptr %58, align 4, !tbaa !58
  %60 = fcmp ogt float %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store float %57, ptr %58, align 4, !tbaa !58
  br label %62

62:                                               ; preds = %61, %54
  %63 = add nuw nsw i64 %46, 1
  %64 = icmp eq i64 %63, %31
  br i1 %64, label %65, label %45, !llvm.loop !60

65:                                               ; preds = %62, %30
  %66 = getelementptr inbounds %struct.BVHNode, ptr %5, i64 %8, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !50
  %68 = getelementptr inbounds float, ptr %67, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !58
  %70 = load float, ptr %67, align 4, !tbaa !58
  %71 = fsub float %69, %70
  %72 = getelementptr inbounds float, ptr %67, i64 3
  %73 = load float, ptr %72, align 4, !tbaa !58
  %74 = getelementptr inbounds float, ptr %67, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !58
  %76 = fsub float %73, %75
  %77 = getelementptr inbounds float, ptr %67, i64 5
  %78 = load float, ptr %77, align 4, !tbaa !58
  %79 = getelementptr inbounds float, ptr %67, i64 4
  %80 = load float, ptr %79, align 4, !tbaa !58
  %81 = fsub float %78, %80
  %82 = fcmp ogt float %71, %76
  %83 = fcmp ogt float %71, %81
  %84 = select i1 %83, i8 0, i8 2
  %85 = fcmp ogt float %76, %81
  %86 = select i1 %85, i8 1, i8 2
  %87 = select i1 %82, i8 %84, i8 %86
  %88 = getelementptr inbounds %struct.BVHNode, ptr %5, i64 %8, i32 5
  store i8 %87, ptr %88, align 1, !tbaa !61
  %89 = getelementptr inbounds %struct.BVHNode, ptr %5, i64 %8, i32 4
  store i8 1, ptr %89, align 4, !tbaa !62
  %90 = load ptr, ptr %10, align 8, !tbaa !34
  %91 = load ptr, ptr %9, align 8, !tbaa !52
  store ptr %90, ptr %91, align 8, !tbaa !34
  %92 = load ptr, ptr %9, align 8, !tbaa !52
  %93 = load ptr, ptr %92, align 8, !tbaa !34
  %94 = getelementptr inbounds %struct.BVHNode, ptr %93, i64 0, i32 1
  store ptr %9, ptr %94, align 8, !tbaa !57
  br label %524

95:                                               ; preds = %1
  %96 = getelementptr inbounds %struct.BVHNode, ptr %9, i64 -1
  %97 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 1
  store i32 %7, ptr %97, align 4, !tbaa !63
  store i32 %13, ptr %2, align 4, !tbaa !65
  %98 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 2
  %99 = icmp sgt i32 %7, 1
  br i1 %99, label %100, label %104

100:                                              ; preds = %95, %100
  %101 = phi i32 [ %102, %100 ], [ 1, %95 ]
  %102 = mul nuw nsw i32 %101, %13
  %103 = icmp slt i32 %102, %7
  br i1 %103, label %100, label %104, !llvm.loop !66

104:                                              ; preds = %100, %95
  %105 = phi i32 [ 1, %95 ], [ %102, %100 ]
  store i32 %105, ptr %98, align 4, !tbaa !67
  %106 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 3
  store i32 1, ptr %106, align 4, !tbaa !67
  br label %107

107:                                              ; preds = %104, %113
  %108 = phi i64 [ 1, %104 ], [ %121, %113 ]
  %109 = add nsw i64 %108, -1
  %110 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 2, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !67
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 3, i64 %109
  %115 = load i32, ptr %114, align 4, !tbaa !67
  %116 = mul nsw i32 %115, %13
  %117 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 3, i64 %108
  store i32 %116, ptr %117, align 4, !tbaa !67
  %118 = load i32, ptr %110, align 4, !tbaa !67
  %119 = sdiv i32 %118, %13
  %120 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 2, i64 %108
  store i32 %119, ptr %120, align 4, !tbaa !67
  %121 = add nuw nsw i64 %108, 1
  %122 = icmp eq i64 %121, 32
  br i1 %122, label %123, label %107, !llvm.loop !68

123:                                              ; preds = %107, %113
  %124 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 2, i64 1
  %125 = load i32, ptr %124, align 4, !tbaa !67
  %126 = sub nsw i32 %7, %125
  %127 = add nsw i32 %13, -2
  %128 = add i32 %127, %126
  %129 = sdiv i32 %128, %17
  %130 = add nsw i32 %126, %129
  %131 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 4
  store i32 %130, ptr %131, align 4, !tbaa !69
  %132 = add nuw nsw i32 %19, 1
  %133 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 7
  %134 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 8
  %135 = zext i8 %12 to i64
  %136 = getelementptr inbounds [33 x i32], ptr %3, i64 0, i64 %135
  %137 = icmp ugt i8 %12, 1
  %138 = icmp ugt i8 %12, 1
  %139 = getelementptr inbounds i32, ptr %3, i64 %135
  %140 = icmp eq i8 %12, 0
  %141 = sext i32 %130 to i64
  %142 = sext i32 %130 to i64
  %143 = zext i8 %12 to i64
  %144 = sext i32 %14 to i64
  %145 = sext i32 %130 to i64
  %146 = sext i32 %130 to i64
  %147 = zext i8 %12 to i64
  %148 = zext i32 %17 to i64
  %149 = getelementptr ptr, ptr %10, i64 -1
  %150 = zext i8 %12 to i64
  br label %151

151:                                              ; preds = %123, %521
  %152 = phi i64 [ 1, %123 ], [ %522, %521 ]
  %153 = phi i32 [ 1, %123 ], [ %155, %521 ]
  %154 = mul nsw i32 %153, %13
  %155 = add nsw i32 %154, %14
  %156 = tail call i32 @llvm.smin.i32(i32 %155, i32 %132)
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %521

158:                                              ; preds = %151
  %159 = add nsw i64 %152, -1
  %160 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 2, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !67
  %162 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 2, i64 %152
  %163 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 3, i64 %159
  %164 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 2, i64 %152
  %165 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 3, i64 %159
  %166 = load i8, ptr %133, align 4, !tbaa !44
  %167 = load i8, ptr %134, align 1, !tbaa !45
  %168 = icmp eq i8 %166, %167
  %169 = icmp ult i8 %166, %167
  %170 = zext i8 %166 to i64
  %171 = zext i8 %167 to i64
  %172 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 2, i64 %152
  %173 = add nuw nsw i64 %152, 1
  %174 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 2, i64 %173
  %175 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 3, i64 %152
  %176 = add nuw nsw i64 %152, 1
  %177 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 2, i64 %152
  %178 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 2, i64 %176
  %179 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 3, i64 %152
  %180 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 2, i64 %176
  %181 = getelementptr inbounds %struct.BVHBuildHelper, ptr %2, i64 0, i32 3, i64 %152
  %182 = sext i32 %155 to i64
  %183 = sext i32 %153 to i64
  %184 = sext i32 %153 to i64
  %185 = sext i32 %161 to i64
  %186 = sext i32 %161 to i64
  %187 = sext i32 %156 to i64
  br label %188

188:                                              ; preds = %158, %518
  %189 = phi i64 [ %183, %158 ], [ %519, %518 ]
  %190 = sub nsw i64 %189, %184
  %191 = getelementptr inbounds %struct.BVHNode, ptr %96, i64 %189
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %3) #10
  %192 = mul nsw i64 %190, %185
  %193 = icmp sgt i64 %192, %145
  %194 = trunc i64 %192 to i32
  br i1 %193, label %195, label %204

195:                                              ; preds = %188
  %196 = load i32, ptr %162, align 4, !tbaa !67
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %204, label %198

198:                                              ; preds = %195
  %199 = load i32, ptr %163, align 4, !tbaa !67
  %200 = trunc i64 %190 to i32
  %201 = sub i32 %200, %199
  %202 = mul i32 %201, %196
  %203 = add i32 %202, %7
  br label %204

204:                                              ; preds = %198, %195, %188
  %205 = phi i32 [ %203, %198 ], [ %194, %188 ], [ %130, %195 ]
  %206 = add nuw nsw i64 %190, 1
  %207 = mul nsw i64 %206, %186
  %208 = icmp sgt i64 %207, %146
  %209 = trunc i64 %207 to i32
  br i1 %208, label %210, label %219

210:                                              ; preds = %204
  %211 = load i32, ptr %164, align 4, !tbaa !67
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %210
  %214 = load i32, ptr %165, align 4, !tbaa !67
  %215 = trunc i64 %206 to i32
  %216 = sub i32 %215, %214
  %217 = mul i32 %216, %211
  %218 = add i32 %217, %7
  br label %219

219:                                              ; preds = %213, %210, %204
  %220 = phi i32 [ %218, %213 ], [ %209, %204 ], [ %130, %210 ]
  %221 = getelementptr inbounds %struct.BVHNode, ptr %96, i64 %189, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !50
  br i1 %168, label %223, label %228

223:                                              ; preds = %228, %219
  %224 = icmp slt i32 %205, %220
  br i1 %224, label %225, label %266

225:                                              ; preds = %223
  %226 = sext i32 %205 to i64
  %227 = sext i32 %220 to i64
  br label %235

228:                                              ; preds = %219, %228
  %229 = phi i8 [ %233, %228 ], [ %166, %219 ]
  %230 = zext i8 %229 to i64
  %231 = getelementptr inbounds [2 x float], ptr %222, i64 %230
  store float 0x47EFFFFFE0000000, ptr %231, align 4, !tbaa !58
  %232 = getelementptr inbounds [2 x float], ptr %222, i64 %230, i64 1
  store float 0xC7EFFFFFE0000000, ptr %232, align 4, !tbaa !58
  %233 = add i8 %229, 1
  %234 = icmp eq i8 %233, %167
  br i1 %234, label %223, label %228, !llvm.loop !59

235:                                              ; preds = %263, %225
  %236 = phi i64 [ %226, %225 ], [ %264, %263 ]
  br i1 %169, label %237, label %263

237:                                              ; preds = %235
  %238 = load ptr, ptr %0, align 8, !tbaa !46
  %239 = getelementptr inbounds ptr, ptr %238, i64 %236
  %240 = load ptr, ptr %239, align 8, !tbaa !34
  %241 = getelementptr inbounds %struct.BVHNode, ptr %240, i64 0, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !50
  br label %243

243:                                              ; preds = %260, %237
  %244 = phi i64 [ %170, %237 ], [ %261, %260 ]
  %245 = shl nuw nsw i64 %244, 1
  %246 = getelementptr inbounds float, ptr %242, i64 %245
  %247 = load float, ptr %246, align 4, !tbaa !58
  %248 = getelementptr inbounds float, ptr %222, i64 %245
  %249 = load float, ptr %248, align 4, !tbaa !58
  %250 = fcmp olt float %247, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %243
  store float %247, ptr %248, align 4, !tbaa !58
  br label %252

252:                                              ; preds = %251, %243
  %253 = or disjoint i64 %245, 1
  %254 = getelementptr inbounds float, ptr %242, i64 %253
  %255 = load float, ptr %254, align 4, !tbaa !58
  %256 = getelementptr inbounds float, ptr %222, i64 %253
  %257 = load float, ptr %256, align 4, !tbaa !58
  %258 = fcmp ogt float %255, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %252
  store float %255, ptr %256, align 4, !tbaa !58
  br label %260

260:                                              ; preds = %259, %252
  %261 = add nuw nsw i64 %244, 1
  %262 = icmp eq i64 %261, %171
  br i1 %262, label %263, label %243, !llvm.loop !60

263:                                              ; preds = %260, %235
  %264 = add nsw i64 %236, 1
  %265 = icmp eq i64 %264, %227
  br i1 %265, label %266, label %235, !llvm.loop !70

266:                                              ; preds = %263, %223
  %267 = getelementptr inbounds %struct.BVHNode, ptr %96, i64 %189, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !50
  %269 = getelementptr inbounds float, ptr %268, i64 1
  %270 = load float, ptr %269, align 4, !tbaa !58
  %271 = load float, ptr %268, align 4, !tbaa !58
  %272 = fsub float %270, %271
  %273 = getelementptr inbounds float, ptr %268, i64 3
  %274 = load float, ptr %273, align 4, !tbaa !58
  %275 = getelementptr inbounds float, ptr %268, i64 2
  %276 = load float, ptr %275, align 4, !tbaa !58
  %277 = fsub float %274, %276
  %278 = getelementptr inbounds float, ptr %268, i64 5
  %279 = load float, ptr %278, align 4, !tbaa !58
  %280 = getelementptr inbounds float, ptr %268, i64 4
  %281 = load float, ptr %280, align 4, !tbaa !58
  %282 = fsub float %279, %281
  %283 = fcmp ogt float %272, %277
  %284 = fcmp ogt float %272, %282
  %285 = select i1 %284, i8 1, i8 5
  %286 = fcmp ogt float %277, %282
  %287 = select i1 %286, i8 3, i8 5
  %288 = select i1 %283, i8 %285, i8 %287
  %289 = lshr i8 %288, 1
  %290 = getelementptr inbounds %struct.BVHNode, ptr %96, i64 %189, i32 5
  store i8 %289, ptr %290, align 1, !tbaa !61
  store i32 %205, ptr %3, align 16, !tbaa !67
  store i32 %220, ptr %136, align 4, !tbaa !67
  br i1 %137, label %291, label %296

291:                                              ; preds = %266
  %292 = trunc i64 %189 to i32
  %293 = sub i32 %292, %153
  %294 = mul i32 %293, %13
  %295 = load i32, ptr %172, align 4, !tbaa !67
  br label %301

296:                                              ; preds = %315, %266
  br i1 %138, label %297, label %455

297:                                              ; preds = %296
  %298 = load i32, ptr %139, align 4, !tbaa !67
  %299 = zext nneg i8 %288 to i64
  %300 = zext nneg i8 %288 to i64
  br label %322

301:                                              ; preds = %291, %315
  %302 = phi i64 [ 1, %291 ], [ %318, %315 ]
  %303 = trunc i64 %302 to i32
  %304 = add i32 %294, %303
  %305 = mul nsw i32 %295, %304
  %306 = icmp sgt i32 %305, %130
  br i1 %306, label %307, label %315

307:                                              ; preds = %301
  %308 = load i32, ptr %174, align 4, !tbaa !67
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %315, label %310

310:                                              ; preds = %307
  %311 = load i32, ptr %175, align 4, !tbaa !67
  %312 = sub i32 %304, %311
  %313 = mul i32 %312, %308
  %314 = add i32 %313, %7
  br label %315

315:                                              ; preds = %310, %307, %301
  %316 = phi i32 [ %314, %310 ], [ %305, %301 ], [ %130, %307 ]
  %317 = getelementptr inbounds [33 x i32], ptr %3, i64 0, i64 %302
  store i32 %316, ptr %317, align 4, !tbaa !67
  %318 = add nuw nsw i64 %302, 1
  %319 = icmp eq i64 %318, %147
  br i1 %319, label %296, label %301, !llvm.loop !71

320:                                              ; preds = %449, %333
  %321 = icmp eq i64 %328, %148
  br i1 %321, label %455, label %322, !llvm.loop !72

322:                                              ; preds = %297, %320
  %323 = phi i64 [ 0, %297 ], [ %328, %320 ]
  %324 = getelementptr inbounds i32, ptr %3, i64 %323
  %325 = load i32, ptr %324, align 4, !tbaa !67
  %326 = icmp slt i32 %325, %298
  br i1 %326, label %327, label %455

327:                                              ; preds = %322
  %328 = add nuw nsw i64 %323, 1
  %329 = getelementptr inbounds i32, ptr %3, i64 %328
  %330 = load i32, ptr %329, align 4, !tbaa !67
  %331 = sub nsw i32 %298, %325
  %332 = icmp sgt i32 %331, 3
  br i1 %332, label %341, label %333

333:                                              ; preds = %417, %327
  %334 = phi i32 [ %298, %327 ], [ %419, %417 ]
  %335 = phi i32 [ %325, %327 ], [ %420, %417 ]
  %336 = icmp slt i32 %335, %334
  br i1 %336, label %337, label %320

337:                                              ; preds = %333
  %338 = sext i32 %335 to i64
  %339 = sext i32 %335 to i64
  %340 = sext i32 %334 to i64
  br label %423

341:                                              ; preds = %327, %417
  %342 = phi i32 [ %420, %417 ], [ %325, %327 ]
  %343 = phi i32 [ %419, %417 ], [ %298, %327 ]
  %344 = add nsw i32 %342, %343
  %345 = sdiv i32 %344, 2
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds ptr, ptr %10, i64 %346
  %348 = load ptr, ptr %347, align 8, !tbaa !34
  %349 = getelementptr inbounds %struct.BVHNode, ptr %348, i64 0, i32 2
  %350 = load ptr, ptr %349, align 8, !tbaa !50
  %351 = getelementptr inbounds float, ptr %350, i64 %299
  %352 = load float, ptr %351, align 4, !tbaa !58
  %353 = sext i32 %342 to i64
  %354 = getelementptr inbounds ptr, ptr %10, i64 %353
  %355 = load ptr, ptr %354, align 8, !tbaa !34
  %356 = getelementptr inbounds %struct.BVHNode, ptr %355, i64 0, i32 2
  %357 = load ptr, ptr %356, align 8, !tbaa !50
  %358 = getelementptr inbounds float, ptr %357, i64 %299
  %359 = load float, ptr %358, align 4, !tbaa !58
  %360 = fcmp olt float %352, %359
  %361 = sext i32 %343 to i64
  %362 = getelementptr ptr, ptr %149, i64 %361
  %363 = load ptr, ptr %362, align 8, !tbaa !34
  %364 = getelementptr inbounds %struct.BVHNode, ptr %363, i64 0, i32 2
  %365 = load ptr, ptr %364, align 8, !tbaa !50
  %366 = getelementptr inbounds float, ptr %365, i64 %299
  %367 = load float, ptr %366, align 4, !tbaa !58
  %368 = fcmp olt float %367, %352
  br i1 %360, label %369, label %373

369:                                              ; preds = %341
  br i1 %368, label %377, label %370

370:                                              ; preds = %369
  %371 = fcmp olt float %367, %359
  %372 = select i1 %371, ptr %363, ptr %355
  br label %377

373:                                              ; preds = %341
  br i1 %368, label %374, label %377

374:                                              ; preds = %373
  %375 = fcmp olt float %367, %359
  %376 = select i1 %375, ptr %355, ptr %363
  br label %377

377:                                              ; preds = %374, %373, %370, %369
  %378 = phi ptr [ %348, %369 ], [ %372, %370 ], [ %376, %374 ], [ %348, %373 ]
  %379 = getelementptr inbounds %struct.BVHNode, ptr %378, i64 0, i32 2
  br label %380

380:                                              ; preds = %413, %377
  %381 = phi i32 [ %343, %377 ], [ %411, %413 ]
  %382 = phi i32 [ %342, %377 ], [ %416, %413 ]
  %383 = load ptr, ptr %379, align 8, !tbaa !50
  %384 = getelementptr inbounds float, ptr %383, i64 %299
  %385 = load float, ptr %384, align 4, !tbaa !58
  %386 = sext i32 %382 to i64
  br label %387

387:                                              ; preds = %387, %380
  %388 = phi i64 [ %396, %387 ], [ %386, %380 ]
  %389 = getelementptr inbounds ptr, ptr %10, i64 %388
  %390 = load ptr, ptr %389, align 8, !tbaa !34
  %391 = getelementptr inbounds %struct.BVHNode, ptr %390, i64 0, i32 2
  %392 = load ptr, ptr %391, align 8, !tbaa !50
  %393 = getelementptr inbounds float, ptr %392, i64 %299
  %394 = load float, ptr %393, align 4, !tbaa !58
  %395 = fcmp olt float %394, %385
  %396 = add i64 %388, 1
  br i1 %395, label %387, label %397, !llvm.loop !73

397:                                              ; preds = %387
  %398 = trunc i64 %388 to i32
  %399 = sext i32 %381 to i64
  br label %400

400:                                              ; preds = %397, %400
  %401 = phi i64 [ %399, %397 ], [ %402, %400 ]
  %402 = add i64 %401, -1
  %403 = getelementptr inbounds ptr, ptr %10, i64 %402
  %404 = load ptr, ptr %403, align 8, !tbaa !34
  %405 = getelementptr inbounds %struct.BVHNode, ptr %404, i64 0, i32 2
  %406 = load ptr, ptr %405, align 8, !tbaa !50
  %407 = getelementptr inbounds float, ptr %406, i64 %299
  %408 = load float, ptr %407, align 4, !tbaa !58
  %409 = fcmp olt float %385, %408
  br i1 %409, label %400, label %410, !llvm.loop !74

410:                                              ; preds = %400
  %411 = trunc i64 %402 to i32
  %412 = icmp slt i32 %398, %411
  br i1 %412, label %413, label %417

413:                                              ; preds = %410
  %414 = getelementptr inbounds ptr, ptr %10, i64 %388
  %415 = getelementptr inbounds ptr, ptr %10, i64 %402
  store ptr %404, ptr %414, align 8, !tbaa !34
  store ptr %390, ptr %415, align 8, !tbaa !34
  %416 = add nsw i32 %398, 1
  br label %380, !llvm.loop !75

417:                                              ; preds = %410
  %418 = icmp slt i32 %330, %398
  %419 = select i1 %418, i32 %398, i32 %343
  %420 = select i1 %418, i32 %342, i32 %398
  %421 = sub nsw i32 %419, %420
  %422 = icmp sgt i32 %421, 3
  br i1 %422, label %341, label %333, !llvm.loop !76

423:                                              ; preds = %337, %449
  %424 = phi i64 [ %338, %337 ], [ %453, %449 ]
  %425 = getelementptr inbounds ptr, ptr %10, i64 %424
  %426 = load ptr, ptr %425, align 8, !tbaa !34
  %427 = getelementptr inbounds %struct.BVHNode, ptr %426, i64 0, i32 2
  %428 = icmp eq i64 %424, %339
  %429 = trunc i64 %424 to i32
  br i1 %428, label %449, label %430

430:                                              ; preds = %423, %443
  %431 = phi i64 [ %444, %443 ], [ %424, %423 ]
  %432 = load ptr, ptr %427, align 8, !tbaa !50
  %433 = getelementptr inbounds float, ptr %432, i64 %300
  %434 = load float, ptr %433, align 4, !tbaa !58
  %435 = getelementptr ptr, ptr %10, i64 %431
  %436 = getelementptr ptr, ptr %435, i64 -1
  %437 = load ptr, ptr %436, align 8, !tbaa !34
  %438 = getelementptr inbounds %struct.BVHNode, ptr %437, i64 0, i32 2
  %439 = load ptr, ptr %438, align 8, !tbaa !50
  %440 = getelementptr inbounds float, ptr %439, i64 %300
  %441 = load float, ptr %440, align 4, !tbaa !58
  %442 = fcmp olt float %434, %441
  br i1 %442, label %443, label %447

443:                                              ; preds = %430
  store ptr %437, ptr %435, align 8, !tbaa !34
  %444 = add nsw i64 %431, -1
  %445 = trunc i64 %444 to i32
  %446 = icmp eq i32 %335, %445
  br i1 %446, label %449, label %430, !llvm.loop !77

447:                                              ; preds = %430
  %448 = trunc i64 %431 to i32
  br label %449

449:                                              ; preds = %447, %443, %423
  %450 = phi i32 [ %429, %423 ], [ %448, %447 ], [ %335, %443 ]
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds ptr, ptr %10, i64 %451
  store ptr %426, ptr %452, align 8, !tbaa !34
  %453 = add nsw i64 %424, 1
  %454 = icmp eq i64 %453, %340
  br i1 %454, label %320, label %423, !llvm.loop !78

455:                                              ; preds = %320, %322, %296
  br i1 %140, label %518, label %456

456:                                              ; preds = %455
  %457 = mul nsw i64 %189, %143
  %458 = add nsw i64 %457, %144
  %459 = load i32, ptr %177, align 4, !tbaa !67
  %460 = getelementptr inbounds %struct.BVHNode, ptr %96, i64 %189, i32 4
  %461 = sext i32 %459 to i64
  %462 = sext i32 %459 to i64
  br label %463

463:                                              ; preds = %456, %506
  %464 = phi i64 [ 0, %456 ], [ %516, %506 ]
  %465 = add nsw i64 %458, %464
  %466 = sub nsw i64 %465, %182
  %467 = mul nsw i64 %466, %461
  %468 = icmp sgt i64 %467, %141
  %469 = trunc i64 %467 to i32
  br i1 %468, label %470, label %479

470:                                              ; preds = %463
  %471 = load i32, ptr %178, align 4, !tbaa !67
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %479, label %473

473:                                              ; preds = %470
  %474 = load i32, ptr %179, align 4, !tbaa !67
  %475 = trunc i64 %466 to i32
  %476 = sub i32 %475, %474
  %477 = mul i32 %476, %471
  %478 = add i32 %477, %7
  br label %479

479:                                              ; preds = %473, %470, %463
  %480 = phi i32 [ %478, %473 ], [ %469, %463 ], [ %130, %470 ]
  %481 = add nsw i64 %466, 1
  %482 = mul nsw i64 %481, %462
  %483 = icmp sgt i64 %482, %142
  %484 = trunc i64 %482 to i32
  br i1 %483, label %485, label %494

485:                                              ; preds = %479
  %486 = load i32, ptr %180, align 4, !tbaa !67
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %494, label %488

488:                                              ; preds = %485
  %489 = load i32, ptr %181, align 4, !tbaa !67
  %490 = trunc i64 %481 to i32
  %491 = sub i32 %490, %489
  %492 = mul i32 %491, %486
  %493 = add i32 %492, %7
  br label %494

494:                                              ; preds = %488, %485, %479
  %495 = phi i32 [ %493, %488 ], [ %484, %479 ], [ %130, %485 ]
  %496 = sub nsw i32 %495, %480
  %497 = icmp sgt i32 %496, 1
  br i1 %497, label %498, label %500

498:                                              ; preds = %494
  %499 = getelementptr inbounds %struct.BVHNode, ptr %96, i64 %465
  br label %506

500:                                              ; preds = %494
  %501 = icmp eq i32 %496, 1
  br i1 %501, label %502, label %518

502:                                              ; preds = %500
  %503 = sext i32 %480 to i64
  %504 = getelementptr inbounds ptr, ptr %10, i64 %503
  %505 = load ptr, ptr %504, align 8, !tbaa !34
  br label %506

506:                                              ; preds = %502, %498
  %507 = phi ptr [ %505, %502 ], [ %499, %498 ]
  %508 = load ptr, ptr %191, align 8, !tbaa !52
  %509 = getelementptr inbounds ptr, ptr %508, i64 %464
  store ptr %507, ptr %509, align 8, !tbaa !34
  %510 = load ptr, ptr %191, align 8, !tbaa !52
  %511 = getelementptr inbounds ptr, ptr %510, i64 %464
  %512 = load ptr, ptr %511, align 8, !tbaa !34
  %513 = getelementptr inbounds %struct.BVHNode, ptr %512, i64 0, i32 1
  store ptr %191, ptr %513, align 8, !tbaa !57
  %514 = trunc i64 %464 to i8
  %515 = add i8 %514, 1
  store i8 %515, ptr %460, align 4, !tbaa !62
  %516 = add nuw nsw i64 %464, 1
  %517 = icmp eq i64 %516, %150
  br i1 %517, label %518, label %463, !llvm.loop !79

518:                                              ; preds = %506, %500, %455
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %3) #10
  %519 = add nsw i64 %189, 1
  %520 = icmp eq i64 %519, %187
  br i1 %520, label %521, label %188, !llvm.loop !80

521:                                              ; preds = %518, %151
  %522 = add nuw i64 %152, 1
  %523 = icmp sgt i32 %155, %19
  br i1 %523, label %524, label %151, !llvm.loop !81

524:                                              ; preds = %521, %65
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %2) #10
  %525 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 6
  store i32 %19, ptr %525, align 8, !tbaa !82
  %526 = sext i32 %7 to i64
  %527 = zext nneg i32 %19 to i64
  br label %528

528:                                              ; preds = %524, %528
  %529 = phi i64 [ 0, %524 ], [ %534, %528 ]
  %530 = getelementptr inbounds %struct.BVHNode, ptr %9, i64 %529
  %531 = load ptr, ptr %0, align 8, !tbaa !46
  %532 = getelementptr ptr, ptr %531, i64 %529
  %533 = getelementptr ptr, ptr %532, i64 %526
  store ptr %530, ptr %533, align 8, !tbaa !34
  %534 = add nuw nsw i64 %529, 1
  %535 = icmp eq i64 %534, %527
  br i1 %535, label %536, label %528, !llvm.loop !83

536:                                              ; preds = %528
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_bvhtree_insert(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !56
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.BVHNode, ptr %6, i64 %9
  %11 = load ptr, ptr %0, align 8, !tbaa !46
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  store ptr %10, ptr %12, align 8, !tbaa !34
  %13 = add nsw i32 %8, 1
  store i32 %13, ptr %7, align 4, !tbaa !56
  %14 = getelementptr inbounds %struct.BVHNode, ptr %6, i64 %9, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 7
  %17 = load i8, ptr %16, align 4, !tbaa !44
  %18 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 8
  %19 = load i8, ptr %18, align 1, !tbaa !45
  %20 = icmp eq i8 %17, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %4, %21
  %22 = phi i8 [ %26, %21 ], [ %17, %4 ]
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [2 x float], ptr %15, i64 %23
  store float 0x47EFFFFFE0000000, ptr %24, align 4, !tbaa !58
  %25 = getelementptr inbounds [2 x float], ptr %15, i64 %23, i64 1
  store float 0xC7EFFFFFE0000000, ptr %25, align 4, !tbaa !58
  %26 = add i8 %22, 1
  %27 = icmp eq i8 %26, %19
  br i1 %27, label %28, label %21, !llvm.loop !59

28:                                               ; preds = %21, %4
  %29 = icmp sgt i32 %3, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %28
  %31 = icmp ult i8 %17, %19
  %32 = zext i8 %17 to i64
  %33 = zext i8 %19 to i64
  %34 = zext nneg i32 %3 to i64
  br label %35

35:                                               ; preds = %73, %30
  %36 = phi i64 [ 0, %30 ], [ %74, %73 ]
  br i1 %31, label %37, label %73

37:                                               ; preds = %35
  %38 = mul nuw nsw i64 %36, 3
  %39 = getelementptr inbounds float, ptr %2, i64 %38
  %40 = getelementptr inbounds float, ptr %39, i64 1
  %41 = getelementptr inbounds float, ptr %39, i64 2
  br label %42

42:                                               ; preds = %70, %37
  %43 = phi i64 [ %32, %37 ], [ %71, %70 ]
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds [13 x [3 x float]], ptr @KDOP_AXES, i64 0, i64 %43
  %46 = load float, ptr %39, align 4, !tbaa !58
  %47 = load float, ptr %45, align 4, !tbaa !58
  %48 = load float, ptr %40, align 4, !tbaa !58
  %49 = getelementptr inbounds float, ptr %45, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !58
  %51 = fmul float %48, %50
  %52 = tail call float @llvm.fmuladd.f32(float %46, float %47, float %51)
  %53 = load float, ptr %41, align 4, !tbaa !58
  %54 = getelementptr inbounds float, ptr %45, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !58
  %56 = tail call float @llvm.fmuladd.f32(float %53, float %55, float %52)
  %57 = shl nuw nsw i32 %44, 1
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds float, ptr %15, i64 %58
  %60 = load float, ptr %59, align 4, !tbaa !58
  %61 = fcmp olt float %56, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %42
  store float %56, ptr %59, align 4, !tbaa !58
  br label %63

63:                                               ; preds = %62, %42
  %64 = or disjoint i32 %57, 1
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds float, ptr %15, i64 %65
  %67 = load float, ptr %66, align 4, !tbaa !58
  %68 = fcmp ogt float %56, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store float %56, ptr %66, align 4, !tbaa !58
  br label %70

70:                                               ; preds = %69, %63
  %71 = add nuw nsw i64 %43, 1
  %72 = icmp eq i64 %71, %33
  br i1 %72, label %73, label %42, !llvm.loop !84

73:                                               ; preds = %70, %35
  %74 = add nuw nsw i64 %36, 1
  %75 = icmp eq i64 %74, %34
  br i1 %75, label %76, label %35, !llvm.loop !85

76:                                               ; preds = %73, %28
  %77 = getelementptr inbounds %struct.BVHNode, ptr %6, i64 %9, i32 3
  store i32 %1, ptr %77, align 8, !tbaa !86
  %78 = icmp ult i8 %17, %19
  br i1 %78, label %79, label %99

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 4
  %81 = getelementptr inbounds %struct.BVHNode, ptr %6, i64 %9, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !50
  %83 = zext i8 %17 to i64
  %84 = zext i8 %19 to i64
  br label %85

85:                                               ; preds = %79, %85
  %86 = phi i64 [ %83, %79 ], [ %97, %85 ]
  %87 = load float, ptr %80, align 8, !tbaa !38
  %88 = shl nuw nsw i64 %86, 1
  %89 = getelementptr inbounds float, ptr %82, i64 %88
  %90 = load float, ptr %89, align 4, !tbaa !58
  %91 = fsub float %90, %87
  store float %91, ptr %89, align 4, !tbaa !58
  %92 = load float, ptr %80, align 8, !tbaa !38
  %93 = or disjoint i64 %88, 1
  %94 = getelementptr inbounds float, ptr %82, i64 %93
  %95 = load float, ptr %94, align 4, !tbaa !58
  %96 = fadd float %92, %95
  store float %96, ptr %94, align 4, !tbaa !58
  %97 = add nuw nsw i64 %86, 1
  %98 = icmp ult i64 %97, %84
  br i1 %98, label %85, label %99, !llvm.loop !87

99:                                               ; preds = %85, %76
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BLI_bvhtree_update_node(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !56
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %146, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds %struct.BVHNode, ptr %11, i64 %12, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 7
  %16 = load i8, ptr %15, align 4, !tbaa !44
  %17 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 8
  %18 = load i8, ptr %17, align 1, !tbaa !45
  %19 = icmp eq i8 %16, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %9, %20
  %21 = phi i8 [ %25, %20 ], [ %16, %9 ]
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [2 x float], ptr %14, i64 %22
  store float 0x47EFFFFFE0000000, ptr %23, align 4, !tbaa !58
  %24 = getelementptr inbounds [2 x float], ptr %14, i64 %22, i64 1
  store float 0xC7EFFFFFE0000000, ptr %24, align 4, !tbaa !58
  %25 = add i8 %21, 1
  %26 = icmp eq i8 %25, %18
  br i1 %26, label %27, label %20, !llvm.loop !59

27:                                               ; preds = %20, %9
  %28 = icmp slt i32 %4, 1
  br i1 %28, label %75, label %29

29:                                               ; preds = %27
  %30 = icmp ult i8 %16, %18
  %31 = zext i8 %16 to i64
  %32 = zext i8 %18 to i64
  %33 = zext nneg i32 %4 to i64
  br label %34

34:                                               ; preds = %72, %29
  %35 = phi i64 [ 0, %29 ], [ %73, %72 ]
  br i1 %30, label %36, label %72

36:                                               ; preds = %34
  %37 = mul nuw nsw i64 %35, 3
  %38 = getelementptr inbounds float, ptr %2, i64 %37
  %39 = getelementptr inbounds float, ptr %38, i64 1
  %40 = getelementptr inbounds float, ptr %38, i64 2
  br label %41

41:                                               ; preds = %69, %36
  %42 = phi i64 [ %31, %36 ], [ %70, %69 ]
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds [13 x [3 x float]], ptr @KDOP_AXES, i64 0, i64 %42
  %45 = load float, ptr %38, align 4, !tbaa !58
  %46 = load float, ptr %44, align 4, !tbaa !58
  %47 = load float, ptr %39, align 4, !tbaa !58
  %48 = getelementptr inbounds float, ptr %44, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !58
  %50 = fmul float %47, %49
  %51 = tail call float @llvm.fmuladd.f32(float %45, float %46, float %50)
  %52 = load float, ptr %40, align 4, !tbaa !58
  %53 = getelementptr inbounds float, ptr %44, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !58
  %55 = tail call float @llvm.fmuladd.f32(float %52, float %54, float %51)
  %56 = shl nuw nsw i32 %43, 1
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds float, ptr %14, i64 %57
  %59 = load float, ptr %58, align 4, !tbaa !58
  %60 = fcmp olt float %55, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %41
  store float %55, ptr %58, align 4, !tbaa !58
  br label %62

62:                                               ; preds = %61, %41
  %63 = or disjoint i32 %56, 1
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds float, ptr %14, i64 %64
  %66 = load float, ptr %65, align 4, !tbaa !58
  %67 = fcmp ogt float %55, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store float %55, ptr %65, align 4, !tbaa !58
  br label %69

69:                                               ; preds = %68, %62
  %70 = add nuw nsw i64 %42, 1
  %71 = icmp eq i64 %70, %32
  br i1 %71, label %72, label %41, !llvm.loop !84

72:                                               ; preds = %69, %34
  %73 = add nuw nsw i64 %35, 1
  %74 = icmp eq i64 %73, %33
  br i1 %74, label %75, label %34, !llvm.loop !85

75:                                               ; preds = %72, %27
  %76 = icmp eq ptr %3, null
  %77 = or i1 %76, %28
  br i1 %77, label %124, label %78

78:                                               ; preds = %75
  %79 = icmp ult i8 %16, %18
  %80 = zext i8 %16 to i64
  %81 = zext i8 %18 to i64
  %82 = zext nneg i32 %4 to i64
  br label %83

83:                                               ; preds = %121, %78
  %84 = phi i64 [ 0, %78 ], [ %122, %121 ]
  br i1 %79, label %85, label %121

85:                                               ; preds = %83
  %86 = mul nuw nsw i64 %84, 3
  %87 = getelementptr inbounds float, ptr %3, i64 %86
  %88 = getelementptr inbounds float, ptr %87, i64 1
  %89 = getelementptr inbounds float, ptr %87, i64 2
  br label %90

90:                                               ; preds = %118, %85
  %91 = phi i64 [ %80, %85 ], [ %119, %118 ]
  %92 = trunc i64 %91 to i32
  %93 = getelementptr inbounds [13 x [3 x float]], ptr @KDOP_AXES, i64 0, i64 %91
  %94 = load float, ptr %87, align 4, !tbaa !58
  %95 = load float, ptr %93, align 4, !tbaa !58
  %96 = load float, ptr %88, align 4, !tbaa !58
  %97 = getelementptr inbounds float, ptr %93, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !58
  %99 = fmul float %96, %98
  %100 = tail call float @llvm.fmuladd.f32(float %94, float %95, float %99)
  %101 = load float, ptr %89, align 4, !tbaa !58
  %102 = getelementptr inbounds float, ptr %93, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !58
  %104 = tail call float @llvm.fmuladd.f32(float %101, float %103, float %100)
  %105 = shl nuw nsw i32 %92, 1
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds float, ptr %14, i64 %106
  %108 = load float, ptr %107, align 4, !tbaa !58
  %109 = fcmp olt float %104, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %90
  store float %104, ptr %107, align 4, !tbaa !58
  br label %111

111:                                              ; preds = %110, %90
  %112 = or disjoint i32 %105, 1
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds float, ptr %14, i64 %113
  %115 = load float, ptr %114, align 4, !tbaa !58
  %116 = fcmp ogt float %104, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store float %104, ptr %114, align 4, !tbaa !58
  br label %118

118:                                              ; preds = %117, %111
  %119 = add nuw nsw i64 %91, 1
  %120 = icmp eq i64 %119, %81
  br i1 %120, label %121, label %90, !llvm.loop !84

121:                                              ; preds = %118, %83
  %122 = add nuw nsw i64 %84, 1
  %123 = icmp eq i64 %122, %82
  br i1 %123, label %124, label %83, !llvm.loop !85

124:                                              ; preds = %121, %75
  %125 = icmp ult i8 %16, %18
  br i1 %125, label %126, label %146

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 4
  %128 = getelementptr inbounds %struct.BVHNode, ptr %11, i64 %12, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !50
  %130 = zext i8 %16 to i64
  %131 = zext i8 %18 to i64
  br label %132

132:                                              ; preds = %126, %132
  %133 = phi i64 [ %130, %126 ], [ %144, %132 ]
  %134 = load float, ptr %127, align 8, !tbaa !38
  %135 = shl nuw nsw i64 %133, 1
  %136 = getelementptr inbounds float, ptr %129, i64 %135
  %137 = load float, ptr %136, align 4, !tbaa !58
  %138 = fsub float %137, %134
  store float %138, ptr %136, align 4, !tbaa !58
  %139 = load float, ptr %127, align 8, !tbaa !38
  %140 = or disjoint i64 %135, 1
  %141 = getelementptr inbounds float, ptr %129, i64 %140
  %142 = load float, ptr %141, align 4, !tbaa !58
  %143 = fadd float %139, %142
  store float %143, ptr %141, align 4, !tbaa !58
  %144 = add nuw nsw i64 %133, 1
  %145 = icmp ult i64 %144, %131
  br i1 %145, label %132, label %146, !llvm.loop !88

146:                                              ; preds = %132, %124, %5
  %147 = phi i8 [ 0, %5 ], [ 1, %124 ], [ 1, %132 ]
  ret i8 %147
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_bvhtree_update_tree(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !56
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !82
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %6, i64 %9
  %11 = getelementptr inbounds ptr, ptr %10, i64 -1
  %12 = icmp ult ptr %11, %6
  br i1 %12, label %76, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 7
  %15 = load i8, ptr %14, align 4, !tbaa !44
  %16 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 8
  %17 = load i8, ptr %16, align 1, !tbaa !45
  %18 = icmp eq i8 %15, %17
  %19 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 10
  %20 = load i8, ptr %19, align 1, !tbaa !42
  %21 = icmp eq i8 %20, 0
  %22 = icmp ult i8 %15, %17
  %23 = zext i8 %15 to i64
  %24 = zext i8 %17 to i64
  %25 = zext i8 %20 to i64
  br label %26

26:                                               ; preds = %13, %73
  %27 = phi ptr [ %11, %13 ], [ %74, %73 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.BVHNode, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !50
  br i1 %18, label %31, label %34

31:                                               ; preds = %34, %26
  br i1 %21, label %73, label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr %28, align 8, !tbaa !52
  br label %41

34:                                               ; preds = %26, %34
  %35 = phi i8 [ %39, %34 ], [ %15, %26 ]
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [2 x float], ptr %30, i64 %36
  store float 0x47EFFFFFE0000000, ptr %37, align 4, !tbaa !58
  %38 = getelementptr inbounds [2 x float], ptr %30, i64 %36, i64 1
  store float 0xC7EFFFFFE0000000, ptr %38, align 4, !tbaa !58
  %39 = add i8 %35, 1
  %40 = icmp eq i8 %39, %17
  br i1 %40, label %31, label %34, !llvm.loop !59

41:                                               ; preds = %32, %70
  %42 = phi i64 [ 0, %32 ], [ %71, %70 ]
  %43 = getelementptr inbounds ptr, ptr %33, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %73, label %46

46:                                               ; preds = %41
  br i1 %22, label %47, label %70

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.BVHNode, ptr %44, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !50
  br label %50

50:                                               ; preds = %47, %67
  %51 = phi i64 [ %23, %47 ], [ %68, %67 ]
  %52 = shl nuw nsw i64 %51, 1
  %53 = getelementptr inbounds float, ptr %49, i64 %52
  %54 = load float, ptr %53, align 4, !tbaa !58
  %55 = getelementptr inbounds float, ptr %30, i64 %52
  %56 = load float, ptr %55, align 4, !tbaa !58
  %57 = fcmp olt float %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store float %54, ptr %55, align 4, !tbaa !58
  br label %59

59:                                               ; preds = %58, %50
  %60 = or disjoint i64 %52, 1
  %61 = getelementptr inbounds float, ptr %49, i64 %60
  %62 = load float, ptr %61, align 4, !tbaa !58
  %63 = getelementptr inbounds float, ptr %30, i64 %60
  %64 = load float, ptr %63, align 4, !tbaa !58
  %65 = fcmp ogt float %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store float %62, ptr %63, align 4, !tbaa !58
  br label %67

67:                                               ; preds = %66, %59
  %68 = add nuw nsw i64 %51, 1
  %69 = icmp ult i64 %68, %24
  br i1 %69, label %50, label %70, !llvm.loop !89

70:                                               ; preds = %67, %46
  %71 = add nuw nsw i64 %42, 1
  %72 = icmp eq i64 %71, %25
  br i1 %72, label %73, label %41, !llvm.loop !90

73:                                               ; preds = %41, %70, %31
  %74 = getelementptr inbounds ptr, ptr %27, i64 -1
  %75 = icmp ult ptr %74, %6
  br i1 %75, label %76, label %26, !llvm.loop !91

76:                                               ; preds = %73, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @BLI_bvhtree_getepsilon(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 4
  %3 = load float, ptr %2, align 8, !tbaa !38
  ret float %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_bvhtree_overlap(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 9
  %5 = load i8, ptr %4, align 2, !tbaa !43
  %6 = getelementptr inbounds %struct.BVHTree, ptr %1, i64 0, i32 9
  %7 = load i8, ptr %6, align 2, !tbaa !43
  %8 = icmp eq i8 %5, %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = icmp eq i8 %5, 14
  %11 = icmp eq i8 %7, 14
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = icmp eq i8 %5, 18
  %15 = icmp eq i8 %7, 18
  %16 = or i1 %14, %15
  br i1 %16, label %204, label %17

17:                                               ; preds = %13, %9, %3
  %18 = load ptr, ptr %0, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !56
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.BVHTree, ptr %1, i64 0, i32 5
  %25 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 7
  %26 = load i8, ptr %25, align 4, !tbaa !44
  %27 = getelementptr inbounds %struct.BVHTree, ptr %1, i64 0, i32 7
  %28 = load i8, ptr %27, align 4, !tbaa !44
  %29 = tail call i8 @llvm.umin.i8(i8 %26, i8 %28)
  %30 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 8
  %31 = load i8, ptr %30, align 1, !tbaa !45
  %32 = getelementptr inbounds %struct.BVHTree, ptr %1, i64 0, i32 8
  %33 = load i8, ptr %32, align 1, !tbaa !45
  %34 = tail call i8 @llvm.umin.i8(i8 %31, i8 %33)
  %35 = getelementptr inbounds %struct.BVHNode, ptr %23, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  %37 = zext i8 %34 to i64
  %38 = shl nuw nsw i64 %37, 1
  %39 = getelementptr inbounds float, ptr %36, i64 %38
  %40 = zext i8 %29 to i64
  %41 = shl nuw nsw i64 %40, 1
  %42 = icmp eq i64 %41, %38
  br i1 %42, label %76, label %43

43:                                               ; preds = %17
  %44 = load ptr, ptr %1, align 8, !tbaa !46
  %45 = load i32, ptr %24, align 4, !tbaa !56
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %44, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = getelementptr inbounds %struct.BVHNode, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !50
  %51 = getelementptr inbounds float, ptr %50, i64 %41
  %52 = getelementptr inbounds float, ptr %36, i64 %41
  %53 = load float, ptr %52, align 4, !tbaa !58
  %54 = getelementptr inbounds float, ptr %51, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !58
  %56 = fcmp ogt float %53, %55
  br i1 %56, label %74, label %63

57:                                               ; preds = %71
  %58 = getelementptr inbounds float, ptr %65, i64 2
  %59 = load float, ptr %72, align 4, !tbaa !58
  %60 = getelementptr inbounds float, ptr %65, i64 3
  %61 = load float, ptr %60, align 4, !tbaa !58
  %62 = fcmp ogt float %59, %61
  br i1 %62, label %74, label %63, !llvm.loop !92

63:                                               ; preds = %43, %57
  %64 = phi ptr [ %72, %57 ], [ %52, %43 ]
  %65 = phi ptr [ %58, %57 ], [ %51, %43 ]
  %66 = phi i1 [ %73, %57 ], [ %42, %43 ]
  %67 = load float, ptr %65, align 4, !tbaa !58
  %68 = getelementptr inbounds float, ptr %64, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !58
  %70 = fcmp ogt float %67, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = getelementptr inbounds float, ptr %64, i64 2
  %73 = icmp eq ptr %72, %39
  br i1 %73, label %76, label %57, !llvm.loop !92

74:                                               ; preds = %63, %57, %43
  %75 = phi i1 [ %42, %43 ], [ %66, %63 ], [ %73, %57 ]
  br i1 %75, label %76, label %204

76:                                               ; preds = %71, %17, %74
  %77 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %78 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 10
  %79 = load i8, ptr %78, align 1, !tbaa !42
  %80 = zext i8 %79 to i64
  %81 = shl nuw nsw i64 %80, 3
  %82 = tail call ptr %77(i64 noundef %81, ptr noundef nonnull @.str.4) #10
  %83 = load i8, ptr %78, align 1, !tbaa !42
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %96, %76
  %86 = load i8, ptr %78, align 1, !tbaa !42
  %87 = load ptr, ptr %0, align 8, !tbaa !46
  %88 = load i32, ptr %19, align 4, !tbaa !56
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %87, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !34
  %92 = getelementptr inbounds %struct.BVHNode, ptr %91, i64 0, i32 4
  %93 = load i8, ptr %92, align 4, !tbaa !62
  %94 = tail call i8 @llvm.umin.i8(i8 %86, i8 %93)
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %120, label %123

96:                                               ; preds = %76, %96
  %97 = phi i64 [ %116, %96 ], [ 0, %76 ]
  %98 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %99 = tail call ptr %98(i64 noundef 32, ptr noundef nonnull @.str.5) #10
  %100 = getelementptr inbounds ptr, ptr %82, i64 %97
  store ptr %99, ptr %100, align 8, !tbaa !34
  %101 = tail call ptr @BLI_stack_new(i64 noundef 8, ptr noundef nonnull @__func__.BLI_bvhtree_overlap) #10
  %102 = load ptr, ptr %100, align 8, !tbaa !34
  %103 = getelementptr inbounds %struct.BVHOverlapData, ptr %102, i64 0, i32 2
  store ptr %101, ptr %103, align 8, !tbaa !93
  %104 = load ptr, ptr %100, align 8, !tbaa !34
  store ptr %0, ptr %104, align 8, !tbaa !95
  %105 = load ptr, ptr %100, align 8, !tbaa !34
  %106 = getelementptr inbounds %struct.BVHOverlapData, ptr %105, i64 0, i32 1
  store ptr %1, ptr %106, align 8, !tbaa !96
  %107 = load i8, ptr %25, align 4, !tbaa !44
  %108 = load i8, ptr %27, align 4, !tbaa !44
  %109 = tail call i8 @llvm.umin.i8(i8 %107, i8 %108)
  %110 = load ptr, ptr %100, align 8, !tbaa !34
  %111 = getelementptr inbounds %struct.BVHOverlapData, ptr %110, i64 0, i32 3
  store i8 %109, ptr %111, align 8, !tbaa !97
  %112 = load i8, ptr %30, align 1, !tbaa !45
  %113 = load i8, ptr %32, align 1, !tbaa !45
  %114 = tail call i8 @llvm.umin.i8(i8 %112, i8 %113)
  %115 = getelementptr inbounds %struct.BVHOverlapData, ptr %110, i64 0, i32 4
  store i8 %114, ptr %115, align 1, !tbaa !98
  %116 = add nuw nsw i64 %97, 1
  %117 = load i8, ptr %78, align 1, !tbaa !42
  %118 = zext i8 %117 to i64
  %119 = icmp ult i64 %116, %118
  br i1 %119, label %96, label %85, !llvm.loop !99

120:                                              ; preds = %123, %85
  %121 = load i8, ptr %78, align 1, !tbaa !42
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %161, label %148

123:                                              ; preds = %85, %123
  %124 = phi i64 [ %136, %123 ], [ 0, %85 ]
  %125 = phi ptr [ %142, %123 ], [ %91, %85 ]
  %126 = getelementptr inbounds ptr, ptr %82, i64 %124
  %127 = load ptr, ptr %126, align 8, !tbaa !34
  %128 = load ptr, ptr %125, align 8, !tbaa !52
  %129 = getelementptr inbounds ptr, ptr %128, i64 %124
  %130 = load ptr, ptr %129, align 8, !tbaa !34
  %131 = load ptr, ptr %1, align 8, !tbaa !46
  %132 = load i32, ptr %24, align 4, !tbaa !56
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds ptr, ptr %131, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !34
  tail call fastcc void @traverse(ptr noundef %127, ptr noundef %130, ptr noundef %135)
  %136 = add nuw nsw i64 %124, 1
  %137 = load i8, ptr %78, align 1, !tbaa !42
  %138 = load ptr, ptr %0, align 8, !tbaa !46
  %139 = load i32, ptr %19, align 4, !tbaa !56
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds ptr, ptr %138, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !34
  %143 = getelementptr inbounds %struct.BVHNode, ptr %142, i64 0, i32 4
  %144 = load i8, ptr %143, align 4, !tbaa !62
  %145 = tail call i8 @llvm.umin.i8(i8 %137, i8 %144)
  %146 = zext i8 %145 to i64
  %147 = icmp ult i64 %136, %146
  br i1 %147, label %123, label %120, !llvm.loop !100

148:                                              ; preds = %120, %148
  %149 = phi i64 [ %157, %148 ], [ 0, %120 ]
  %150 = phi i64 [ %156, %148 ], [ 0, %120 ]
  %151 = getelementptr inbounds ptr, ptr %82, i64 %149
  %152 = load ptr, ptr %151, align 8, !tbaa !34
  %153 = getelementptr inbounds %struct.BVHOverlapData, ptr %152, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !93
  %155 = tail call i64 @BLI_stack_count(ptr noundef %154) #10
  %156 = add i64 %155, %150
  %157 = add nuw nsw i64 %149, 1
  %158 = load i8, ptr %78, align 1, !tbaa !42
  %159 = zext i8 %158 to i64
  %160 = icmp ult i64 %157, %159
  br i1 %160, label %148, label %161, !llvm.loop !101

161:                                              ; preds = %148, %120
  %162 = phi i64 [ 0, %120 ], [ %156, %148 ]
  %163 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %164 = shl i64 %162, 3
  %165 = tail call ptr %163(i64 noundef %164, ptr noundef nonnull @.str.6) #10
  %166 = load i8, ptr %78, align 1, !tbaa !42
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %171, %161
  %169 = load i8, ptr %78, align 1, !tbaa !42
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %201, label %192

171:                                              ; preds = %161, %171
  %172 = phi i64 [ %188, %171 ], [ 0, %161 ]
  %173 = phi ptr [ %187, %171 ], [ %165, %161 ]
  %174 = getelementptr inbounds ptr, ptr %82, i64 %172
  %175 = load ptr, ptr %174, align 8, !tbaa !34
  %176 = getelementptr inbounds %struct.BVHOverlapData, ptr %175, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !93
  %178 = tail call i64 @BLI_stack_count(ptr noundef %177) #10
  %179 = trunc i64 %178 to i32
  %180 = load ptr, ptr %174, align 8, !tbaa !34
  %181 = getelementptr inbounds %struct.BVHOverlapData, ptr %180, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !93
  tail call void @BLI_stack_pop_n(ptr noundef %182, ptr noundef %173, i32 noundef %179) #10
  %183 = load ptr, ptr %174, align 8, !tbaa !34
  %184 = getelementptr inbounds %struct.BVHOverlapData, ptr %183, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !93
  tail call void @BLI_stack_free(ptr noundef %185) #10
  %186 = and i64 %178, 4294967295
  %187 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %173, i64 %186
  %188 = add nuw nsw i64 %172, 1
  %189 = load i8, ptr %78, align 1, !tbaa !42
  %190 = zext i8 %189 to i64
  %191 = icmp ult i64 %188, %190
  br i1 %191, label %171, label %168, !llvm.loop !102

192:                                              ; preds = %168, %192
  %193 = phi i64 [ %197, %192 ], [ 0, %168 ]
  %194 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %195 = getelementptr inbounds ptr, ptr %82, i64 %193
  %196 = load ptr, ptr %195, align 8, !tbaa !34
  tail call void %194(ptr noundef %196) #10
  %197 = add nuw nsw i64 %193, 1
  %198 = load i8, ptr %78, align 1, !tbaa !42
  %199 = zext i8 %198 to i64
  %200 = icmp ult i64 %197, %199
  br i1 %200, label %192, label %201, !llvm.loop !103

201:                                              ; preds = %192, %168
  %202 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %202(ptr noundef %82) #10
  %203 = trunc i64 %162 to i32
  store i32 %203, ptr %2, align 4, !tbaa !67
  br label %204

204:                                              ; preds = %74, %13, %201
  %205 = phi ptr [ %165, %201 ], [ null, %13 ], [ null, %74 ]
  ret ptr %205
}

declare ptr @BLI_stack_new(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @traverse(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BVHOverlapData, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 8, !tbaa !97
  %6 = getelementptr inbounds %struct.BVHOverlapData, ptr %0, i64 0, i32 4
  %7 = load i8, ptr %6, align 1, !tbaa !98
  %8 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = zext i8 %7 to i64
  %11 = shl nuw nsw i64 %10, 1
  %12 = getelementptr inbounds float, ptr %9, i64 %11
  %13 = zext i8 %5 to i64
  %14 = shl nuw nsw i64 %13, 1
  %15 = icmp eq i64 %14, %11
  br i1 %15, label %44, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.BVHNode, ptr %2, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = getelementptr inbounds float, ptr %18, i64 %14
  %20 = getelementptr inbounds float, ptr %9, i64 %14
  %21 = load float, ptr %20, align 4, !tbaa !58
  %22 = getelementptr inbounds float, ptr %19, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !58
  %24 = fcmp ogt float %21, %23
  br i1 %24, label %42, label %31

25:                                               ; preds = %39
  %26 = getelementptr inbounds float, ptr %33, i64 2
  %27 = load float, ptr %40, align 4, !tbaa !58
  %28 = getelementptr inbounds float, ptr %33, i64 3
  %29 = load float, ptr %28, align 4, !tbaa !58
  %30 = fcmp ogt float %27, %29
  br i1 %30, label %42, label %31, !llvm.loop !92

31:                                               ; preds = %16, %25
  %32 = phi ptr [ %40, %25 ], [ %20, %16 ]
  %33 = phi ptr [ %26, %25 ], [ %19, %16 ]
  %34 = phi i1 [ %41, %25 ], [ %15, %16 ]
  %35 = load float, ptr %33, align 4, !tbaa !58
  %36 = getelementptr inbounds float, ptr %32, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !58
  %38 = fcmp ogt float %35, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds float, ptr %32, i64 2
  %41 = icmp eq ptr %40, %12
  br i1 %41, label %44, label %25, !llvm.loop !92

42:                                               ; preds = %31, %25, %16
  %43 = phi i1 [ %15, %16 ], [ %34, %31 ], [ %41, %25 ]
  br i1 %43, label %44, label %103

44:                                               ; preds = %39, %3, %42
  %45 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 4
  %46 = load i8, ptr %45, align 4, !tbaa !62
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.BVHOverlapData, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !96
  %51 = getelementptr inbounds %struct.BVHTree, ptr %50, i64 0, i32 10
  %52 = load i8, ptr %51, align 1, !tbaa !42
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %103, label %89

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.BVHNode, ptr %2, i64 0, i32 4
  %56 = load i8, ptr %55, align 4, !tbaa !62
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.BVHOverlapData, ptr %0, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !96
  %61 = getelementptr inbounds %struct.BVHTree, ptr %60, i64 0, i32 10
  %62 = load i8, ptr %61, align 1, !tbaa !42
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %103, label %75

64:                                               ; preds = %54
  %65 = icmp eq ptr %1, %2
  br i1 %65, label %103, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.BVHOverlapData, ptr %0, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !93
  %69 = tail call ptr @BLI_stack_push_r(ptr noundef %68) #10
  %70 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 3
  %71 = load i32, ptr %70, align 8, !tbaa !86
  store i32 %71, ptr %69, align 4, !tbaa !104
  %72 = getelementptr inbounds %struct.BVHNode, ptr %2, i64 0, i32 3
  %73 = load i32, ptr %72, align 8, !tbaa !86
  %74 = getelementptr inbounds %struct.BVHTreeOverlap, ptr %69, i64 0, i32 1
  store i32 %73, ptr %74, align 4, !tbaa !106
  br label %103

75:                                               ; preds = %58, %82
  %76 = phi i64 [ %83, %82 ], [ 0, %58 ]
  %77 = load ptr, ptr %2, align 8, !tbaa !52
  %78 = getelementptr inbounds ptr, ptr %77, i64 %76
  %79 = load ptr, ptr %78, align 8, !tbaa !34
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  tail call fastcc void @traverse(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %79)
  br label %82

82:                                               ; preds = %75, %81
  %83 = add nuw nsw i64 %76, 1
  %84 = load ptr, ptr %59, align 8, !tbaa !96
  %85 = getelementptr inbounds %struct.BVHTree, ptr %84, i64 0, i32 10
  %86 = load i8, ptr %85, align 1, !tbaa !42
  %87 = zext i8 %86 to i64
  %88 = icmp ult i64 %83, %87
  br i1 %88, label %75, label %103, !llvm.loop !107

89:                                               ; preds = %48, %96
  %90 = phi i64 [ %97, %96 ], [ 0, %48 ]
  %91 = load ptr, ptr %1, align 8, !tbaa !52
  %92 = getelementptr inbounds ptr, ptr %91, i64 %90
  %93 = load ptr, ptr %92, align 8, !tbaa !34
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  tail call fastcc void @traverse(ptr noundef %0, ptr noundef nonnull %93, ptr noundef %2)
  br label %96

96:                                               ; preds = %89, %95
  %97 = add nuw nsw i64 %90, 1
  %98 = load ptr, ptr %49, align 8, !tbaa !96
  %99 = getelementptr inbounds %struct.BVHTree, ptr %98, i64 0, i32 10
  %100 = load i8, ptr %99, align 1, !tbaa !42
  %101 = zext i8 %100 to i64
  %102 = icmp ult i64 %97, %101
  br i1 %102, label %89, label %103, !llvm.loop !108

103:                                              ; preds = %96, %82, %48, %58, %66, %64, %42
  ret void
}

declare i64 @BLI_stack_count(ptr noundef) local_unnamed_addr #4

declare void @BLI_stack_pop_n(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @BLI_stack_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_bvhtree_find_nearest(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.BVHNearestData, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #10
  %8 = load ptr, ptr %0, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !56
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  store ptr %0, ptr %7, align 8, !tbaa !109
  %14 = getelementptr inbounds %struct.BVHNearestData, ptr %7, i64 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !112
  %15 = getelementptr inbounds %struct.BVHNearestData, ptr %7, i64 0, i32 2
  store ptr %3, ptr %15, align 8, !tbaa !113
  %16 = getelementptr inbounds %struct.BVHNearestData, ptr %7, i64 0, i32 3
  store ptr %4, ptr %16, align 8, !tbaa !114
  %17 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 7
  %18 = load i8, ptr %17, align 4, !tbaa !44
  %19 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 8
  %20 = load i8, ptr %19, align 1, !tbaa !45
  %21 = icmp eq i8 %18, %20
  br i1 %21, label %43, label %22

22:                                               ; preds = %5
  %23 = load float, ptr %1, align 4, !tbaa !58
  %24 = getelementptr inbounds float, ptr %1, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !58
  %26 = getelementptr inbounds float, ptr %1, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !58
  br label %28

28:                                               ; preds = %22, %28
  %29 = phi i8 [ %18, %22 ], [ %41, %28 ]
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [13 x [3 x float]], ptr @KDOP_AXES, i64 0, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !58
  %33 = getelementptr inbounds float, ptr %31, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !58
  %35 = fmul float %25, %34
  %36 = tail call float @llvm.fmuladd.f32(float %23, float %32, float %35)
  %37 = getelementptr inbounds float, ptr %31, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !58
  %39 = tail call float @llvm.fmuladd.f32(float %27, float %38, float %36)
  %40 = getelementptr inbounds %struct.BVHNearestData, ptr %7, i64 0, i32 4, i64 %30
  store float %39, ptr %40, align 4, !tbaa !58
  %41 = add i8 %29, 1
  %42 = icmp eq i8 %41, %20
  br i1 %42, label %43, label %28, !llvm.loop !115

43:                                               ; preds = %28, %5
  %44 = icmp eq ptr %2, null
  %45 = getelementptr inbounds %struct.BVHNearestData, ptr %7, i64 0, i32 5
  br i1 %44, label %47, label %46

46:                                               ; preds = %43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %45, ptr noundef nonnull align 4 dereferenceable(36) %2, i64 36, i1 false)
  br label %49

47:                                               ; preds = %43
  store i32 -1, ptr %45, align 4, !tbaa !116
  %48 = getelementptr inbounds %struct.BVHNearestData, ptr %7, i64 0, i32 5, i32 3
  store float 0x47EFFFFFE0000000, ptr %48, align 8, !tbaa !117
  br label %49

49:                                               ; preds = %47, %46
  %50 = icmp eq ptr %13, null
  br i1 %50, label %97, label %51

51:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %52 = getelementptr inbounds %struct.BVHNearestData, ptr %7, i64 0, i32 4
  %53 = getelementptr inbounds %struct.BVHNode, ptr %13, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !50
  br label %55

55:                                               ; preds = %71, %51
  %56 = phi i64 [ 0, %51 ], [ %72, %71 ]
  %57 = phi ptr [ %54, %51 ], [ %73, %71 ]
  %58 = load float, ptr %57, align 4, !tbaa !58
  %59 = getelementptr inbounds float, ptr %52, i64 %56
  %60 = load float, ptr %59, align 4, !tbaa !58
  %61 = fcmp ogt float %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = getelementptr inbounds float, ptr %6, i64 %56
  store float %58, ptr %63, align 4, !tbaa !58
  br label %71

64:                                               ; preds = %55
  %65 = getelementptr inbounds float, ptr %57, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !58
  %67 = fcmp olt float %66, %60
  %68 = getelementptr inbounds float, ptr %6, i64 %56
  br i1 %67, label %69, label %70

69:                                               ; preds = %64
  store float %66, ptr %68, align 4, !tbaa !58
  br label %71

70:                                               ; preds = %64
  store float %60, ptr %68, align 4, !tbaa !58
  br label %71

71:                                               ; preds = %70, %69, %62
  %72 = add nuw nsw i64 %56, 1
  %73 = getelementptr inbounds float, ptr %57, i64 2
  %74 = icmp eq i64 %72, 3
  br i1 %74, label %75, label %55, !llvm.loop !118

75:                                               ; preds = %71
  %76 = load float, ptr %6, align 4, !tbaa !58
  %77 = load float, ptr %52, align 8, !tbaa !58
  %78 = fsub float %76, %77
  %79 = getelementptr inbounds float, ptr %6, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !58
  %81 = getelementptr inbounds %struct.BVHNearestData, ptr %7, i64 0, i32 4, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !58
  %83 = fsub float %80, %82
  %84 = getelementptr inbounds float, ptr %6, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !58
  %86 = getelementptr inbounds %struct.BVHNearestData, ptr %7, i64 0, i32 4, i64 2
  %87 = load float, ptr %86, align 8, !tbaa !58
  %88 = fsub float %85, %87
  %89 = fmul float %83, %83
  %90 = tail call float @llvm.fmuladd.f32(float %78, float %78, float %89)
  %91 = tail call float @llvm.fmuladd.f32(float %88, float %88, float %90)
  %92 = getelementptr inbounds %struct.BVHNearestData, ptr %7, i64 0, i32 5, i32 3
  %93 = load float, ptr %92, align 8, !tbaa !117
  %94 = fcmp ult float %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %75
  call fastcc void @dfs_find_nearest_dfs(ptr noundef nonnull %7, ptr noundef nonnull %13)
  br label %96

96:                                               ; preds = %75, %95
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  br label %97

97:                                               ; preds = %96, %49
  br i1 %44, label %100, label %98

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.BVHNearestData, ptr %7, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, ptr noundef nonnull align 4 dereferenceable(36) %99, i64 36, i1 false)
  br label %100

100:                                              ; preds = %98, %97
  %101 = getelementptr inbounds %struct.BVHNearestData, ptr %7, i64 0, i32 5
  %102 = load i32, ptr %101, align 4, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #10
  ret i32 %102
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_bvhtree_ray_cast(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.BVHRayCastData, align 8
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %8) #10
  %9 = load ptr, ptr %0, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !56
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  store ptr %0, ptr %8, align 8, !tbaa !119
  %15 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 1
  store ptr %5, ptr %15, align 8, !tbaa !123
  %16 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 2
  store ptr %6, ptr %16, align 8, !tbaa !124
  %17 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 3
  %18 = load float, ptr %1, align 4, !tbaa !58
  store float %18, ptr %17, align 8, !tbaa !58
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !58
  %21 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 3, i32 0, i64 1
  store float %20, ptr %21, align 4, !tbaa !58
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !58
  %24 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 3, i32 0, i64 2
  store float %23, ptr %24, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 3, i32 1
  %26 = load float, ptr %2, align 4, !tbaa !58
  store float %26, ptr %25, align 4, !tbaa !58
  %27 = getelementptr inbounds float, ptr %2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !58
  %29 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 3, i32 1, i64 1
  store float %28, ptr %29, align 8, !tbaa !58
  %30 = getelementptr inbounds float, ptr %2, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !58
  %32 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 3, i32 1, i64 2
  store float %31, ptr %32, align 4, !tbaa !58
  %33 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 3, i32 2
  store float %3, ptr %33, align 8, !tbaa !125
  %34 = fmul float %28, %28
  %35 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %31, float %31, float %35)
  %37 = fcmp ogt float %36, 0x38AA95A5C0000000
  br i1 %37, label %38, label %47

38:                                               ; preds = %7
  %39 = tail call float @sqrtf(float noundef %36) #10
  %40 = fdiv float 1.000000e+00, %39
  %41 = load float, ptr %25, align 4, !tbaa !58
  %42 = fmul float %41, %40
  store float %42, ptr %25, align 4, !tbaa !58
  %43 = load float, ptr %29, align 8, !tbaa !58
  %44 = fmul float %40, %43
  store float %44, ptr %29, align 8, !tbaa !58
  %45 = load float, ptr %32, align 4, !tbaa !58
  %46 = fmul float %40, %45
  br label %48

47:                                               ; preds = %7
  store float 0.000000e+00, ptr %25, align 4, !tbaa !58
  store float 0.000000e+00, ptr %29, align 8, !tbaa !58
  br label %48

48:                                               ; preds = %38, %47
  %49 = phi float [ 0.000000e+00, %47 ], [ %46, %38 ]
  store float %49, ptr %32, align 4, !tbaa !58
  %50 = load float, ptr %25, align 4, !tbaa !58
  %51 = load float, ptr %29, align 8, !tbaa !58
  br label %52

52:                                               ; preds = %48, %69
  %53 = phi i64 [ 0, %48 ], [ %83, %69 ]
  %54 = getelementptr inbounds [13 x [3 x float]], ptr @KDOP_AXES, i64 0, i64 %53
  %55 = load float, ptr %54, align 4, !tbaa !58
  %56 = getelementptr inbounds float, ptr %54, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !58
  %58 = fmul float %51, %57
  %59 = tail call float @llvm.fmuladd.f32(float %50, float %55, float %58)
  %60 = getelementptr inbounds float, ptr %54, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !58
  %62 = tail call float @llvm.fmuladd.f32(float %49, float %61, float %59)
  %63 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 4, i64 %53
  store float %62, ptr %63, align 4, !tbaa !58
  %64 = fdiv float 1.000000e+00, %62
  %65 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 5, i64 %53
  store float %64, ptr %65, align 4, !tbaa !58
  %66 = tail call float @llvm.fabs.f32(float %62)
  %67 = fcmp olt float %66, 0x3E80000000000000
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  store float 0.000000e+00, ptr %63, align 4, !tbaa !58
  br label %69

69:                                               ; preds = %68, %52
  %70 = load float, ptr %65, align 4, !tbaa !58
  %71 = fcmp olt float %70, 0.000000e+00
  %72 = zext i1 %71 to i32
  %73 = shl nuw nsw i64 %53, 1
  %74 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 6, i64 %73
  store i32 %72, ptr %74, align 4, !tbaa !67
  %75 = xor i1 %71, true
  %76 = zext i1 %75 to i32
  %77 = or disjoint i64 %73, 1
  %78 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 6, i64 %77
  store i32 %76, ptr %78, align 8, !tbaa !67
  %79 = trunc i64 %73 to i32
  %80 = or disjoint i32 %79, %72
  store i32 %80, ptr %74, align 4, !tbaa !67
  %81 = trunc i64 %73 to i32
  %82 = or disjoint i32 %81, %76
  store i32 %82, ptr %78, align 8, !tbaa !67
  %83 = add nuw nsw i64 %53, 1
  %84 = icmp eq i64 %83, 3
  br i1 %84, label %85, label %52, !llvm.loop !126

85:                                               ; preds = %69
  %86 = icmp eq ptr %4, null
  %87 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 7
  br i1 %86, label %89, label %88

88:                                               ; preds = %85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %87, ptr noundef nonnull align 4 dereferenceable(36) %4, i64 36, i1 false)
  br label %91

89:                                               ; preds = %85
  store i32 -1, ptr %87, align 4, !tbaa !127
  %90 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 7, i32 3
  store float 0x47EFFFFFE0000000, ptr %90, align 8, !tbaa !128
  br label %91

91:                                               ; preds = %89, %88
  %92 = icmp eq ptr %14, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %91
  call fastcc void @dfs_raycast(ptr noundef nonnull %8, ptr noundef nonnull %14)
  br label %94

94:                                               ; preds = %93, %91
  br i1 %86, label %97, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %96, i64 36, i1 false)
  br label %97

97:                                               ; preds = %95, %94
  %98 = getelementptr inbounds %struct.BVHRayCastData, ptr %8, i64 0, i32 7
  %99 = load i32, ptr %98, align 4, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %8) #10
  ret i32 %99
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @dfs_raycast(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 3, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !125
  %6 = fcmp oeq float %5, 0.000000e+00
  %7 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  br i1 %6, label %9, label %93

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !67
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds float, ptr %8, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !58
  %15 = load float, ptr %3, align 8, !tbaa !58
  %16 = fsub float %14, %15
  %17 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 5
  %18 = load float, ptr %17, align 8, !tbaa !58
  %19 = fmul float %16, %18
  %20 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 6, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !67
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, ptr %8, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !58
  %25 = fsub float %24, %15
  %26 = fmul float %18, %25
  %27 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 6, i64 2
  %28 = load i32, ptr %27, align 4, !tbaa !67
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, ptr %8, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !58
  %32 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 3, i32 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !58
  %34 = fsub float %31, %33
  %35 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 5, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !58
  %37 = fmul float %34, %36
  %38 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 6, i64 3
  %39 = load i32, ptr %38, align 4, !tbaa !67
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, ptr %8, i64 %40
  %42 = load float, ptr %41, align 4, !tbaa !58
  %43 = fsub float %42, %33
  %44 = fmul float %36, %43
  %45 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 6, i64 4
  %46 = load i32, ptr %45, align 4, !tbaa !67
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, ptr %8, i64 %47
  %49 = load float, ptr %48, align 4, !tbaa !58
  %50 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 3, i32 0, i64 2
  %51 = load float, ptr %50, align 8, !tbaa !58
  %52 = fsub float %49, %51
  %53 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 5, i64 2
  %54 = load float, ptr %53, align 8, !tbaa !58
  %55 = fmul float %52, %54
  %56 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 6, i64 5
  %57 = load i32, ptr %56, align 4, !tbaa !67
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, ptr %8, i64 %58
  %60 = load float, ptr %59, align 4, !tbaa !58
  %61 = fsub float %60, %51
  %62 = fmul float %54, %61
  %63 = fcmp ogt float %19, %44
  %64 = fcmp olt float %26, %37
  %65 = select i1 %63, i1 true, i1 %64
  %66 = fcmp ogt float %19, %62
  %67 = select i1 %65, i1 true, i1 %66
  %68 = fcmp olt float %26, %55
  %69 = select i1 %67, i1 true, i1 %68
  %70 = fcmp ogt float %37, %62
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %148, label %72

72:                                               ; preds = %9
  %73 = fcmp olt float %44, %55
  %74 = fcmp olt float %26, 0.000000e+00
  %75 = select i1 %73, i1 true, i1 %74
  %76 = fcmp olt float %44, 0.000000e+00
  %77 = or i1 %76, %75
  %78 = fcmp olt float %62, 0.000000e+00
  %79 = select i1 %77, i1 true, i1 %78
  br i1 %79, label %148, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 7, i32 3
  %82 = load float, ptr %81, align 4, !tbaa !128
  %83 = fcmp ogt float %19, %82
  %84 = fcmp ogt float %37, %82
  %85 = select i1 %83, i1 true, i1 %84
  %86 = fcmp ogt float %55, %82
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %148, label %88

88:                                               ; preds = %80
  %89 = fcmp ogt float %19, %37
  %90 = select i1 %89, float %19, float %37
  %91 = fcmp ogt float %90, %55
  %92 = select i1 %91, float %90, float %55
  br label %148

93:                                               ; preds = %2
  %94 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 7, i32 3
  %95 = load float, ptr %94, align 4, !tbaa !128
  br label %96

96:                                               ; preds = %142, %93
  %97 = phi i64 [ 0, %93 ], [ %145, %142 ]
  %98 = phi ptr [ %8, %93 ], [ %146, %142 ]
  %99 = phi float [ %95, %93 ], [ %144, %142 ]
  %100 = phi float [ 0.000000e+00, %93 ], [ %143, %142 ]
  %101 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 4, i64 %97
  %102 = load float, ptr %101, align 4, !tbaa !58
  %103 = fcmp oeq float %102, 0.000000e+00
  br i1 %103, label %104, label %115

104:                                              ; preds = %96
  %105 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %97
  %106 = load float, ptr %105, align 4, !tbaa !58
  %107 = load float, ptr %98, align 4, !tbaa !58
  %108 = fsub float %107, %5
  %109 = fcmp olt float %106, %108
  br i1 %109, label %148, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds float, ptr %98, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !58
  %113 = fadd float %5, %112
  %114 = fcmp ogt float %106, %113
  br i1 %114, label %148, label %142

115:                                              ; preds = %96
  %116 = load float, ptr %98, align 4, !tbaa !58
  %117 = fsub float %116, %5
  %118 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %97
  %119 = load float, ptr %118, align 4, !tbaa !58
  %120 = fsub float %117, %119
  %121 = fdiv float %120, %102
  %122 = getelementptr inbounds float, ptr %98, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !58
  %124 = fadd float %5, %123
  %125 = fsub float %124, %119
  %126 = fdiv float %125, %102
  %127 = fcmp ogt float %102, 0.000000e+00
  br i1 %127, label %128, label %133

128:                                              ; preds = %115
  %129 = fcmp ogt float %121, %100
  %130 = select i1 %129, float %121, float %100
  %131 = fcmp olt float %126, %99
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  br label %138

133:                                              ; preds = %115
  %134 = fcmp ogt float %126, %100
  %135 = select i1 %134, float %126, float %100
  %136 = fcmp olt float %121, %99
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %138

138:                                              ; preds = %137, %133, %132, %128
  %139 = phi float [ %130, %132 ], [ %130, %128 ], [ %135, %137 ], [ %135, %133 ]
  %140 = phi float [ %126, %132 ], [ %99, %128 ], [ %121, %137 ], [ %99, %133 ]
  %141 = fcmp ule float %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %138, %110
  %143 = phi float [ %100, %110 ], [ %139, %138 ]
  %144 = phi float [ %99, %110 ], [ %140, %138 ]
  %145 = add nuw nsw i64 %97, 1
  %146 = getelementptr inbounds float, ptr %98, i64 2
  %147 = icmp eq i64 %145, 3
  br i1 %147, label %148, label %96, !llvm.loop !129

148:                                              ; preds = %142, %138, %110, %104, %88, %80, %72, %9
  %149 = phi float [ %92, %88 ], [ 0x47EFFFFFE0000000, %80 ], [ 0x47EFFFFFE0000000, %72 ], [ 0x47EFFFFFE0000000, %9 ], [ 0x47EFFFFFE0000000, %138 ], [ 0x47EFFFFFE0000000, %110 ], [ 0x47EFFFFFE0000000, %104 ], [ %143, %142 ]
  %150 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 7
  %151 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 7, i32 3
  %152 = load float, ptr %151, align 4, !tbaa !128
  %153 = fcmp ult float %149, %152
  br i1 %153, label %154, label %215

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 4
  %156 = load i8, ptr %155, align 4, !tbaa !62
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %187

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !123
  %161 = icmp eq ptr %160, null
  br i1 %161, label %167, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !124
  %165 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 3
  %166 = load i32, ptr %165, align 8, !tbaa !86
  tail call void %160(ptr noundef %164, i32 noundef %166, ptr noundef nonnull %3, ptr noundef nonnull %150) #10
  br label %215

167:                                              ; preds = %158
  %168 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 3
  %169 = load i32, ptr %168, align 8, !tbaa !86
  store i32 %169, ptr %150, align 4, !tbaa !127
  store float %149, ptr %151, align 4, !tbaa !128
  %170 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 7, i32 1
  %171 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 3, i32 1
  %172 = load float, ptr %3, align 4, !tbaa !58
  %173 = load float, ptr %171, align 4, !tbaa !58
  %174 = tail call float @llvm.fmuladd.f32(float %173, float %149, float %172)
  store float %174, ptr %170, align 4, !tbaa !58
  %175 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 3, i32 0, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !58
  %177 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 3, i32 1, i64 1
  %178 = load float, ptr %177, align 4, !tbaa !58
  %179 = tail call float @llvm.fmuladd.f32(float %178, float %149, float %176)
  %180 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 7, i32 1, i64 1
  store float %179, ptr %180, align 4, !tbaa !58
  %181 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 3, i32 0, i64 2
  %182 = load float, ptr %181, align 4, !tbaa !58
  %183 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 3, i32 1, i64 2
  %184 = load float, ptr %183, align 4, !tbaa !58
  %185 = tail call float @llvm.fmuladd.f32(float %184, float %149, float %182)
  %186 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 7, i32 1, i64 2
  store float %185, ptr %186, align 4, !tbaa !58
  br label %215

187:                                              ; preds = %154
  %188 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 5
  %189 = load i8, ptr %188, align 1, !tbaa !61
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds %struct.BVHRayCastData, ptr %0, i64 0, i32 4, i64 %190
  %192 = load float, ptr %191, align 4, !tbaa !58
  %193 = fcmp ogt float %192, 0.000000e+00
  br i1 %193, label %196, label %194

194:                                              ; preds = %187
  %195 = zext i8 %156 to i64
  br label %208

196:                                              ; preds = %187
  %197 = load i8, ptr %155, align 4, !tbaa !62
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %215, label %199

199:                                              ; preds = %196, %199
  %200 = phi i64 [ %204, %199 ], [ 0, %196 ]
  %201 = load ptr, ptr %1, align 8, !tbaa !52
  %202 = getelementptr inbounds ptr, ptr %201, i64 %200
  %203 = load ptr, ptr %202, align 8, !tbaa !34
  tail call fastcc void @dfs_raycast(ptr noundef %0, ptr noundef %203)
  %204 = add nuw i64 %200, 1
  %205 = load i8, ptr %155, align 4, !tbaa !62
  %206 = zext i8 %205 to i64
  %207 = icmp eq i64 %204, %206
  br i1 %207, label %215, label %199, !llvm.loop !130

208:                                              ; preds = %194, %208
  %209 = phi i64 [ %195, %194 ], [ %210, %208 ]
  %210 = add nsw i64 %209, -1
  %211 = load ptr, ptr %1, align 8, !tbaa !52
  %212 = getelementptr inbounds ptr, ptr %211, i64 %210
  %213 = load ptr, ptr %212, align 8, !tbaa !34
  tail call fastcc void @dfs_raycast(ptr noundef %0, ptr noundef %213)
  %214 = icmp sgt i64 %209, 1
  br i1 %214, label %208, label %215, !llvm.loop !131

215:                                              ; preds = %208, %199, %196, %167, %162, %148
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local float @BLI_bvhtree_bb_raycast(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #7 {
  %5 = alloca %struct.BVHRayCastData, align 8
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 7, i32 3
  store float 0x47EFFFFFE0000000, ptr %6, align 8, !tbaa !128
  %7 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 3
  %8 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 3, i32 1
  %9 = load float, ptr %2, align 4, !tbaa !58
  %10 = load float, ptr %1, align 4, !tbaa !58
  %11 = fsub float %9, %10
  store float %11, ptr %8, align 4, !tbaa !58
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !58
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !58
  %16 = fsub float %13, %15
  %17 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 3, i32 1, i64 1
  store float %16, ptr %17, align 8, !tbaa !58
  %18 = getelementptr inbounds float, ptr %2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !58
  %20 = getelementptr inbounds float, ptr %1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !58
  %22 = fsub float %19, %21
  %23 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 3, i32 1, i64 2
  store float %22, ptr %23, align 4, !tbaa !58
  %24 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 3, i32 2
  store float 0.000000e+00, ptr %24, align 8, !tbaa !125
  store float %10, ptr %7, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 3, i32 0, i64 1
  store float %15, ptr %25, align 4, !tbaa !58
  %26 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 3, i32 0, i64 2
  store float %21, ptr %26, align 8, !tbaa !58
  %27 = fmul float %16, %16
  %28 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %27)
  %29 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %28)
  %30 = fcmp ogt float %29, 0x38AA95A5C0000000
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = tail call float @sqrtf(float noundef %29) #10
  %33 = fdiv float 1.000000e+00, %32
  %34 = fmul float %11, %33
  store float %34, ptr %8, align 4, !tbaa !58
  %35 = fmul float %16, %33
  store float %35, ptr %17, align 8, !tbaa !58
  %36 = fmul float %22, %33
  br label %38

37:                                               ; preds = %4
  store float 0.000000e+00, ptr %8, align 4, !tbaa !58
  store float 0.000000e+00, ptr %17, align 8, !tbaa !58
  br label %38

38:                                               ; preds = %31, %37
  %39 = phi float [ 0.000000e+00, %37 ], [ %36, %31 ]
  store float %39, ptr %23, align 4, !tbaa !58
  %40 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 4
  %41 = load float, ptr %8, align 4, !tbaa !58
  store float %41, ptr %40, align 4, !tbaa !58
  %42 = load float, ptr %17, align 8, !tbaa !58
  %43 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 4, i64 1
  store float %42, ptr %43, align 8, !tbaa !58
  %44 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 4, i64 2
  store float %39, ptr %44, align 4, !tbaa !58
  br label %45

45:                                               ; preds = %89, %38
  %46 = phi i64 [ 0, %38 ], [ %92, %89 ]
  %47 = phi ptr [ %0, %38 ], [ %93, %89 ]
  %48 = phi float [ 0x47EFFFFFE0000000, %38 ], [ %91, %89 ]
  %49 = phi float [ 0.000000e+00, %38 ], [ %90, %89 ]
  %50 = getelementptr inbounds %struct.BVHRayCastData, ptr %5, i64 0, i32 4, i64 %46
  %51 = load float, ptr %50, align 4, !tbaa !58
  %52 = fcmp oeq float %51, 0.000000e+00
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %46
  %55 = load float, ptr %54, align 4, !tbaa !58
  %56 = load float, ptr %47, align 4, !tbaa !58
  %57 = fcmp olt float %55, %56
  br i1 %57, label %95, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds float, ptr %47, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !58
  %61 = fadd float %60, 0.000000e+00
  %62 = fcmp ogt float %55, %61
  br i1 %62, label %95, label %89

63:                                               ; preds = %45
  %64 = load float, ptr %47, align 4, !tbaa !58
  %65 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %46
  %66 = load float, ptr %65, align 4, !tbaa !58
  %67 = fsub float %64, %66
  %68 = fdiv float %67, %51
  %69 = getelementptr inbounds float, ptr %47, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !58
  %71 = fadd float %70, 0.000000e+00
  %72 = fsub float %71, %66
  %73 = fdiv float %72, %51
  %74 = fcmp ogt float %51, 0.000000e+00
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = fcmp ogt float %68, %49
  %77 = select i1 %76, float %68, float %49
  %78 = fcmp olt float %73, %48
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  br label %85

80:                                               ; preds = %63
  %81 = fcmp ogt float %73, %49
  %82 = select i1 %81, float %73, float %49
  %83 = fcmp olt float %68, %48
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %80, %79, %75
  %86 = phi float [ %77, %79 ], [ %77, %75 ], [ %82, %84 ], [ %82, %80 ]
  %87 = phi float [ %73, %79 ], [ %48, %75 ], [ %68, %84 ], [ %48, %80 ]
  %88 = fcmp ule float %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85, %58
  %90 = phi float [ %49, %58 ], [ %86, %85 ]
  %91 = phi float [ %48, %58 ], [ %87, %85 ]
  %92 = add nuw nsw i64 %46, 1
  %93 = getelementptr inbounds float, ptr %47, i64 2
  %94 = icmp eq i64 %92, 3
  br i1 %94, label %95, label %45, !llvm.loop !129

95:                                               ; preds = %53, %58, %85, %89
  %96 = phi float [ 0x47EFFFFFE0000000, %85 ], [ 0x47EFFFFFE0000000, %58 ], [ 0x47EFFFFFE0000000, %53 ], [ %90, %89 ]
  %97 = load float, ptr %1, align 4, !tbaa !58
  %98 = tail call float @llvm.fmuladd.f32(float %41, float %96, float %97)
  store float %98, ptr %3, align 4, !tbaa !58
  %99 = load float, ptr %14, align 4, !tbaa !58
  %100 = tail call float @llvm.fmuladd.f32(float %42, float %96, float %99)
  %101 = getelementptr inbounds float, ptr %3, i64 1
  store float %100, ptr %101, align 4, !tbaa !58
  %102 = load float, ptr %20, align 4, !tbaa !58
  %103 = tail call float @llvm.fmuladd.f32(float %39, float %96, float %102)
  %104 = getelementptr inbounds float, ptr %3, i64 2
  store float %103, ptr %104, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %5) #10
  ret float %96
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_bvhtree_range_query(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.RangeQueryData, align 8
  %7 = alloca [3 x float], align 4
  %8 = load ptr, ptr %0, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.BVHTree, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !56
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10
  store ptr %0, ptr %6, align 8, !tbaa !132
  %14 = getelementptr inbounds %struct.RangeQueryData, ptr %6, i64 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !134
  %15 = fmul float %2, %2
  %16 = getelementptr inbounds %struct.RangeQueryData, ptr %6, i64 0, i32 2
  store float %15, ptr %16, align 8, !tbaa !135
  %17 = getelementptr inbounds %struct.RangeQueryData, ptr %6, i64 0, i32 3
  store i32 0, ptr %17, align 4, !tbaa !136
  %18 = getelementptr inbounds %struct.RangeQueryData, ptr %6, i64 0, i32 4
  store ptr %3, ptr %18, align 8, !tbaa !137
  %19 = getelementptr inbounds %struct.RangeQueryData, ptr %6, i64 0, i32 5
  store ptr %4, ptr %19, align 8, !tbaa !138
  %20 = icmp eq ptr %13, null
  br i1 %20, label %71, label %21

21:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %22 = getelementptr inbounds %struct.BVHNode, ptr %13, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  br label %24

24:                                               ; preds = %40, %21
  %25 = phi i64 [ 0, %21 ], [ %41, %40 ]
  %26 = phi ptr [ %23, %21 ], [ %42, %40 ]
  %27 = load float, ptr %26, align 4, !tbaa !58
  %28 = getelementptr inbounds float, ptr %1, i64 %25
  %29 = load float, ptr %28, align 4, !tbaa !58
  %30 = fcmp ogt float %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = getelementptr inbounds float, ptr %7, i64 %25
  store float %27, ptr %32, align 4, !tbaa !58
  br label %40

33:                                               ; preds = %24
  %34 = getelementptr inbounds float, ptr %26, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !58
  %36 = fcmp olt float %35, %29
  %37 = getelementptr inbounds float, ptr %7, i64 %25
  br i1 %36, label %38, label %39

38:                                               ; preds = %33
  store float %35, ptr %37, align 4, !tbaa !58
  br label %40

39:                                               ; preds = %33
  store float %29, ptr %37, align 4, !tbaa !58
  br label %40

40:                                               ; preds = %39, %38, %31
  %41 = add nuw nsw i64 %25, 1
  %42 = getelementptr inbounds float, ptr %26, i64 2
  %43 = icmp eq i64 %41, 3
  br i1 %43, label %44, label %24, !llvm.loop !118

44:                                               ; preds = %40
  %45 = load float, ptr %7, align 4, !tbaa !58
  %46 = load float, ptr %1, align 4, !tbaa !58
  %47 = fsub float %45, %46
  %48 = getelementptr inbounds float, ptr %7, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !58
  %50 = getelementptr inbounds float, ptr %1, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !58
  %52 = fsub float %49, %51
  %53 = getelementptr inbounds float, ptr %7, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !58
  %55 = getelementptr inbounds float, ptr %1, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !58
  %57 = fsub float %54, %56
  %58 = fmul float %52, %52
  %59 = tail call float @llvm.fmuladd.f32(float %47, float %47, float %58)
  %60 = tail call float @llvm.fmuladd.f32(float %57, float %57, float %59)
  %61 = fcmp olt float %60, %15
  br i1 %61, label %62, label %70

62:                                               ; preds = %44
  %63 = getelementptr inbounds %struct.BVHNode, ptr %13, i64 0, i32 4
  %64 = load i8, ptr %63, align 4, !tbaa !62
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  store i32 1, ptr %17, align 4, !tbaa !136
  %67 = getelementptr inbounds %struct.BVHNode, ptr %13, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !86
  tail call void %3(ptr noundef %4, i32 noundef %68, float noundef %60) #10
  br label %70

69:                                               ; preds = %62
  call fastcc void @dfs_range_query(ptr noundef nonnull %6, ptr noundef nonnull %13)
  br label %70

70:                                               ; preds = %66, %69, %44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  br label %71

71:                                               ; preds = %70, %5
  %72 = load i32, ptr %17, align 4, !tbaa !136
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dfs_range_query(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 4
  %5 = load i8, ptr %4, align 4, !tbaa !62
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %80, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %4, align 4, !tbaa !62
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %80, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.RangeQueryData, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds float, ptr %3, i64 1
  %13 = getelementptr inbounds float, ptr %3, i64 2
  %14 = getelementptr inbounds %struct.RangeQueryData, ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %struct.RangeQueryData, ptr %0, i64 0, i32 3
  %16 = getelementptr inbounds %struct.RangeQueryData, ptr %0, i64 0, i32 4
  %17 = getelementptr inbounds %struct.RangeQueryData, ptr %0, i64 0, i32 5
  br label %18

18:                                               ; preds = %10, %75
  %19 = phi i64 [ 0, %10 ], [ %76, %75 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %20 = load ptr, ptr %11, align 8, !tbaa !134
  %21 = load ptr, ptr %1, align 8, !tbaa !52
  %22 = getelementptr inbounds ptr, ptr %21, i64 %19
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.BVHNode, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  br label %26

26:                                               ; preds = %42, %18
  %27 = phi i64 [ 0, %18 ], [ %43, %42 ]
  %28 = phi ptr [ %25, %18 ], [ %44, %42 ]
  %29 = load float, ptr %28, align 4, !tbaa !58
  %30 = getelementptr inbounds float, ptr %20, i64 %27
  %31 = load float, ptr %30, align 4, !tbaa !58
  %32 = fcmp ogt float %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = getelementptr inbounds float, ptr %3, i64 %27
  store float %29, ptr %34, align 4, !tbaa !58
  br label %42

35:                                               ; preds = %26
  %36 = getelementptr inbounds float, ptr %28, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !58
  %38 = fcmp olt float %37, %31
  %39 = getelementptr inbounds float, ptr %3, i64 %27
  br i1 %38, label %40, label %41

40:                                               ; preds = %35
  store float %37, ptr %39, align 4, !tbaa !58
  br label %42

41:                                               ; preds = %35
  store float %31, ptr %39, align 4, !tbaa !58
  br label %42

42:                                               ; preds = %41, %40, %33
  %43 = add nuw nsw i64 %27, 1
  %44 = getelementptr inbounds float, ptr %28, i64 2
  %45 = icmp eq i64 %43, 3
  br i1 %45, label %46, label %26, !llvm.loop !118

46:                                               ; preds = %42
  %47 = load float, ptr %3, align 4, !tbaa !58
  %48 = load float, ptr %20, align 4, !tbaa !58
  %49 = fsub float %47, %48
  %50 = load float, ptr %12, align 4, !tbaa !58
  %51 = getelementptr inbounds float, ptr %20, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !58
  %53 = fsub float %50, %52
  %54 = load float, ptr %13, align 4, !tbaa !58
  %55 = getelementptr inbounds float, ptr %20, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !58
  %57 = fsub float %54, %56
  %58 = fmul float %53, %53
  %59 = tail call float @llvm.fmuladd.f32(float %49, float %49, float %58)
  %60 = tail call float @llvm.fmuladd.f32(float %57, float %57, float %59)
  %61 = load float, ptr %14, align 8, !tbaa !135
  %62 = fcmp olt float %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %46
  %64 = getelementptr inbounds %struct.BVHNode, ptr %23, i64 0, i32 4
  %65 = load i8, ptr %64, align 4, !tbaa !62
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32, ptr %15, align 4, !tbaa !136
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %15, align 4, !tbaa !136
  %70 = load ptr, ptr %16, align 8, !tbaa !137
  %71 = load ptr, ptr %17, align 8, !tbaa !138
  %72 = getelementptr inbounds %struct.BVHNode, ptr %23, i64 0, i32 3
  %73 = load i32, ptr %72, align 8, !tbaa !86
  tail call void %70(ptr noundef %71, i32 noundef %73, float noundef %60) #10
  br label %75

74:                                               ; preds = %63
  tail call fastcc void @dfs_range_query(ptr noundef %0, ptr noundef %23)
  br label %75

75:                                               ; preds = %67, %74, %46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  %76 = add nuw i64 %19, 1
  %77 = load i8, ptr %4, align 4, !tbaa !62
  %78 = zext i8 %77 to i64
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %80, label %18, !llvm.loop !139

80:                                               ; preds = %75, %7, %2
  ret void
}

declare ptr @BLI_stack_push_r(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @dfs_find_nearest_dfs(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 4
  %5 = load i8, ptr %4, align 4, !tbaa !62
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %65

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !86
  %16 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !112
  %18 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 5
  tail call void %9(ptr noundef %13, i32 noundef %15, ptr noundef %17, ptr noundef nonnull %18) #10
  br label %192

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !86
  %22 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 5
  store i32 %21, ptr %22, align 4, !tbaa !116
  %23 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 4
  %24 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 5, i32 1
  %25 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !50
  br label %27

27:                                               ; preds = %43, %19
  %28 = phi i64 [ 0, %19 ], [ %44, %43 ]
  %29 = phi ptr [ %26, %19 ], [ %45, %43 ]
  %30 = load float, ptr %29, align 4, !tbaa !58
  %31 = getelementptr inbounds float, ptr %23, i64 %28
  %32 = load float, ptr %31, align 4, !tbaa !58
  %33 = fcmp ogt float %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = getelementptr inbounds float, ptr %24, i64 %28
  store float %30, ptr %35, align 4, !tbaa !58
  br label %43

36:                                               ; preds = %27
  %37 = getelementptr inbounds float, ptr %29, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !58
  %39 = fcmp olt float %38, %32
  %40 = getelementptr inbounds float, ptr %24, i64 %28
  br i1 %39, label %41, label %42

41:                                               ; preds = %36
  store float %38, ptr %40, align 4, !tbaa !58
  br label %43

42:                                               ; preds = %36
  store float %32, ptr %40, align 4, !tbaa !58
  br label %43

43:                                               ; preds = %42, %41, %34
  %44 = add nuw nsw i64 %28, 1
  %45 = getelementptr inbounds float, ptr %29, i64 2
  %46 = icmp eq i64 %44, 3
  br i1 %46, label %47, label %27, !llvm.loop !118

47:                                               ; preds = %43
  %48 = load float, ptr %24, align 4, !tbaa !58
  %49 = load float, ptr %23, align 4, !tbaa !58
  %50 = fsub float %48, %49
  %51 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 5, i32 1, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !58
  %53 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 4, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !58
  %55 = fsub float %52, %54
  %56 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 5, i32 1, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !58
  %58 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 4, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !58
  %60 = fsub float %57, %59
  %61 = fmul float %55, %55
  %62 = tail call float @llvm.fmuladd.f32(float %50, float %50, float %61)
  %63 = tail call float @llvm.fmuladd.f32(float %60, float %60, float %62)
  %64 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 5, i32 3
  store float %63, ptr %64, align 4, !tbaa !117
  br label %192

65:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %66 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 4
  %67 = getelementptr inbounds %struct.BVHNode, ptr %1, i64 0, i32 5
  %68 = load i8, ptr %67, align 1, !tbaa !61
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 4, i64 %69
  %71 = load float, ptr %70, align 4, !tbaa !58
  %72 = load ptr, ptr %1, align 8, !tbaa !52
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = getelementptr inbounds %struct.BVHNode, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !50
  %76 = shl nuw nsw i64 %69, 1
  %77 = or disjoint i64 %76, 1
  %78 = getelementptr inbounds float, ptr %75, i64 %77
  %79 = load float, ptr %78, align 4, !tbaa !58
  %80 = fcmp ugt float %71, %79
  br i1 %80, label %138, label %81

81:                                               ; preds = %65
  %82 = load i8, ptr %4, align 4, !tbaa !62
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %191, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds float, ptr %3, i64 1
  %86 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 4, i64 1
  %87 = getelementptr inbounds float, ptr %3, i64 2
  %88 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 4, i64 2
  %89 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 5, i32 3
  br label %90

90:                                               ; preds = %84, %133
  %91 = phi i64 [ 0, %84 ], [ %134, %133 ]
  %92 = load ptr, ptr %1, align 8, !tbaa !52
  %93 = getelementptr inbounds ptr, ptr %92, i64 %91
  %94 = load ptr, ptr %93, align 8, !tbaa !34
  %95 = getelementptr inbounds %struct.BVHNode, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !50
  br label %97

97:                                               ; preds = %113, %90
  %98 = phi i64 [ 0, %90 ], [ %114, %113 ]
  %99 = phi ptr [ %96, %90 ], [ %115, %113 ]
  %100 = load float, ptr %99, align 4, !tbaa !58
  %101 = getelementptr inbounds float, ptr %66, i64 %98
  %102 = load float, ptr %101, align 4, !tbaa !58
  %103 = fcmp ogt float %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = getelementptr inbounds float, ptr %3, i64 %98
  store float %100, ptr %105, align 4, !tbaa !58
  br label %113

106:                                              ; preds = %97
  %107 = getelementptr inbounds float, ptr %99, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !58
  %109 = fcmp olt float %108, %102
  %110 = getelementptr inbounds float, ptr %3, i64 %98
  br i1 %109, label %111, label %112

111:                                              ; preds = %106
  store float %108, ptr %110, align 4, !tbaa !58
  br label %113

112:                                              ; preds = %106
  store float %102, ptr %110, align 4, !tbaa !58
  br label %113

113:                                              ; preds = %112, %111, %104
  %114 = add nuw nsw i64 %98, 1
  %115 = getelementptr inbounds float, ptr %99, i64 2
  %116 = icmp eq i64 %114, 3
  br i1 %116, label %117, label %97, !llvm.loop !118

117:                                              ; preds = %113
  %118 = load float, ptr %3, align 4, !tbaa !58
  %119 = load float, ptr %66, align 4, !tbaa !58
  %120 = fsub float %118, %119
  %121 = load float, ptr %85, align 4, !tbaa !58
  %122 = load float, ptr %86, align 4, !tbaa !58
  %123 = fsub float %121, %122
  %124 = load float, ptr %87, align 4, !tbaa !58
  %125 = load float, ptr %88, align 4, !tbaa !58
  %126 = fsub float %124, %125
  %127 = fmul float %123, %123
  %128 = tail call float @llvm.fmuladd.f32(float %120, float %120, float %127)
  %129 = tail call float @llvm.fmuladd.f32(float %126, float %126, float %128)
  %130 = load float, ptr %89, align 4, !tbaa !117
  %131 = fcmp ult float %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %117
  tail call fastcc void @dfs_find_nearest_dfs(ptr noundef %0, ptr noundef %94)
  br label %133

133:                                              ; preds = %117, %132
  %134 = add nuw i64 %91, 1
  %135 = load i8, ptr %4, align 4, !tbaa !62
  %136 = zext i8 %135 to i64
  %137 = icmp eq i64 %134, %136
  br i1 %137, label %191, label %90, !llvm.loop !140

138:                                              ; preds = %65
  %139 = getelementptr inbounds float, ptr %3, i64 1
  %140 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 4, i64 1
  %141 = getelementptr inbounds float, ptr %3, i64 2
  %142 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 4, i64 2
  %143 = getelementptr inbounds %struct.BVHNearestData, ptr %0, i64 0, i32 5, i32 3
  %144 = zext i8 %5 to i64
  br label %145

145:                                              ; preds = %138, %189
  %146 = phi i64 [ %144, %138 ], [ %147, %189 ]
  %147 = add nsw i64 %146, -1
  %148 = load ptr, ptr %1, align 8, !tbaa !52
  %149 = getelementptr inbounds ptr, ptr %148, i64 %147
  %150 = load ptr, ptr %149, align 8, !tbaa !34
  %151 = getelementptr inbounds %struct.BVHNode, ptr %150, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !50
  br label %153

153:                                              ; preds = %169, %145
  %154 = phi i64 [ 0, %145 ], [ %170, %169 ]
  %155 = phi ptr [ %152, %145 ], [ %171, %169 ]
  %156 = load float, ptr %155, align 4, !tbaa !58
  %157 = getelementptr inbounds float, ptr %66, i64 %154
  %158 = load float, ptr %157, align 4, !tbaa !58
  %159 = fcmp ogt float %156, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = getelementptr inbounds float, ptr %3, i64 %154
  store float %156, ptr %161, align 4, !tbaa !58
  br label %169

162:                                              ; preds = %153
  %163 = getelementptr inbounds float, ptr %155, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !58
  %165 = fcmp olt float %164, %158
  %166 = getelementptr inbounds float, ptr %3, i64 %154
  br i1 %165, label %167, label %168

167:                                              ; preds = %162
  store float %164, ptr %166, align 4, !tbaa !58
  br label %169

168:                                              ; preds = %162
  store float %158, ptr %166, align 4, !tbaa !58
  br label %169

169:                                              ; preds = %168, %167, %160
  %170 = add nuw nsw i64 %154, 1
  %171 = getelementptr inbounds float, ptr %155, i64 2
  %172 = icmp eq i64 %170, 3
  br i1 %172, label %173, label %153, !llvm.loop !118

173:                                              ; preds = %169
  %174 = load float, ptr %3, align 4, !tbaa !58
  %175 = load float, ptr %66, align 4, !tbaa !58
  %176 = fsub float %174, %175
  %177 = load float, ptr %139, align 4, !tbaa !58
  %178 = load float, ptr %140, align 4, !tbaa !58
  %179 = fsub float %177, %178
  %180 = load float, ptr %141, align 4, !tbaa !58
  %181 = load float, ptr %142, align 4, !tbaa !58
  %182 = fsub float %180, %181
  %183 = fmul float %179, %179
  %184 = tail call float @llvm.fmuladd.f32(float %176, float %176, float %183)
  %185 = tail call float @llvm.fmuladd.f32(float %182, float %182, float %184)
  %186 = load float, ptr %143, align 4, !tbaa !117
  %187 = fcmp ult float %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %173
  tail call fastcc void @dfs_find_nearest_dfs(ptr noundef %0, ptr noundef %150)
  br label %189

189:                                              ; preds = %173, %188
  %190 = icmp sgt i64 %146, 1
  br i1 %190, label %145, label %191, !llvm.loop !141

191:                                              ; preds = %133, %189, %81
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  br label %192

192:                                              ; preds = %11, %47, %191
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 32}
!39 = !{!"BVHTree", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !41, i64 36, !41, i64 40, !36, i64 44, !36, i64 45, !36, i64 46, !36, i64 47}
!40 = !{!"float", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!39, !36, i64 47}
!43 = !{!39, !36, i64 46}
!44 = !{!39, !36, i64 44}
!45 = !{!39, !36, i64 45}
!46 = !{!39, !35, i64 0}
!47 = !{!39, !35, i64 24}
!48 = !{!39, !35, i64 16}
!49 = !{!39, !35, i64 8}
!50 = !{!51, !35, i64 16}
!51 = !{!"BVHNode", !35, i64 0, !35, i64 8, !35, i64 16, !41, i64 24, !36, i64 28, !36, i64 29}
!52 = !{!51, !35, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!39, !41, i64 36}
!57 = !{!51, !35, i64 8}
!58 = !{!40, !40, i64 0}
!59 = distinct !{!59, !54, !55}
!60 = distinct !{!60, !54, !55}
!61 = !{!51, !36, i64 29}
!62 = !{!51, !36, i64 28}
!63 = !{!64, !41, i64 4}
!64 = !{!"BVHBuildHelper", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 136, !41, i64 264}
!65 = !{!64, !41, i64 0}
!66 = distinct !{!66, !54, !55}
!67 = !{!41, !41, i64 0}
!68 = distinct !{!68, !54, !55}
!69 = !{!64, !41, i64 264}
!70 = distinct !{!70, !54, !55}
!71 = distinct !{!71, !54, !55}
!72 = distinct !{!72, !54, !55}
!73 = distinct !{!73, !54, !55}
!74 = distinct !{!74, !54, !55}
!75 = distinct !{!75, !55}
!76 = distinct !{!76, !54, !55}
!77 = distinct !{!77, !54, !55}
!78 = distinct !{!78, !54, !55}
!79 = distinct !{!79, !54, !55}
!80 = distinct !{!80, !54, !55}
!81 = distinct !{!81, !54, !55}
!82 = !{!39, !41, i64 40}
!83 = distinct !{!83, !54, !55}
!84 = distinct !{!84, !54, !55}
!85 = distinct !{!85, !54, !55}
!86 = !{!51, !41, i64 24}
!87 = distinct !{!87, !54, !55}
!88 = distinct !{!88, !54, !55}
!89 = distinct !{!89, !54, !55}
!90 = distinct !{!90, !54, !55}
!91 = distinct !{!91, !54, !55}
!92 = distinct !{!92, !54, !55}
!93 = !{!94, !35, i64 16}
!94 = !{!"BVHOverlapData", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 25}
!95 = !{!94, !35, i64 0}
!96 = !{!94, !35, i64 8}
!97 = !{!94, !36, i64 24}
!98 = !{!94, !36, i64 25}
!99 = distinct !{!99, !54, !55}
!100 = distinct !{!100, !54, !55}
!101 = distinct !{!101, !54, !55}
!102 = distinct !{!102, !54, !55}
!103 = distinct !{!103, !54, !55}
!104 = !{!105, !41, i64 0}
!105 = !{!"BVHTreeOverlap", !41, i64 0, !41, i64 4}
!106 = !{!105, !41, i64 4}
!107 = distinct !{!107, !54, !55}
!108 = distinct !{!108, !54, !55}
!109 = !{!110, !35, i64 0}
!110 = !{!"BVHNearestData", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !111, i64 84}
!111 = !{!"BVHTreeNearest", !41, i64 0, !36, i64 4, !36, i64 16, !40, i64 28, !41, i64 32}
!112 = !{!110, !35, i64 8}
!113 = !{!110, !35, i64 16}
!114 = !{!110, !35, i64 24}
!115 = distinct !{!115, !54, !55}
!116 = !{!110, !41, i64 84}
!117 = !{!110, !40, i64 112}
!118 = distinct !{!118, !54, !55}
!119 = !{!120, !35, i64 0}
!120 = !{!"BVHRayCastData", !35, i64 0, !35, i64 8, !35, i64 16, !121, i64 24, !36, i64 52, !36, i64 104, !36, i64 156, !122, i64 180}
!121 = !{!"BVHTreeRay", !36, i64 0, !36, i64 12, !40, i64 24}
!122 = !{!"BVHTreeRayHit", !41, i64 0, !36, i64 4, !36, i64 16, !40, i64 28, !41, i64 32}
!123 = !{!120, !35, i64 8}
!124 = !{!120, !35, i64 16}
!125 = !{!120, !40, i64 48}
!126 = distinct !{!126, !54, !55}
!127 = !{!120, !41, i64 180}
!128 = !{!120, !40, i64 208}
!129 = distinct !{!129, !54, !55}
!130 = distinct !{!130, !54, !55}
!131 = distinct !{!131, !54, !55}
!132 = !{!133, !35, i64 0}
!133 = !{!"RangeQueryData", !35, i64 0, !35, i64 8, !40, i64 16, !41, i64 20, !35, i64 24, !35, i64 32}
!134 = !{!133, !35, i64 8}
!135 = !{!133, !40, i64 16}
!136 = !{!133, !41, i64 20}
!137 = !{!133, !35, i64 24}
!138 = !{!133, !35, i64 32}
!139 = distinct !{!139, !54, !55}
!140 = distinct !{!140, !54, !55}
!141 = distinct !{!141, !54, !55}
