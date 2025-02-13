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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_kdtree_new(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 24, ptr noundef nonnull @.str) #13
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = zext i32 %0 to i64
  %6 = mul nuw nsw i64 %5, 40
  %7 = tail call ptr %4(i64 noundef %6, ptr noundef nonnull @.str.1) #13
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_kdtree_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %5 = load ptr, ptr %0, align 8, !tbaa !38
  tail call void %4(ptr noundef %5) #13
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %0) #13
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
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
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %2) #14
  %11 = getelementptr inbounds %struct.KDTreeNode, ptr %4, i64 %8, i32 3
  store i32 %1, ptr %11, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.KDTreeNode, ptr %4, i64 %8, i32 4
  store i32 0, ptr %12, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !46 {
  %3 = load float, ptr %1, align 4, !tbaa !47
  store float %3, ptr %0, align 4, !tbaa !47
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !47
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !47
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !47
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_kdtree_balance(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.KDTree, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !41
  %5 = tail call fastcc ptr @kdtree_balance(ptr noundef %2, i32 noundef %4, i32 noundef 0) #14
  %6 = getelementptr inbounds %struct.KDTree, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !42
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc ptr @kdtree_balance(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !49 {
  %4 = alloca %struct.KDTreeNode, align 8
  %5 = alloca %struct.KDTreeNode, align 8
  switch i32 %1, label %7 [
    i32 0, label %50
    i32 1, label %6
  ]

6:                                                ; preds = %3
  br label %50

7:                                                ; preds = %3
  %8 = add i32 %1, -1
  %9 = lshr i32 %1, 1
  %10 = zext nneg i32 %2 to i64
  br label %11

11:                                               ; preds = %7, %42
  %12 = phi i32 [ %8, %7 ], [ %45, %42 ]
  %13 = phi i32 [ 0, %7 ], [ %48, %42 ]
  %14 = zext i32 %12 to i64
  %15 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %14, i32 2, i64 %10
  %16 = load float, ptr %15, align 4, !tbaa !47
  %17 = add i32 %13, -1
  br label %18

18:                                               ; preds = %40, %11
  %19 = phi i32 [ %17, %11 ], [ %23, %40 ]
  %20 = phi i32 [ %12, %11 ], [ %30, %40 ]
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi i32 [ %19, %18 ], [ %23, %21 ]
  %23 = add i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %24, i32 2, i64 %10
  %26 = load float, ptr %25, align 4, !tbaa !47
  %27 = fcmp olt float %26, %16
  br i1 %27, label %21, label %28, !llvm.loop !50

28:                                               ; preds = %21, %28
  %29 = phi i32 [ %30, %28 ], [ %20, %21 ]
  %30 = add i32 %29, -1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %31, i32 2, i64 %10
  %33 = load float, ptr %32, align 4, !tbaa !47
  %34 = fcmp ogt float %33, %16
  %35 = icmp ugt i32 %30, %13
  %36 = and i1 %34, %35
  br i1 %36, label %28, label %37, !llvm.loop !52

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %24
  %39 = icmp ult i32 %23, %30
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %31
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %38, i64 40, i1 false), !tbaa.struct !53
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef nonnull align 8 dereferenceable(40) %41, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %41, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4)
  br label %18

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %38, i64 40, i1 false), !tbaa.struct !53
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef nonnull align 8 dereferenceable(40) %43, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %43, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5)
  %44 = icmp ult i32 %23, %9
  %45 = select i1 %44, i32 %12, i32 %22
  %46 = icmp ugt i32 %23, %9
  %47 = add i32 %22, 2
  %48 = select i1 %46, i32 %13, i32 %47
  %49 = icmp ugt i32 %45, %48
  br i1 %49, label %11, label %52, !llvm.loop !56

50:                                               ; preds = %3, %6, %52
  %51 = phi ptr [ %54, %52 ], [ %0, %6 ], [ null, %3 ]
  ret ptr %51

