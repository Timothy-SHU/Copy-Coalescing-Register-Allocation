; ModuleID = 'nblist.c'
source_filename = "nblist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kdnode = type { i32, ptr, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [40 x i8] c"Error allocate kdnode array in nbtree!\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @nblist(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, i32 noundef %7, i32 noundef %8, ptr nocapture noundef readonly %9) local_unnamed_addr #0 !prof !51 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #12
  %14 = fmul double %6, %6
  %15 = tail call i32 @get_blocksize() #13
  %16 = sext i32 %7 to i64
  %17 = mul nsw i64 %16, 24
  %18 = tail call noalias ptr @malloc(i64 noundef %17) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23, !prof !52

20:                                               ; preds = %10
  %21 = load ptr, ptr @stderr, align 8, !tbaa !53
  %22 = tail call i64 @fwrite(ptr nonnull @.str, i64 39, i64 1, ptr %21) #15
  tail call void @exit(i32 noundef 1) #16
  unreachable

23:                                               ; preds = %10
  %24 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #13
  %25 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #13
  %26 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #13
  %27 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #13
  %28 = icmp eq i32 %8, 4
  br i1 %28, label %29, label %31, !prof !52

29:                                               ; preds = %23
  %30 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #13
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %30, %29 ], [ null, %23 ]
  %33 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #13
  %34 = icmp sgt i32 %7, 0
  br i1 %34, label %35, label %49, !prof !57

35:                                               ; preds = %31
  %36 = zext nneg i32 %7 to i64
  br label %37

37:                                               ; preds = %35, %45
  %38 = phi i64 [ 0, %35 ], [ %47, %45 ]
  %39 = getelementptr inbounds i32, ptr %26, i64 %38
  %40 = trunc i64 %38 to i32
  store i32 %40, ptr %39, align 4, !tbaa !58
  %41 = getelementptr inbounds i32, ptr %25, i64 %38
  store i32 %40, ptr %41, align 4, !tbaa !58
  %42 = getelementptr inbounds i32, ptr %24, i64 %38
  store i32 %40, ptr %42, align 4, !tbaa !58
  br i1 %28, label %43, label %45, !prof !60

43:                                               ; preds = %37
  %44 = getelementptr inbounds i32, ptr %32, i64 %38
  store i32 %40, ptr %44, align 4, !tbaa !58
  br label %45

45:                                               ; preds = %43, %37
  %46 = getelementptr inbounds i32, ptr %33, i64 %38
  store i32 %40, ptr %46, align 4, !tbaa !58
  %47 = add nuw nsw i64 %38, 1
  %48 = icmp eq i64 %47, %36
  br i1 %48, label %49, label %37, !prof !61, !llvm.loop !62

49:                                               ; preds = %45, %31
  tail call fastcc void @heapsort_index(ptr noundef %24, i32 noundef %7, ptr noundef %3, i32 noundef 0, i32 noundef %8) #17
  tail call fastcc void @heapsort_index(ptr noundef %25, i32 noundef %7, ptr noundef %3, i32 noundef 1, i32 noundef %8) #17
  tail call fastcc void @heapsort_index(ptr noundef %26, i32 noundef %7, ptr noundef %3, i32 noundef 2, i32 noundef %8) #17
  br i1 %28, label %50, label %51, !prof !52

50:                                               ; preds = %49
  tail call fastcc void @heapsort_index(ptr noundef %32, i32 noundef %7, ptr noundef %3, i32 noundef 3, i32 noundef 4) #17
  br label %51

51:                                               ; preds = %50, %49
  %52 = getelementptr inbounds %struct.kdnode, ptr %18, i64 1
  store ptr %52, ptr %13, align 8, !tbaa !53
  %53 = getelementptr inbounds %struct.kdnode, ptr %18, i64 0, i32 1
  %54 = add nsw i32 %7, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %53, i8 0, i64 16, i1 false)
  call fastcc void @buildkdtree(ptr noundef %33, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %32, ptr noundef %27, i32 noundef 0, i32 noundef %54, ptr noundef nonnull %13, ptr noundef nonnull %18, ptr noundef %3, i32 noundef 0, i32 noundef %8) #17
  %55 = call ptr @ivector(i32 noundef 0, i32 noundef %7) #13
  %56 = call ptr @ivector(i32 noundef 0, i32 noundef %7) #13
  br i1 %34, label %57, label %117, !prof !57

57:                                               ; preds = %51
  %58 = zext nneg i32 %7 to i64
  br label %59

59:                                               ; preds = %57, %112
  %60 = phi i64 [ 0, %57 ], [ %115, %112 ]
  %61 = phi i32 [ 0, %57 ], [ %114, %112 ]
  store i32 0, ptr %12, align 4, !tbaa !58
  store i32 0, ptr %11, align 4, !tbaa !58
  %62 = trunc i64 %60 to i32
  call fastcc void @searchkdtree(ptr noundef nonnull %18, ptr noundef %3, i32 noundef 0, i32 noundef %62, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %55, ptr noundef %56, double noundef %6, double noundef %14, i32 noundef %8, ptr noundef %9) #17
  %63 = load i32, ptr %11, align 4, !tbaa !58
  call fastcc void @heapsort_pairs(ptr noundef %55, i32 noundef %63) #17
  %64 = load i32, ptr %12, align 4, !tbaa !58
  call fastcc void @heapsort_pairs(ptr noundef %56, i32 noundef %64) #17
  %65 = getelementptr inbounds ptr, ptr %2, i64 %60
  %66 = load ptr, ptr %65, align 8, !tbaa !53
  %67 = icmp eq ptr %66, null
  %68 = add nsw i32 %64, %63
  br i1 %67, label %69, label %71, !prof !64

69:                                               ; preds = %59
  %70 = icmp sgt i32 %68, 0
  br i1 %70, label %83, label %85, !prof !65

71:                                               ; preds = %59
  %72 = getelementptr inbounds i32, ptr %0, i64 %60
  %73 = load i32, ptr %72, align 4, !tbaa !58
  %74 = getelementptr inbounds i32, ptr %1, i64 %60
  %75 = load i32, ptr %74, align 4, !tbaa !58
  %76 = add nsw i32 %75, %73
  %77 = icmp sgt i32 %68, %76
  br i1 %77, label %82, label %78, !prof !66

78:                                               ; preds = %71
  %79 = shl nsw i32 %68, 2
  %80 = mul nsw i32 %76, 3
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %85, !prof !67

82:                                               ; preds = %78, %71
  call void @free_ivector(ptr noundef nonnull %66, i32 noundef 0, i32 noundef %76) #13
  br label %83

83:                                               ; preds = %69, %82
  %84 = call ptr @ivector(i32 noundef 0, i32 noundef %68) #13
  store ptr %84, ptr %65, align 8, !tbaa !53
  br label %85

85:                                               ; preds = %83, %69, %78
  %86 = phi ptr [ null, %69 ], [ %66, %78 ], [ %84, %83 ]
  %87 = getelementptr inbounds i32, ptr %0, i64 %60
  store i32 %63, ptr %87, align 4, !tbaa !58
  %88 = getelementptr inbounds i32, ptr %1, i64 %60
  store i32 %64, ptr %88, align 4, !tbaa !58
  %89 = icmp sgt i32 %63, 0
  br i1 %89, label %90, label %92, !prof !68

