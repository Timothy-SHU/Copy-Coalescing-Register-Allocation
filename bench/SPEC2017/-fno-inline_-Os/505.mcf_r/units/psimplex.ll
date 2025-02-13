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
define dso_local void @markBaskets(i64 noundef %0) local_unnamed_addr #0 !prof !48 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %4 = icmp sgt i64 %0, 1
  %5 = load ptr, ptr @perm_p, align 8, !tbaa !49
  br label %6

6:                                                ; preds = %1, %56
  %7 = phi ptr [ %5, %1 ], [ %51, %56 ]
  %8 = phi ptr [ %5, %1 ], [ %52, %56 ]
  %9 = phi i64 [ 0, %1 ], [ %54, %56 ]
  %10 = phi i64 [ 1, %1 ], [ %61, %56 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !49
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.basket, ptr %12, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !53
  %15 = icmp sgt i64 %14, -1
  %16 = select i1 %15, ptr %12, ptr null, !prof !56
  %17 = select i1 %15, i64 0, i64 %9, !prof !56
  store ptr %16, ptr %2, align 8, !tbaa !49
  br i1 %4, label %18, label %50, !prof !57

18:                                               ; preds = %6, %42
  %19 = phi ptr [ %43, %42 ], [ %7, %6 ]
  %20 = phi ptr [ %44, %42 ], [ %7, %6 ]
  %21 = phi i64 [ %45, %42 ], [ %17, %6 ]
  %22 = phi i64 [ %46, %42 ], [ 1, %6 ]
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  store ptr %25, ptr %3, align 8, !tbaa !49
  %26 = getelementptr inbounds %struct.basket, ptr %25, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !53
  %28 = icmp sgt i64 %27, -1
  br i1 %28, label %29, label %42

29:                                               ; preds = %18
  %30 = load ptr, ptr %2, align 8, !tbaa !49
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = call i32 @cost_compare(ptr noundef nonnull %3, ptr noundef nonnull %2) #6
  %34 = icmp slt i32 %33, 0
  %35 = load ptr, ptr @perm_p, align 8, !tbaa !49
  br i1 %34, label %36, label %42

36:                                               ; preds = %32
  %37 = load ptr, ptr %3, align 8, !tbaa !49
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi ptr [ %35, %36 ], [ %19, %29 ]
  %40 = phi ptr [ %37, %36 ], [ %25, %29 ]
  %41 = phi ptr [ %35, %36 ], [ %20, %29 ]
  store ptr %40, ptr %2, align 8, !tbaa !49
  br label %42

42:                                               ; preds = %18, %38, %32
  %43 = phi ptr [ %39, %38 ], [ %35, %32 ], [ %19, %18 ]
  %44 = phi ptr [ %41, %38 ], [ %35, %32 ], [ %20, %18 ]
  %45 = phi i64 [ %22, %38 ], [ %21, %32 ], [ %21, %18 ]
  %46 = add nuw nsw i64 %22, 1
  %47 = icmp eq i64 %46, %0
  br i1 %47, label %48, label %18, !prof !58, !llvm.loop !59

48:                                               ; preds = %42
  %49 = load ptr, ptr %2, align 8, !tbaa !49
  br label %50

50:                                               ; preds = %48, %6
  %51 = phi ptr [ %7, %6 ], [ %43, %48 ]
  %52 = phi ptr [ %8, %6 ], [ %44, %48 ]
  %53 = phi ptr [ %16, %6 ], [ %49, %48 ]
  %54 = phi i64 [ %17, %6 ], [ %45, %48 ]
  %55 = icmp eq ptr %53, null
  br i1 %55, label %63, label %56, !prof !61

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.basket, ptr %53, i64 0, i32 3
  store i64 %10, ptr %57, align 8, !tbaa !53
  %58 = getelementptr inbounds ptr, ptr %52, i64 %54
  %59 = load ptr, ptr %58, align 8, !tbaa !49
  %60 = getelementptr inbounds ptr, ptr %59, i64 1
  store ptr %60, ptr %58, align 8, !tbaa !49
  %61 = add nuw nsw i64 %10, 1
  %62 = icmp eq i64 %61, 61
  br i1 %62, label %63, label %6, !prof !62, !llvm.loop !63

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
define dso_local void @worker(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !64 {
  %4 = alloca [4061 x ptr], align 16
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %11 = load i64, ptr %10, align 8, !tbaa !69
  %12 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 28
  call void @llvm.lifetime.start.p0(i64 32488, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  store ptr %7, ptr %5, align 8, !tbaa !49
  %13 = load ptr, ptr @basket_sizes, align 8, !tbaa !49
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds i64, ptr %13, i64 %14
  store i64 0, ptr %15, align 8, !tbaa !70
  %16 = sdiv i32 4000, %2
  %17 = icmp sgt i32 %16, -60
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = add nsw i32 %16, 261
  %20 = mul nsw i32 %19, %1
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = load ptr, ptr @basket, align 8, !tbaa !49
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
  store ptr %36, ptr %37, align 8, !tbaa !49
  %38 = add nuw nsw i64 %35, 1
  %39 = add nsw i64 %34, 1
  %40 = icmp eq i64 %38, %25
  br i1 %40, label %26, label %33, !llvm.loop !71

41:                                               ; preds = %28, %53
  %42 = load ptr, ptr @basket_sizes, align 8, !tbaa !49
  %43 = load i64, ptr %12, align 8, !tbaa !70
  %44 = add nsw i64 %43, %14
  %45 = srem i64 %44, %29
  %46 = load i64, ptr %30, align 8, !tbaa !72
  %47 = call ptr @primal_bea_mpp(i64 noundef %11, ptr noundef %7, ptr noundef %9, ptr noundef %42, ptr noundef nonnull %4, i32 noundef %1, ptr noundef nonnull %5, i64 noundef %45, i64 noundef %29, i64 noundef %46) #6
  %48 = load ptr, ptr @opt_basket, align 8, !tbaa !49
  %49 = getelementptr inbounds ptr, ptr %48, i64 %14
  store ptr %47, ptr %49, align 8, !tbaa !49
  %50 = load ptr, ptr @perm_p, align 8, !tbaa !49
  %51 = getelementptr inbounds ptr, ptr %50, i64 %14
  store ptr %31, ptr %51, align 8, !tbaa !49
  br i1 %32, label %52, label %53

52:                                               ; preds = %41
  call void @markBaskets(i64 noundef %29) #7
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i1, ptr @opt, align 8
  br i1 %54, label %55, label %41, !llvm.loop !73

55:                                               ; preds = %53, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 32488, ptr nonnull %4) #5
  ret void
}

; Function Attrs: optsize
declare ptr @primal_bea_mpp(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @master(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !74 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %14 = load i64, ptr %13, align 8, !tbaa !69
  %15 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 28
  %16 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 32488, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  store ptr %10, ptr %8, align 8, !tbaa !49
  %17 = load ptr, ptr @basket_sizes, align 8, !tbaa !49
  store i64 0, ptr %17, align 8, !tbaa !70
  %18 = sdiv i32 4000, %1
  %19 = icmp sgt i32 %18, -60
  br i1 %19, label %20, label %24, !prof !75

20:                                               ; preds = %2
  %21 = load ptr, ptr @basket, align 8, !tbaa !49
  %22 = add nsw i32 %18, 61
  %23 = zext nneg i32 %22 to i64
  br label %33

24:                                               ; preds = %33, %2
  %25 = load i1, ptr @opt, align 8
  br i1 %25, label %143, label %26, !prof !76

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
  store ptr %35, ptr %36, align 8, !tbaa !49
  %37 = add nuw nsw i64 %34, 1
  %38 = icmp eq i64 %37, %23
  br i1 %38, label %24, label %33, !prof !77, !llvm.loop !78

39:                                               ; preds = %26, %141
  %40 = load ptr, ptr @basket_sizes, align 8, !tbaa !49
  %41 = load i64, ptr %15, align 8, !tbaa !70
  %42 = srem i64 %41, %27
  %43 = load i64, ptr %28, align 8, !tbaa !72
  %44 = call ptr @primal_bea_mpp(i64 noundef %14, ptr noundef %10, ptr noundef %12, ptr noundef %40, ptr noundef nonnull %7, i32 noundef 0, ptr noundef nonnull %8, i64 noundef %42, i64 noundef %27, i64 noundef %43) #6
  %45 = load ptr, ptr @opt_basket, align 8, !tbaa !49
  store ptr %44, ptr %45, align 8, !tbaa !49
  %46 = load ptr, ptr @perm_p, align 8, !tbaa !49
  store ptr %29, ptr %46, align 8, !tbaa !49
  store ptr null, ptr %6, align 8, !tbaa !49
  br i1 %30, label %47, label %140, !prof !79

47:                                               ; preds = %39, %68
  %48 = phi ptr [ %72, %68 ], [ null, %39 ]
  %49 = phi ptr [ %69, %68 ], [ %45, %39 ]
  %50 = phi i64 [ %70, %68 ], [ 0, %39 ]
  %51 = icmp eq ptr %48, null
  %52 = getelementptr inbounds ptr, ptr %49, i64 %50
  %53 = load ptr, ptr %52, align 8, !tbaa !49
  %54 = icmp eq ptr %53, null
  br i1 %51, label %55, label %56, !prof !80

55:                                               ; preds = %47
  br i1 %54, label %68, label %65, !prof !81

56:                                               ; preds = %47
  br i1 %54, label %68, label %57, !prof !82

57:                                               ; preds = %56
  %58 = getelementptr inbounds ptr, ptr %49, i64 %50
  %59 = call i32 @cost_compare(ptr noundef nonnull %58, ptr noundef nonnull %6) #6
  %60 = icmp slt i32 %59, 0
  %61 = load ptr, ptr @opt_basket, align 8, !tbaa !49
  br i1 %60, label %62, label %68

62:                                               ; preds = %57
  %63 = getelementptr inbounds ptr, ptr %61, i64 %50
  %64 = load ptr, ptr %63, align 8, !tbaa !49
  br label %65

65:                                               ; preds = %62, %55
  %66 = phi ptr [ %61, %62 ], [ %49, %55 ]
  %67 = phi ptr [ %64, %62 ], [ %53, %55 ]
  store ptr %67, ptr %6, align 8, !tbaa !49
  br label %68

68:                                               ; preds = %55, %56, %57, %65
  %69 = phi ptr [ %49, %56 ], [ %61, %57 ], [ %66, %65 ], [ %49, %55 ]
  %70 = add nuw nsw i64 %50, 1
  %71 = icmp eq i64 %70, %27
  %72 = load ptr, ptr %6, align 8, !tbaa !49
  br i1 %71, label %73, label %47, !prof !79, !llvm.loop !83

73:                                               ; preds = %68
  %74 = icmp eq ptr %72, null
  br i1 %74, label %140, label %75, !prof !84

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.basket, ptr %72, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !85
  %78 = load ptr, ptr %72, align 8, !tbaa !86
  br i1 %31, label %79, label %80, !prof !87

79:                                               ; preds = %75
  call void @markBaskets(i64 noundef %27) #7
  br label %80

80:                                               ; preds = %75, %79
  %81 = icmp eq i64 %77, 0
  br i1 %81, label %140, label %82, !prof !82

82:                                               ; preds = %80
  %83 = load i64, ptr %15, align 8, !tbaa !70
  %84 = add nsw i64 %83, 1
  store i64 %84, ptr %15, align 8, !tbaa !70
  %85 = icmp sgt i64 %77, 0
  br i1 %85, label %86, label %89, !prof !88

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.arc, ptr %78, i64 0, i32 3
  %88 = getelementptr inbounds %struct.arc, ptr %78, i64 0, i32 2
  br label %92

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.arc, ptr %78, i64 0, i32 2
  %91 = getelementptr inbounds %struct.arc, ptr %78, i64 0, i32 3
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi ptr [ %88, %86 ], [ %91, %89 ]
  %94 = phi ptr [ %87, %86 ], [ %90, %89 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !49
  %96 = load ptr, ptr %93, align 8, !tbaa !49
  store i64 1, ptr %3, align 8, !tbaa !70
  %97 = call ptr @primal_iminus(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %95, ptr noundef %96, ptr noundef nonnull %5) #6
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %110, !prof !89

99:                                               ; preds = %92
  %100 = load i64, ptr %16, align 8, !tbaa !70
  %101 = add nsw i64 %100, 1
  store i64 %101, ptr %16, align 8, !tbaa !70
  %102 = getelementptr inbounds %struct.arc, ptr %78, i64 0, i32 4
  %103 = load i16, ptr %102, align 8, !tbaa !90
  %104 = icmp eq i16 %103, 2
  %105 = select i1 %104, i16 1, i16 2
  store i16 %105, ptr %102, align 8, !tbaa !90
  %106 = load i64, ptr %3, align 8, !tbaa !70
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %141, label %108

108:                                              ; preds = %99
  %109 = load ptr, ptr %5, align 8, !tbaa !49
  call void @primal_update_flow(ptr noundef %95, ptr noundef %96, ptr noundef %109) #6
  br label %141

110:                                              ; preds = %92
  %111 = load i64, ptr %4, align 8, !tbaa !70
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %114, label %113, !prof !94

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %113, %110
  %115 = phi ptr [ %95, %113 ], [ %96, %110 ]
  %116 = phi ptr [ %96, %113 ], [ %95, %110 ]
  %117 = getelementptr inbounds %struct.node, ptr %97, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !95
  %119 = getelementptr inbounds %struct.node, ptr %97, i64 0, i32 6
  %120 = load ptr, ptr %119, align 8, !tbaa !97
  %121 = getelementptr inbounds %struct.node, ptr %97, i64 0, i32 1
  %122 = load i32, ptr %121, align 8, !tbaa !98
  %123 = sext i32 %122 to i64
  %124 = icmp eq i64 %111, %123
  %125 = select i1 %124, i16 2, i16 1, !prof !99
  %126 = load i64, ptr %3, align 8, !tbaa !70
  br i1 %85, label %127, label %129, !prof !88

127:                                              ; preds = %114
  %128 = sub nsw i64 1, %126
  br label %129

129:                                              ; preds = %114, %127
  %130 = phi i64 [ %128, %127 ], [ %126, %114 ]
  %131 = getelementptr inbounds %struct.arc, ptr %78, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !100
  %133 = icmp eq ptr %132, %116
  %134 = zext i1 %133 to i64
  %135 = zext i1 %112 to i64
  %136 = load ptr, ptr %5, align 8, !tbaa !49
  %137 = load i64, ptr %32, align 8, !tbaa !101
  call void @update_tree(i64 noundef %135, i64 noundef %134, i64 noundef %126, i64 noundef %130, ptr noundef %116, ptr noundef %115, ptr noundef nonnull %97, ptr noundef %118, ptr noundef %136, ptr noundef %78, i64 noundef %77, i64 noundef %137) #6
  %138 = getelementptr inbounds %struct.arc, ptr %78, i64 0, i32 4
  store i16 0, ptr %138, align 8, !tbaa !90
  %139 = getelementptr inbounds %struct.arc, ptr %120, i64 0, i32 4
  store i16 %125, ptr %139, align 8, !tbaa !90
  br label %141

140:                                              ; preds = %80, %73, %39
  store i1 true, ptr @opt, align 8
  br label %143

141:                                              ; preds = %129, %108, %99
  %142 = load i1, ptr @opt, align 8
  br i1 %142, label %143, label %39, !prof !82, !llvm.loop !102

143:                                              ; preds = %141, %140, %24
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
define dso_local noundef i64 @primal_net_simplex(ptr noundef %0) local_unnamed_addr #0 !prof !74 {
  %2 = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #8
  store ptr %2, ptr @perm_p, align 8, !tbaa !49
  %3 = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #8
  store ptr %3, ptr @opt_basket, align 8, !tbaa !49
  %4 = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #8
  store ptr %4, ptr @basket_sizes, align 8, !tbaa !49
  %5 = tail call noalias dereferenceable_or_null(136352) ptr @calloc(i64 noundef 4261, i64 noundef 32) #8
  store ptr %5, ptr @basket, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  tail call void @set_static_vars(ptr noundef %0, ptr noundef %7) #6
  tail call void @master(ptr noundef %0, i32 noundef 1) #7
  %8 = tail call i64 @primal_feasible(ptr noundef %0) #6
  %9 = tail call i64 @dual_feasible(ptr noundef %0) #6
  store i1 false, ptr @opt, align 8
  %10 = load ptr, ptr @perm_p, align 8, !tbaa !49
  tail call void @free(ptr noundef %10) #6
  %11 = load ptr, ptr @opt_basket, align 8, !tbaa !49
  tail call void @free(ptr noundef %11) #6
  %12 = load ptr, ptr @basket_sizes, align 8, !tbaa !49
  tail call void @free(ptr noundef %12) #6
  %13 = load ptr, ptr @basket, align 8, !tbaa !49
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!47}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 85502453929}
!4 = !{!"MaxCount", i64 17199625996}
!5 = !{!"MaxInternalCount", i64 7388838583}
!6 = !{!"MaxFunctionCount", i64 17199625996}
!7 = !{!"NumCounts", i64 220}
!8 = !{!"NumFunctions", i64 31}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 17199625996, i32 1}
!14 = !{i32 100000, i64 17199625996, i32 1}
!15 = !{i32 200000, i64 17199625996, i32 1}
!16 = !{i32 300000, i64 8939527315, i32 2}
!17 = !{i32 400000, i64 6848194679, i32 4}
!18 = !{i32 500000, i64 5961032710, i32 5}
!19 = !{i32 600000, i64 5547644419, i32 6}
!20 = !{i32 700000, i64 3854402676, i32 9}
!21 = !{i32 800000, i64 3712252500, i32 11}
!22 = !{i32 900000, i64 1613262769, i32 14}
!23 = !{i32 950000, i64 336885004, i32 20}
!24 = !{i32 990000, i64 90533666, i32 46}
!25 = !{i32 999000, i64 51748451, i32 55}
!26 = !{i32 999900, i64 733625, i32 81}
!27 = !{i32 999990, i64 246962, i32 97}
!28 = !{i32 999999, i64 38371, i32 104}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!35 = !{ptr @master, ptr @primal_bea_mpp, i64 1904896}
!36 = !{ptr @master, ptr @cost_compare, i64 1}
!37 = !{ptr @master, ptr @markBaskets, i64 1904863}
!38 = !{ptr @master, ptr @primal_iminus, i64 1904864}
!39 = !{ptr @master, ptr @primal_update_flow, i64 1}
!40 = !{ptr @master, ptr @update_tree, i64 1904863}
!41 = !{ptr @primal_net_simplex, ptr @calloc, i64 132}
!42 = !{ptr @primal_net_simplex, ptr @set_static_vars, i64 33}
!43 = !{ptr @primal_net_simplex, ptr @master, i64 33}
!44 = !{ptr @primal_net_simplex, ptr @primal_feasible, i64 33}
!45 = !{ptr @primal_net_simplex, ptr @dual_feasible, i64 33}
!46 = !{ptr @primal_net_simplex, ptr @free, i64 132}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 1977246}
!49 = !{!50, !50, i64 0}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!54, !55, i64 24}
!54 = !{!"basket", !50, i64 0, !55, i64 8, !55, i64 16, !55, i64 24}
!55 = !{!"long", !51, i64 0}
!56 = !{!"branch_weights", i32 118630299, i32 167}
!57 = !{!"branch_weights", i32 1, i32 118630464}
!58 = !{!"branch_weights", i32 1, i32 0}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"branch_weights", i32 167, i32 118630299}
!62 = !{!"branch_weights", i32 1977081, i32 116653384}
!63 = distinct !{!63, !60}
!64 = !{!"function_entry_count", i64 0}
!65 = !{!66, !50, i64 568}
!66 = !{!"network", !51, i64 0, !51, i64 200, !55, i64 400, !55, i64 408, !55, i64 416, !55, i64 424, !55, i64 432, !55, i64 440, !55, i64 448, !55, i64 456, !55, i64 464, !55, i64 472, !55, i64 480, !55, i64 488, !55, i64 496, !55, i64 504, !55, i64 512, !55, i64 520, !55, i64 528, !67, i64 536, !55, i64 544, !50, i64 552, !50, i64 560, !50, i64 568, !50, i64 576, !50, i64 584, !50, i64 592, !50, i64 600, !55, i64 608, !55, i64 616, !55, i64 624, !55, i64 632, !55, i64 640}
!67 = !{!"double", !51, i64 0}
!68 = !{!66, !50, i64 576}
!69 = !{!66, !55, i64 424}
!70 = !{!55, !55, i64 0}
!71 = distinct !{!71, !60}
!72 = !{!66, !55, i64 640}
!73 = distinct !{!73, !60}
!74 = !{!"function_entry_count", i64 33}
!75 = !{!"branch_weights", i32 135, i32 1}
!76 = !{!"branch_weights", i32 1, i32 135}
!77 = !{!"branch_weights", i32 135, i32 535789}
!78 = distinct !{!78, !60}
!79 = !{!"branch_weights", i32 1977279, i32 1}
!80 = !{!"branch_weights", i32 1977280, i32 1}
!81 = !{!"branch_weights", i32 34, i32 1977247}
!82 = !{!"branch_weights", i32 0, i32 -2147483648}
!83 = distinct !{!83, !60}
!84 = !{!"branch_weights", i32 35841, i32 2147447807}
!85 = !{!54, !55, i64 8}
!86 = !{!54, !50, i64 0}
!87 = !{!"branch_weights", i32 1977247, i32 1}
!88 = !{!"branch_weights", i32 6700, i32 1970548}
!89 = !{!"branch_weights", i32 1, i32 1977247}
!90 = !{!91, !93, i64 32}
!91 = !{!"arc", !92, i64 0, !55, i64 8, !50, i64 16, !50, i64 24, !93, i64 32, !50, i64 40, !50, i64 48, !55, i64 56, !55, i64 64}
!92 = !{!"int", !51, i64 0}
!93 = !{!"short", !51, i64 0}
!94 = !{!"branch_weights", i32 1960735, i32 16513}
!95 = !{!96, !50, i64 24}
!96 = !{!"node", !55, i64 0, !92, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40, !50, i64 48, !50, i64 56, !50, i64 64, !50, i64 72, !55, i64 80, !55, i64 88, !92, i64 96, !92, i64 100}
!97 = !{!96, !50, i64 48}
!98 = !{!96, !92, i64 8}
!99 = !{!"branch_weights", i32 21768, i32 1955480}
!100 = !{!91, !50, i64 16}
!101 = !{!66, !55, i64 512}
!102 = distinct !{!102, !60}