52:                                               ; preds = %42
  %53 = zext nneg i32 %9 to i64
  %54 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %53
  %55 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %53, i32 4
  store i32 %2, ptr %55, align 8, !tbaa !45
  %56 = add nuw nsw i32 %2, 1
  %57 = urem i32 %56, 3
  %58 = tail call fastcc ptr @kdtree_balance(ptr noundef nonnull %0, i32 noundef %9, i32 noundef %57) #14
  store ptr %58, ptr %54, align 8, !tbaa !57
  %59 = getelementptr inbounds %struct.KDTreeNode, ptr %54, i64 1
  %60 = xor i32 %9, -1
  %61 = add i32 %60, %1
  %62 = tail call fastcc ptr @kdtree_balance(ptr noundef nonnull %59, i32 noundef %61, i32 noundef %57) #14
  %63 = getelementptr inbounds %struct.KDTreeNode, ptr %0, i64 %53, i32 1
  store ptr %62, ptr %63, align 8, !tbaa !58
  br label %50
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_kdtree_find_nearest(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [100 x ptr], align 16
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.KDTree, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %143, label %9

9:                                                ; preds = %3
  store i32 100, ptr %5, align 4, !tbaa !55
  %10 = getelementptr inbounds %struct.KDTreeNode, ptr %7, i64 0, i32 2
  %11 = tail call fastcc float @len_squared_v3v3(ptr noundef nonnull %10, ptr noundef %1) #14
  %12 = getelementptr inbounds %struct.KDTreeNode, ptr %7, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !45
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds float, ptr %1, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !47
  %17 = getelementptr inbounds %struct.KDTreeNode, ptr %7, i64 0, i32 2, i64 %14
  %18 = load float, ptr %17, align 4, !tbaa !47
  %19 = fcmp olt float %16, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.KDTreeNode, ptr %7, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store ptr %22, ptr %4, align 16, !tbaa !34
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ 1, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %7, align 8, !tbaa !57
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %41

29:                                               ; preds = %9
  %30 = load ptr, ptr %7, align 8, !tbaa !57
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store ptr %30, ptr %4, align 16, !tbaa !34
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ 1, %32 ], [ 0, %29 ]
  %35 = getelementptr inbounds %struct.KDTreeNode, ptr %7, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !58
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %25
  %39 = phi i32 [ %26, %25 ], [ %34, %33 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %124, label %47

41:                                               ; preds = %33, %25
  %42 = phi i32 [ %26, %25 ], [ %34, %33 ]
  %43 = phi ptr [ %27, %25 ], [ %36, %33 ]
  %44 = add nuw nsw i32 %42, 1
  %45 = zext nneg i32 %42 to i64
  %46 = getelementptr inbounds ptr, ptr %4, i64 %45
  store ptr %43, ptr %46, align 8, !tbaa !34
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i32 [ %44, %41 ], [ 1, %38 ]
  br label %49

49:                                               ; preds = %47, %121
  %50 = phi i32 [ %113, %121 ], [ %48, %47 ]
  %51 = phi float [ %112, %121 ], [ %11, %47 ]
  %52 = phi ptr [ %122, %121 ], [ %4, %47 ]
  %53 = phi ptr [ %111, %121 ], [ %7, %47 ]
  %54 = add i32 %50, -1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds ptr, ptr %52, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !34
  %58 = getelementptr inbounds %struct.KDTreeNode, ptr %57, i64 0, i32 2
  %59 = getelementptr inbounds %struct.KDTreeNode, ptr %57, i64 0, i32 4
  %60 = load i32, ptr %59, align 8, !tbaa !45
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.KDTreeNode, ptr %57, i64 0, i32 2, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !47
  %64 = getelementptr inbounds float, ptr %1, i64 %61
  %65 = load float, ptr %64, align 4, !tbaa !47
  %66 = fsub float %63, %65
  %67 = fcmp olt float %66, 0.000000e+00
  %68 = fmul float %66, %66
  %69 = fcmp olt float %68, %51
  br i1 %67, label %70, label %86

70:                                               ; preds = %49
  br i1 %69, label %71, label %79

71:                                               ; preds = %70
  %72 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %58, ptr noundef nonnull %1) #14
  %73 = fcmp olt float %72, %51
  %74 = select i1 %73, ptr %57, ptr %53
  %75 = select i1 %73, float %72, float %51
  %76 = load ptr, ptr %57, align 8, !tbaa !57
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  store ptr %76, ptr %56, align 8, !tbaa !34
  br label %79

79:                                               ; preds = %71, %78, %70
  %80 = phi ptr [ %74, %78 ], [ %74, %71 ], [ %53, %70 ]
  %81 = phi float [ %75, %78 ], [ %75, %71 ], [ %51, %70 ]
  %82 = phi i32 [ %50, %78 ], [ %54, %71 ], [ %54, %70 ]
  %83 = getelementptr inbounds %struct.KDTreeNode, ptr %57, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !58
  %85 = icmp eq ptr %84, null
  br i1 %85, label %110, label %102

86:                                               ; preds = %49
  br i1 %69, label %87, label %96

87:                                               ; preds = %86
  %88 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %58, ptr noundef nonnull %1) #14
  %89 = fcmp olt float %88, %51
  %90 = select i1 %89, ptr %57, ptr %53
  %91 = select i1 %89, float %88, float %51
  %92 = getelementptr inbounds %struct.KDTreeNode, ptr %57, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !58
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  store ptr %93, ptr %56, align 8, !tbaa !34
  br label %96

