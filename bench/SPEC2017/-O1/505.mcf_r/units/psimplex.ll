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

; Function Attrs: nounwind uwtable
define dso_local void @markBaskets(i64 noundef %0) local_unnamed_addr #0 !prof !45 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %4 = icmp sgt i64 %0, 1
  br label %5

5:                                                ; preds = %1, %42
  %6 = phi i64 [ 0, %1 ], [ %39, %42 ]
  %7 = phi i64 [ 1, %1 ], [ %48, %42 ]
  %8 = load ptr, ptr @perm_p, align 8, !tbaa !46
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.basket, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !50
  %13 = icmp sgt i64 %12, -1
  %14 = select i1 %13, ptr %10, ptr null, !prof !53
  %15 = select i1 %13, i64 0, i64 %6, !prof !53
  store ptr %14, ptr %2, align 8, !tbaa !46
  br i1 %4, label %16, label %38, !prof !54

16:                                               ; preds = %5, %34
  %17 = phi i64 [ %35, %34 ], [ %15, %5 ]
  %18 = phi i64 [ %36, %34 ], [ 1, %5 ]
  %19 = load ptr, ptr @perm_p, align 8, !tbaa !46
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  store ptr %22, ptr %3, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.basket, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !50
  %25 = icmp sgt i64 %24, -1
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load ptr, ptr %2, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = call i32 @cost_compare(ptr noundef nonnull %3, ptr noundef nonnull %2) #6
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26
  %33 = load ptr, ptr %3, align 8, !tbaa !46
  store ptr %33, ptr %2, align 8, !tbaa !46
  br label %34

34:                                               ; preds = %16, %32, %29
  %35 = phi i64 [ %18, %32 ], [ %17, %29 ], [ %17, %16 ]
  %36 = add nuw nsw i64 %18, 1
  %37 = icmp eq i64 %36, %0
  br i1 %37, label %38, label %16, !prof !55, !llvm.loop !56

38:                                               ; preds = %34, %5
  %39 = phi i64 [ %15, %5 ], [ %35, %34 ]
  %40 = load ptr, ptr %2, align 8, !tbaa !46
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42, !prof !59

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.basket, ptr %40, i64 0, i32 3
  store i64 %7, ptr %43, align 8, !tbaa !50
  %44 = load ptr, ptr @perm_p, align 8, !tbaa !46
  %45 = getelementptr inbounds ptr, ptr %44, i64 %39
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  store ptr %47, ptr %45, align 8, !tbaa !46
  %48 = add nuw nsw i64 %7, 1
  %49 = icmp eq i64 %48, 61
  br i1 %49, label %50, label %5, !prof !60, !llvm.loop !61

