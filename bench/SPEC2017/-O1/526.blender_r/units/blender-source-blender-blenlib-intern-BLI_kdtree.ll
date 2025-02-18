; ModuleID = 'blender/source/blender/blenlib/intern/BLI_kdtree.c'
source_filename = "blender/source/blender/blenlib/intern/BLI_kdtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.KDTree = type { ptr, i32, ptr }
%struct.KDTreeNode = type { ptr, ptr, [3 x float], i32, i32 }
%struct.KDTreeNearest = type { i32, float, [3 x float] }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"KDTree\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"KDTreeNode\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"KDTree.treestack\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.add_in_range = private unnamed_addr constant [13 x i8] c"add_in_range\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_kdtree_new(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 24, ptr noundef nonnull @.str) #11
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = zext i32 %0 to i64
  %6 = mul nuw nsw i64 %5, 40
  %7 = tail call ptr %4(i64 noundef %6, ptr noundef nonnull @.str.1) #11
  store ptr %7, ptr %3, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.KDTree, ptr %3, i64 0, i32 1
  store i32 0, ptr %8, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.KDTree, ptr %3, i64 0, i32 2
  store ptr null, ptr %9, align 8, !tbaa !42
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BLI_kdtree_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %5 = load ptr, ptr %0, align 8, !tbaa !38
  tail call void %4(ptr noundef %5) #11
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %0) #11
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_kdtree_insert(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.KDTree, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !41
  %8 = zext i32 %6 to i64
  %9 = getelementptr inbounds %struct.KDTreeNode, ptr %4, i64 %8
  %10 = getelementptr inbounds %struct.KDTreeNode, ptr %4, i64 %8, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %11 = load float, ptr %2, align 4, !tbaa !43
  store float %11, ptr %10, align 4, !tbaa !43
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !43
  %14 = getelementptr inbounds float, ptr %10, i64 1
  store float %13, ptr %14, align 4, !tbaa !43
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !43
  %17 = getelementptr inbounds float, ptr %10, i64 2
  store float %16, ptr %17, align 4, !tbaa !43
  %18 = getelementptr inbounds %struct.KDTreeNode, ptr %4, i64 %8, i32 3
  store i32 %1, ptr %18, align 4, !tbaa !45
  %19 = getelementptr inbounds %struct.KDTreeNode, ptr %4, i64 %8, i32 4
  store i32 0, ptr %19, align 8, !tbaa !47
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_kdtree_balance(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.KDTree, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !41
  %5 = tail call fastcc ptr @kdtree_balance(ptr noundef %2, i32 noundef %4, i32 noundef 0)
  %6 = getelementptr inbounds %struct.KDTree, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !42
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc ptr @kdtree_balance(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = alloca %struct.KDTreeNode, align 8
  %5 = alloca %struct.KDTreeNode, align 8
  switch i32 %1, label %7 [
    i32 0, label %52
    i32 1, label %6
  ]

6:                                                ; preds = %3
  br label %52

7:                                                ; preds = %3
  %8 = add i32 %1, -1
  %9 = lshr i32 %1, 1
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %54, label %11

11:                                               ; preds = %7
  %12 = zext nneg i32 %2 to i64
  br label %13

13:                                               ; preds = %11, %44
  %14 = phi i32 [ %8, %11 ], [ %47, %44 ]
  %15 = phi i32 [ 0, %11 ], [ %50, %44 ]
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %16, i32 2, i64 %12
  %18 = load float, ptr %17, align 4, !tbaa !43
  %19 = add i32 %15, -1
  br label %20

20:                                               ; preds = %42, %13
  %21 = phi i32 [ %19, %13 ], [ %25, %42 ]
  %22 = phi i32 [ %14, %13 ], [ %32, %42 ]
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi i32 [ %21, %20 ], [ %25, %23 ]
  %25 = add i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %26, i32 2, i64 %12
  %28 = load float, ptr %27, align 4, !tbaa !43
  %29 = fcmp olt float %28, %18
  br i1 %29, label %23, label %30, !llvm.loop !48

30:                                               ; preds = %23, %30
  %31 = phi i32 [ %32, %30 ], [ %22, %23 ]
  %32 = add i32 %31, -1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %33, i32 2, i64 %12
  %35 = load float, ptr %34, align 4, !tbaa !43
  %36 = fcmp ogt float %35, %18
  %37 = icmp ugt i32 %32, %15
  %38 = and i1 %36, %37
  br i1 %38, label %30, label %39, !llvm.loop !51

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %26
  %41 = icmp ult i32 %25, %32
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %33
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %40, i64 40, i1 false), !tbaa.struct !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %40, ptr noundef nonnull align 8 dereferenceable(40) %43, i64 40, i1 false), !tbaa.struct !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %43, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !52
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4)
  br label %20, !llvm.loop !55

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %40, i64 40, i1 false), !tbaa.struct !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %40, ptr noundef nonnull align 8 dereferenceable(40) %45, i64 40, i1 false), !tbaa.struct !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !52
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5)
  %46 = icmp ult i32 %25, %9
  %47 = select i1 %46, i32 %14, i32 %24
  %48 = icmp ugt i32 %25, %9
  %49 = add i32 %24, 2
  %50 = select i1 %48, i32 %15, i32 %49
  %51 = icmp ugt i32 %47, %50
  br i1 %51, label %13, label %54, !llvm.loop !56

52:                                               ; preds = %6, %3, %54
  %53 = phi ptr [ %56, %54 ], [ %0, %6 ], [ null, %3 ]
  ret ptr %53

54:                                               ; preds = %44, %7
  %55 = zext nneg i32 %9 to i64
  %56 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %55
  %57 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %55, i32 4
  store i32 %2, ptr %57, align 8, !tbaa !47
  %58 = add nuw nsw i32 %2, 1
  %59 = urem i32 %58, 3
  %60 = tail call fastcc ptr @kdtree_balance(ptr noundef %0, i32 noundef %9, i32 noundef %59)
  store ptr %60, ptr %56, align 8, !tbaa !57
  %61 = getelementptr inbounds %struct.KDTreeNode, ptr %56, i64 1
  %62 = xor i32 %9, -1
  %63 = add i32 %62, %1
  %64 = tail call fastcc ptr @kdtree_balance(ptr noundef nonnull %61, i32 noundef %63, i32 noundef %59)
  %65 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %55, i32 1
  store ptr %64, ptr %65, align 8, !tbaa !58
  br label %52
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_kdtree_find_nearest(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [100 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.KDTree, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %196, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.KDTreeNode, ptr %6, i64 0, i32 2
  %10 = load float, ptr %1, align 4, !tbaa !43
  %11 = load float, ptr %9, align 4, !tbaa !43
  %12 = fsub float %10, %11
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !43
  %15 = getelementptr inbounds %struct.KDTreeNode, ptr %6, i64 0, i32 2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !43
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !43
  %20 = getelementptr inbounds %struct.KDTreeNode, ptr %6, i64 0, i32 2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !43
  %22 = fsub float %19, %21
  %23 = fmul float %17, %17
  %24 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %23)
  %25 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %24)
  %26 = getelementptr inbounds %struct.KDTreeNode, ptr %6, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !47
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds float, ptr %1, i64 %28
  %30 = load float, ptr %29, align 4, !tbaa !43
  %31 = getelementptr inbounds %struct.KDTreeNode, ptr %6, i64 0, i32 2, i64 %28
  %32 = load float, ptr %31, align 4, !tbaa !43
  %33 = fcmp olt float %30, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %8
  %35 = getelementptr inbounds %struct.KDTreeNode, ptr %6, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !58
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store ptr %36, ptr %4, align 16, !tbaa !34
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32 [ 1, %38 ], [ 0, %34 ]
  %41 = load ptr, ptr %6, align 8, !tbaa !57
  %42 = icmp eq ptr %41, null
  br i1 %42, label %58, label %52