96:                                               ; preds = %87, %95, %86
  %97 = phi ptr [ %90, %95 ], [ %90, %87 ], [ %53, %86 ]
  %98 = phi float [ %91, %95 ], [ %91, %87 ], [ %51, %86 ]
  %99 = phi i32 [ %50, %95 ], [ %54, %87 ], [ %54, %86 ]
  %100 = load ptr, ptr %57, align 8, !tbaa !57
  %101 = icmp eq ptr %100, null
  br i1 %101, label %110, label %102

102:                                              ; preds = %96, %79
  %103 = phi i32 [ %82, %79 ], [ %99, %96 ]
  %104 = phi ptr [ %84, %79 ], [ %100, %96 ]
  %105 = phi ptr [ %80, %79 ], [ %97, %96 ]
  %106 = phi float [ %81, %79 ], [ %98, %96 ]
  %107 = add i32 %103, 1
  %108 = zext i32 %103 to i64
  %109 = getelementptr inbounds ptr, ptr %52, i64 %108
  store ptr %104, ptr %109, align 8, !tbaa !34
  br label %110

110:                                              ; preds = %102, %96, %79
  %111 = phi ptr [ %80, %79 ], [ %97, %96 ], [ %105, %102 ]
  %112 = phi float [ %81, %79 ], [ %98, %96 ], [ %106, %102 ]
  %113 = phi i32 [ %82, %79 ], [ %99, %96 ], [ %107, %102 ]
  %114 = add i32 %113, 3
  %115 = load i32, ptr %5, align 4, !tbaa !55
  %116 = icmp ugt i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = icmp ne ptr %4, %52
  %119 = zext i1 %118 to i8
  %120 = call fastcc ptr @realloc_nodes(ptr noundef nonnull %52, ptr noundef nonnull %5, i8 noundef zeroext %119) #14
  br label %121

121:                                              ; preds = %117, %110
  %122 = phi ptr [ %120, %117 ], [ %52, %110 ]
  %123 = icmp eq i32 %113, 0
  br i1 %123, label %124, label %49, !llvm.loop !59

124:                                              ; preds = %121, %38
  %125 = phi ptr [ %7, %38 ], [ %111, %121 ]
  %126 = phi ptr [ %4, %38 ], [ %122, %121 ]
  %127 = phi float [ %11, %38 ], [ %112, %121 ]
  %128 = icmp eq ptr %2, null
  br i1 %128, label %136, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.KDTreeNode, ptr %125, i64 0, i32 3
  %131 = load i32, ptr %130, align 4, !tbaa !43
  store i32 %131, ptr %2, align 4, !tbaa !60
  %132 = call float @sqrtf(float noundef %127) #13
  %133 = getelementptr inbounds %struct.KDTreeNearest, ptr %2, i64 0, i32 1
  store float %132, ptr %133, align 4, !tbaa !62
  %134 = getelementptr inbounds %struct.KDTreeNearest, ptr %2, i64 0, i32 2
  %135 = getelementptr inbounds %struct.KDTreeNode, ptr %125, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %134, ptr noundef nonnull %135) #14
  br label %136

136:                                              ; preds = %129, %124
  %137 = icmp eq ptr %126, %4
  br i1 %137, label %140, label %138

138:                                              ; preds = %136
  %139 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %139(ptr noundef %126) #13
  br label %140

140:                                              ; preds = %138, %136
  %141 = getelementptr inbounds %struct.KDTreeNode, ptr %125, i64 0, i32 3
  %142 = load i32, ptr %141, align 4, !tbaa !43
  br label %143

143:                                              ; preds = %3, %140
  %144 = phi i32 [ %142, %140 ], [ -1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %4) #15
  ret i32 %144
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !63 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #14
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @realloc_nodes(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !64 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = load i32, ptr %1, align 4, !tbaa !55
  %6 = add i32 %5, 100
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = tail call ptr %4(i64 noundef %8, ptr noundef nonnull @.str.2) #13
  %10 = load i32, ptr %1, align 4, !tbaa !55
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %0, i64 %12, i1 false)
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef %0) #13
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i32, ptr %1, align 4, !tbaa !55
  %18 = add i32 %17, 100
  store i32 %18, ptr %1, align 4, !tbaa !55
  ret ptr %9
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_kdtree_find_nearest_n__normal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [100 x ptr], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4, !tbaa !55
  %9 = getelementptr inbounds %struct.KDTree, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  %12 = icmp eq i32 %4, 0
  %13 = or i1 %12, %11
  br i1 %13, label %163, label %14