90:                                               ; preds = %85
  %91 = zext nneg i32 %63 to i64
  br label %97

92:                                               ; preds = %97, %85
  %93 = icmp sgt i32 %64, 0
  br i1 %93, label %94, label %112, !prof !68

94:                                               ; preds = %92
  %95 = sext i32 %63 to i64
  %96 = zext nneg i32 %64 to i64
  br label %104

97:                                               ; preds = %90, %97
  %98 = phi i64 [ 0, %90 ], [ %102, %97 ]
  %99 = getelementptr inbounds i32, ptr %55, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !58
  %101 = getelementptr inbounds i32, ptr %86, i64 %98
  store i32 %100, ptr %101, align 4, !tbaa !58
  %102 = add nuw nsw i64 %98, 1
  %103 = icmp eq i64 %102, %91
  br i1 %103, label %92, label %97, !prof !69, !llvm.loop !70

104:                                              ; preds = %94, %104
  %105 = phi i64 [ 0, %94 ], [ %110, %104 ]
  %106 = getelementptr inbounds i32, ptr %56, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !58
  %108 = add nsw i64 %105, %95
  %109 = getelementptr inbounds i32, ptr %86, i64 %108
  store i32 %107, ptr %109, align 4, !tbaa !58
  %110 = add nuw nsw i64 %105, 1
  %111 = icmp eq i64 %110, %96
  br i1 %111, label %112, label %104, !prof !69, !llvm.loop !71

112:                                              ; preds = %104, %92
  %113 = add nsw i32 %64, %63
  %114 = add nsw i32 %113, %61
  %115 = add nuw nsw i64 %60, 1
  %116 = icmp eq i64 %115, %58
  br i1 %116, label %117, label %59, !prof !61, !llvm.loop !72

117:                                              ; preds = %112, %51
  %118 = phi i32 [ 0, %51 ], [ %114, %112 ]
  call void @free_ivector(ptr noundef %55, i32 noundef 0, i32 noundef %7) #13
  call void @free_ivector(ptr noundef %56, i32 noundef 0, i32 noundef %7) #13
  call void @free(ptr noundef %18) #13
  call void @free_ivector(ptr noundef %24, i32 noundef 0, i32 noundef %7) #13
  call void @free_ivector(ptr noundef %25, i32 noundef 0, i32 noundef %7) #13
  call void @free_ivector(ptr noundef %26, i32 noundef 0, i32 noundef %7) #13
  call void @free_ivector(ptr noundef %27, i32 noundef 0, i32 noundef %7) #13
  br i1 %28, label %119, label %120, !prof !52

119:                                              ; preds = %117
  call void @free_ivector(ptr noundef %32, i32 noundef 0, i32 noundef %7) #13
  br label %120