43:                                               ; preds = %8
  %44 = load ptr, ptr %6, align 8, !tbaa !57
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store ptr %44, ptr %4, align 16, !tbaa !34
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i32 [ 1, %46 ], [ 0, %43 ]
  %49 = getelementptr inbounds %struct.KDTreeNode, ptr %6, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !58
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %47, %39
  %53 = phi i32 [ %40, %39 ], [ %48, %47 ]
  %54 = phi ptr [ %41, %39 ], [ %50, %47 ]
  %55 = add nuw nsw i32 %53, 1
  %56 = zext nneg i32 %53 to i64
  %57 = getelementptr inbounds ptr, ptr %4, i64 %56
  store ptr %54, ptr %57, align 8, !tbaa !34
  br label %58

58:                                               ; preds = %52, %47, %39
  %59 = phi i32 [ %40, %39 ], [ %48, %47 ], [ %55, %52 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %170, label %61

61:                                               ; preds = %58, %166
  %62 = phi i32 [ %152, %166 ], [ %59, %58 ]
  %63 = phi float [ %151, %166 ], [ %25, %58 ]
  %64 = phi ptr [ %168, %166 ], [ %4, %58 ]
  %65 = phi ptr [ %150, %166 ], [ %6, %58 ]
  %66 = phi i32 [ %167, %166 ], [ 100, %58 ]
  %67 = add i32 %62, -1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %64, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !34
  %71 = getelementptr inbounds %struct.KDTreeNode, ptr %70, i64 0, i32 2
  %72 = getelementptr inbounds %struct.KDTreeNode, ptr %70, i64 0, i32 4
  %73 = load i32, ptr %72, align 8, !tbaa !47
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.KDTreeNode, ptr %70, i64 0, i32 2, i64 %74
  %76 = load float, ptr %75, align 4, !tbaa !43
  %77 = getelementptr inbounds float, ptr %1, i64 %74
  %78 = load float, ptr %77, align 4, !tbaa !43
  %79 = fsub float %76, %78
  %80 = fcmp olt float %79, 0.000000e+00
  %81 = fmul float %79, %79
  %82 = fcmp olt float %81, %63
  br i1 %80, label %83, label %112

83:                                               ; preds = %61
  br i1 %82, label %84, label %105

84:                                               ; preds = %83
  %85 = load float, ptr %1, align 4, !tbaa !43
  %86 = load float, ptr %71, align 4, !tbaa !43
  %87 = fsub float %85, %86
  %88 = load float, ptr %13, align 4, !tbaa !43
  %89 = getelementptr inbounds %struct.KDTreeNode, ptr %70, i64 0, i32 2, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !43
  %91 = fsub float %88, %90
  %92 = load float, ptr %18, align 4, !tbaa !43
  %93 = getelementptr inbounds %struct.KDTreeNode, ptr %70, i64 0, i32 2, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !43
  %95 = fsub float %92, %94
  %96 = fmul float %91, %91
  %97 = call float @llvm.fmuladd.f32(float %87, float %87, float %96)
  %98 = call float @llvm.fmuladd.f32(float %95, float %95, float %97)
  %99 = fcmp olt float %98, %63
  %100 = select i1 %99, ptr %70, ptr %65
  %101 = select i1 %99, float %98, float %63
  %102 = load ptr, ptr %70, align 8, !tbaa !57
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %84
  store ptr %102, ptr %69, align 8, !tbaa !34
  br label %105

105:                                              ; preds = %84, %104, %83
  %106 = phi ptr [ %100, %104 ], [ %100, %84 ], [ %65, %83 ]
  %107 = phi float [ %101, %104 ], [ %101, %84 ], [ %63, %83 ]
  %108 = phi i32 [ %62, %104 ], [ %67, %84 ], [ %67, %83 ]
  %109 = getelementptr inbounds %struct.KDTreeNode, ptr %70, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !58
  %111 = icmp eq ptr %110, null
  br i1 %111, label %149, label %141

112:                                              ; preds = %61
  br i1 %82, label %113, label %135

113:                                              ; preds = %112
  %114 = load float, ptr %1, align 4, !tbaa !43
  %115 = load float, ptr %71, align 4, !tbaa !43
  %116 = fsub float %114, %115
  %117 = load float, ptr %13, align 4, !tbaa !43
  %118 = getelementptr inbounds %struct.KDTreeNode, ptr %70, i64 0, i32 2, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !43
  %120 = fsub float %117, %119
  %121 = load float, ptr %18, align 4, !tbaa !43
  %122 = getelementptr inbounds %struct.KDTreeNode, ptr %70, i64 0, i32 2, i64 2
  %123 = load float, ptr %122, align 4, !tbaa !43
  %124 = fsub float %121, %123
  %125 = fmul float %120, %120
  %126 = call float @llvm.fmuladd.f32(float %116, float %116, float %125)
  %127 = call float @llvm.fmuladd.f32(float %124, float %124, float %126)
  %128 = fcmp olt float %127, %63
  %129 = select i1 %128, ptr %70, ptr %65
  %130 = select i1 %128, float %127, float %63
  %131 = getelementptr inbounds %struct.KDTreeNode, ptr %70, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !58
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %113
  store ptr %132, ptr %69, align 8, !tbaa !34
  br label %135

135:                                              ; preds = %113, %134, %112
  %136 = phi ptr [ %129, %134 ], [ %129, %113 ], [ %65, %112 ]
  %137 = phi float [ %130, %134 ], [ %130, %113 ], [ %63, %112 ]
  %138 = phi i32 [ %62, %134 ], [ %67, %113 ], [ %67, %112 ]
  %139 = load ptr, ptr %70, align 8, !tbaa !57
  %140 = icmp eq ptr %139, null
  br i1 %140, label %149, label %141

141:                                              ; preds = %135, %105
  %142 = phi i32 [ %108, %105 ], [ %138, %135 ]
  %143 = phi ptr [ %110, %105 ], [ %139, %135 ]
  %144 = phi ptr [ %106, %105 ], [ %136, %135 ]
  %145 = phi float [ %107, %105 ], [ %137, %135 ]
  %146 = add i32 %142, 1
  %147 = zext i32 %142 to i64
  %148 = getelementptr inbounds ptr, ptr %64, i64 %147
  store ptr %143, ptr %148, align 8, !tbaa !34
  br label %149

149:                                              ; preds = %141, %135, %105
  %150 = phi ptr [ %106, %105 ], [ %136, %135 ], [ %144, %141 ]
  %151 = phi float [ %107, %105 ], [ %137, %135 ], [ %145, %141 ]
  %152 = phi i32 [ %108, %105 ], [ %138, %135 ], [ %146, %141 ]
  %153 = add i32 %152, 3
  %154 = icmp ugt i32 %153, %66
  br i1 %154, label %155, label %166

155:                                              ; preds = %149
  %156 = icmp eq ptr %4, %64
  %157 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %158 = add i32 %66, 100
  %159 = zext i32 %158 to i64
  %160 = shl nuw nsw i64 %159, 3
  %161 = call ptr %157(i64 noundef %160, ptr noundef nonnull @.str.2) #11
  %162 = zext i32 %66 to i64
  %163 = shl nuw nsw i64 %162, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %161, ptr align 8 %64, i64 %163, i1 false)
  br i1 %156, label %166, label %164