14:                                               ; preds = %5
  store i32 100, ptr %7, align 4, !tbaa !55
  %15 = getelementptr inbounds %struct.KDTreeNode, ptr %10, i64 0, i32 2
  %16 = tail call fastcc float @squared_distance(ptr noundef nonnull %15, ptr noundef %1, ptr noundef %2) #14
  %17 = getelementptr inbounds %struct.KDTreeNode, ptr %10, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !43
  call fastcc void @add_nearest(ptr noundef %3, ptr noundef nonnull %8, i32 noundef %4, i32 noundef %18, float noundef %16, ptr noundef nonnull %15) #14
  %19 = getelementptr inbounds %struct.KDTreeNode, ptr %10, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !45
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds float, ptr %1, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !47
  %24 = getelementptr inbounds %struct.KDTreeNode, ptr %10, i64 0, i32 2, i64 %21
  %25 = load float, ptr %24, align 4, !tbaa !47
  %26 = fcmp olt float %23, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.KDTreeNode, ptr %10, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !58
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store ptr %29, ptr %6, align 16, !tbaa !34
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ 1, %31 ], [ 0, %27 ]
  %34 = load ptr, ptr %10, align 8, !tbaa !57
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %50

36:                                               ; preds = %14
  %37 = load ptr, ptr %10, align 8, !tbaa !57
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store ptr %37, ptr %6, align 16, !tbaa !34
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ 1, %39 ], [ 0, %36 ]
  %42 = getelementptr inbounds %struct.KDTreeNode, ptr %10, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !58
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40, %32
  %46 = phi i32 [ %33, %32 ], [ %41, %40 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %50, %45
  %49 = phi i32 [ %53, %50 ], [ 1, %45 ]
  br label %62

50:                                               ; preds = %40, %32
  %51 = phi i32 [ %33, %32 ], [ %41, %40 ]
  %52 = phi ptr [ %34, %32 ], [ %43, %40 ]
  %53 = add nuw nsw i32 %51, 1
  %54 = zext nneg i32 %51 to i64
  %55 = getelementptr inbounds ptr, ptr %6, i64 %54
  store ptr %52, ptr %55, align 8, !tbaa !34
  br label %48

56:                                               ; preds = %148, %45
  %57 = phi ptr [ %6, %45 ], [ %149, %148 ]
  %58 = load i32, ptr %8, align 4, !tbaa !55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %158, label %60

60:                                               ; preds = %56
  %61 = zext i32 %58 to i64
  br label %151

62:                                               ; preds = %48, %148
  %63 = phi i32 [ %140, %148 ], [ %49, %48 ]
  %64 = phi ptr [ %149, %148 ], [ %6, %48 ]
  %65 = add i32 %63, -1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %64, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.KDTreeNode, ptr %68, i64 0, i32 2
  %70 = getelementptr inbounds %struct.KDTreeNode, ptr %68, i64 0, i32 4
  %71 = load i32, ptr %70, align 8, !tbaa !45
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.KDTreeNode, ptr %68, i64 0, i32 2, i64 %72
  %74 = load float, ptr %73, align 4, !tbaa !47
  %75 = getelementptr inbounds float, ptr %1, i64 %72
  %76 = load float, ptr %75, align 4, !tbaa !47
  %77 = fsub float %74, %76
  %78 = fcmp olt float %77, 0.000000e+00
  %79 = load i32, ptr %8, align 4, !tbaa !55
  %80 = icmp ult i32 %79, %4
  br i1 %78, label %81, label %107

81:                                               ; preds = %62
  br i1 %80, label %82, label %84

82:                                               ; preds = %81
  %83 = call fastcc float @squared_distance(ptr noundef nonnull %69, ptr noundef nonnull %1, ptr noundef %2) #14
  br label %94

84:                                               ; preds = %81
  %85 = fmul float %77, %77
  %86 = add i32 %79, -1
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %87, i32 1
  %89 = load float, ptr %88, align 4, !tbaa !62
  %90 = fcmp olt float %85, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %84
  %92 = call fastcc float @squared_distance(ptr noundef nonnull %69, ptr noundef nonnull %1, ptr noundef %2) #14
  %93 = fcmp olt float %92, %89
  br i1 %93, label %94, label %98

94:                                               ; preds = %82, %91
  %95 = phi float [ %83, %82 ], [ %92, %91 ]
  %96 = getelementptr inbounds %struct.KDTreeNode, ptr %68, i64 0, i32 3
  %97 = load i32, ptr %96, align 4, !tbaa !43
  call fastcc void @add_nearest(ptr noundef %3, ptr noundef nonnull %8, i32 noundef %4, i32 noundef %97, float noundef %95, ptr noundef nonnull %69) #14
  br label %98

98:                                               ; preds = %94, %91
  %99 = load ptr, ptr %68, align 8, !tbaa !57
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  store ptr %99, ptr %67, align 8, !tbaa !34
  br label %102

102:                                              ; preds = %98, %101, %84
  %103 = phi i32 [ %63, %101 ], [ %65, %98 ], [ %65, %84 ]
  %104 = getelementptr inbounds %struct.KDTreeNode, ptr %68, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !58
  %106 = icmp eq ptr %105, null
  br i1 %106, label %139, label %133

107:                                              ; preds = %62
  br i1 %80, label %108, label %110

108:                                              ; preds = %107
  %109 = call fastcc float @squared_distance(ptr noundef nonnull %69, ptr noundef nonnull %1, ptr noundef %2) #14
  br label %120

110:                                              ; preds = %107
  %111 = fmul float %77, %77
  %112 = add i32 %79, -1
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %113, i32 1
  %115 = load float, ptr %114, align 4, !tbaa !62
  %116 = fcmp olt float %111, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %110
  %118 = call fastcc float @squared_distance(ptr noundef nonnull %69, ptr noundef nonnull %1, ptr noundef %2) #14
  %119 = fcmp olt float %118, %115
  br i1 %119, label %120, label %124

120:                                              ; preds = %108, %117
  %121 = phi float [ %109, %108 ], [ %118, %117 ]
  %122 = getelementptr inbounds %struct.KDTreeNode, ptr %68, i64 0, i32 3
  %123 = load i32, ptr %122, align 4, !tbaa !43
  call fastcc void @add_nearest(ptr noundef %3, ptr noundef nonnull %8, i32 noundef %4, i32 noundef %123, float noundef %121, ptr noundef nonnull %69) #14
  br label %124

124:                                              ; preds = %120, %117
  %125 = getelementptr inbounds %struct.KDTreeNode, ptr %68, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !58
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  store ptr %126, ptr %67, align 8, !tbaa !34
  br label %129

129:                                              ; preds = %124, %128, %110
  %130 = phi i32 [ %63, %128 ], [ %65, %124 ], [ %65, %110 ]
  %131 = load ptr, ptr %68, align 8, !tbaa !57
  %132 = icmp eq ptr %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %129, %102
  %134 = phi i32 [ %103, %102 ], [ %130, %129 ]
  %135 = phi ptr [ %105, %102 ], [ %131, %129 ]
  %136 = add i32 %134, 1
  %137 = zext i32 %134 to i64
  %138 = getelementptr inbounds ptr, ptr %64, i64 %137
  store ptr %135, ptr %138, align 8, !tbaa !34
  br label %139

139:                                              ; preds = %133, %129, %102
  %140 = phi i32 [ %103, %102 ], [ %130, %129 ], [ %136, %133 ]
  %141 = add i32 %140, 3
  %142 = load i32, ptr %7, align 4, !tbaa !55
  %143 = icmp ugt i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = icmp ne ptr %6, %64
  %146 = zext i1 %145 to i8
  %147 = call fastcc ptr @realloc_nodes(ptr noundef nonnull %64, ptr noundef nonnull %7, i8 noundef zeroext %146) #14
  br label %148

148:                                              ; preds = %144, %139
  %149 = phi ptr [ %147, %144 ], [ %64, %139 ]
  %150 = icmp eq i32 %140, 0
  br i1 %150, label %56, label %62, !llvm.loop !65

151:                                              ; preds = %60, %151
  %152 = phi i64 [ 0, %60 ], [ %156, %151 ]
  %153 = getelementptr inbounds %struct.KDTreeNearest, ptr %3, i64 %152, i32 1
  %154 = load float, ptr %153, align 4, !tbaa !62
  %155 = call float @sqrtf(float noundef %154) #13
  store float %155, ptr %153, align 4, !tbaa !62
  %156 = add nuw nsw i64 %152, 1
  %157 = icmp eq i64 %156, %61
  br i1 %157, label %158, label %151, !llvm.loop !66

158:                                              ; preds = %151, %56
  %159 = icmp eq ptr %57, %6
  br i1 %159, label %163, label %160

160:                                              ; preds = %158
  %161 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %161(ptr noundef %57) #13
  %162 = load i32, ptr %8, align 4, !tbaa !55
  br label %163

163:                                              ; preds = %158, %160, %5
  %164 = phi i32 [ 0, %5 ], [ %162, %160 ], [ %58, %158 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %6) #15
  ret i32 %164
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @squared_distance(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #7 !PGOFuncName !67 {
  %4 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  %5 = load <2 x float>, ptr %0, align 4, !tbaa !47
  %6 = load <2 x float>, ptr %1, align 4, !tbaa !47
  %7 = fsub <2 x float> %5, %6
  store <2 x float> %7, ptr %4, align 8, !tbaa !47
  %8 = getelementptr inbounds float, ptr %0, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !47
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = fsub float %9, %11
  %13 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %12, ptr %13, align 8, !tbaa !47
  %14 = call fastcc float @len_squared_v3(ptr noundef nonnull %4) #14
  %15 = icmp eq ptr %2, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %2) #14
  %18 = fcmp olt float %17, 0.000000e+00
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = fmul float %14, 1.000000e+01
  br label %21

21:                                               ; preds = %19, %16, %3
  %22 = phi float [ %20, %19 ], [ %14, %16 ], [ %14, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  ret float %22
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @add_nearest(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #8 !PGOFuncName !68 {
  %7 = load i32, ptr %1, align 4, !tbaa !55
  %8 = icmp ult i32 %7, %2
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = add nuw i32 %7, 1
  store i32 %10, ptr %1, align 4, !tbaa !55
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %10, %9 ], [ %7, %6 ]
  %13 = add i32 %12, -1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  %16 = zext i32 %13 to i64
  br label %17

17:                                               ; preds = %15, %25
  %18 = phi i64 [ %16, %15 ], [ %29, %25 ]
  %19 = phi i32 [ %12, %15 ], [ %26, %25 ]
  %20 = add i32 %19, -2
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.KDTreeNearest, ptr %0, i64 %21, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !62
  %24 = fcmp ugt float %23, %4
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = trunc i64 %18 to i32
  %27 = getelementptr inbounds %struct.KDTreeNearest, ptr %0, i64 %21
  %28 = getelementptr inbounds %struct.KDTreeNearest, ptr %0, i64 %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %28, ptr noundef nonnull align 4 dereferenceable(20) %27, i64 20, i1 false), !tbaa.struct !69
  %29 = add nsw i64 %18, -1
  %30 = and i64 %29, 4294967295
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %17, !llvm.loop !70

32:                                               ; preds = %17, %25
  %33 = phi i64 [ 0, %25 ], [ %18, %17 ]
  %34 = and i64 %33, 4294967295
  br label %35

35:                                               ; preds = %32, %11
  %36 = phi i64 [ 0, %11 ], [ %34, %32 ]
  %37 = getelementptr inbounds %struct.KDTreeNearest, ptr %0, i64 %36
  store i32 %3, ptr %37, align 4, !tbaa !60
  %38 = getelementptr inbounds %struct.KDTreeNearest, ptr %0, i64 %36, i32 1
  store float %4, ptr %38, align 4, !tbaa !62
  %39 = getelementptr inbounds %struct.KDTreeNearest, ptr %0, i64 %36, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %39, ptr noundef %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLI_kdtree_range_search__normal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3, float noundef %4) local_unnamed_addr #0 {
  %6 = alloca [100 x ptr], align 16
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  store ptr null, ptr %7, align 8, !tbaa !34
  %10 = fmul float %4, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 0, ptr %9, align 4, !tbaa !55
  %11 = getelementptr inbounds %struct.KDTree, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = icmp eq ptr %12, null
  br i1 %13, label %140, label %14