50:                                               ; preds = %42, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @cost_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local void @worker(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !45 {
  %4 = alloca [4061 x ptr], align 16
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %11 = load i64, ptr %10, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 28
  call void @llvm.lifetime.start.p0(i64 32488, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store ptr %7, ptr %5, align 8, !tbaa !46
  %13 = load ptr, ptr @basket_sizes, align 8, !tbaa !46
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds i64, ptr %13, i64 %14
  store i64 0, ptr %15, align 8, !tbaa !67
  %16 = sdiv i32 4000, %2
  %17 = icmp sgt i32 %16, -60
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = add nsw i32 %16, 261
  %20 = mul nsw i32 %19, %1
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = load ptr, ptr @basket, align 8, !tbaa !46
  %24 = add nsw i32 %16, 61
  %25 = sext i32 %24 to i64
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
  store ptr %36, ptr %37, align 8, !tbaa !46
  %38 = add nuw nsw i64 %35, 1
  %39 = add nsw i64 %34, 1
  %40 = icmp eq i64 %38, %25
  br i1 %40, label %26, label %33, !llvm.loop !68

41:                                               ; preds = %28, %53
  %42 = load ptr, ptr @basket_sizes, align 8, !tbaa !46
  %43 = load i64, ptr %12, align 8, !tbaa !67
  %44 = add nsw i64 %43, %14
  %45 = srem i64 %44, %29
  %46 = load i64, ptr %30, align 8, !tbaa !69
  %47 = call ptr @primal_bea_mpp(i64 noundef %11, ptr noundef %7, ptr noundef %9, ptr noundef %42, ptr noundef nonnull %4, i32 noundef %1, ptr noundef nonnull %5, i64 noundef %45, i64 noundef %29, i64 noundef %46) #6
  %48 = load ptr, ptr @opt_basket, align 8, !tbaa !46
  %49 = getelementptr inbounds ptr, ptr %48, i64 %14
  store ptr %47, ptr %49, align 8, !tbaa !46
  %50 = load ptr, ptr @perm_p, align 8, !tbaa !46
  %51 = getelementptr inbounds ptr, ptr %50, i64 %14
  store ptr %31, ptr %51, align 8, !tbaa !46
  br i1 %32, label %52, label %53

52:                                               ; preds = %41
  call void @markBaskets(i64 noundef %29)
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i1, ptr @opt, align 8
  br i1 %54, label %55, label %41, !llvm.loop !70

55:                                               ; preds = %53, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 32488, ptr nonnull %4) #6
  ret void
}

declare ptr @primal_bea_mpp(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @master(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !71 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [4061 x ptr], align 16
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %9 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 5
  %14 = load i64, ptr %13, align 8, !tbaa !66
  %15 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 28
  %16 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 32488, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  store ptr %10, ptr %8, align 8, !tbaa !46
  %17 = load ptr, ptr @basket_sizes, align 8, !tbaa !46
  store i64 0, ptr %17, align 8, !tbaa !67
  %18 = sdiv i32 4000, %1
  %19 = icmp sgt i32 %18, -60
  br i1 %19, label %20, label %24, !prof !72

20:                                               ; preds = %2
  %21 = load ptr, ptr @basket, align 8, !tbaa !46
  %22 = add nsw i32 %18, 61
  %23 = sext i32 %22 to i64
  br label %33

24:                                               ; preds = %33, %2
  %25 = load i1, ptr @opt, align 8
  br i1 %25, label %151, label %26, !prof !73

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
  store ptr %35, ptr %36, align 8, !tbaa !46
  %37 = add nuw nsw i64 %34, 1
  %38 = icmp eq i64 %37, %23
  br i1 %38, label %24, label %33, !prof !74, !llvm.loop !75

39:                                               ; preds = %26, %149
  %40 = phi ptr [ undef, %26 ], [ %97, %149 ]
  %41 = load ptr, ptr @basket_sizes, align 8, !tbaa !46
  %42 = load i64, ptr %15, align 8, !tbaa !67
  %43 = srem i64 %42, %27
  %44 = load i64, ptr %28, align 8, !tbaa !69
  %45 = call ptr @primal_bea_mpp(i64 noundef %14, ptr noundef %10, ptr noundef %12, ptr noundef %41, ptr noundef nonnull %7, i32 noundef 0, ptr noundef nonnull %8, i64 noundef %43, i64 noundef %27, i64 noundef %44) #6
  %46 = load ptr, ptr @opt_basket, align 8, !tbaa !46
  store ptr %45, ptr %46, align 8, !tbaa !46
  %47 = load ptr, ptr @perm_p, align 8, !tbaa !46
  store ptr %29, ptr %47, align 8, !tbaa !46
  store ptr null, ptr %6, align 8, !tbaa !46
  br i1 %30, label %48, label %72, !prof !76

48:                                               ; preds = %39, %69
  %49 = phi i64 [ %70, %69 ], [ 0, %39 ]
  %50 = load ptr, ptr %6, align 8, !tbaa !46
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %57, !prof !77

52:                                               ; preds = %48
  %53 = load ptr, ptr @opt_basket, align 8, !tbaa !46
  %54 = getelementptr inbounds ptr, ptr %53, i64 %49
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %65, !prof !78

57:                                               ; preds = %52, %48
  %58 = load ptr, ptr @opt_basket, align 8, !tbaa !46
  %59 = getelementptr inbounds ptr, ptr %58, i64 %49
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62, !prof !79

62:                                               ; preds = %57
  %63 = call i32 @cost_compare(ptr noundef nonnull %59, ptr noundef nonnull %6) #6
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62, %52
  %66 = load ptr, ptr @opt_basket, align 8, !tbaa !46
  %67 = getelementptr inbounds ptr, ptr %66, i64 %49
  %68 = load ptr, ptr %67, align 8, !tbaa !46
  store ptr %68, ptr %6, align 8, !tbaa !46
  br label %69

69:                                               ; preds = %57, %62, %65
  %70 = add nuw nsw i64 %49, 1
  %71 = icmp eq i64 %70, %27
  br i1 %71, label %72, label %48, !prof !76, !llvm.loop !80

72:                                               ; preds = %69, %39
  %73 = load ptr, ptr %6, align 8, !tbaa !46
  %74 = icmp eq ptr %73, null
  br i1 %74, label %96, label %75, !prof !78

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.basket, ptr %73, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !81
  %78 = load ptr, ptr %73, align 8, !tbaa !82
  br i1 %31, label %79, label %96, !prof !83

79:                                               ; preds = %75
  %80 = load ptr, ptr @perm_p, align 8
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  br label %82

82:                                               ; preds = %79, %91
  %83 = phi ptr [ %93, %91 ], [ %81, %79 ]
  %84 = phi i64 [ %94, %91 ], [ 1, %79 ]
  %85 = load ptr, ptr %83, align 8, !tbaa !46
  %86 = getelementptr inbounds %struct.basket, ptr %85, i64 0, i32 3
  %87 = load i64, ptr %86, align 8, !tbaa !50
  %88 = icmp slt i64 %87, 0
  %89 = icmp eq ptr %85, null
  %90 = or i1 %89, %88
  br i1 %90, label %96, label %91, !prof !59

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.basket, ptr %85, i64 0, i32 3
  store i64 %84, ptr %92, align 8, !tbaa !50
  %93 = getelementptr inbounds ptr, ptr %83, i64 1
  store ptr %93, ptr %80, align 8, !tbaa !46
  %94 = add nuw nsw i64 %84, 1
  %95 = icmp eq i64 %94, 61
  br i1 %95, label %96, label %82, !prof !60, !llvm.loop !61

96:                                               ; preds = %91, %82, %72, %75
  %97 = phi ptr [ %78, %75 ], [ %40, %72 ], [ %78, %82 ], [ %78, %91 ]
  %98 = phi i64 [ %77, %75 ], [ 0, %72 ], [ %77, %82 ], [ %77, %91 ]
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %148, label %100, !prof !78

100:                                              ; preds = %96
  %101 = load i64, ptr %15, align 8, !tbaa !67
  %102 = add nsw i64 %101, 1
  store i64 %102, ptr %15, align 8, !tbaa !67
  %103 = icmp sgt i64 %98, 0
  %104 = getelementptr inbounds %struct.arc, ptr %97, i64 0, i32 3
  %105 = getelementptr inbounds %struct.arc, ptr %97, i64 0, i32 2
  %106 = select i1 %103, ptr %105, ptr %104, !prof !84
  %107 = select i1 %103, ptr %104, ptr %105, !prof !84
  %108 = load ptr, ptr %107, align 8, !tbaa !46
  %109 = load ptr, ptr %106, align 8, !tbaa !46
  store i64 1, ptr %3, align 8, !tbaa !67
  %110 = call ptr @primal_iminus(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %108, ptr noundef %109, ptr noundef nonnull %5) #6
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %123, !prof !85

112:                                              ; preds = %100
  %113 = load i64, ptr %16, align 8, !tbaa !67
  %114 = add nsw i64 %113, 1
  store i64 %114, ptr %16, align 8, !tbaa !67
  %115 = getelementptr inbounds %struct.arc, ptr %97, i64 0, i32 4
  %116 = load i16, ptr %115, align 8, !tbaa !86
  %117 = icmp eq i16 %116, 2
  %118 = select i1 %117, i16 1, i16 2
  store i16 %118, ptr %115, align 8, !tbaa !86
  %119 = load i64, ptr %3, align 8, !tbaa !67
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %149, label %121

121:                                              ; preds = %112
  %122 = load ptr, ptr %5, align 8, !tbaa !46
  call void @primal_update_flow(ptr noundef %108, ptr noundef %109, ptr noundef %122) #6
  br label %149

123:                                              ; preds = %100
  %124 = load i64, ptr %4, align 8, !tbaa !67
  %125 = icmp eq i64 %124, 0
  %126 = select i1 %125, ptr %109, ptr %108, !prof !90
  %127 = select i1 %125, ptr %108, ptr %109, !prof !90
  %128 = getelementptr inbounds %struct.node, ptr %110, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !91
  %130 = getelementptr inbounds %struct.node, ptr %110, i64 0, i32 6
  %131 = load ptr, ptr %130, align 8, !tbaa !93
  %132 = getelementptr inbounds %struct.node, ptr %110, i64 0, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !94
  %134 = sext i32 %133 to i64
  %135 = icmp eq i64 %124, %134
  %136 = select i1 %135, i16 2, i16 1, !prof !95
  %137 = load i64, ptr %3, align 8
  %138 = sub nsw i64 1, %137
  %139 = select i1 %103, i64 %138, i64 %137, !prof !84
  %140 = load ptr, ptr %105, align 8, !tbaa !96
  %141 = icmp eq ptr %140, %127
  %142 = zext i1 %141 to i64
  %143 = zext i1 %125 to i64
  %144 = load ptr, ptr %5, align 8, !tbaa !46
  %145 = load i64, ptr %32, align 8, !tbaa !97
  call void @update_tree(i64 noundef %143, i64 noundef %142, i64 noundef %137, i64 noundef %139, ptr noundef %127, ptr noundef %126, ptr noundef nonnull %110, ptr noundef %129, ptr noundef %144, ptr noundef %97, i64 noundef %98, i64 noundef %145) #6
  %146 = getelementptr inbounds %struct.arc, ptr %97, i64 0, i32 4
  store i16 0, ptr %146, align 8, !tbaa !86
  %147 = getelementptr inbounds %struct.arc, ptr %131, i64 0, i32 4
  store i16 %136, ptr %147, align 8, !tbaa !86
  br label %149

148:                                              ; preds = %96
  store i1 true, ptr @opt, align 8
  br label %149

149:                                              ; preds = %123, %121, %112, %148
  %150 = load i1, ptr @opt, align 8
  br i1 %150, label %151, label %39, !prof !98, !llvm.loop !99

151:                                              ; preds = %149, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 32488, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret void
}

declare ptr @primal_iminus(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @primal_update_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @update_tree(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @primal_net_simplex(ptr noundef %0) local_unnamed_addr #3 !prof !71 {
  %2 = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #7
  store ptr %2, ptr @perm_p, align 8, !tbaa !46
  %3 = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #7
  store ptr %3, ptr @opt_basket, align 8, !tbaa !46
  %4 = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #7
  store ptr %4, ptr @basket_sizes, align 8, !tbaa !46
  %5 = tail call noalias dereferenceable_or_null(136352) ptr @calloc(i64 noundef 4261, i64 noundef 32) #7
  store ptr %5, ptr @basket, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.network, ptr %0, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  tail call void @set_static_vars(ptr noundef %0, ptr noundef %7) #6
  tail call void @master(ptr noundef %0, i32 noundef 1)
  %8 = tail call i64 @primal_feasible(ptr noundef %0) #6
  %9 = tail call i64 @dual_feasible(ptr noundef %0) #6
  store i1 false, ptr @opt, align 8
  %10 = load ptr, ptr @perm_p, align 8, !tbaa !46
  tail call void @free(ptr noundef %10) #6
  %11 = load ptr, ptr @opt_basket, align 8, !tbaa !46
  tail call void @free(ptr noundef %11) #6
  %12 = load ptr, ptr @basket_sizes, align 8, !tbaa !46
  tail call void @free(ptr noundef %12) #6
  %13 = load ptr, ptr @basket, align 8, !tbaa !46
  tail call void @free(ptr noundef %13) #6
  ret i64 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @set_static_vars(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @primal_feasible(ptr noundef) local_unnamed_addr #2

declare i64 @dual_feasible(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 135822698359}
!8 = !{!"MaxCount", i64 17199625996}
!9 = !{!"MaxInternalCount", i64 11238593286}
!10 = !{!"MaxFunctionCount", i64 17199625996}
!11 = !{!"NumCounts", i64 388}
!12 = !{!"NumFunctions", i64 38}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 17199625996, i32 1}
!18 = !{i32 100000, i64 17199625996, i32 1}
!19 = !{i32 200000, i64 11238593286, i32 2}
!20 = !{i32 300000, i64 8939527315, i32 4}
!21 = !{i32 400000, i64 8160331559, i32 5}
!22 = !{i32 500000, i64 6848194679, i32 7}
!23 = !{i32 600000, i64 4703930260, i32 10}
!24 = !{i32 700000, i64 3754953164, i32 13}
!25 = !{i32 800000, i64 2790238363, i32 18}
!26 = !{i32 900000, i64 825639170, i32 26}
!27 = !{i32 950000, i64 336885004, i32 38}
!28 = !{i32 990000, i64 90508259, i32 76}
!29 = !{i32 999000, i64 9513862, i32 104}
!30 = !{i32 999900, i64 960032, i32 152}
!31 = !{i32 999990, i64 162202, i32 175}
!32 = !{i32 999999, i64 29993, i32 190}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @master, ptr @primal_bea_mpp, i64 1977286}
!36 = !{ptr @master, ptr @primal_iminus, i64 1977253}
!37 = !{ptr @master, ptr @update_tree, i64 1977253}
!38 = !{ptr @primal_net_simplex, ptr @calloc, i64 132}
!39 = !{ptr @primal_net_simplex, ptr @set_static_vars, i64 33}
!40 = !{ptr @primal_net_simplex, ptr @master, i64 33}
!41 = !{ptr @primal_net_simplex, ptr @primal_feasible, i64 33}
!42 = !{ptr @primal_net_simplex, ptr @dual_feasible, i64 33}
!43 = !{ptr @primal_net_simplex, ptr @free, i64 132}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{!51, !52, i64 24}
!51 = !{!"basket", !47, i64 0, !52, i64 8, !52, i64 16, !52, i64 24}
!52 = !{!"long", !48, i64 0}
!53 = !{!"branch_weights", i32 118630298, i32 166}
!54 = !{!"branch_weights", i32 0, i32 1}
!55 = !{!"branch_weights", i32 1, i32 0}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!"branch_weights", i32 166, i32 118630298}
!60 = !{!"branch_weights", i32 1977080, i32 116653384}
!61 = distinct !{!61, !57, !58}
!62 = !{!63, !47, i64 568}
!63 = !{!"network", !48, i64 0, !48, i64 200, !52, i64 400, !52, i64 408, !52, i64 416, !52, i64 424, !52, i64 432, !52, i64 440, !52, i64 448, !52, i64 456, !52, i64 464, !52, i64 472, !52, i64 480, !52, i64 488, !52, i64 496, !52, i64 504, !52, i64 512, !52, i64 520, !52, i64 528, !64, i64 536, !52, i64 544, !47, i64 552, !47, i64 560, !47, i64 568, !47, i64 576, !47, i64 584, !47, i64 592, !47, i64 600, !52, i64 608, !52, i64 616, !52, i64 624, !52, i64 632, !52, i64 640}
!64 = !{!"double", !48, i64 0}
!65 = !{!63, !47, i64 576}
!66 = !{!63, !52, i64 424}
!67 = !{!52, !52, i64 0}
!68 = distinct !{!68, !57, !58}
!69 = !{!63, !52, i64 640}
!70 = distinct !{!70, !57, !58}
!71 = !{!"function_entry_count", i64 33}
!72 = !{!"branch_weights", i32 131, i32 1}
!73 = !{!"branch_weights", i32 1, i32 131}
!74 = !{!"branch_weights", i32 131, i32 535789}
!75 = distinct !{!75, !57, !58}
!76 = !{!"branch_weights", i32 1977278, i32 1}
!77 = !{!"branch_weights", i32 1977279, i32 0}
!78 = !{!"branch_weights", i32 33, i32 1977246}
!79 = !{!"branch_weights", i32 33, i32 0}
!80 = distinct !{!80, !57, !58}
!81 = !{!51, !52, i64 8}
!82 = !{!51, !47, i64 0}
!83 = !{!"branch_weights", i32 1977246, i32 0}
!84 = !{!"branch_weights", i32 6699, i32 1970547}
!85 = !{!"branch_weights", i32 0, i32 1977246}
!86 = !{!87, !89, i64 32}
!87 = !{!"arc", !88, i64 0, !52, i64 8, !47, i64 16, !47, i64 24, !89, i64 32, !47, i64 40, !47, i64 48, !52, i64 56, !52, i64 64}
!88 = !{!"int", !48, i64 0}
!89 = !{!"short", !48, i64 0}
!90 = !{!"branch_weights", i32 1960734, i32 16512}
!91 = !{!92, !47, i64 24}
!92 = !{!"node", !52, i64 0, !88, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !52, i64 80, !52, i64 88, !88, i64 96, !88, i64 100}
!93 = !{!92, !47, i64 48}
!94 = !{!92, !88, i64 8}
!95 = !{!"branch_weights", i32 21767, i32 1955479}
!96 = !{!87, !47, i64 16}
!97 = !{!63, !52, i64 512}
!98 = !{!"branch_weights", i32 131, i32 7908985}
!99 = distinct !{!99, !57, !58}