164:                                              ; preds = %155
  %165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %165(ptr noundef %64) #11
  br label %166

166:                                              ; preds = %164, %155, %149
  %167 = phi i32 [ %66, %149 ], [ %158, %155 ], [ %158, %164 ]
  %168 = phi ptr [ %64, %149 ], [ %161, %155 ], [ %161, %164 ]
  %169 = icmp eq i32 %152, 0
  br i1 %169, label %170, label %61, !llvm.loop !59

170:                                              ; preds = %166, %58
  %171 = phi ptr [ %6, %58 ], [ %150, %166 ]
  %172 = phi ptr [ %4, %58 ], [ %168, %166 ]
  %173 = phi float [ %25, %58 ], [ %151, %166 ]
  %174 = icmp eq ptr %2, null
  br i1 %174, label %189, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.KDTreeNode, ptr %171, i64 0, i32 3
  %177 = load i32, ptr %176, align 4, !tbaa !45
  store i32 %177, ptr %2, align 4, !tbaa !60
  %178 = call float @sqrtf(float noundef %173) #11
  %179 = getelementptr inbounds %struct.KDTreeNearest, ptr %2, i64 0, i32 1
  store float %178, ptr %179, align 4, !tbaa !62
  %180 = getelementptr inbounds %struct.KDTreeNearest, ptr %2, i64 0, i32 2
  %181 = getelementptr inbounds %struct.KDTreeNode, ptr %171, i64 0, i32 2
  %182 = load float, ptr %181, align 4, !tbaa !43
  store float %182, ptr %180, align 4, !tbaa !43
  %183 = getelementptr inbounds %struct.KDTreeNode, ptr %171, i64 0, i32 2, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !43
  %185 = getelementptr inbounds %struct.KDTreeNearest, ptr %2, i64 0, i32 2, i64 1
  store float %184, ptr %185, align 4, !tbaa !43
  %186 = getelementptr inbounds %struct.KDTreeNode, ptr %171, i64 0, i32 2, i64 2
  %187 = load float, ptr %186, align 4, !tbaa !43
  %188 = getelementptr inbounds %struct.KDTreeNearest, ptr %2, i64 0, i32 2, i64 2
  store float %187, ptr %188, align 4, !tbaa !43
  br label %189

189:                                              ; preds = %175, %170
  %190 = icmp eq ptr %172, %4
  br i1 %190, label %193, label %191

191:                                              ; preds = %189
  %192 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %192(ptr noundef %172) #11
  br label %193

193:                                              ; preds = %191, %189
  %194 = getelementptr inbounds %struct.KDTreeNode, ptr %171, i64 0, i32 3
  %195 = load i32, ptr %194, align 4, !tbaa !45
  br label %196

196:                                              ; preds = %3, %193
  %197 = phi i32 [ %195, %193 ], [ -1, %3 ]
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %4) #11
  ret i32 %197
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_kdtree_find_nearest_n__normal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [100 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct.KDTree, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = icmp eq ptr %8, null
  %10 = icmp eq i32 %4, 0
  %11 = or i1 %10, %9
  br i1 %11, label %358, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.KDTreeNode, ptr %8, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !43
  %15 = load float, ptr %1, align 4, !tbaa !43
  %16 = fsub float %14, %15
  %17 = getelementptr inbounds %struct.KDTreeNode, ptr %8, i64 0, i32 2, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !43
  %19 = getelementptr inbounds float, ptr %1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !43
  %21 = fsub float %18, %20
  %22 = getelementptr inbounds %struct.KDTreeNode, ptr %8, i64 0, i32 2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !43
  %24 = getelementptr inbounds float, ptr %1, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !43
  %26 = fsub float %23, %25
  %27 = fmul float %21, %21
  %28 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %27)
  %29 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %28)
  %30 = icmp eq ptr %2, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %12
  %32 = load float, ptr %2, align 4, !tbaa !43
  %33 = getelementptr inbounds float, ptr %2, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !43
  %35 = fmul float %21, %34
  %36 = tail call float @llvm.fmuladd.f32(float %16, float %32, float %35)
  %37 = getelementptr inbounds float, ptr %2, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !43
  %39 = tail call float @llvm.fmuladd.f32(float %26, float %38, float %36)
  %40 = fcmp olt float %39, 0.000000e+00
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = fmul float %29, 1.000000e+01
  br label %43

43:                                               ; preds = %12, %31, %41
  %44 = phi float [ %42, %41 ], [ %29, %31 ], [ %29, %12 ]
  %45 = getelementptr inbounds %struct.KDTreeNode, ptr %8, i64 0, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !45
  %47 = icmp ne i32 %4, 0
  %48 = zext i1 %47 to i32
  %49 = xor i1 %47, true
  %50 = sext i1 %49 to i32
  br i1 %47, label %65, label %51

51:                                               ; preds = %43, %59
  %52 = phi i32 [ %63, %59 ], [ %50, %43 ]
  %53 = phi i32 [ %52, %59 ], [ %48, %43 ]
  %54 = add i32 %53, -2
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %55, i32 1
  %57 = load float, ptr %56, align 4, !tbaa !62
  %58 = fcmp ugt float %57, %44
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %55
  %61 = zext i32 %52 to i64
  %62 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %62, ptr noundef nonnull align 4 dereferenceable(20) %60, i64 20, i1 false), !tbaa.struct !63
  %63 = add i32 %52, -1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %51, !llvm.loop !64