14:                                               ; preds = %5
  store i32 100, ptr %8, align 4, !tbaa !55
  %15 = getelementptr inbounds %struct.KDTreeNode, ptr %12, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !45
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds float, ptr %1, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !47
  %20 = fadd float %19, %4
  %21 = getelementptr inbounds %struct.KDTreeNode, ptr %12, i64 0, i32 2
  %22 = getelementptr inbounds %struct.KDTreeNode, ptr %12, i64 0, i32 2, i64 %17
  %23 = load float, ptr %22, align 4, !tbaa !47
  %24 = fcmp olt float %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load ptr, ptr %12, align 8, !tbaa !57
  %27 = icmp eq ptr %26, null
  br i1 %27, label %129, label %28

28:                                               ; preds = %25
  store ptr %26, ptr %6, align 16, !tbaa !34
  br label %58

29:                                               ; preds = %14
  %30 = fsub float %19, %4
  %31 = fcmp ogt float %30, %23
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.KDTreeNode, ptr %12, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !58
  %35 = icmp eq ptr %34, null
  br i1 %35, label %129, label %36

36:                                               ; preds = %32
  store ptr %34, ptr %6, align 16, !tbaa !34
  br label %58

37:                                               ; preds = %29
  %38 = tail call fastcc float @squared_distance(ptr noundef nonnull %21, ptr noundef nonnull %1, ptr noundef %2) #14
  %39 = fcmp ugt float %38, %10
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.KDTreeNode, ptr %12, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !43
  call fastcc void @add_in_range(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef 0, i32 noundef %42, float noundef %38, ptr noundef nonnull %21) #14
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ 1, %40 ], [ 0, %37 ]
  %45 = load ptr, ptr %12, align 8, !tbaa !57
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store ptr %45, ptr %6, align 16, !tbaa !34
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32 [ 1, %47 ], [ 0, %43 ]
  %50 = getelementptr inbounds %struct.KDTreeNode, ptr %12, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !58
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = add nuw nsw i32 %49, 1
  %55 = zext nneg i32 %49 to i64
  %56 = getelementptr inbounds ptr, ptr %6, i64 %55
  store ptr %51, ptr %56, align 8, !tbaa !34
  br label %58

