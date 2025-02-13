; ModuleID = 'psimplex.c'
source_filename = "psimplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.basket = type { ptr, i64, i64, i64 }
%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64 }
%struct.arc = type { i32, i64, ptr, ptr, i16, ptr, ptr, i64, i64 }
%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }

@perm_p = internal unnamed_addr global ptr null, align 8
@basket_sizes = internal unnamed_addr global ptr null, align 8
@basket = internal unnamed_addr global ptr null, align 8
@opt = internal unnamed_addr global i1 false, align 8
@opt_basket = internal unnamed_addr global ptr null, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @markBaskets(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %4 = icmp sgt i64 %0, 1
  %5 = load ptr, ptr @perm_p, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %1, %56
  %7 = phi ptr [ %5, %1 ], [ %51, %56 ]
  %8 = phi ptr [ %5, %1 ], [ %52, %56 ]
  %9 = phi i64 [ 0, %1 ], [ %54, %56 ]
  %10 = phi i64 [ 1, %1 ], [ %61, %56 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !6
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.basket, ptr %12, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !10
  %15 = icmp sgt i64 %14, -1
  %16 = select i1 %15, ptr %12, ptr null
  %17 = select i1 %15, i64 0, i64 %9
  store ptr %16, ptr %2, align 8, !tbaa !6
  br i1 %4, label %18, label %50

18:                                               ; preds = %6, %42
  %19 = phi ptr [ %43, %42 ], [ %7, %6 ]
  %20 = phi ptr [ %44, %42 ], [ %7, %6 ]
  %21 = phi i64 [ %45, %42 ], [ %17, %6 ]
  %22 = phi i64 [ %46, %42 ], [ 1, %6 ]
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  store ptr %25, ptr %3, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.basket, ptr %25, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !10
  %28 = icmp sgt i64 %27, -1
  br i1 %28, label %29, label %42

29:                                               ; preds = %18
  %30 = load ptr, ptr %2, align 8, !tbaa !6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = call i32 @cost_compare(ptr noundef nonnull %3, ptr noundef nonnull %2) #6
  %34 = icmp slt i32 %33, 0
  %35 = load ptr, ptr @perm_p, align 8, !tbaa !6
  br i1 %34, label %36, label %42

36:                                               ; preds = %32
  %37 = load ptr, ptr %3, align 8, !tbaa !6
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi ptr [ %35, %36 ], [ %19, %29 ]
  %40 = phi ptr [ %37, %36 ], [ %25, %29 ]
  %41 = phi ptr [ %35, %36 ], [ %20, %29 ]
  store ptr %40, ptr %2, align 8, !tbaa !6
  br label %42

42:                                               ; preds = %18, %38, %32
  %43 = phi ptr [ %39, %38 ], [ %35, %32 ], [ %19, %18 ]
  %44 = phi ptr [ %41, %38 ], [ %35, %32 ], [ %20, %18 ]
  %45 = phi i64 [ %22, %38 ], [ %21, %32 ], [ %21, %18 ]
  %46 = add nuw nsw i64 %22, 1
  %47 = icmp eq i64 %46, %0
  br i1 %47, label %48, label %18, !llvm.loop !13

48:                                               ; preds = %42
  %49 = load ptr, ptr %2, align 8, !tbaa !6
  br label %50

50:                                               ; preds = %48, %6
  %51 = phi ptr [ %7, %6 ], [ %43, %48 ]
  %52 = phi ptr [ %8, %6 ], [ %44, %48 ]
  %53 = phi ptr [ %16, %6 ], [ %49, %48 ]
  %54 = phi i64 [ %17, %6 ], [ %45, %48 ]
  %55 = icmp eq ptr %53, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.basket, ptr %53, i64 0, i32 3
  store i64 %10, ptr %57, align 8, !tbaa !10
  %58 = getelementptr inbounds ptr, ptr %52, i64 %54
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = getelementptr inbounds ptr, ptr %59, i64 1
  store ptr %60, ptr %58, align 8, !tbaa !6
  %61 = add nuw nsw i64 %10, 1
  %62 = icmp eq i64 %61, 61
  br i1 %62, label %63, label %6, !llvm.loop !15

63:                                               ; preds = %56, %50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @cost_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @worker(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4061 x ptr], align 16
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %11 = load i64, ptr %10, align 8, !tbaa !20
  %12 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 28
  call void @llvm.lifetime.start.p0(i64 32488, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store ptr %7, ptr %5, align 8, !tbaa !6
  %13 = load ptr, ptr @basket_sizes, align 8, !tbaa !6
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds i64, ptr %13, i64 %14
  store i64 0, ptr %15, align 8, !tbaa !21
  %16 = sdiv i32 4000, %2
  %17 = icmp sgt i32 %16, -60
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = add nsw i32 %16, 261
  %20 = mul nsw i32 %19, %1
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = load ptr, ptr @basket, align 8, !tbaa !6
  %24 = add nsw i32 %16, 61
  %25 = zext nneg i32 %24 to i64
  br label %33

26:                                               ; preds = %33, %3
  %27 = load i1, ptr @opt, align 8
  br i1 %27, label %55, label %28

28:                                               ; preds = %26
  %29 = sext i32 %2 to i64
  %30 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  %31 = getelementptr inbounds ptr, ptr %4, i64 1
  %32 = icmp eq i32 %1, 1
  br label %41

33:                                               ; preds = %18, %33
  %34 = phi i64 [ %22, %18 ], [ %39, %33 ]
  %35 = phi i64 [ 1, %18 ], [ %38, %33 ]
  %36 = getelementptr inbounds %struct.basket, ptr %23, i64 %34
  %37 = getelementptr inbounds [4061 x ptr], ptr %4, i64 0, i64 %35
  store ptr %36, ptr %37, align 8, !tbaa !6
  %38 = add nuw nsw i64 %35, 1
  %39 = add nsw i64 %34, 1
  %40 = icmp eq i64 %38, %25
  br i1 %40, label %26, label %33, !llvm.loop !22

41:                                               ; preds = %28, %53
  %42 = load ptr, ptr @basket_sizes, align 8, !tbaa !6
  %43 = load i64, ptr %12, align 8, !tbaa !21
  %44 = add nsw i64 %43, %14
  %45 = srem i64 %44, %29
  %46 = load i64, ptr %30, align 8, !tbaa !23
  %47 = call ptr @primal_bea_mpp(i64 noundef %11, ptr noundef %7, ptr noundef %9, ptr noundef %42, ptr noundef nonnull %4, i32 noundef %1, ptr noundef nonnull %5, i64 noundef %45, i64 noundef %29, i64 noundef %46) #6
  %48 = load ptr, ptr @opt_basket, align 8, !tbaa !6
  %49 = getelementptr inbounds ptr, ptr %48, i64 %14
  store ptr %47, ptr %49, align 8, !tbaa !6
  %50 = load ptr, ptr @perm_p, align 8, !tbaa !6
  %51 = getelementptr inbounds ptr, ptr %50, i64 %14
  store ptr %31, ptr %51, align 8, !tbaa !6
  br i1 %32, label %52, label %53

52:                                               ; preds = %41
  call void @markBaskets(i64 noundef %29) #7
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i1, ptr @opt, align 8
  br i1 %54, label %55, label %41, !llvm.loop !24

55:                                               ; preds = %53, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 32488, ptr nonnull %4) #5
  ret void
}

; Function Attrs: optsize
declare ptr @primal_bea_mpp(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @master(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [4061 x ptr], align 16
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %9 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %14 = load i64, ptr %13, align 8, !tbaa !20
  %15 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 28
  %16 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 32488, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  store ptr %10, ptr %8, align 8, !tbaa !6
  %17 = load ptr, ptr @basket_sizes, align 8, !tbaa !6
  store i64 0, ptr %17, align 8, !tbaa !21
  %18 = sdiv i32 4000, %1
  %19 = icmp sgt i32 %18, -60
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load ptr, ptr @basket, align 8, !tbaa !6
  %22 = add nsw i32 %18, 61
  %23 = zext nneg i32 %22 to i64
  br label %33

24:                                               ; preds = %33, %2
  %25 = load i1, ptr @opt, align 8
  br i1 %25, label %133, label %26

26:                                               ; preds = %24
  %27 = sext i32 %1 to i64
  %28 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 32
  %29 = getelementptr inbounds ptr, ptr %7, i64 1
  %30 = icmp sgt i32 %1, 0
  %31 = icmp eq i32 %1, 1
  %32 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 16
  br label %39

33:                                               ; preds = %20, %33
  %34 = phi i64 [ 1, %20 ], [ %37, %33 ]
  %35 = getelementptr inbounds %struct.basket, ptr %21, i64 %34
  %36 = getelementptr inbounds [4061 x ptr], ptr %7, i64 0, i64 %34
  store ptr %35, ptr %36, align 8, !tbaa !6
  %37 = add nuw nsw i64 %34, 1
  %38 = icmp eq i64 %37, %23
  br i1 %38, label %24, label %33, !llvm.loop !25

39:                                               ; preds = %26, %131
  %40 = load ptr, ptr @basket_sizes, align 8, !tbaa !6
  %41 = load i64, ptr %15, align 8, !tbaa !21
  %42 = srem i64 %41, %27
  %43 = load i64, ptr %28, align 8, !tbaa !23
  %44 = call ptr @primal_bea_mpp(i64 noundef %14, ptr noundef %10, ptr noundef %12, ptr noundef %40, ptr noundef nonnull %7, i32 noundef 0, ptr noundef nonnull %8, i64 noundef %42, i64 noundef %27, i64 noundef %43) #6
  %45 = load ptr, ptr @opt_basket, align 8, !tbaa !6
  store ptr %44, ptr %45, align 8, !tbaa !6
  %46 = load ptr, ptr @perm_p, align 8, !tbaa !6
  store ptr %29, ptr %46, align 8, !tbaa !6
  store ptr null, ptr %6, align 8, !tbaa !6
  br i1 %30, label %47, label %130

47:                                               ; preds = %39, %68
  %48 = phi ptr [ %72, %68 ], [ null, %39 ]
  %49 = phi ptr [ %69, %68 ], [ %45, %39 ]
  %50 = phi i64 [ %70, %68 ], [ 0, %39 ]
  %51 = icmp eq ptr %48, null
  %52 = getelementptr inbounds ptr, ptr %49, i64 %50
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = icmp eq ptr %53, null
  br i1 %51, label %55, label %56

55:                                               ; preds = %47
  br i1 %54, label %68, label %65

56:                                               ; preds = %47
  br i1 %54, label %68, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds ptr, ptr %49, i64 %50
  %59 = call i32 @cost_compare(ptr noundef nonnull %58, ptr noundef nonnull %6) #6
  %60 = icmp slt i32 %59, 0
  %61 = load ptr, ptr @opt_basket, align 8, !tbaa !6
  br i1 %60, label %62, label %68

62:                                               ; preds = %57
  %63 = getelementptr inbounds ptr, ptr %61, i64 %50
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  br label %65

65:                                               ; preds = %62, %55
  %66 = phi ptr [ %61, %62 ], [ %49, %55 ]
  %67 = phi ptr [ %64, %62 ], [ %53, %55 ]
  store ptr %67, ptr %6, align 8, !tbaa !6
  br label %68

68:                                               ; preds = %55, %56, %57, %65
  %69 = phi ptr [ %49, %56 ], [ %61, %57 ], [ %66, %65 ], [ %49, %55 ]
  %70 = add nuw nsw i64 %50, 1
  %71 = icmp eq i64 %70, %27
  %72 = load ptr, ptr %6, align 8, !tbaa !6
  br i1 %71, label %73, label %47, !llvm.loop !26

73:                                               ; preds = %68
  %74 = icmp eq ptr %72, null
  br i1 %74, label %130, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.basket, ptr %72, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !27
  %78 = load ptr, ptr %72, align 8, !tbaa !28
  br i1 %31, label %79, label %80

79:                                               ; preds = %75
  call void @markBaskets(i64 noundef %27) #7
  br label %80

80:                                               ; preds = %75, %79
  %81 = icmp eq i64 %77, 0
  br i1 %81, label %130, label %82

82:                                               ; preds = %80
  %83 = load i64, ptr %15, align 8, !tbaa !21
  %84 = add nsw i64 %83, 1
  store i64 %84, ptr %15, align 8, !tbaa !21
  %85 = icmp sgt i64 %77, 0
  %86 = getelementptr inbounds %struct.arc, ptr %78, i64 0, i32 3
  %87 = getelementptr inbounds %struct.arc, ptr %78, i64 0, i32 2
  %88 = select i1 %85, ptr %87, ptr %86
  %89 = select i1 %85, ptr %86, ptr %87
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = load ptr, ptr %88, align 8, !tbaa !6
  store i64 1, ptr %3, align 8, !tbaa !21
  %92 = call ptr @primal_iminus(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %90, ptr noundef %91, ptr noundef nonnull %5) #6
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %82
  %95 = load i64, ptr %16, align 8, !tbaa !21
  %96 = add nsw i64 %95, 1
  store i64 %96, ptr %16, align 8, !tbaa !21
  %97 = getelementptr inbounds %struct.arc, ptr %78, i64 0, i32 4
  %98 = load i16, ptr %97, align 8, !tbaa !29
  %99 = icmp eq i16 %98, 2
  %100 = select i1 %99, i16 1, i16 2
  store i16 %100, ptr %97, align 8, !tbaa !29
  %101 = load i64, ptr %3, align 8, !tbaa !21
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %131, label %103

103:                                              ; preds = %94
  %104 = load ptr, ptr %5, align 8, !tbaa !6
  call void @primal_update_flow(ptr noundef %90, ptr noundef %91, ptr noundef %104) #6
  br label %131

105:                                              ; preds = %82
  %106 = load i64, ptr %4, align 8, !tbaa !21
  %107 = icmp eq i64 %106, 0
  %108 = select i1 %107, ptr %91, ptr %90
  %109 = select i1 %107, ptr %90, ptr %91
  %110 = getelementptr inbounds %struct.node, ptr %92, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !33
  %112 = getelementptr inbounds %struct.node, ptr %92, i64 0, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !35
  %114 = getelementptr inbounds %struct.node, ptr %92, i64 0, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !36
  %116 = sext i32 %115 to i64
  %117 = icmp eq i64 %106, %116
  %118 = select i1 %117, i16 2, i16 1
  %119 = load i64, ptr %3, align 8
  %120 = sub nsw i64 1, %119
  %121 = select i1 %85, i64 %120, i64 %119
  %122 = load ptr, ptr %87, align 8, !tbaa !37
  %123 = icmp eq ptr %122, %109
  %124 = zext i1 %123 to i64
  %125 = zext i1 %107 to i64
  %126 = load ptr, ptr %5, align 8, !tbaa !6
  %127 = load i64, ptr %32, align 8, !tbaa !38
  call void @update_tree(i64 noundef %125, i64 noundef %124, i64 noundef %119, i64 noundef %121, ptr noundef %109, ptr noundef %108, ptr noundef nonnull %92, ptr noundef %111, ptr noundef %126, ptr noundef %78, i64 noundef %77, i64 noundef %127) #6
  %128 = getelementptr inbounds %struct.arc, ptr %78, i64 0, i32 4
  store i16 0, ptr %128, align 8, !tbaa !29
  %129 = getelementptr inbounds %struct.arc, ptr %113, i64 0, i32 4
  store i16 %118, ptr %129, align 8, !tbaa !29
  br label %131

130:                                              ; preds = %80, %73, %39
  store i1 true, ptr @opt, align 8
  br label %133

131:                                              ; preds = %105, %103, %94
  %132 = load i1, ptr @opt, align 8
  br i1 %132, label %133, label %39, !llvm.loop !39

133:                                              ; preds = %131, %130, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 32488, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret void
}

; Function Attrs: optsize
declare ptr @primal_iminus(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @primal_update_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_tree(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i64 @primal_net_simplex(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #8
  store ptr %2, ptr @perm_p, align 8, !tbaa !6
  %3 = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #8
  store ptr %3, ptr @opt_basket, align 8, !tbaa !6
  %4 = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #8
  store ptr %4, ptr @basket_sizes, align 8, !tbaa !6
  %5 = tail call noalias dereferenceable_or_null(136352) ptr @calloc(i64 noundef 4261, i64 noundef 32) #8
  store ptr %5, ptr @basket, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  tail call void @set_static_vars(ptr noundef %0, ptr noundef %7) #6
  tail call void @master(ptr noundef %0, i32 noundef 1) #7
  %8 = tail call i64 @primal_feasible(ptr noundef %0) #6
  %9 = tail call i64 @dual_feasible(ptr noundef %0) #6
  store i1 false, ptr @opt, align 8
  %10 = load ptr, ptr @perm_p, align 8, !tbaa !6
  tail call void @free(ptr noundef %10) #6
  %11 = load ptr, ptr @opt_basket, align 8, !tbaa !6
  tail call void @free(ptr noundef %11) #6
  %12 = load ptr, ptr @basket_sizes, align 8, !tbaa !6
  tail call void @free(ptr noundef %12) #6
  %13 = load ptr, ptr @basket, align 8, !tbaa !6
  tail call void @free(ptr noundef %13) #6
  ret i64 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_static_vars(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @primal_feasible(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @dual_feasible(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 24}
!11 = !{!"basket", !7, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!12 = !{!"long", !8, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!17, !7, i64 568}
!17 = !{!"network", !8, i64 0, !8, i64 200, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !12, i64 440, !12, i64 448, !12, i64 456, !12, i64 464, !12, i64 472, !12, i64 480, !12, i64 488, !12, i64 496, !12, i64 504, !12, i64 512, !12, i64 520, !12, i64 528, !18, i64 536, !12, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !12, i64 608, !12, i64 616, !12, i64 624, !12, i64 632, !12, i64 640}
!18 = !{!"double", !8, i64 0}
!19 = !{!17, !7, i64 576}
!20 = !{!17, !12, i64 424}
!21 = !{!12, !12, i64 0}
!22 = distinct !{!22, !14}
!23 = !{!17, !12, i64 640}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = !{!11, !12, i64 8}
!28 = !{!11, !7, i64 0}
!29 = !{!30, !32, i64 32}
!30 = !{!"arc", !31, i64 0, !12, i64 8, !7, i64 16, !7, i64 24, !32, i64 32, !7, i64 40, !7, i64 48, !12, i64 56, !12, i64 64}
!31 = !{!"int", !8, i64 0}
!32 = !{!"short", !8, i64 0}
!33 = !{!34, !7, i64 24}
!34 = !{!"node", !12, i64 0, !31, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !12, i64 80, !12, i64 88, !31, i64 96, !31, i64 100}
!35 = !{!34, !7, i64 48}
!36 = !{!34, !31, i64 8}
!37 = !{!30, !7, i64 16}
!38 = !{!17, !12, i64 512}
!39 = distinct !{!39, !14}