65:                                               ; preds = %51, %59, %43
  %66 = phi i32 [ %50, %43 ], [ %52, %51 ], [ 0, %59 ]
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %67
  store i32 %46, ptr %68, align 4, !tbaa !60
  %69 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %67, i32 1
  store float %44, ptr %69, align 4, !tbaa !62
  %70 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %67, i32 2
  %71 = load float, ptr %13, align 4, !tbaa !43
  store float %71, ptr %70, align 4, !tbaa !43
  %72 = load float, ptr %17, align 4, !tbaa !43
  %73 = getelementptr inbounds float, ptr %70, i64 1
  store float %72, ptr %73, align 4, !tbaa !43
  %74 = load float, ptr %22, align 4, !tbaa !43
  %75 = getelementptr inbounds float, ptr %70, i64 2
  store float %74, ptr %75, align 4, !tbaa !43
  %76 = getelementptr inbounds %struct.KDTreeNode, ptr %8, i64 0, i32 4
  %77 = load i32, ptr %76, align 8, !tbaa !47
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds float, ptr %1, i64 %78
  %80 = load float, ptr %79, align 4, !tbaa !43
  %81 = getelementptr inbounds %struct.KDTreeNode, ptr %8, i64 0, i32 2, i64 %78
  %82 = load float, ptr %81, align 4, !tbaa !43
  %83 = fcmp olt float %80, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %65
  %85 = getelementptr inbounds %struct.KDTreeNode, ptr %8, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !58
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  store ptr %86, ptr %6, align 16, !tbaa !34
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi i32 [ 1, %88 ], [ 0, %84 ]
  %91 = load ptr, ptr %8, align 8, !tbaa !57
  %92 = icmp eq ptr %91, null
  br i1 %92, label %108, label %102

93:                                               ; preds = %65
  %94 = load ptr, ptr %8, align 8, !tbaa !57
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  store ptr %94, ptr %6, align 16, !tbaa !34
  br label %97

97:                                               ; preds = %96, %93
  %98 = phi i32 [ 1, %96 ], [ 0, %93 ]
  %99 = getelementptr inbounds %struct.KDTreeNode, ptr %8, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !58
  %101 = icmp eq ptr %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %97, %89
  %103 = phi i32 [ %90, %89 ], [ %98, %97 ]
  %104 = phi ptr [ %91, %89 ], [ %100, %97 ]
  %105 = add nuw nsw i32 %103, 1
  %106 = zext nneg i32 %103 to i64
  %107 = getelementptr inbounds ptr, ptr %6, i64 %106
  store ptr %104, ptr %107, align 8, !tbaa !34
  br label %108

108:                                              ; preds = %102, %97, %89
  %109 = phi i32 [ %90, %89 ], [ %98, %97 ], [ %105, %102 ]
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds float, ptr %2, i64 1
  %113 = getelementptr inbounds float, ptr %2, i64 2
  %114 = getelementptr inbounds float, ptr %2, i64 1
  %115 = getelementptr inbounds float, ptr %2, i64 2
  br label %122

116:                                              ; preds = %343, %108
  %117 = phi i32 [ %48, %108 ], [ %328, %343 ]
  %118 = phi ptr [ %6, %108 ], [ %345, %343 ]
  %119 = icmp eq i32 %117, 0
  br i1 %119, label %354, label %120

120:                                              ; preds = %116
  %121 = zext i32 %117 to i64
  br label %347

122:                                              ; preds = %111, %343
  %123 = phi i32 [ %109, %111 ], [ %329, %343 ]
  %124 = phi ptr [ %6, %111 ], [ %345, %343 ]
  %125 = phi i32 [ %48, %111 ], [ %328, %343 ]
  %126 = phi i32 [ 100, %111 ], [ %344, %343 ]
  %127 = add i32 %123, -1
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds ptr, ptr %124, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !34
  %131 = getelementptr inbounds %struct.KDTreeNode, ptr %130, i64 0, i32 2
  %132 = getelementptr inbounds %struct.KDTreeNode, ptr %130, i64 0, i32 4
  %133 = load i32, ptr %132, align 8, !tbaa !47
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.KDTreeNode, ptr %130, i64 0, i32 2, i64 %134
  %136 = load float, ptr %135, align 4, !tbaa !43
  %137 = getelementptr inbounds float, ptr %1, i64 %134
  %138 = load float, ptr %137, align 4, !tbaa !43
  %139 = fsub float %136, %138
  %140 = fcmp olt float %139, 0.000000e+00
  %141 = icmp ult i32 %125, %4
  br i1 %140, label %142, label %231

142:                                              ; preds = %122
  br i1 %141, label %150, label %143

143:                                              ; preds = %142
  %144 = fmul float %139, %139
  %145 = add i32 %125, -1
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %146, i32 1
  %148 = load float, ptr %147, align 4, !tbaa !62
  %149 = fcmp olt float %144, %148
  br i1 %149, label %150, label %225

150:                                              ; preds = %143, %142
  %151 = load float, ptr %131, align 4, !tbaa !43
  %152 = load float, ptr %1, align 4, !tbaa !43
  %153 = fsub float %151, %152
  %154 = getelementptr inbounds %struct.KDTreeNode, ptr %130, i64 0, i32 2, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !43
  %156 = load float, ptr %19, align 4, !tbaa !43
  %157 = fsub float %155, %156
  %158 = getelementptr inbounds %struct.KDTreeNode, ptr %130, i64 0, i32 2, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !43
  %160 = load float, ptr %24, align 4, !tbaa !43
  %161 = fsub float %159, %160
  %162 = fmul float %157, %157
  %163 = call float @llvm.fmuladd.f32(float %153, float %153, float %162)
  %164 = call float @llvm.fmuladd.f32(float %161, float %161, float %163)
  br i1 %30, label %175, label %165

165:                                              ; preds = %150
  %166 = load float, ptr %2, align 4, !tbaa !43
  %167 = load float, ptr %114, align 4, !tbaa !43
  %168 = fmul float %157, %167
  %169 = call float @llvm.fmuladd.f32(float %153, float %166, float %168)
  %170 = load float, ptr %115, align 4, !tbaa !43
  %171 = call float @llvm.fmuladd.f32(float %161, float %170, float %169)
  %172 = fcmp olt float %171, 0.000000e+00
  br i1 %172, label %173, label %175

173:                                              ; preds = %165
  %174 = fmul float %164, 1.000000e+01
  br label %175

175:                                              ; preds = %150, %165, %173
  %176 = phi float [ %174, %173 ], [ %164, %165 ], [ %164, %150 ]
  br i1 %141, label %183, label %177

177:                                              ; preds = %175
  %178 = add i32 %125, -1
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %179, i32 1
  %181 = load float, ptr %180, align 4, !tbaa !62
  %182 = fcmp olt float %176, %181
  br i1 %182, label %183, label %220

183:                                              ; preds = %177, %175
  %184 = getelementptr inbounds %struct.KDTreeNode, ptr %130, i64 0, i32 3
  %185 = load i32, ptr %184, align 4, !tbaa !45
  %186 = zext i1 %141 to i32
  %187 = add nuw i32 %125, %186
  %188 = add i32 %187, -1
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %209, label %190

190:                                              ; preds = %183
  %191 = zext i32 %188 to i64
  br label %192