57:                                               ; preds = %48
  br i1 %46, label %131, label %58

58:                                               ; preds = %53, %36, %28, %57
  %59 = phi i32 [ 0, %28 ], [ 0, %36 ], [ %44, %53 ], [ %44, %57 ]
  %60 = phi i32 [ 1, %28 ], [ 1, %36 ], [ %54, %53 ], [ 1, %57 ]
  br label %61

61:                                               ; preds = %58, %122
  %62 = phi i32 [ %114, %122 ], [ %59, %58 ]
  %63 = phi i32 [ %113, %122 ], [ %60, %58 ]
  %64 = phi ptr [ %123, %122 ], [ %6, %58 ]
  %65 = add i32 %63, -1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %64, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.KDTreeNode, ptr %68, i64 0, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !45
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds float, ptr %1, i64 %71
  %73 = load float, ptr %72, align 4, !tbaa !47
  %74 = fadd float %73, %4
  %75 = getelementptr inbounds %struct.KDTreeNode, ptr %68, i64 0, i32 2
  %76 = getelementptr inbounds %struct.KDTreeNode, ptr %68, i64 0, i32 2, i64 %71
  %77 = load float, ptr %76, align 4, !tbaa !47
  %78 = fcmp olt float %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %61
  %80 = load ptr, ptr %68, align 8, !tbaa !57
  %81 = icmp eq ptr %80, null
  br i1 %81, label %112, label %82