120:                                              ; preds = %119, %117
  call void @free_ivector(ptr noundef %33, i32 noundef 0, i32 noundef %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  ret i32 %118
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @get_blocksize() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ivector(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @heapsort_index(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 !prof !73 !PGOFuncName !74 {
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %25, !prof !75

7:                                                ; preds = %5
  %8 = lshr i32 %1, 1
  br label %13

9:                                                ; preds = %13
  %10 = getelementptr i32, ptr %0, i64 -1
  br i1 %6, label %11, label %25, !prof !76

11:                                               ; preds = %9
  %12 = zext nneg i32 %1 to i64
  br label %17

13:                                               ; preds = %7, %13
  %14 = phi i32 [ %15, %13 ], [ %8, %7 ]
  tail call fastcc void @downheap_index(ptr noundef %0, i32 noundef %1, i32 noundef %14, ptr noundef %2, i32 noundef %3, i32 noundef %4) #17
  %15 = add nsw i32 %14, -1
  %16 = icmp ugt i32 %14, 1
  br i1 %16, label %13, label %9, !prof !77, !llvm.loop !78

17:                                               ; preds = %11, %17
  %18 = phi i64 [ %12, %11 ], [ %22, %17 ]
  %19 = load i32, ptr %0, align 4, !tbaa !58
  %20 = getelementptr i32, ptr %10, i64 %18
  %21 = load i32, ptr %20, align 4, !tbaa !58
  store i32 %21, ptr %0, align 4, !tbaa !58
  store i32 %19, ptr %20, align 4, !tbaa !58
  %22 = add nsw i64 %18, -1
  %23 = trunc i64 %22 to i32
  tail call fastcc void @downheap_index(ptr noundef nonnull %0, i32 noundef %23, i32 noundef 1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #17
  %24 = icmp ugt i64 %18, 2
  br i1 %24, label %17, label %25, !prof !79, !llvm.loop !80

25:                                               ; preds = %17, %5, %9
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @buildkdtree(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr nocapture noundef writeonly %9, ptr noundef %10, i32 noundef %11, i32 noundef %12) unnamed_addr #6 !prof !81 !PGOFuncName !82 {
  %14 = getelementptr double, ptr %10, i64 -1
  %15 = icmp eq i32 %7, %6
  br i1 %15, label %29, label %16, !prof !83

16:                                               ; preds = %13
  %17 = add nsw i32 %12, 1
  %18 = srem i32 %11, %17
  %19 = add i32 %7, 1
  br label %20

20:                                               ; preds = %16, %337
  %21 = phi i32 [ %18, %16 ], [ %339, %337 ]
  %22 = phi i32 [ %12, %16 ], [ %37, %337 ]
  %23 = phi ptr [ %9, %16 ], [ %329, %337 ]
  %24 = phi i32 [ %6, %16 ], [ %332, %337 ]
  %25 = phi ptr [ %5, %16 ], [ %27, %337 ]
  %26 = phi ptr [ %4, %16 ], [ %41, %337 ]
  %27 = phi ptr [ %3, %16 ], [ %42, %337 ]
  %28 = phi ptr [ %0, %16 ], [ %40, %337 ]
  br label %35

29:                                               ; preds = %337, %334, %13
  %30 = phi ptr [ %0, %13 ], [ %40, %334 ], [ %40, %337 ]
  %31 = phi ptr [ %9, %13 ], [ %329, %334 ], [ %329, %337 ]
  %32 = sext i32 %7 to i64
  %33 = getelementptr inbounds i32, ptr %30, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !58
  store i32 %34, ptr %31, align 8, !tbaa !84
  br label %341

35:                                               ; preds = %20, %334
  %36 = phi i32 [ %21, %20 ], [ %335, %334 ]
  %37 = phi i32 [ %22, %20 ], [ 4, %334 ]
  %38 = phi ptr [ %23, %20 ], [ %329, %334 ]
  %39 = phi i32 [ %24, %20 ], [ %332, %334 ]
  %40 = phi ptr [ %25, %20 ], [ %41, %334 ]
  %41 = phi ptr [ %26, %20 ], [ %42, %334 ]
  %42 = phi ptr [ %28, %20 ], [ %40, %334 ]
  %43 = add nsw i32 %39, 1
  %44 = icmp eq i32 %43, %7
  br i1 %44, label %45, label %109, !prof !86

45:                                               ; preds = %35
  %46 = icmp eq i32 %36, 0
  %47 = sext i32 %39 to i64
  %48 = getelementptr inbounds i32, ptr %42, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !58
  br i1 %46, label %50, label %55, !prof !87

50:                                               ; preds = %45
  %51 = sext i32 %7 to i64
  %52 = getelementptr inbounds i32, ptr %42, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !58
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %72, label %83, !prof !88

55:                                               ; preds = %45
  %56 = mul nsw i32 %49, %37
  %57 = add nsw i32 %56, %36
  %58 = sext i32 %57 to i64
  %59 = getelementptr double, ptr %10, i64 %58
  %60 = getelementptr double, ptr %59, i64 -1
  %61 = load double, ptr %60, align 8, !tbaa !89
  %62 = sext i32 %7 to i64
  %63 = getelementptr inbounds i32, ptr %42, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !58
  %65 = mul nsw i32 %64, %37
  %66 = add nsw i32 %65, %36
  %67 = sext i32 %66 to i64
  %68 = getelementptr double, ptr %10, i64 %67
  %69 = getelementptr double, ptr %68, i64 -1
  %70 = load double, ptr %69, align 8, !tbaa !89
  %71 = fcmp olt double %61, %70
  br i1 %71, label %72, label %85, !prof !91

72:                                               ; preds = %55, %50
  %73 = phi i32 [ %64, %55 ], [ %53, %50 ]
  store i32 %73, ptr %38, align 8, !tbaa !84
  %74 = getelementptr inbounds i32, ptr %42, i64 %47
  %75 = load i32, ptr %74, align 4, !tbaa !58
  %76 = load ptr, ptr %8, align 8, !tbaa !53
  store i32 %75, ptr %76, align 8, !tbaa !84
  %77 = getelementptr inbounds %struct.kdnode, ptr %76, i64 0, i32 1
  store ptr null, ptr %77, align 8, !tbaa !92
  %78 = load ptr, ptr %8, align 8, !tbaa !53
  %79 = getelementptr inbounds %struct.kdnode, ptr %78, i64 0, i32 2
  store ptr null, ptr %79, align 8, !tbaa !93
  %80 = load ptr, ptr %8, align 8, !tbaa !53
  %81 = getelementptr inbounds %struct.kdnode, ptr %80, i64 1
  store ptr %81, ptr %8, align 8, !tbaa !53
  %82 = getelementptr inbounds %struct.kdnode, ptr %38, i64 0, i32 1
  store ptr %80, ptr %82, align 8, !tbaa !92
  br label %341

83:                                               ; preds = %50
  %84 = icmp sgt i32 %49, %53
  br i1 %84, label %87, label %98

85:                                               ; preds = %55
  %86 = fcmp ogt double %61, %70
  br i1 %86, label %87, label %98, !prof !94

87:                                               ; preds = %85, %83
  %88 = phi i64 [ %62, %85 ], [ %51, %83 ]
  store i32 %49, ptr %38, align 8, !tbaa !84
  %89 = getelementptr inbounds i32, ptr %42, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !58
  %91 = load ptr, ptr %8, align 8, !tbaa !53
  store i32 %90, ptr %91, align 8, !tbaa !84
  %92 = getelementptr inbounds %struct.kdnode, ptr %91, i64 0, i32 1
  store ptr null, ptr %92, align 8, !tbaa !92
  %93 = load ptr, ptr %8, align 8, !tbaa !53
  %94 = getelementptr inbounds %struct.kdnode, ptr %93, i64 0, i32 2
  store ptr null, ptr %94, align 8, !tbaa !93
  %95 = load ptr, ptr %8, align 8, !tbaa !53
  %96 = getelementptr inbounds %struct.kdnode, ptr %95, i64 1
  store ptr %96, ptr %8, align 8, !tbaa !53
  %97 = getelementptr inbounds %struct.kdnode, ptr %38, i64 0, i32 1
  store ptr %95, ptr %97, align 8, !tbaa !92
  br label %341

98:                                               ; preds = %83, %85
  %99 = phi i64 [ %51, %83 ], [ %62, %85 ]
  store i32 %49, ptr %38, align 8, !tbaa !84
  %100 = getelementptr inbounds i32, ptr %42, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !58
  %102 = load ptr, ptr %8, align 8, !tbaa !53
  store i32 %101, ptr %102, align 8, !tbaa !84
  %103 = getelementptr inbounds %struct.kdnode, ptr %102, i64 0, i32 1
  store ptr null, ptr %103, align 8, !tbaa !92
  %104 = load ptr, ptr %8, align 8, !tbaa !53
  %105 = getelementptr inbounds %struct.kdnode, ptr %104, i64 0, i32 2
  store ptr null, ptr %105, align 8, !tbaa !93
  %106 = load ptr, ptr %8, align 8, !tbaa !53
  %107 = getelementptr inbounds %struct.kdnode, ptr %106, i64 1
  store ptr %107, ptr %8, align 8, !tbaa !53
  %108 = getelementptr inbounds %struct.kdnode, ptr %38, i64 0, i32 2
  store ptr %106, ptr %108, align 8, !tbaa !93
  br label %341

109:                                              ; preds = %35
  %110 = add nsw i32 %39, %7
  %111 = sdiv i32 %110, 2
  %112 = icmp eq i32 %36, 0
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, ptr %42, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !58
  br i1 %112, label %144, label %116, !prof !95

116:                                              ; preds = %109
  %117 = mul nsw i32 %115, %37
  %118 = add nsw i32 %117, %36
  %119 = sext i32 %118 to i64
  %120 = getelementptr double, ptr %14, i64 %119
  %121 = load double, ptr %120, align 8, !tbaa !89
  %122 = sext i32 %39 to i64
  %123 = tail call i32 @llvm.smin.i32(i32 %39, i32 %111)
  br label %124

124:                                              ; preds = %127, %116
  %125 = phi i64 [ %128, %127 ], [ %113, %116 ]
  %126 = icmp sgt i64 %125, %122
  br i1 %126, label %127, label %139, !prof !96

127:                                              ; preds = %124
  %128 = add nsw i64 %125, -1
  %129 = getelementptr inbounds i32, ptr %42, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !58
  %131 = mul nsw i32 %130, %37
  %132 = add nsw i32 %131, %36
  %133 = sext i32 %132 to i64
  %134 = getelementptr double, ptr %14, i64 %133
  %135 = load double, ptr %134, align 8, !tbaa !89
  %136 = fcmp olt double %135, %121
  br i1 %136, label %137, label %124, !prof !97, !llvm.loop !98

137:                                              ; preds = %127
  %138 = trunc i64 %125 to i32
  br label %139

139:                                              ; preds = %124, %137
  %140 = phi i32 [ %138, %137 ], [ %123, %124 ]
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, ptr %42, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !58
  br label %144

144:                                              ; preds = %109, %139
  %145 = phi i32 [ %143, %139 ], [ %115, %109 ]
  %146 = phi i64 [ %141, %139 ], [ %113, %109 ]
  %147 = phi i32 [ %140, %139 ], [ %111, %109 ]
  %148 = phi double [ %121, %139 ], [ 0.000000e+00, %109 ]
  %149 = getelementptr inbounds i32, ptr %42, i64 %146
  store i32 %145, ptr %38, align 8, !tbaa !84
  %150 = add nsw i32 %39, -1
  %151 = icmp sgt i32 %39, %7
  br i1 %151, label %265, label %152, !prof !99

152:                                              ; preds = %144
  %153 = sext i32 %39 to i64
  br label %157

154:                                              ; preds = %186
  br i1 %151, label %265, label %155, !prof !100

155:                                              ; preds = %154
  %156 = sext i32 %39 to i64
  br label %195

157:                                              ; preds = %152, %186
  %158 = phi i64 [ %153, %152 ], [ %189, %186 ]
  %159 = phi i32 [ %147, %152 ], [ %188, %186 ]
  %160 = phi i32 [ %150, %152 ], [ %187, %186 ]
  %161 = getelementptr inbounds i32, ptr %1, i64 %158
  %162 = load i32, ptr %161, align 4, !tbaa !58
  %163 = load i32, ptr %149, align 4, !tbaa !58
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %186, label %165, !prof !101

165:                                              ; preds = %157
  %166 = icmp slt i32 %162, %115
  %167 = select i1 %112, i1 %166, i1 false
  br i1 %167, label %176, label %168, !prof !102

168:                                              ; preds = %165
  br i1 %112, label %178, label %169, !prof !103

169:                                              ; preds = %168
  %170 = mul nsw i32 %162, %37
  %171 = add nsw i32 %170, %36
  %172 = sext i32 %171 to i64
  %173 = getelementptr double, ptr %14, i64 %172
  %174 = load double, ptr %173, align 8, !tbaa !89
  %175 = fcmp olt double %174, %148
  br i1 %175, label %176, label %178, !prof !104

176:                                              ; preds = %165, %169
  %177 = add nsw i32 %160, 1
  br label %180

178:                                              ; preds = %169, %168
  %179 = add nsw i32 %159, 1
  br label %180

180:                                              ; preds = %176, %178
  %181 = phi i32 [ %179, %178 ], [ %177, %176 ]
  %182 = phi i32 [ %160, %178 ], [ %177, %176 ]
  %183 = phi i32 [ %179, %178 ], [ %159, %176 ]
  %184 = sext i32 %181 to i64
  %185 = getelementptr inbounds i32, ptr %40, i64 %184
  store i32 %162, ptr %185, align 4, !tbaa !58
  br label %186

186:                                              ; preds = %180, %157
  %187 = phi i32 [ %160, %157 ], [ %182, %180 ]
  %188 = phi i32 [ %159, %157 ], [ %183, %180 ]
  %189 = add nsw i64 %158, 1
  %190 = trunc i64 %189 to i32
  %191 = icmp eq i32 %19, %190
  br i1 %191, label %154, label %157, !prof !105, !llvm.loop !106

192:                                              ; preds = %224
  br i1 %151, label %265, label %193, !prof !100

193:                                              ; preds = %192
  %194 = sext i32 %39 to i64
  br label %230

195:                                              ; preds = %155, %224
  %196 = phi i64 [ %156, %155 ], [ %227, %224 ]
  %197 = phi i32 [ %147, %155 ], [ %226, %224 ]
  %198 = phi i32 [ %150, %155 ], [ %225, %224 ]
  %199 = getelementptr inbounds i32, ptr %2, i64 %196
  %200 = load i32, ptr %199, align 4, !tbaa !58
  %201 = load i32, ptr %149, align 4, !tbaa !58
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %224, label %203, !prof !101

203:                                              ; preds = %195
  %204 = icmp slt i32 %200, %115
  %205 = select i1 %112, i1 %204, i1 false
  br i1 %205, label %214, label %206, !prof !102

206:                                              ; preds = %203
  br i1 %112, label %216, label %207, !prof !103

207:                                              ; preds = %206
  %208 = mul nsw i32 %200, %37
  %209 = add nsw i32 %208, %36
  %210 = sext i32 %209 to i64
  %211 = getelementptr double, ptr %14, i64 %210
  %212 = load double, ptr %211, align 8, !tbaa !89
  %213 = fcmp olt double %212, %148
  br i1 %213, label %214, label %216, !prof !104

214:                                              ; preds = %203, %207
  %215 = add nsw i32 %198, 1
  br label %218

216:                                              ; preds = %207, %206
  %217 = add nsw i32 %197, 1
  br label %218

218:                                              ; preds = %214, %216
  %219 = phi i32 [ %217, %216 ], [ %215, %214 ]
  %220 = phi i32 [ %198, %216 ], [ %215, %214 ]
  %221 = phi i32 [ %217, %216 ], [ %197, %214 ]
  %222 = sext i32 %219 to i64
  %223 = getelementptr inbounds i32, ptr %1, i64 %222
  store i32 %200, ptr %223, align 4, !tbaa !58
  br label %224

224:                                              ; preds = %218, %195
  %225 = phi i32 [ %198, %195 ], [ %220, %218 ]
  %226 = phi i32 [ %197, %195 ], [ %221, %218 ]
  %227 = add nsw i64 %196, 1
  %228 = trunc i64 %227 to i32
  %229 = icmp eq i32 %19, %228
  br i1 %229, label %192, label %195, !prof !105, !llvm.loop !107

230:                                              ; preds = %193, %259
  %231 = phi i64 [ %194, %193 ], [ %262, %259 ]
  %232 = phi i32 [ %147, %193 ], [ %261, %259 ]
  %233 = phi i32 [ %150, %193 ], [ %260, %259 ]
  %234 = getelementptr inbounds i32, ptr %27, i64 %231
  %235 = load i32, ptr %234, align 4, !tbaa !58
  %236 = load i32, ptr %149, align 4, !tbaa !58
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %259, label %238, !prof !101

238:                                              ; preds = %230
  %239 = icmp slt i32 %235, %115
  %240 = select i1 %112, i1 %239, i1 false
  br i1 %240, label %249, label %241, !prof !102

241:                                              ; preds = %238
  br i1 %112, label %251, label %242, !prof !103

242:                                              ; preds = %241
  %243 = mul nsw i32 %235, %37
  %244 = add nsw i32 %243, %36
  %245 = sext i32 %244 to i64
  %246 = getelementptr double, ptr %14, i64 %245
  %247 = load double, ptr %246, align 8, !tbaa !89
  %248 = fcmp olt double %247, %148
  br i1 %248, label %249, label %251, !prof !104

249:                                              ; preds = %238, %242
  %250 = add nsw i32 %233, 1
  br label %253

251:                                              ; preds = %242, %241
  %252 = add nsw i32 %232, 1
  br label %253

253:                                              ; preds = %249, %251
  %254 = phi i32 [ %252, %251 ], [ %250, %249 ]
  %255 = phi i32 [ %233, %251 ], [ %250, %249 ]
  %256 = phi i32 [ %252, %251 ], [ %232, %249 ]
  %257 = sext i32 %254 to i64
  %258 = getelementptr inbounds i32, ptr %2, i64 %257
  store i32 %235, ptr %258, align 4, !tbaa !58
  br label %259

259:                                              ; preds = %253, %230
  %260 = phi i32 [ %233, %230 ], [ %255, %253 ]
  %261 = phi i32 [ %232, %230 ], [ %256, %253 ]
  %262 = add nsw i64 %231, 1
  %263 = trunc i64 %262 to i32
  %264 = icmp eq i32 %19, %263
  br i1 %264, label %265, label %230, !prof !105, !llvm.loop !108

265:                                              ; preds = %259, %144, %154, %192
  %266 = phi i32 [ %150, %192 ], [ %150, %154 ], [ %150, %144 ], [ %260, %259 ]
  %267 = phi i32 [ %147, %192 ], [ %147, %154 ], [ %147, %144 ], [ %261, %259 ]
  %268 = icmp eq i32 %37, 4
  br i1 %268, label %269, label %307, !prof !109

269:                                              ; preds = %265
  br i1 %151, label %341, label %270

270:                                              ; preds = %269
  %271 = sext i32 %39 to i64
  br label %272

272:                                              ; preds = %270, %301
  %273 = phi i64 [ %271, %270 ], [ %304, %301 ]
  %274 = phi i32 [ %147, %270 ], [ %303, %301 ]
  %275 = phi i32 [ %150, %270 ], [ %302, %301 ]
  %276 = getelementptr inbounds i32, ptr %41, i64 %273
  %277 = load i32, ptr %276, align 4, !tbaa !58
  %278 = load i32, ptr %149, align 4, !tbaa !58
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %301, label %280

280:                                              ; preds = %272
  %281 = icmp slt i32 %277, %115
  %282 = select i1 %112, i1 %281, i1 false
  br i1 %282, label %291, label %283

283:                                              ; preds = %280
  br i1 %112, label %293, label %284

284:                                              ; preds = %283
  %285 = shl nsw i32 %277, 2
  %286 = add nsw i32 %285, %36
  %287 = sext i32 %286 to i64
  %288 = getelementptr double, ptr %14, i64 %287
  %289 = load double, ptr %288, align 8, !tbaa !89
  %290 = fcmp olt double %289, %148
  br i1 %290, label %291, label %293

291:                                              ; preds = %280, %284
  %292 = add nsw i32 %275, 1
  br label %295

293:                                              ; preds = %284, %283
  %294 = add nsw i32 %274, 1
  br label %295

295:                                              ; preds = %291, %293
  %296 = phi i32 [ %294, %293 ], [ %292, %291 ]
  %297 = phi i32 [ %275, %293 ], [ %292, %291 ]
  %298 = phi i32 [ %294, %293 ], [ %274, %291 ]
  %299 = sext i32 %296 to i64
  %300 = getelementptr inbounds i32, ptr %27, i64 %299
  store i32 %277, ptr %300, align 4, !tbaa !58
  br label %301

301:                                              ; preds = %295, %272
  %302 = phi i32 [ %275, %272 ], [ %297, %295 ]
  %303 = phi i32 [ %274, %272 ], [ %298, %295 ]
  %304 = add nsw i64 %273, 1
  %305 = trunc i64 %304 to i32
  %306 = icmp eq i32 %19, %305
  br i1 %306, label %307, label %272, !llvm.loop !110

307:                                              ; preds = %301, %265
  %308 = phi i32 [ %266, %265 ], [ %302, %301 ]
  %309 = phi i32 [ %267, %265 ], [ %303, %301 ]
  %310 = icmp slt i32 %308, %39
  br i1 %310, label %322, label %311, !prof !111

311:                                              ; preds = %307
  %312 = load ptr, ptr %8, align 8, !tbaa !53
  %313 = getelementptr inbounds %struct.kdnode, ptr %312, i64 0, i32 1
  store ptr null, ptr %313, align 8, !tbaa !92
  %314 = load ptr, ptr %8, align 8, !tbaa !53
  %315 = getelementptr inbounds %struct.kdnode, ptr %314, i64 0, i32 2
  store ptr null, ptr %315, align 8, !tbaa !93
  %316 = load ptr, ptr %8, align 8, !tbaa !53
  %317 = getelementptr inbounds %struct.kdnode, ptr %316, i64 1
  store ptr %317, ptr %8, align 8, !tbaa !53
  %318 = getelementptr inbounds %struct.kdnode, ptr %38, i64 0, i32 1
  store ptr %316, ptr %318, align 8, !tbaa !92
  %319 = add nsw i32 %36, 1
  br i1 %268, label %320, label %321, !prof !109

320:                                              ; preds = %311
  tail call fastcc void @buildkdtree(ptr noundef %40, ptr noundef %1, ptr noundef %2, ptr noundef %27, ptr noundef nonnull %42, ptr noundef %41, i32 noundef %39, i32 noundef %308, ptr noundef nonnull %8, ptr noundef %316, ptr noundef %10, i32 noundef %319, i32 noundef 4) #17
  br label %322

321:                                              ; preds = %311
  tail call fastcc void @buildkdtree(ptr noundef %40, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %42, ptr noundef %41, ptr noundef %27, i32 noundef %39, i32 noundef %308, ptr noundef nonnull %8, ptr noundef %316, ptr noundef %10, i32 noundef %319, i32 noundef %37) #17
  br label %322

322:                                              ; preds = %320, %321, %307
  %323 = icmp sgt i32 %309, %147
  br i1 %323, label %324, label %341, !prof !112

324:                                              ; preds = %322
  %325 = load ptr, ptr %8, align 8, !tbaa !53
  %326 = getelementptr inbounds %struct.kdnode, ptr %325, i64 0, i32 1
  store ptr null, ptr %326, align 8, !tbaa !92
  %327 = load ptr, ptr %8, align 8, !tbaa !53
  %328 = getelementptr inbounds %struct.kdnode, ptr %327, i64 0, i32 2
  store ptr null, ptr %328, align 8, !tbaa !93
  %329 = load ptr, ptr %8, align 8, !tbaa !53
  %330 = getelementptr inbounds %struct.kdnode, ptr %329, i64 1
  store ptr %330, ptr %8, align 8, !tbaa !53
  %331 = getelementptr inbounds %struct.kdnode, ptr %38, i64 0, i32 2
  store ptr %329, ptr %331, align 8, !tbaa !93
  %332 = add nsw i32 %147, 1
  %333 = add nsw i32 %36, 1
  br i1 %268, label %334, label %337, !prof !109

334:                                              ; preds = %324
  %335 = srem i32 %333, 5
  %336 = icmp eq i32 %332, %7
  br i1 %336, label %29, label %35, !prof !113

337:                                              ; preds = %324
  %338 = add nsw i32 %37, 1
  %339 = srem i32 %333, %338
  %340 = icmp eq i32 %332, %7
  br i1 %340, label %29, label %20, !prof !114

341:                                              ; preds = %269, %322, %87, %98, %72, %29
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @searchkdtree(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, double noundef %8, double noundef %9, i32 noundef %10, ptr nocapture noundef readonly %11) unnamed_addr #6 !prof !115 !PGOFuncName !116 {
  %13 = mul nsw i32 %10, %3
  %14 = add nsw i32 %10, 1
  %15 = getelementptr double, ptr %1, i64 -1
  %16 = sext i32 %3 to i64
  %17 = getelementptr inbounds i32, ptr %11, i64 %16
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds double, ptr %1, i64 %18
  %20 = getelementptr double, ptr %19, i64 1
  %21 = getelementptr double, ptr %19, i64 2
  %22 = icmp eq i32 %10, 4
  br label %23

23:                                               ; preds = %119, %12
  %24 = phi ptr [ %0, %12 ], [ %102, %119 ]
  %25 = phi i32 [ %2, %12 ], [ %120, %119 ]
  %26 = srem i32 %25, %14
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.kdnode, ptr %24, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !93
  %30 = icmp eq ptr %29, null
  br i1 %27, label %31, label %32, !prof !117

31:                                               ; preds = %23
  br i1 %30, label %48, label %46, !prof !118

32:                                               ; preds = %23
  br i1 %30, label %48, label %33, !prof !119

33:                                               ; preds = %32
  %34 = add nsw i32 %26, %13
  %35 = sext i32 %34 to i64
  %36 = getelementptr double, ptr %15, i64 %35
  %37 = load double, ptr %36, align 8, !tbaa !89
  %38 = fadd double %37, %8
  %39 = load i32, ptr %24, align 8, !tbaa !84
  %40 = mul nsw i32 %39, %10
  %41 = add nsw i32 %40, %26
  %42 = sext i32 %41 to i64
  %43 = getelementptr double, ptr %15, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !89
  %45 = fcmp ult double %38, %44
  br i1 %45, label %48, label %46, !prof !120

46:                                               ; preds = %33, %31
  %47 = add nsw i32 %26, 1
  tail call fastcc void @searchkdtree(ptr noundef nonnull %29, ptr noundef %1, i32 noundef %47, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, double noundef %8, double noundef %9, i32 noundef %10, ptr noundef %11) #17
  br label %48

48:                                               ; preds = %31, %46, %33, %32
  %49 = load i32, ptr %24, align 8, !tbaa !84
  %50 = icmp eq i32 %49, %3
  br i1 %50, label %100, label %51, !prof !121

51:                                               ; preds = %48
  %52 = load i32, ptr %17, align 4, !tbaa !58
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54, !prof !122

54:                                               ; preds = %51
  %55 = sext i32 %49 to i64
  %56 = getelementptr inbounds i32, ptr %11, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !58
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %100

59:                                               ; preds = %54, %51
  %60 = load double, ptr %19, align 8, !tbaa !89
  %61 = mul nsw i32 %49, %10
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, ptr %1, i64 %62
  %64 = load double, ptr %63, align 8, !tbaa !89
  %65 = fsub double %60, %64
  %66 = load double, ptr %20, align 8, !tbaa !89
  %67 = getelementptr double, ptr %63, i64 1
  %68 = load double, ptr %67, align 8, !tbaa !89
  %69 = fsub double %66, %68
  %70 = load double, ptr %21, align 8, !tbaa !89
  %71 = getelementptr double, ptr %63, i64 2
  %72 = load double, ptr %71, align 8, !tbaa !89
  %73 = fsub double %70, %72
  %74 = fmul double %69, %69
  %75 = tail call double @llvm.fmuladd.f64(double %65, double %65, double %74)
  %76 = tail call double @llvm.fmuladd.f64(double %73, double %73, double %75)
  br i1 %22, label %77, label %88, !prof !123

77:                                               ; preds = %59
  %78 = or disjoint i32 %13, 3
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, ptr %1, i64 %79
  %81 = load double, ptr %80, align 8, !tbaa !89
  %82 = or disjoint i32 %61, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, ptr %1, i64 %83
  %85 = load double, ptr %84, align 8, !tbaa !89
  %86 = fsub double %81, %85
  %87 = tail call double @llvm.fmuladd.f64(double %86, double %86, double %76)
  br label %88

88:                                               ; preds = %77, %59
  %89 = phi double [ %87, %77 ], [ %76, %59 ]
  %90 = fcmp olt double %89, %9
  br i1 %90, label %91, label %100, !prof !124

91:                                               ; preds = %88
  %92 = icmp slt i32 %49, %3
  %93 = select i1 %92, ptr %4, ptr %5, !prof !125
  %94 = select i1 %92, ptr %6, ptr %7, !prof !125
  %95 = load i32, ptr %93, align 4, !tbaa !58
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %94, i64 %96
  store i32 %49, ptr %97, align 4, !tbaa !58
  %98 = load i32, ptr %93, align 4, !tbaa !58
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %93, align 4, !tbaa !58
  br label %100

100:                                              ; preds = %91, %88, %54, %48
  %101 = getelementptr inbounds %struct.kdnode, ptr %24, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !92
  %103 = icmp eq ptr %102, null
  br i1 %27, label %104, label %105, !prof !117

104:                                              ; preds = %100
  br i1 %103, label %121, label %119, !prof !126

105:                                              ; preds = %100
  br i1 %103, label %121, label %106, !prof !127

106:                                              ; preds = %105
  %107 = add nsw i32 %26, %13
  %108 = sext i32 %107 to i64
  %109 = getelementptr double, ptr %15, i64 %108
  %110 = load double, ptr %109, align 8, !tbaa !89
  %111 = fsub double %110, %8
  %112 = load i32, ptr %24, align 8, !tbaa !84
  %113 = mul nsw i32 %112, %10
  %114 = add nsw i32 %113, %26
  %115 = sext i32 %114 to i64
  %116 = getelementptr double, ptr %15, i64 %115
  %117 = load double, ptr %116, align 8, !tbaa !89
  %118 = fcmp olt double %111, %117
  br i1 %118, label %119, label %121, !prof !128

119:                                              ; preds = %106, %104
  %120 = add nsw i32 %26, 1
  br label %23

121:                                              ; preds = %104, %106, %105
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @heapsort_pairs(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !129 !PGOFuncName !130 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %22, !prof !131

4:                                                ; preds = %2
  %5 = lshr i32 %1, 1
  br label %10

6:                                                ; preds = %10
  %7 = getelementptr i32, ptr %0, i64 -1
  br i1 %3, label %8, label %22, !prof !76

8:                                                ; preds = %6
  %9 = zext nneg i32 %1 to i64
  br label %14

10:                                               ; preds = %4, %10
  %11 = phi i32 [ %12, %10 ], [ %5, %4 ]
  tail call fastcc void @downheap_pairs(ptr noundef %0, i32 noundef %1, i32 noundef %11) #17
  %12 = add nsw i32 %11, -1
  %13 = icmp ugt i32 %11, 1
  br i1 %13, label %10, label %6, !prof !132, !llvm.loop !133

14:                                               ; preds = %8, %14
  %15 = phi i64 [ %9, %8 ], [ %19, %14 ]
  %16 = load i32, ptr %0, align 4, !tbaa !58
  %17 = getelementptr i32, ptr %7, i64 %15
  %18 = load i32, ptr %17, align 4, !tbaa !58
  store i32 %18, ptr %0, align 4, !tbaa !58
  store i32 %16, ptr %17, align 4, !tbaa !58
  %19 = add nsw i64 %15, -1
  %20 = trunc i64 %19 to i32
  tail call fastcc void @downheap_pairs(ptr noundef nonnull %0, i32 noundef %20, i32 noundef 1) #17
  %21 = icmp ugt i64 %15, 2
  br i1 %21, label %14, label %22, !prof !134, !llvm.loop !135

22:                                               ; preds = %14, %2, %6
  ret void
}

; Function Attrs: optsize
declare void @free_ivector(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @downheap_index(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 !prof !136 !PGOFuncName !137 {
  %7 = sext i32 %2 to i64
  %8 = getelementptr i32, ptr %0, i64 %7
  %9 = getelementptr i32, ptr %8, i64 -1
  %10 = load i32, ptr %9, align 4, !tbaa !58
  %11 = sdiv i32 %1, 2
  %12 = getelementptr i32, ptr %0, i64 -1
  %13 = icmp slt i32 %11, %2
  br i1 %13, label %58, label %14, !prof !138

14:                                               ; preds = %6
  %15 = mul nsw i32 %10, %5
  %16 = add nsw i32 %15, %4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double, ptr %3, i64 %17
  %19 = load double, ptr %18, align 8, !tbaa !89
  br label %20

20:                                               ; preds = %14, %55
  %21 = phi i32 [ %2, %14 ], [ %44, %55 ]
  %22 = shl nsw i32 %21, 1
  %23 = icmp slt i32 %22, %1
  br i1 %23, label %24, label %43, !prof !139

24:                                               ; preds = %20
  %25 = sext i32 %22 to i64
  %26 = getelementptr i32, ptr %0, i64 %25
  %27 = getelementptr i32, ptr %26, i64 -1
  %28 = load i32, ptr %27, align 4, !tbaa !58
  %29 = mul nsw i32 %28, %5
  %30 = add nsw i32 %29, %4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %3, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !89
  %34 = load i32, ptr %26, align 4, !tbaa !58
  %35 = mul nsw i32 %34, %5
  %36 = add nsw i32 %35, %4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, ptr %3, i64 %37
  %39 = load double, ptr %38, align 8, !tbaa !89
  %40 = fcmp olt double %33, %39
  br i1 %40, label %41, label %43, !prof !140

41:                                               ; preds = %24
  %42 = or disjoint i32 %22, 1
  br label %43

43:                                               ; preds = %41, %24, %20
  %44 = phi i32 [ %42, %41 ], [ %22, %24 ], [ %22, %20 ]
  %45 = sext i32 %44 to i64
  %46 = getelementptr i32, ptr %12, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !58
  %48 = mul nsw i32 %47, %5
  %49 = add nsw i32 %48, %4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, ptr %3, i64 %50
  %52 = load double, ptr %51, align 8, !tbaa !89
  %53 = fcmp ult double %19, %52
  %54 = sext i32 %21 to i64
  br i1 %53, label %55, label %58, !prof !141

55:                                               ; preds = %43
  %56 = getelementptr i32, ptr %12, i64 %54
  store i32 %47, ptr %56, align 4, !tbaa !58
  %57 = icmp sgt i32 %44, %11
  br i1 %57, label %58, label %20, !prof !142, !llvm.loop !143

58:                                               ; preds = %55, %43, %6
  %59 = phi i64 [ %7, %6 ], [ %45, %55 ], [ %54, %43 ]
  %60 = getelementptr i32, ptr %0, i64 %59
  %61 = getelementptr i32, ptr %60, i64 -1
  store i32 %10, ptr %61, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @downheap_pairs(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 !prof !144 !PGOFuncName !145 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr i32, ptr %0, i64 %4
  %6 = getelementptr i32, ptr %5, i64 -1
  %7 = load i32, ptr %6, align 4, !tbaa !58
  %8 = sdiv i32 %1, 2
  %9 = getelementptr i32, ptr %0, i64 -1
  %10 = icmp slt i32 %8, %2
  br i1 %10, label %34, label %11, !prof !146

11:                                               ; preds = %3, %31
  %12 = phi i32 [ %25, %31 ], [ %2, %3 ]
  %13 = shl nsw i32 %12, 1
  %14 = icmp slt i32 %13, %1
  br i1 %14, label %15, label %24, !prof !147

15:                                               ; preds = %11
  %16 = sext i32 %13 to i64
  %17 = getelementptr i32, ptr %0, i64 %16
  %18 = getelementptr i32, ptr %17, i64 -1
  %19 = load i32, ptr %18, align 4, !tbaa !58
  %20 = load i32, ptr %17, align 4, !tbaa !58
  %21 = icmp slt i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %13, %22
  br label %24

24:                                               ; preds = %15, %11
  %25 = phi i32 [ %13, %11 ], [ %23, %15 ]
  %26 = sext i32 %25 to i64
  %27 = getelementptr i32, ptr %9, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !58
  %29 = icmp slt i32 %7, %28
  %30 = sext i32 %12 to i64
  br i1 %29, label %31, label %34, !prof !148

31:                                               ; preds = %24
  %32 = getelementptr i32, ptr %9, i64 %30
  store i32 %28, ptr %32, align 4, !tbaa !58
  %33 = icmp sgt i32 %25, %8
  br i1 %33, label %34, label %11, !prof !149, !llvm.loop !150

34:                                               ; preds = %31, %24, %3
  %35 = phi i64 [ %4, %3 ], [ %26, %31 ], [ %30, %24 ]
  %36 = getelementptr i32, ptr %0, i64 %35
  %37 = getelementptr i32, ptr %36, i64 -1
  store i32 %7, ptr %37, align 4, !tbaa !58
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind optsize allocsize(0) }
attributes #15 = { cold }
attributes #16 = { noreturn nounwind optsize }
attributes #17 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!50}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 36494405452}
!4 = !{!"MaxCount", i64 7149406114}
!5 = !{!"MaxInternalCount", i64 7149406114}
!6 = !{!"MaxFunctionCount", i64 1283723375}
!7 = !{!"NumCounts", i64 1914}
!8 = !{!"NumFunctions", i64 240}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 7149406114, i32 1}
!14 = !{i32 100000, i64 7149406114, i32 1}
!15 = !{i32 200000, i64 7140152539, i32 2}
!16 = !{i32 300000, i64 7140152539, i32 2}
!17 = !{i32 400000, i64 3344610218, i32 4}
!18 = !{i32 500000, i64 3344610218, i32 4}
!19 = !{i32 600000, i64 2054445201, i32 5}
!20 = !{i32 700000, i64 2041548705, i32 10}
!21 = !{i32 800000, i64 2041548705, i32 10}
!22 = !{i32 900000, i64 2041548705, i32 10}
!23 = !{i32 950000, i64 855650904, i32 12}
!24 = !{i32 990000, i64 428072471, i32 14}
!25 = !{i32 999000, i64 9072759, i32 28}
!26 = !{i32 999900, i64 104986, i32 54}
!27 = !{i32 999990, i64 19030, i32 143}
!28 = !{i32 999999, i64 2509, i32 165}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @nblist, ptr @get_blocksize, i64 26}
!36 = !{ptr @nblist, ptr @malloc, i64 26}
!37 = !{ptr @nblist, ptr @fwrite, i64 1}
!38 = !{ptr @nblist, ptr @exit, i64 1}
!39 = !{ptr @nblist, ptr @ivector, i64 222771}
!40 = !{ptr @nblist, ptr @heapsort_index, i64 76}
!41 = !{ptr @nblist, ptr @buildkdtree, i64 25}
!42 = !{ptr @nblist, ptr @searchkdtree, i64 459439}
!43 = !{ptr @nblist, ptr @heapsort_pairs, i64 918878}
!44 = !{ptr @nblist, ptr @free_ivector, i64 187430}
!45 = !{ptr @nblist, ptr @free, i64 25}
!46 = !{ptr @heapsort_index, ptr @downheap_index, i64 2198245}
!47 = !{ptr @buildkdtree, ptr @buildkdtree, i64 1307692}
!48 = !{ptr @searchkdtree, ptr @searchkdtree, i64 2109279216}
!49 = !{ptr @heapsort_pairs, ptr @downheap_pairs, i64 1283722136}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 26}
!52 = !{!"branch_weights", i32 1, i32 27}
!53 = !{!54, !54, i64 0}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!"branch_weights", i32 215, i32 1}
!58 = !{!59, !59, i64 0}
!59 = !{!"int", !55, i64 0}
!60 = !{!"branch_weights", i32 1, i32 494781}
!61 = !{!"branch_weights", i32 215, i32 3958033}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"branch_weights", i32 38061, i32 456721}
!65 = !{!"branch_weights", i32 38061, i32 1}
!66 = !{!"branch_weights", i32 201658, i32 255064}
!67 = !{!"branch_weights", i32 1, i32 255064}
!68 = !{!"branch_weights", i32 494780, i32 1}
!69 = !{!"branch_weights", i32 494780, i32 427825414}
!70 = distinct !{!70, !63}
!71 = distinct !{!71, !63}
!72 = distinct !{!72, !63}
!73 = !{!"function_entry_count", i64 78}
!74 = !{!"nblist.c:heapsort_index"}
!75 = !{!"branch_weights", i32 157, i32 1}
!76 = !{!"branch_weights", i32 -2147483648, i32 0}
!77 = !{!"branch_weights", i32 1484185, i32 157}
!78 = distinct !{!78, !63}
!79 = !{!"branch_weights", i32 2968369, i32 157}
!80 = distinct !{!80, !63}
!81 = !{!"function_entry_count", i64 425956}
!82 = !{!"nblist.c:buildkdtree"}
!83 = !{!"branch_weights", i32 1, i32 127}
!84 = !{!85, !59, i64 0}
!85 = !{!"kdnode", !59, i64 0, !54, i64 8, !54, i64 16}
!86 = !{!"branch_weights", i32 68825, i32 212966}
!87 = !{!"branch_weights", i32 2, i32 68824}
!88 = !{!"branch_weights", i32 2, i32 1}
!89 = !{!90, !90, i64 0}
!90 = !{!"double", !55, i64 0}
!91 = !{!"branch_weights", i32 68820, i32 5}
!92 = !{!85, !54, i64 8}
!93 = !{!85, !54, i64 16}
!94 = !{!"branch_weights", i32 1, i32 5}
!95 = !{!"branch_weights", i32 113594, i32 99373}
!96 = !{!"branch_weights", i32 99381, i32 1}
!97 = !{!"branch_weights", i32 99373, i32 9}
!98 = distinct !{!98, !63}
!99 = !{!"branch_weights", i32 1, i32 212965}
!100 = !{!"branch_weights", i32 0, i32 -2147483648}
!101 = !{!"branch_weights", i32 212966, i32 6006546}
!102 = !{!"branch_weights", i32 359453540, i32 -2085159951}
!103 = !{!"branch_weights", i32 911688, i32 4254511}
!104 = !{!"branch_weights", i32 2093023, i32 2161489}
!105 = !{!"branch_weights", i32 212965, i32 6006546}
!106 = distinct !{!106, !63}
!107 = distinct !{!107, !63}
!108 = distinct !{!108, !63}
!109 = !{!"branch_weights", i32 1, i32 212966}
!110 = distinct !{!110, !63}
!111 = !{!"branch_weights", i32 5041, i32 2147478607}
!112 = !{!"branch_weights", i32 2147478607, i32 5041}
!113 = !{!"branch_weights", i32 144167, i32 137623}
!114 = !{!"branch_weights", i32 127, i32 18453249}
!115 = !{!"function_entry_count", i64 2110410321}
!116 = !{!"nblist.c:searchkdtree"}
!117 = !{!"branch_weights", i32 477845252, i32 1632565071}
!118 = !{!"branch_weights", i32 3696, i32 477841557}
!119 = !{!"branch_weights", i32 1137036138, i32 495528934}
!120 = !{!"branch_weights", i32 50702133, i32 444826802}
!121 = !{!"branch_weights", i32 494781, i32 2109915542}
!122 = !{!"branch_weights", i32 2109915542, i32 1}
!123 = !{!"branch_weights", i32 1, i32 2109915542}
!124 = !{!"branch_weights", i32 856640387, i32 1253275156}
!125 = !{!"branch_weights", i32 428320194, i32 428320194}
!126 = !{!"branch_weights", i32 1, i32 477845252}
!127 = !{!"branch_weights", i32 854407171, i32 778157901}
!128 = !{!"branch_weights", i32 709401934, i32 68755968}
!129 = !{!"function_entry_count", i64 989560}
!130 = !{!"nblist.c:heapsort_pairs"}
!131 = !{!"branch_weights", i32 989560, i32 1}
!132 = !{!"branch_weights", i32 427082912, i32 989560}
!133 = distinct !{!133, !63}
!134 = !{!"branch_weights", i32 854661345, i32 989560}
!135 = distinct !{!135, !63}
!136 = !{!"function_entry_count", i64 2226432}
!137 = !{!"nblist.c:downheap_index"}
!138 = !{!"branch_weights", i32 1, i32 1782681}
!139 = !{!"branch_weights", i32 18768304, i32 1143}
!140 = !{!"branch_weights", i32 9072760, i32 9695545}
!141 = !{!"branch_weights", i32 18325695, i32 443752}
!142 = !{!"branch_weights", i32 1782681, i32 16986765}
!143 = distinct !{!143, !63}
!144 = !{!"function_entry_count", i64 1283723375}
!145 = !{!"nblist.c:downheap_pairs"}
!146 = !{!"branch_weights", i32 1, i32 424735940}
!147 = !{!"branch_weights", i32 -724891026, i32 4626788}
!148 = !{!"branch_weights", i32 -937389986, i32 217125748}
!149 = !{!"branch_weights", i32 424735940, i32 -1145000178}
!150 = distinct !{!150, !63}