192:                                              ; preds = %190, %200
  %193 = phi i64 [ %191, %190 ], [ %203, %200 ]
  %194 = phi i32 [ %187, %190 ], [ %206, %200 ]
  %195 = add i32 %194, -2
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %196, i32 1
  %198 = load float, ptr %197, align 4, !tbaa !62
  %199 = fcmp ugt float %198, %176
  br i1 %199, label %200, label %207

200:                                              ; preds = %192
  %201 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %196
  %202 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %202, ptr noundef nonnull align 4 dereferenceable(20) %201, i64 20, i1 false), !tbaa.struct !63
  %203 = add nsw i64 %193, -1
  %204 = and i64 %203, 4294967295
  %205 = icmp eq i64 %204, 0
  %206 = trunc i64 %193 to i32
  br i1 %205, label %209, label %192, !llvm.loop !64

207:                                              ; preds = %192
  %208 = trunc i64 %193 to i32
  br label %209

209:                                              ; preds = %207, %200, %183
  %210 = phi i32 [ %188, %183 ], [ %208, %207 ], [ 0, %200 ]
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %211
  store i32 %185, ptr %212, align 4, !tbaa !60
  %213 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %211, i32 1
  store float %176, ptr %213, align 4, !tbaa !62
  %214 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %211, i32 2
  %215 = load float, ptr %131, align 4, !tbaa !43
  store float %215, ptr %214, align 4, !tbaa !43
  %216 = load float, ptr %154, align 4, !tbaa !43
  %217 = getelementptr inbounds float, ptr %214, i64 1
  store float %216, ptr %217, align 4, !tbaa !43
  %218 = load float, ptr %158, align 4, !tbaa !43
  %219 = getelementptr inbounds float, ptr %214, i64 2
  store float %218, ptr %219, align 4, !tbaa !43
  br label %220

220:                                              ; preds = %209, %177
  %221 = phi i32 [ %187, %209 ], [ %125, %177 ]
  %222 = load ptr, ptr %130, align 8, !tbaa !57
  %223 = icmp eq ptr %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %220
  store ptr %222, ptr %129, align 8, !tbaa !34
  br label %225

225:                                              ; preds = %220, %224, %143
  %226 = phi i32 [ %221, %220 ], [ %221, %224 ], [ %125, %143 ]
  %227 = phi i32 [ %127, %220 ], [ %123, %224 ], [ %127, %143 ]
  %228 = getelementptr inbounds %struct.KDTreeNode, ptr %130, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !58
  %230 = icmp eq ptr %229, null
  br i1 %230, label %327, label %320

231:                                              ; preds = %122
  br i1 %141, label %239, label %232

232:                                              ; preds = %231
  %233 = fmul float %139, %139
  %234 = add i32 %125, -1
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %235, i32 1
  %237 = load float, ptr %236, align 4, !tbaa !62
  %238 = fcmp olt float %233, %237
  br i1 %238, label %239, label %315

239:                                              ; preds = %232, %231
  %240 = load float, ptr %131, align 4, !tbaa !43
  %241 = load float, ptr %1, align 4, !tbaa !43
  %242 = fsub float %240, %241
  %243 = getelementptr inbounds %struct.KDTreeNode, ptr %130, i64 0, i32 2, i64 1
  %244 = load float, ptr %243, align 4, !tbaa !43
  %245 = load float, ptr %19, align 4, !tbaa !43
  %246 = fsub float %244, %245
  %247 = getelementptr inbounds %struct.KDTreeNode, ptr %130, i64 0, i32 2, i64 2
  %248 = load float, ptr %247, align 4, !tbaa !43
  %249 = load float, ptr %24, align 4, !tbaa !43
  %250 = fsub float %248, %249
  %251 = fmul float %246, %246
  %252 = call float @llvm.fmuladd.f32(float %242, float %242, float %251)
  %253 = call float @llvm.fmuladd.f32(float %250, float %250, float %252)
  br i1 %30, label %264, label %254

254:                                              ; preds = %239
  %255 = load float, ptr %2, align 4, !tbaa !43
  %256 = load float, ptr %112, align 4, !tbaa !43
  %257 = fmul float %246, %256
  %258 = call float @llvm.fmuladd.f32(float %242, float %255, float %257)
  %259 = load float, ptr %113, align 4, !tbaa !43
  %260 = call float @llvm.fmuladd.f32(float %250, float %259, float %258)
  %261 = fcmp olt float %260, 0.000000e+00
  br i1 %261, label %262, label %264

262:                                              ; preds = %254
  %263 = fmul float %253, 1.000000e+01
  br label %264

264:                                              ; preds = %239, %254, %262
  %265 = phi float [ %263, %262 ], [ %253, %254 ], [ %253, %239 ]
  br i1 %141, label %272, label %266

266:                                              ; preds = %264
  %267 = add i32 %125, -1
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %268, i32 1
  %270 = load float, ptr %269, align 4, !tbaa !62
  %271 = fcmp olt float %265, %270
  br i1 %271, label %272, label %309

272:                                              ; preds = %266, %264
  %273 = getelementptr inbounds %struct.KDTreeNode, ptr %130, i64 0, i32 3
  %274 = load i32, ptr %273, align 4, !tbaa !45
  %275 = zext i1 %141 to i32
  %276 = add nuw i32 %125, %275
  %277 = add i32 %276, -1
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %298, label %279

279:                                              ; preds = %272
  %280 = zext i32 %277 to i64
  br label %281

281:                                              ; preds = %279, %289
  %282 = phi i64 [ %280, %279 ], [ %292, %289 ]
  %283 = phi i32 [ %276, %279 ], [ %295, %289 ]
  %284 = add i32 %283, -2
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %285, i32 1
  %287 = load float, ptr %286, align 4, !tbaa !62
  %288 = fcmp ugt float %287, %265
  br i1 %288, label %289, label %296

289:                                              ; preds = %281
  %290 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %285
  %291 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %291, ptr noundef nonnull align 4 dereferenceable(20) %290, i64 20, i1 false), !tbaa.struct !63
  %292 = add nsw i64 %282, -1
  %293 = and i64 %292, 4294967295
  %294 = icmp eq i64 %293, 0
  %295 = trunc i64 %282 to i32
  br i1 %294, label %298, label %281, !llvm.loop !64

296:                                              ; preds = %281
  %297 = trunc i64 %282 to i32
  br label %298

298:                                              ; preds = %296, %289, %272
  %299 = phi i32 [ %277, %272 ], [ %297, %296 ], [ 0, %289 ]
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %300
  store i32 %274, ptr %301, align 4, !tbaa !60
  %302 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %300, i32 1
  store float %265, ptr %302, align 4, !tbaa !62
  %303 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %300, i32 2
  %304 = load float, ptr %131, align 4, !tbaa !43
  store float %304, ptr %303, align 4, !tbaa !43
  %305 = load float, ptr %243, align 4, !tbaa !43
  %306 = getelementptr inbounds float, ptr %303, i64 1
  store float %305, ptr %306, align 4, !tbaa !43
  %307 = load float, ptr %247, align 4, !tbaa !43
  %308 = getelementptr inbounds float, ptr %303, i64 2
  store float %307, ptr %308, align 4, !tbaa !43
  br label %309