82:                                               ; preds = %79
  store ptr %80, ptr %67, align 8, !tbaa !34
  br label %112

83:                                               ; preds = %61
  %84 = fsub float %73, %4
  %85 = fcmp ogt float %84, %77
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.KDTreeNode, ptr %68, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !58
  %89 = icmp eq ptr %88, null
  br i1 %89, label %112, label %90

90:                                               ; preds = %86
  store ptr %88, ptr %67, align 8, !tbaa !34
  br label %112

91:                                               ; preds = %83
  %92 = call fastcc float @squared_distance(ptr noundef nonnull %75, ptr noundef nonnull %1, ptr noundef %2) #14
  %93 = fcmp ugt float %92, %10
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = add i32 %62, 1
  %96 = getelementptr inbounds %struct.KDTreeNode, ptr %68, i64 0, i32 3
  %97 = load i32, ptr %96, align 4, !tbaa !43
  call fastcc void @add_in_range(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef %62, i32 noundef %97, float noundef %92, ptr noundef nonnull %75) #14
  br label %98

98:                                               ; preds = %94, %91
  %99 = phi i32 [ %95, %94 ], [ %62, %91 ]
  %100 = load ptr, ptr %68, align 8, !tbaa !57
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  store ptr %100, ptr %67, align 8, !tbaa !34
  br label %103

103:                                              ; preds = %102, %98
  %104 = phi i32 [ %63, %102 ], [ %65, %98 ]
  %105 = getelementptr inbounds %struct.KDTreeNode, ptr %68, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !58
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = add i32 %104, 1
  %110 = zext i32 %104 to i64
  %111 = getelementptr inbounds ptr, ptr %64, i64 %110
  store ptr %106, ptr %111, align 8, !tbaa !34
  br label %112

112:                                              ; preds = %90, %86, %108, %103, %79, %82
  %113 = phi i32 [ %63, %82 ], [ %65, %79 ], [ %63, %90 ], [ %65, %86 ], [ %109, %108 ], [ %104, %103 ]
  %114 = phi i32 [ %62, %82 ], [ %62, %79 ], [ %62, %90 ], [ %62, %86 ], [ %99, %108 ], [ %99, %103 ]
  %115 = add i32 %113, 3
  %116 = load i32, ptr %8, align 4, !tbaa !55
  %117 = icmp ugt i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = icmp ne ptr %6, %64
  %120 = zext i1 %119 to i8
  %121 = call fastcc ptr @realloc_nodes(ptr noundef nonnull %64, ptr noundef nonnull %8, i8 noundef zeroext %120) #14
  br label %122

122:                                              ; preds = %118, %112
  %123 = phi ptr [ %121, %118 ], [ %64, %112 ]
  %124 = icmp eq i32 %113, 0
  br i1 %124, label %125, label %61, !llvm.loop !71

125:                                              ; preds = %122
  %126 = icmp eq ptr %123, %6
  br i1 %126, label %131, label %127

127:                                              ; preds = %125
  %128 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %128(ptr noundef %123) #13
  br label %131

129:                                              ; preds = %25, %32
  %130 = load ptr, ptr %7, align 8, !tbaa !34
  br label %137