309:                                              ; preds = %298, %266
  %310 = phi i32 [ %276, %298 ], [ %125, %266 ]
  %311 = getelementptr inbounds %struct.KDTreeNode, ptr %130, i64 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !58
  %313 = icmp eq ptr %312, null
  br i1 %313, label %315, label %314

314:                                              ; preds = %309
  store ptr %312, ptr %129, align 8, !tbaa !34
  br label %315

315:                                              ; preds = %309, %314, %232
  %316 = phi i32 [ %310, %309 ], [ %310, %314 ], [ %125, %232 ]
  %317 = phi i32 [ %127, %309 ], [ %123, %314 ], [ %127, %232 ]
  %318 = load ptr, ptr %130, align 8, !tbaa !57
  %319 = icmp eq ptr %318, null
  br i1 %319, label %327, label %320

320:                                              ; preds = %315, %225
  %321 = phi i32 [ %227, %225 ], [ %317, %315 ]
  %322 = phi ptr [ %229, %225 ], [ %318, %315 ]
  %323 = phi i32 [ %226, %225 ], [ %316, %315 ]
  %324 = add i32 %321, 1
  %325 = zext i32 %321 to i64
  %326 = getelementptr inbounds ptr, ptr %124, i64 %325
  store ptr %322, ptr %326, align 8, !tbaa !34
  br label %327

327:                                              ; preds = %320, %315, %225
  %328 = phi i32 [ %226, %225 ], [ %316, %315 ], [ %323, %320 ]
  %329 = phi i32 [ %227, %225 ], [ %317, %315 ], [ %324, %320 ]
  %330 = add i32 %329, 3
  %331 = icmp ugt i32 %330, %126
  br i1 %331, label %332, label %343

332:                                              ; preds = %327
  %333 = icmp eq ptr %6, %124
  %334 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %335 = add i32 %126, 100
  %336 = zext i32 %335 to i64
  %337 = shl nuw nsw i64 %336, 3
  %338 = call ptr %334(i64 noundef %337, ptr noundef nonnull @.str.2) #11
  %339 = zext i32 %126 to i64
  %340 = shl nuw nsw i64 %339, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %338, ptr align 8 %124, i64 %340, i1 false)
  br i1 %333, label %343, label %341

341:                                              ; preds = %332
  %342 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %342(ptr noundef %124) #11
  br label %343

343:                                              ; preds = %341, %332, %327
  %344 = phi i32 [ %126, %327 ], [ %335, %332 ], [ %335, %341 ]
  %345 = phi ptr [ %124, %327 ], [ %338, %332 ], [ %338, %341 ]
  %346 = icmp eq i32 %329, 0
  br i1 %346, label %116, label %122, !llvm.loop !65

347:                                              ; preds = %120, %347
  %348 = phi i64 [ 0, %120 ], [ %352, %347 ]
  %349 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %348, i32 1
  %350 = load float, ptr %349, align 4, !tbaa !62
  %351 = call float @sqrtf(float noundef %350) #11
  store float %351, ptr %349, align 4, !tbaa !62
  %352 = add nuw nsw i64 %348, 1
  %353 = icmp eq i64 %352, %121
  br i1 %353, label %354, label %347, !llvm.loop !66

354:                                              ; preds = %347, %116
  %355 = icmp eq ptr %118, %6
  br i1 %355, label %358, label %356

356:                                              ; preds = %354
  %357 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %357(ptr noundef %118) #11
  br label %358

358:                                              ; preds = %354, %356, %5
  %359 = phi i32 [ 0, %5 ], [ %117, %356 ], [ %117, %354 ]
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %6) #11
  ret i32 %359
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BLI_kdtree_range_search__normal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca [100 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %6) #11
  %7 = fmul float %4, %4
  %8 = getelementptr inbounds %struct.KDTree, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %243, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.KDTreeNode, ptr %9, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !47
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds float, ptr %1, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !43
  %17 = fadd float %16, %4
  %18 = getelementptr inbounds %struct.KDTreeNode, ptr %9, i64 0, i32 2
  %19 = getelementptr inbounds %struct.KDTreeNode, ptr %9, i64 0, i32 2, i64 %14
  %20 = load float, ptr %19, align 4, !tbaa !43
  %21 = fcmp olt float %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load ptr, ptr %9, align 8, !tbaa !57
  %24 = icmp eq ptr %23, null
  br i1 %24, label %96, label %25

25:                                               ; preds = %22
  store ptr %23, ptr %6, align 16, !tbaa !34
  br label %96

26:                                               ; preds = %11
  %27 = fsub float %16, %4
  %28 = fcmp ogt float %27, %20
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.KDTreeNode, ptr %9, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !58
  %32 = icmp eq ptr %31, null
  br i1 %32, label %96, label %33

33:                                               ; preds = %29
  store ptr %31, ptr %6, align 16, !tbaa !34
  br label %96

34:                                               ; preds = %26
  %35 = load float, ptr %18, align 4, !tbaa !43
  %36 = load float, ptr %1, align 4, !tbaa !43
  %37 = fsub float %35, %36
  %38 = getelementptr inbounds %struct.KDTreeNode, ptr %9, i64 0, i32 2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !43
  %40 = getelementptr inbounds float, ptr %1, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !43
  %42 = fsub float %39, %41
  %43 = getelementptr inbounds %struct.KDTreeNode, ptr %9, i64 0, i32 2, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !43
  %45 = getelementptr inbounds float, ptr %1, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !43
  %47 = fsub float %44, %46
  %48 = fmul float %42, %42
  %49 = tail call float @llvm.fmuladd.f32(float %37, float %37, float %48)
  %50 = tail call float @llvm.fmuladd.f32(float %47, float %47, float %49)
  %51 = icmp eq ptr %2, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %34
  %53 = load float, ptr %2, align 4, !tbaa !43
  %54 = getelementptr inbounds float, ptr %2, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !43
  %56 = fmul float %42, %55
  %57 = tail call float @llvm.fmuladd.f32(float %37, float %53, float %56)
  %58 = getelementptr inbounds float, ptr %2, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !43
  %60 = tail call float @llvm.fmuladd.f32(float %47, float %59, float %57)
  %61 = fcmp olt float %60, 0.000000e+00
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = fmul float %50, 1.000000e+01
  br label %64

64:                                               ; preds = %34, %52, %62
  %65 = phi float [ %63, %62 ], [ %50, %52 ], [ %50, %34 ]
  %66 = fcmp ugt float %65, %7
  br i1 %66, label %80, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.KDTreeNode, ptr %9, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !45
  %70 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %71 = tail call ptr %70(ptr noundef null, i64 noundef 2000, ptr noundef nonnull @__func__.add_in_range) #11
  store i32 %69, ptr %71, align 4, !tbaa !60
  %72 = tail call float @sqrtf(float noundef %65) #11
  %73 = getelementptr inbounds %struct.KDTreeNearest, ptr %71, i64 0, i32 1
  store float %72, ptr %73, align 4, !tbaa !62
  %74 = getelementptr inbounds %struct.KDTreeNearest, ptr %71, i64 0, i32 2
  %75 = load float, ptr %18, align 4, !tbaa !43
  store float %75, ptr %74, align 4, !tbaa !43
  %76 = load float, ptr %38, align 4, !tbaa !43
  %77 = getelementptr inbounds %struct.KDTreeNearest, ptr %71, i64 0, i32 2, i64 1
  store float %76, ptr %77, align 4, !tbaa !43
  %78 = load float, ptr %43, align 4, !tbaa !43
  %79 = getelementptr inbounds %struct.KDTreeNearest, ptr %71, i64 0, i32 2, i64 2
  store float %78, ptr %79, align 4, !tbaa !43
  br label %80

80:                                               ; preds = %67, %64
  %81 = phi ptr [ null, %64 ], [ %71, %67 ]
  %82 = phi i32 [ 0, %64 ], [ 50, %67 ]
  %83 = phi i32 [ 0, %64 ], [ 1, %67 ]
  %84 = load ptr, ptr %9, align 8, !tbaa !57
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  store ptr %84, ptr %6, align 16, !tbaa !34
  br label %87

87:                                               ; preds = %86, %80
  %88 = phi i32 [ 1, %86 ], [ 0, %80 ]
  %89 = getelementptr inbounds %struct.KDTreeNode, ptr %9, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !58
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = add nuw nsw i32 %88, 1
  %94 = zext nneg i32 %88 to i64
  %95 = getelementptr inbounds ptr, ptr %6, i64 %94
  store ptr %90, ptr %95, align 8, !tbaa !34
  br label %96

96:                                               ; preds = %33, %29, %92, %87, %22, %25
  %97 = phi ptr [ null, %22 ], [ null, %25 ], [ null, %29 ], [ null, %33 ], [ %81, %87 ], [ %81, %92 ]
  %98 = phi i32 [ 0, %22 ], [ 0, %25 ], [ 0, %29 ], [ 0, %33 ], [ %82, %87 ], [ %82, %92 ]
  %99 = phi i32 [ 0, %22 ], [ 1, %25 ], [ 0, %29 ], [ 1, %33 ], [ %88, %87 ], [ %93, %92 ]
  %100 = phi i32 [ 0, %22 ], [ 0, %25 ], [ 0, %29 ], [ 0, %33 ], [ %83, %87 ], [ %83, %92 ]
  %101 = icmp eq i32 %99, 0
  br i1 %101, label %231, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds float, ptr %1, i64 1
  %104 = getelementptr inbounds float, ptr %1, i64 2
  %105 = icmp eq ptr %2, null
  %106 = getelementptr inbounds float, ptr %2, i64 1
  %107 = getelementptr inbounds float, ptr %2, i64 2
  br label %108

108:                                              ; preds = %102, %227
  %109 = phi i32 [ %100, %102 ], [ %213, %227 ]
  %110 = phi i32 [ %99, %102 ], [ %212, %227 ]
  %111 = phi ptr [ %6, %102 ], [ %229, %227 ]
  %112 = phi i32 [ %98, %102 ], [ %211, %227 ]
  %113 = phi i32 [ 100, %102 ], [ %228, %227 ]
  %114 = phi ptr [ %97, %102 ], [ %210, %227 ]
  %115 = add i32 %110, -1
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %111, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !34
  %119 = getelementptr inbounds %struct.KDTreeNode, ptr %118, i64 0, i32 4
  %120 = load i32, ptr %119, align 8, !tbaa !47
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds float, ptr %1, i64 %121
  %123 = load float, ptr %122, align 4, !tbaa !43
  %124 = fadd float %123, %4
  %125 = getelementptr inbounds %struct.KDTreeNode, ptr %118, i64 0, i32 2
  %126 = getelementptr inbounds %struct.KDTreeNode, ptr %118, i64 0, i32 2, i64 %121
  %127 = load float, ptr %126, align 4, !tbaa !43
  %128 = fcmp olt float %124, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %108
  %130 = load ptr, ptr %118, align 8, !tbaa !57
  %131 = icmp eq ptr %130, null
  br i1 %131, label %209, label %132

132:                                              ; preds = %129
  store ptr %130, ptr %117, align 8, !tbaa !34
  br label %209

133:                                              ; preds = %108
  %134 = fsub float %123, %4
  %135 = fcmp ogt float %134, %127
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.KDTreeNode, ptr %118, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !58
  %139 = icmp eq ptr %138, null
  br i1 %139, label %209, label %140

140:                                              ; preds = %136
  store ptr %138, ptr %117, align 8, !tbaa !34
  br label %209

141:                                              ; preds = %133
  %142 = load float, ptr %125, align 4, !tbaa !43
  %143 = load float, ptr %1, align 4, !tbaa !43
  %144 = fsub float %142, %143
  %145 = getelementptr inbounds %struct.KDTreeNode, ptr %118, i64 0, i32 2, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !43
  %147 = load float, ptr %103, align 4, !tbaa !43
  %148 = fsub float %146, %147
  %149 = getelementptr inbounds %struct.KDTreeNode, ptr %118, i64 0, i32 2, i64 2
  %150 = load float, ptr %149, align 4, !tbaa !43
  %151 = load float, ptr %104, align 4, !tbaa !43
  %152 = fsub float %150, %151
  %153 = fmul float %148, %148
  %154 = call float @llvm.fmuladd.f32(float %144, float %144, float %153)
  %155 = call float @llvm.fmuladd.f32(float %152, float %152, float %154)
  br i1 %105, label %166, label %156

156:                                              ; preds = %141
  %157 = load float, ptr %2, align 4, !tbaa !43
  %158 = load float, ptr %106, align 4, !tbaa !43
  %159 = fmul float %148, %158
  %160 = call float @llvm.fmuladd.f32(float %144, float %157, float %159)
  %161 = load float, ptr %107, align 4, !tbaa !43
  %162 = call float @llvm.fmuladd.f32(float %152, float %161, float %160)
  %163 = fcmp olt float %162, 0.000000e+00
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = fmul float %155, 1.000000e+01
  br label %166

166:                                              ; preds = %141, %156, %164
  %167 = phi float [ %165, %164 ], [ %155, %156 ], [ %155, %141 ]
  %168 = fcmp ugt float %167, %7
  br i1 %168, label %193, label %169

169:                                              ; preds = %166
  %170 = add i32 %109, 1
  %171 = getelementptr inbounds %struct.KDTreeNode, ptr %118, i64 0, i32 3
  %172 = load i32, ptr %171, align 4, !tbaa !45
  %173 = icmp ugt i32 %112, %109
  br i1 %173, label %180, label %174