131:                                              ; preds = %57, %127, %125
  %132 = phi i32 [ %114, %127 ], [ %114, %125 ], [ %44, %57 ]
  %133 = icmp eq i32 %132, 0
  %134 = load ptr, ptr %7, align 8, !tbaa !34
  br i1 %133, label %137, label %135

135:                                              ; preds = %131
  %136 = zext i32 %132 to i64
  call void @qsort(ptr noundef %134, i64 noundef %136, i64 noundef 20, ptr noundef nonnull @range_compare) #13
  br label %137

137:                                              ; preds = %129, %135, %131
  %138 = phi ptr [ %130, %129 ], [ %134, %135 ], [ %134, %131 ]
  %139 = phi i32 [ 0, %129 ], [ %132, %135 ], [ 0, %131 ]
  store ptr %138, ptr %3, align 8, !tbaa !34
  br label %140

140:                                              ; preds = %5, %137
  %141 = phi i32 [ %139, %137 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %6) #15
  ret i32 %141
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_in_range(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !PGOFuncName !72 {
  %7 = load i32, ptr %1, align 4, !tbaa !55
  %8 = icmp ugt i32 %7, %2
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  br i1 %8, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !34
  %12 = add i32 %7, 50
  store i32 %12, ptr %1, align 4, !tbaa !55
  %13 = zext i32 %12 to i64
  %14 = mul nuw nsw i64 %13, 40
  %15 = tail call ptr %11(ptr noundef %9, i64 noundef %14, ptr noundef nonnull @__func__.add_in_range) #13
  store ptr %15, ptr %0, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %10, %6
  %17 = phi ptr [ %15, %10 ], [ %9, %6 ]
  %18 = zext i32 %2 to i64
  %19 = getelementptr inbounds %struct.KDTreeNearest, ptr %17, i64 %18
  store i32 %3, ptr %19, align 4, !tbaa !60
  %20 = tail call float @sqrtf(float noundef %4) #13
  %21 = getelementptr inbounds %struct.KDTreeNearest, ptr %17, i64 %18, i32 1
  store float %20, ptr %21, align 4, !tbaa !62
  %22 = getelementptr inbounds %struct.KDTreeNearest, ptr %17, i64 %18, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef %5) #14
  ret void
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @range_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 !PGOFuncName !73 {
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !74 {
  %4 = load float, ptr %1, align 4, !tbaa !47
  %5 = load float, ptr %2, align 4, !tbaa !47
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !47
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !47
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !47
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !47
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !47
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !75 {
  %3 = load float, ptr %0, align 4, !tbaa !47
  %4 = load float, ptr %1, align 4, !tbaa !47
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !47
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !47
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !47
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !76 {
  %2 = load float, ptr %0, align 4, !tbaa !47
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !47
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !47
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  ret float %9
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"KDTree", !35, i64 0, !40, i64 8, !35, i64 16}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !40, i64 8}
!42 = !{!39, !35, i64 16}
!43 = !{!44, !40, i64 28}
!44 = !{!"KDTreeNode", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 28, !40, i64 32}
!45 = !{!44, !40, i64 32}
!46 = !{!"BLI_kdtree.c:copy_v3_v3"}
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !36, i64 0}
!49 = !{!"BLI_kdtree.c:kdtree_balance"}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 12, !54, i64 28, i64 4, !55, i64 32, i64 4, !55}
!54 = !{!36, !36, i64 0}
!55 = !{!40, !40, i64 0}
!56 = distinct !{!56, !51}
!57 = !{!44, !35, i64 0}
!58 = !{!44, !35, i64 8}
!59 = distinct !{!59, !51}
!60 = !{!61, !40, i64 0}
!61 = !{!"KDTreeNearest", !40, i64 0, !48, i64 4, !36, i64 8}
!62 = !{!61, !48, i64 4}
!63 = !{!"BLI_kdtree.c:len_squared_v3v3"}
!64 = !{!"BLI_kdtree.c:realloc_nodes"}
!65 = distinct !{!65, !51}
!66 = distinct !{!66, !51}
!67 = !{!"BLI_kdtree.c:squared_distance"}
!68 = !{!"BLI_kdtree.c:add_nearest"}
!69 = !{i64 0, i64 4, !55, i64 4, i64 4, !47, i64 8, i64 12, !54}
!70 = distinct !{!70, !51}
!71 = distinct !{!71, !51}
!72 = !{!"BLI_kdtree.c:add_in_range"}
!73 = !{!"BLI_kdtree.c:range_compare"}
!74 = !{!"BLI_kdtree.c:sub_v3_v3v3"}
!75 = !{!"BLI_kdtree.c:dot_v3v3"}
!76 = !{!"BLI_kdtree.c:len_squared_v3"}