174:                                              ; preds = %169
  %175 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %176 = add i32 %112, 50
  %177 = zext i32 %176 to i64
  %178 = mul nuw nsw i64 %177, 40
  %179 = call ptr %175(ptr noundef %114, i64 noundef %178, ptr noundef nonnull @__func__.add_in_range) #11
  br label %180

180:                                              ; preds = %169, %174
  %181 = phi ptr [ %114, %169 ], [ %179, %174 ]
  %182 = phi i32 [ %112, %169 ], [ %176, %174 ]
  %183 = zext i32 %109 to i64
  %184 = getelementptr inbounds %struct.KDTreeNearest, ptr %181, i64 %183
  store i32 %172, ptr %184, align 4, !tbaa !60
  %185 = call float @sqrtf(float noundef %167) #11
  %186 = getelementptr inbounds %struct.KDTreeNearest, ptr %181, i64 %183, i32 1
  store float %185, ptr %186, align 4, !tbaa !62
  %187 = getelementptr inbounds %struct.KDTreeNearest, ptr %181, i64 %183, i32 2
  %188 = load float, ptr %125, align 4, !tbaa !43
  store float %188, ptr %187, align 4, !tbaa !43
  %189 = load float, ptr %145, align 4, !tbaa !43
  %190 = getelementptr inbounds float, ptr %187, i64 1
  store float %189, ptr %190, align 4, !tbaa !43
  %191 = load float, ptr %149, align 4, !tbaa !43
  %192 = getelementptr inbounds float, ptr %187, i64 2
  store float %191, ptr %192, align 4, !tbaa !43
  br label %193

193:                                              ; preds = %180, %166
  %194 = phi ptr [ %114, %166 ], [ %181, %180 ]
  %195 = phi i32 [ %112, %166 ], [ %182, %180 ]
  %196 = phi i32 [ %109, %166 ], [ %170, %180 ]
  %197 = load ptr, ptr %118, align 8, !tbaa !57
  %198 = icmp eq ptr %197, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %193
  store ptr %197, ptr %117, align 8, !tbaa !34
  br label %200

200:                                              ; preds = %199, %193
  %201 = phi i32 [ %110, %199 ], [ %115, %193 ]
  %202 = getelementptr inbounds %struct.KDTreeNode, ptr %118, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !58
  %204 = icmp eq ptr %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %200
  %206 = add i32 %201, 1
  %207 = zext i32 %201 to i64
  %208 = getelementptr inbounds ptr, ptr %111, i64 %207
  store ptr %203, ptr %208, align 8, !tbaa !34
  br label %209

209:                                              ; preds = %140, %136, %205, %200, %129, %132
  %210 = phi ptr [ %114, %129 ], [ %114, %132 ], [ %114, %136 ], [ %114, %140 ], [ %194, %200 ], [ %194, %205 ]
  %211 = phi i32 [ %112, %129 ], [ %112, %132 ], [ %112, %136 ], [ %112, %140 ], [ %195, %200 ], [ %195, %205 ]
  %212 = phi i32 [ %115, %129 ], [ %110, %132 ], [ %115, %136 ], [ %110, %140 ], [ %201, %200 ], [ %206, %205 ]
  %213 = phi i32 [ %109, %129 ], [ %109, %132 ], [ %109, %136 ], [ %109, %140 ], [ %196, %200 ], [ %196, %205 ]
  %214 = add i32 %212, 3
  %215 = icmp ugt i32 %214, %113
  br i1 %215, label %216, label %227

216:                                              ; preds = %209
  %217 = icmp eq ptr %6, %111
  %218 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %219 = add i32 %113, 100
  %220 = zext i32 %219 to i64
  %221 = shl nuw nsw i64 %220, 3
  %222 = call ptr %218(i64 noundef %221, ptr noundef nonnull @.str.2) #11
  %223 = zext i32 %113 to i64
  %224 = shl nuw nsw i64 %223, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %222, ptr align 8 %111, i64 %224, i1 false)
  br i1 %217, label %227, label %225

225:                                              ; preds = %216
  %226 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %226(ptr noundef %111) #11
  br label %227

227:                                              ; preds = %225, %216, %209
  %228 = phi i32 [ %113, %209 ], [ %219, %216 ], [ %219, %225 ]
  %229 = phi ptr [ %111, %209 ], [ %222, %216 ], [ %222, %225 ]
  %230 = icmp eq i32 %212, 0
  br i1 %230, label %231, label %108, !llvm.loop !67

231:                                              ; preds = %227, %96
  %232 = phi ptr [ %97, %96 ], [ %210, %227 ]
  %233 = phi ptr [ %6, %96 ], [ %229, %227 ]
  %234 = phi i32 [ %100, %96 ], [ %213, %227 ]
  %235 = icmp eq ptr %233, %6
  br i1 %235, label %238, label %236

236:                                              ; preds = %231
  %237 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %237(ptr noundef %233) #11
  br label %238

238:                                              ; preds = %236, %231
  %239 = icmp eq i32 %234, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %238
  %241 = zext i32 %234 to i64
  call void @qsort(ptr noundef %232, i64 noundef %241, i64 noundef 20, ptr noundef nonnull @range_compare) #11
  br label %242

242:                                              ; preds = %240, %238
  store ptr %232, ptr %3, align 8, !tbaa !34
  br label %243

243:                                              ; preds = %5, %242
  %244 = phi i32 [ %234, %242 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %6) #11
  ret i32 %244
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @range_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.KDTreeNearest, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !62
  %5 = getelementptr inbounds %struct.KDTreeNearest, ptr %1, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !62
  %7 = fcmp olt float %4, %6
  %8 = fcmp ogt float %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }

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
!38 = !{!39, !35, i64 0}
!39 = !{!"KDTree", !35, i64 0, !40, i64 8, !35, i64 16}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !40, i64 8}
!42 = !{!39, !35, i64 16}
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !36, i64 0}
!45 = !{!46, !40, i64 28}
!46 = !{!"KDTreeNode", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 28, !40, i64 32}
!47 = !{!46, !40, i64 32}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !49, !50}
!52 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 12, !53, i64 28, i64 4, !54, i64 32, i64 4, !54}
!53 = !{!36, !36, i64 0}
!54 = !{!40, !40, i64 0}
!55 = distinct !{!55, !50}
!56 = distinct !{!56, !49, !50}
!57 = !{!46, !35, i64 0}
!58 = !{!46, !35, i64 8}
!59 = distinct !{!59, !49, !50}
!60 = !{!61, !40, i64 0}
!61 = !{!"KDTreeNearest", !40, i64 0, !44, i64 4, !36, i64 8}
!62 = !{!61, !44, i64 4}
!63 = !{i64 0, i64 4, !54, i64 4, i64 4, !43, i64 8, i64 12, !53}
!64 = distinct !{!64, !49, !50}
!65 = distinct !{!65, !49, !50}
!66 = distinct !{!66, !49, !50}
!67 = distinct !{!67, !49, !50}
