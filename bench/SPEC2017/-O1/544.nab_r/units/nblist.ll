; ModuleID = 'nblist.c'
source_filename = "nblist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kdnode = type { i32, ptr, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [40 x i8] c"Error allocate kdnode array in nbtree!\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @nblist(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 !prof !47 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  %14 = fmul double %6, %6
  %15 = tail call i32 @get_blocksize() #13
  %16 = sext i32 %7 to i64
  %17 = mul nsw i64 %16, 24
  %18 = tail call noalias ptr @malloc(i64 noundef %17) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23, !prof !48

20:                                               ; preds = %10
  %21 = load ptr, ptr @stderr, align 8, !tbaa !49
  %22 = tail call i64 @fwrite(ptr nonnull @.str, i64 39, i64 1, ptr %21) #15
  tail call void @exit(i32 noundef 1) #16
  unreachable

23:                                               ; preds = %10
  %24 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #13
  %25 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #13
  %26 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #13
  %27 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #13
  %28 = icmp eq i32 %8, 4
  br i1 %28, label %29, label %31, !prof !48

29:                                               ; preds = %23
  %30 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #13
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %30, %29 ], [ null, %23 ]
  %33 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #13
  %34 = icmp sgt i32 %7, 0
  br i1 %34, label %35, label %53, !prof !53

35:                                               ; preds = %31
  %36 = zext nneg i32 %7 to i64
  br label %37

37:                                               ; preds = %35, %48
  %38 = phi i64 [ 0, %35 ], [ %51, %48 ]
  %39 = getelementptr inbounds i32, ptr %26, i64 %38
  %40 = trunc i64 %38 to i32
  store i32 %40, ptr %39, align 4, !tbaa !54
  %41 = getelementptr inbounds i32, ptr %25, i64 %38
  %42 = trunc i64 %38 to i32
  store i32 %42, ptr %41, align 4, !tbaa !54
  %43 = getelementptr inbounds i32, ptr %24, i64 %38
  %44 = trunc i64 %38 to i32
  store i32 %44, ptr %43, align 4, !tbaa !54
  br i1 %28, label %45, label %48, !prof !56

45:                                               ; preds = %37
  %46 = getelementptr inbounds i32, ptr %32, i64 %38
  %47 = trunc i64 %38 to i32
  store i32 %47, ptr %46, align 4, !tbaa !54
  br label %48

48:                                               ; preds = %45, %37
  %49 = getelementptr inbounds i32, ptr %33, i64 %38
  %50 = trunc i64 %38 to i32
  store i32 %50, ptr %49, align 4, !tbaa !54
  %51 = add nuw nsw i64 %38, 1
  %52 = icmp eq i64 %51, %36
  br i1 %52, label %53, label %37, !prof !57, !llvm.loop !58

53:                                               ; preds = %48, %31
  tail call fastcc void @heapsort_index(ptr noundef %24, i32 noundef %7, ptr noundef %3, i32 noundef 0, i32 noundef %8)
  tail call fastcc void @heapsort_index(ptr noundef %25, i32 noundef %7, ptr noundef %3, i32 noundef 1, i32 noundef %8)
  tail call fastcc void @heapsort_index(ptr noundef %26, i32 noundef %7, ptr noundef %3, i32 noundef 2, i32 noundef %8)
  br i1 %28, label %54, label %55, !prof !48

54:                                               ; preds = %53
  tail call fastcc void @heapsort_index(ptr noundef %32, i32 noundef %7, ptr noundef %3, i32 noundef 3, i32 noundef 4)
  br label %55

55:                                               ; preds = %54, %53
  %56 = getelementptr inbounds %struct.kdnode, ptr %18, i64 1
  store ptr %56, ptr %13, align 8, !tbaa !49
  %57 = getelementptr inbounds %struct.kdnode, ptr %18, i64 0, i32 1
  %58 = add nsw i32 %7, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  call fastcc void @buildkdtree(ptr noundef %33, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %32, ptr noundef %27, i32 noundef 0, i32 noundef %58, ptr noundef nonnull %13, ptr noundef nonnull %18, ptr noundef %3, i32 noundef 0, i32 noundef %8)
  %59 = call ptr @ivector(i32 noundef 0, i32 noundef %7) #13
  %60 = call ptr @ivector(i32 noundef 0, i32 noundef %7) #13
  %61 = icmp sgt i32 %7, 0
  br i1 %61, label %62, label %142, !prof !53

62:                                               ; preds = %55
  %63 = zext nneg i32 %7 to i64
  br label %64

64:                                               ; preds = %62, %135
  %65 = phi i64 [ 0, %62 ], [ %140, %135 ]
  %66 = phi i32 [ 0, %62 ], [ %139, %135 ]
  store i32 0, ptr %12, align 4, !tbaa !54
  store i32 0, ptr %11, align 4, !tbaa !54
  %67 = trunc i64 %65 to i32
  call fastcc void @searchkdtree(ptr noundef nonnull %18, ptr noundef %3, i32 noundef 0, i32 noundef %67, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %59, ptr noundef %60, double noundef %6, double noundef %14, i32 noundef %8, ptr noundef %9)
  %68 = load i32, ptr %11, align 4, !tbaa !54
  call fastcc void @heapsort_pairs(ptr noundef %59, i32 noundef %68)
  %69 = load i32, ptr %12, align 4, !tbaa !54
  call fastcc void @heapsort_pairs(ptr noundef %60, i32 noundef %69)
  %70 = getelementptr inbounds ptr, ptr %2, i64 %65
  %71 = load ptr, ptr %70, align 8, !tbaa !49
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %79, !prof !61

73:                                               ; preds = %64
  %74 = load i32, ptr %11, align 4, !tbaa !54
  %75 = load i32, ptr %12, align 4, !tbaa !54
  %76 = add nsw i32 %75, %74
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %97, label %78, !prof !62

78:                                               ; preds = %73
  br i1 %72, label %100, label %79, !prof !63

79:                                               ; preds = %64, %78
  %80 = load i32, ptr %11, align 4, !tbaa !54
  %81 = load i32, ptr %12, align 4, !tbaa !54
  %82 = add nsw i32 %81, %80
  %83 = getelementptr inbounds i32, ptr %0, i64 %65
  %84 = load i32, ptr %83, align 4, !tbaa !54
  %85 = getelementptr inbounds i32, ptr %1, i64 %65
  %86 = load i32, ptr %85, align 4, !tbaa !54
  %87 = add nsw i32 %86, %84
  %88 = icmp sgt i32 %82, %87
  br i1 %88, label %93, label %89, !prof !64

89:                                               ; preds = %79
  %90 = shl nsw i32 %82, 2
  %91 = mul nsw i32 %87, 3
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %100, !prof !65

93:                                               ; preds = %89, %79
  call void @free_ivector(ptr noundef %71, i32 noundef 0, i32 noundef %87) #13
  %94 = load i32, ptr %11, align 4, !tbaa !54
  %95 = load i32, ptr %12, align 4, !tbaa !54
  %96 = add nsw i32 %95, %94
  br label %97

97:                                               ; preds = %73, %93
  %98 = phi i32 [ %96, %93 ], [ %76, %73 ]
  %99 = call ptr @ivector(i32 noundef 0, i32 noundef %98) #13
  store ptr %99, ptr %70, align 8, !tbaa !49
  br label %100

100:                                              ; preds = %97, %78, %89
  %101 = load i32, ptr %11, align 4, !tbaa !54
  %102 = getelementptr inbounds i32, ptr %0, i64 %65
  store i32 %101, ptr %102, align 4, !tbaa !54
  %103 = load i32, ptr %12, align 4, !tbaa !54
  %104 = getelementptr inbounds i32, ptr %1, i64 %65
  store i32 %103, ptr %104, align 4, !tbaa !54
  %105 = icmp sgt i32 %101, 0
  br i1 %105, label %106, label %108, !prof !66

106:                                              ; preds = %100
  %107 = load ptr, ptr %70, align 8, !tbaa !49
  br label %113

108:                                              ; preds = %113, %100
  %109 = load i32, ptr %12, align 4, !tbaa !54
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %135, !prof !66

111:                                              ; preds = %108
  %112 = load ptr, ptr %70, align 8, !tbaa !49
  br label %122

113:                                              ; preds = %106, %113
  %114 = phi i64 [ 0, %106 ], [ %118, %113 ]
  %115 = getelementptr inbounds i32, ptr %59, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !54
  %117 = getelementptr inbounds i32, ptr %107, i64 %114
  store i32 %116, ptr %117, align 4, !tbaa !54
  %118 = add nuw nsw i64 %114, 1
  %119 = load i32, ptr %11, align 4, !tbaa !54
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %113, label %108, !prof !67, !llvm.loop !68

122:                                              ; preds = %111, %122
  %123 = phi i64 [ 0, %111 ], [ %131, %122 ]
  %124 = getelementptr inbounds i32, ptr %60, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !54
  %126 = load i32, ptr %11, align 4, !tbaa !54
  %127 = trunc i64 %123 to i32
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, ptr %112, i64 %129
  store i32 %125, ptr %130, align 4, !tbaa !54
  %131 = add nuw nsw i64 %123, 1
  %132 = load i32, ptr %12, align 4, !tbaa !54
  %133 = sext i32 %132 to i64
  %134 = icmp slt i64 %131, %133
  br i1 %134, label %122, label %135, !prof !67, !llvm.loop !69

135:                                              ; preds = %122, %108
  %136 = phi i32 [ %109, %108 ], [ %132, %122 ]
  %137 = load i32, ptr %11, align 4, !tbaa !54
  %138 = add i32 %136, %66
  %139 = add i32 %138, %137
  %140 = add nuw nsw i64 %65, 1
  %141 = icmp eq i64 %140, %63
  br i1 %141, label %142, label %64, !prof !57, !llvm.loop !70

142:                                              ; preds = %135, %55
  %143 = phi i32 [ 0, %55 ], [ %139, %135 ]
  call void @free_ivector(ptr noundef %59, i32 noundef 0, i32 noundef %7) #13
  call void @free_ivector(ptr noundef %60, i32 noundef 0, i32 noundef %7) #13
  call void @free(ptr noundef %18) #13
  call void @free_ivector(ptr noundef %24, i32 noundef 0, i32 noundef %7) #13
  call void @free_ivector(ptr noundef %25, i32 noundef 0, i32 noundef %7) #13
  call void @free_ivector(ptr noundef %26, i32 noundef 0, i32 noundef %7) #13
  call void @free_ivector(ptr noundef %27, i32 noundef 0, i32 noundef %7) #13
  br i1 %28, label %144, label %145, !prof !48

144:                                              ; preds = %142
  call void @free_ivector(ptr noundef %32, i32 noundef 0, i32 noundef %7) #13
  br label %145

145:                                              ; preds = %144, %142
  call void @free_ivector(ptr noundef %33, i32 noundef 0, i32 noundef %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  ret i32 %143
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @get_blocksize() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare ptr @ivector(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @heapsort_index(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 !prof !71 !PGOFuncName !72 {
  %6 = sdiv i32 %1, 2
  %7 = getelementptr i32, ptr %0, i64 -1
  %8 = getelementptr i32, ptr %0, i64 -1
  %9 = icmp sgt i32 %1, 1
  br i1 %9, label %10, label %14, !prof !73

10:                                               ; preds = %5
  %11 = getelementptr i32, ptr %0, i64 -1
  %12 = zext nneg i32 %6 to i64
  %13 = zext nneg i32 %6 to i64
  br label %21

14:                                               ; preds = %72, %5
  %15 = getelementptr i32, ptr %0, i64 -1
  %16 = getelementptr i32, ptr %0, i64 -1
  %17 = icmp sgt i32 %1, 1
  br i1 %17, label %18, label %138, !prof !73

18:                                               ; preds = %14
  %19 = getelementptr i32, ptr %0, i64 -1
  %20 = zext nneg i32 %1 to i64
  br label %78

21:                                               ; preds = %10, %72
  %22 = phi i64 [ %12, %10 ], [ %76, %72 ]
  %23 = getelementptr i32, ptr %7, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !54
  %25 = icmp sgt i64 %22, %13
  %26 = trunc i64 %22 to i32
  br i1 %25, label %72, label %27, !prof !74

27:                                               ; preds = %21
  %28 = mul nsw i32 %24, %4
  %29 = add nsw i32 %28, %3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, ptr %2, i64 %30
  %32 = load double, ptr %31, align 8, !tbaa !75
  %33 = trunc i64 %22 to i32
  br label %34

34:                                               ; preds = %68, %27
  %35 = phi i32 [ %33, %27 ], [ %58, %68 ]
  %36 = shl nsw i32 %35, 1
  %37 = icmp slt i32 %36, %1
  br i1 %37, label %38, label %57, !prof !77

38:                                               ; preds = %34
  %39 = sext i32 %36 to i64
  %40 = getelementptr i32, ptr %0, i64 %39
  %41 = getelementptr i32, ptr %40, i64 -1
  %42 = load i32, ptr %41, align 4, !tbaa !54
  %43 = mul nsw i32 %42, %4
  %44 = add nsw i32 %43, %3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, ptr %2, i64 %45
  %47 = load double, ptr %46, align 8, !tbaa !75
  %48 = load i32, ptr %40, align 4, !tbaa !54
  %49 = mul nsw i32 %48, %4
  %50 = add nsw i32 %49, %3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, ptr %2, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !75
  %54 = fcmp olt double %47, %53
  br i1 %54, label %55, label %57, !prof !78

55:                                               ; preds = %38
  %56 = or disjoint i32 %36, 1
  br label %57

57:                                               ; preds = %55, %38, %34
  %58 = phi i32 [ %56, %55 ], [ %36, %38 ], [ %36, %34 ]
  %59 = sext i32 %58 to i64
  %60 = getelementptr i32, ptr %11, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !54
  %62 = mul nsw i32 %61, %4
  %63 = add nsw i32 %62, %3
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, ptr %2, i64 %64
  %66 = load double, ptr %65, align 8, !tbaa !75
  %67 = fcmp ult double %32, %66
  br i1 %67, label %68, label %72, !prof !79

68:                                               ; preds = %57
  %69 = sext i32 %35 to i64
  %70 = getelementptr i32, ptr %11, i64 %69
  store i32 %61, ptr %70, align 4, !tbaa !54
  %71 = icmp sgt i32 %58, %6
  br i1 %71, label %72, label %34, !prof !80, !llvm.loop !81

72:                                               ; preds = %57, %68, %21
  %73 = phi i32 [ %26, %21 ], [ %58, %68 ], [ %35, %57 ]
  %74 = sext i32 %73 to i64
  %75 = getelementptr i32, ptr %8, i64 %74
  store i32 %24, ptr %75, align 4, !tbaa !54
  %76 = add nsw i64 %22, -1
  %77 = icmp sgt i64 %22, 1
  br i1 %77, label %21, label %14, !prof !82, !llvm.loop !83

78:                                               ; preds = %18, %133
  %79 = phi i64 [ %20, %18 ], [ %83, %133 ]
  %80 = load i32, ptr %0, align 4, !tbaa !54
  %81 = getelementptr i32, ptr %15, i64 %79
  %82 = load i32, ptr %81, align 4, !tbaa !54
  store i32 %82, ptr %0, align 4, !tbaa !54
  store i32 %80, ptr %81, align 4, !tbaa !54
  %83 = add nsw i64 %79, -1
  %84 = load i32, ptr %0, align 4, !tbaa !54
  %85 = trunc i64 %83 to i32
  %86 = sdiv i32 %85, 2
  %87 = icmp eq i64 %79, 2
  br i1 %87, label %133, label %88, !prof !74

88:                                               ; preds = %78
  %89 = mul nsw i32 %84, %4
  %90 = add nsw i32 %89, %3
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, ptr %2, i64 %91
  %93 = load double, ptr %92, align 8, !tbaa !75
  br label %94

94:                                               ; preds = %129, %88
  %95 = phi i32 [ 1, %88 ], [ %119, %129 ]
  %96 = shl nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = icmp sgt i64 %83, %97
  br i1 %98, label %99, label %118, !prof !77

99:                                               ; preds = %94
  %100 = sext i32 %96 to i64
  %101 = getelementptr i32, ptr %0, i64 %100
  %102 = getelementptr i32, ptr %101, i64 -1
  %103 = load i32, ptr %102, align 4, !tbaa !54
  %104 = mul nsw i32 %103, %4
  %105 = add nsw i32 %104, %3
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, ptr %2, i64 %106
  %108 = load double, ptr %107, align 8, !tbaa !75
  %109 = load i32, ptr %101, align 4, !tbaa !54
  %110 = mul nsw i32 %109, %4
  %111 = add nsw i32 %110, %3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds double, ptr %2, i64 %112
  %114 = load double, ptr %113, align 8, !tbaa !75
  %115 = fcmp olt double %108, %114
  br i1 %115, label %116, label %118, !prof !78

116:                                              ; preds = %99
  %117 = or disjoint i32 %96, 1
  br label %118

118:                                              ; preds = %116, %99, %94
  %119 = phi i32 [ %117, %116 ], [ %96, %99 ], [ %96, %94 ]
  %120 = sext i32 %119 to i64
  %121 = getelementptr i32, ptr %19, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !54
  %123 = mul nsw i32 %122, %4
  %124 = add nsw i32 %123, %3
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, ptr %2, i64 %125
  %127 = load double, ptr %126, align 8, !tbaa !75
  %128 = fcmp ult double %93, %127
  br i1 %128, label %129, label %133, !prof !79

129:                                              ; preds = %118
  %130 = sext i32 %95 to i64
  %131 = getelementptr i32, ptr %19, i64 %130
  store i32 %122, ptr %131, align 4, !tbaa !54
  %132 = icmp sgt i32 %119, %86
  br i1 %132, label %133, label %94, !prof !80, !llvm.loop !81

133:                                              ; preds = %118, %129, %78
  %134 = phi i32 [ 1, %78 ], [ %119, %129 ], [ %95, %118 ]
  %135 = sext i32 %134 to i64
  %136 = getelementptr i32, ptr %16, i64 %135
  store i32 %84, ptr %136, align 4, !tbaa !54
  %137 = icmp sgt i64 %79, 2
  br i1 %137, label %78, label %138, !prof !84, !llvm.loop !85

138:                                              ; preds = %133, %14
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @buildkdtree(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr nocapture noundef writeonly %9, ptr noundef %10, i32 noundef %11, i32 noundef %12) unnamed_addr #6 !prof !86 !PGOFuncName !87 {
  br label %14

14:                                               ; preds = %356, %13
  %15 = phi ptr [ %0, %13 ], [ %18, %356 ]
  %16 = phi ptr [ %3, %13 ], [ %366, %356 ]
  %17 = phi ptr [ %4, %13 ], [ %367, %356 ]
  %18 = phi ptr [ %5, %13 ], [ %368, %356 ]
  %19 = phi i32 [ %6, %13 ], [ %364, %356 ]
  %20 = phi ptr [ %9, %13 ], [ %361, %356 ]
  %21 = phi i32 [ %11, %13 ], [ %365, %356 ]
  %22 = phi i32 [ %12, %13 ], [ %369, %356 ]
  %23 = add nsw i32 %22, 1
  %24 = srem i32 %21, %23
  %25 = icmp eq i32 %7, %19
  br i1 %25, label %26, label %30, !prof !88

26:                                               ; preds = %14
  %27 = sext i32 %19 to i64
  %28 = getelementptr inbounds i32, ptr %15, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !54
  store i32 %29, ptr %20, align 8, !tbaa !89
  br label %370

30:                                               ; preds = %14
  %31 = add nsw i32 %19, 1
  %32 = icmp eq i32 %31, %7
  br i1 %32, label %33, label %132, !prof !91

33:                                               ; preds = %30
  %34 = icmp eq i32 %24, 0
  %35 = sext i32 %19 to i64
  %36 = getelementptr inbounds i32, ptr %15, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !54
  br i1 %34, label %38, label %43, !prof !92

38:                                               ; preds = %33
  %39 = sext i32 %7 to i64
  %40 = getelementptr inbounds i32, ptr %15, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !54
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %60, label %75, !prof !93

43:                                               ; preds = %33
  %44 = mul nsw i32 %37, %22
  %45 = add nsw i32 %44, %24
  %46 = sext i32 %45 to i64
  %47 = getelementptr double, ptr %10, i64 %46
  %48 = getelementptr double, ptr %47, i64 -1
  %49 = load double, ptr %48, align 8, !tbaa !75
  %50 = sext i32 %7 to i64
  %51 = getelementptr inbounds i32, ptr %15, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !54
  %53 = mul nsw i32 %52, %22
  %54 = add nsw i32 %53, %24
  %55 = sext i32 %54 to i64
  %56 = getelementptr double, ptr %10, i64 %55
  %57 = getelementptr double, ptr %56, i64 -1
  %58 = load double, ptr %57, align 8, !tbaa !75
  %59 = fcmp olt double %49, %58
  br i1 %59, label %60, label %74, !prof !94

60:                                               ; preds = %43, %38
  %61 = sext i32 %7 to i64
  %62 = getelementptr inbounds i32, ptr %15, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !54
  store i32 %63, ptr %20, align 8, !tbaa !89
  %64 = sext i32 %19 to i64
  %65 = getelementptr inbounds i32, ptr %15, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !54
  %67 = load ptr, ptr %8, align 8, !tbaa !49
  store i32 %66, ptr %67, align 8, !tbaa !89
  %68 = getelementptr inbounds %struct.kdnode, ptr %67, i64 0, i32 1
  store ptr null, ptr %68, align 8, !tbaa !95
  %69 = load ptr, ptr %8, align 8, !tbaa !49
  %70 = getelementptr inbounds %struct.kdnode, ptr %69, i64 0, i32 2
  store ptr null, ptr %70, align 8, !tbaa !96
  %71 = load ptr, ptr %8, align 8, !tbaa !49
  %72 = getelementptr inbounds %struct.kdnode, ptr %71, i64 1
  store ptr %72, ptr %8, align 8, !tbaa !49
  %73 = getelementptr inbounds %struct.kdnode, ptr %20, i64 0, i32 1
  store ptr %71, ptr %73, align 8, !tbaa !95
  br label %370

74:                                               ; preds = %43
  br i1 %34, label %75, label %84, !prof !97

75:                                               ; preds = %38, %74
  %76 = sext i32 %19 to i64
  %77 = getelementptr inbounds i32, ptr %15, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !54
  %79 = sext i32 %7 to i64
  %80 = getelementptr inbounds i32, ptr %15, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !54
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %104, label %83

83:                                               ; preds = %75
  br i1 %34, label %118, label %84

84:                                               ; preds = %74, %83
  %85 = sext i32 %19 to i64
  %86 = getelementptr inbounds i32, ptr %15, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !54
  %88 = mul nsw i32 %87, %22
  %89 = add nsw i32 %88, %24
  %90 = sext i32 %89 to i64
  %91 = getelementptr double, ptr %10, i64 %90
  %92 = getelementptr double, ptr %91, i64 -1
  %93 = load double, ptr %92, align 8, !tbaa !75
  %94 = sext i32 %7 to i64
  %95 = getelementptr inbounds i32, ptr %15, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !54
  %97 = mul nsw i32 %96, %22
  %98 = add nsw i32 %97, %24
  %99 = sext i32 %98 to i64
  %100 = getelementptr double, ptr %10, i64 %99
  %101 = getelementptr double, ptr %100, i64 -1
  %102 = load double, ptr %101, align 8, !tbaa !75
  %103 = fcmp ogt double %93, %102
  br i1 %103, label %104, label %118, !prof !97

104:                                              ; preds = %75, %84
  %105 = sext i32 %19 to i64
  %106 = getelementptr inbounds i32, ptr %15, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !54
  store i32 %107, ptr %20, align 8, !tbaa !89
  %108 = sext i32 %7 to i64
  %109 = getelementptr inbounds i32, ptr %15, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !54
  %111 = load ptr, ptr %8, align 8, !tbaa !49
  store i32 %110, ptr %111, align 8, !tbaa !89
  %112 = getelementptr inbounds %struct.kdnode, ptr %111, i64 0, i32 1
  store ptr null, ptr %112, align 8, !tbaa !95
  %113 = load ptr, ptr %8, align 8, !tbaa !49
  %114 = getelementptr inbounds %struct.kdnode, ptr %113, i64 0, i32 2
  store ptr null, ptr %114, align 8, !tbaa !96
  %115 = load ptr, ptr %8, align 8, !tbaa !49
  %116 = getelementptr inbounds %struct.kdnode, ptr %115, i64 1
  store ptr %116, ptr %8, align 8, !tbaa !49
  %117 = getelementptr inbounds %struct.kdnode, ptr %20, i64 0, i32 1
  store ptr %115, ptr %117, align 8, !tbaa !95
  br label %370

118:                                              ; preds = %83, %84
  %119 = sext i32 %19 to i64
  %120 = getelementptr inbounds i32, ptr %15, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !54
  store i32 %121, ptr %20, align 8, !tbaa !89
  %122 = sext i32 %7 to i64
  %123 = getelementptr inbounds i32, ptr %15, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !54
  %125 = load ptr, ptr %8, align 8, !tbaa !49
  store i32 %124, ptr %125, align 8, !tbaa !89
  %126 = getelementptr inbounds %struct.kdnode, ptr %125, i64 0, i32 1
  store ptr null, ptr %126, align 8, !tbaa !95
  %127 = load ptr, ptr %8, align 8, !tbaa !49
  %128 = getelementptr inbounds %struct.kdnode, ptr %127, i64 0, i32 2
  store ptr null, ptr %128, align 8, !tbaa !96
  %129 = load ptr, ptr %8, align 8, !tbaa !49
  %130 = getelementptr inbounds %struct.kdnode, ptr %129, i64 1
  store ptr %130, ptr %8, align 8, !tbaa !49
  %131 = getelementptr inbounds %struct.kdnode, ptr %20, i64 0, i32 2
  store ptr %129, ptr %131, align 8, !tbaa !96
  br label %370

132:                                              ; preds = %30
  %133 = add nsw i32 %7, %19
  %134 = sdiv i32 %133, 2
  %135 = icmp eq i32 %24, 0
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, ptr %15, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !54
  br i1 %135, label %165, label %139, !prof !98

139:                                              ; preds = %132
  %140 = mul nsw i32 %138, %22
  %141 = add nsw i32 %140, %24
  %142 = sext i32 %141 to i64
  %143 = getelementptr double, ptr %10, i64 %142
  %144 = getelementptr double, ptr %143, i64 -1
  %145 = load double, ptr %144, align 8, !tbaa !75
  %146 = getelementptr double, ptr %10, i64 -1
  %147 = sext i32 %134 to i64
  %148 = sext i32 %19 to i64
  %149 = tail call i32 @llvm.smin.i32(i32 %134, i32 %19)
  br label %150

150:                                              ; preds = %153, %139
  %151 = phi i64 [ %154, %153 ], [ %147, %139 ]
  %152 = icmp sgt i64 %151, %148
  br i1 %152, label %153, label %165, !prof !99

153:                                              ; preds = %150
  %154 = add nsw i64 %151, -1
  %155 = getelementptr inbounds i32, ptr %15, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !54
  %157 = mul nsw i32 %156, %22
  %158 = add nsw i32 %157, %24
  %159 = sext i32 %158 to i64
  %160 = getelementptr double, ptr %146, i64 %159
  %161 = load double, ptr %160, align 8, !tbaa !75
  %162 = fcmp olt double %161, %145
  br i1 %162, label %163, label %150, !prof !100, !llvm.loop !101

163:                                              ; preds = %153
  %164 = trunc i64 %151 to i32
  br label %165

165:                                              ; preds = %163, %150, %132
  %166 = phi i32 [ %134, %132 ], [ %164, %163 ], [ %149, %150 ]
  %167 = phi double [ 0.000000e+00, %132 ], [ %145, %150 ], [ %145, %163 ]
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, ptr %15, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !54
  store i32 %170, ptr %20, align 8, !tbaa !89
  %171 = add nsw i32 %19, -1
  %172 = getelementptr double, ptr %10, i64 -1
  %173 = icmp sgt i32 %19, %7
  br i1 %173, label %177, label %174, !prof !102

174:                                              ; preds = %165
  %175 = sext i32 %19 to i64
  %176 = add i32 %7, 1
  br label %183

177:                                              ; preds = %212, %165
  %178 = getelementptr double, ptr %10, i64 -1
  %179 = icmp sgt i32 %19, %7
  br i1 %179, label %218, label %180, !prof !102

180:                                              ; preds = %177
  %181 = sext i32 %19 to i64
  %182 = add i32 %7, 1
  br label %224

183:                                              ; preds = %174, %212
  %184 = phi i64 [ %175, %174 ], [ %215, %212 ]
  %185 = phi i32 [ %166, %174 ], [ %214, %212 ]
  %186 = phi i32 [ %171, %174 ], [ %213, %212 ]
  %187 = getelementptr inbounds i32, ptr %1, i64 %184
  %188 = load i32, ptr %187, align 4, !tbaa !54
  %189 = load i32, ptr %169, align 4, !tbaa !54
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %212, label %191, !prof !103

191:                                              ; preds = %183
  %192 = icmp slt i32 %188, %138
  %193 = select i1 %135, i1 %192, i1 false, !prof !104
  br i1 %193, label %202, label %194, !prof !105

194:                                              ; preds = %191
  br i1 %135, label %204, label %195, !prof !106

195:                                              ; preds = %194
  %196 = mul nsw i32 %188, %22
  %197 = add nsw i32 %196, %24
  %198 = sext i32 %197 to i64
  %199 = getelementptr double, ptr %172, i64 %198
  %200 = load double, ptr %199, align 8, !tbaa !75
  %201 = fcmp olt double %200, %167
  br i1 %201, label %202, label %204, !prof !107

202:                                              ; preds = %191, %195
  %203 = add nsw i32 %186, 1
  br label %206

204:                                              ; preds = %195, %194
  %205 = add nsw i32 %185, 1
  br label %206

206:                                              ; preds = %202, %204
  %207 = phi i32 [ %205, %204 ], [ %203, %202 ]
  %208 = phi i32 [ %186, %204 ], [ %203, %202 ]
  %209 = phi i32 [ %205, %204 ], [ %185, %202 ]
  %210 = sext i32 %207 to i64
  %211 = getelementptr inbounds i32, ptr %18, i64 %210
  store i32 %188, ptr %211, align 4, !tbaa !54
  br label %212

212:                                              ; preds = %206, %183
  %213 = phi i32 [ %186, %183 ], [ %208, %206 ]
  %214 = phi i32 [ %185, %183 ], [ %209, %206 ]
  %215 = add nsw i64 %184, 1
  %216 = trunc i64 %215 to i32
  %217 = icmp eq i32 %176, %216
  br i1 %217, label %177, label %183, !prof !108, !llvm.loop !109

218:                                              ; preds = %253, %177
  %219 = getelementptr double, ptr %10, i64 -1
  %220 = icmp sgt i32 %19, %7
  br i1 %220, label %294, label %221, !prof !102

221:                                              ; preds = %218
  %222 = sext i32 %19 to i64
  %223 = add i32 %7, 1
  br label %259

224:                                              ; preds = %180, %253
  %225 = phi i64 [ %181, %180 ], [ %256, %253 ]
  %226 = phi i32 [ %166, %180 ], [ %255, %253 ]
  %227 = phi i32 [ %171, %180 ], [ %254, %253 ]
  %228 = getelementptr inbounds i32, ptr %2, i64 %225
  %229 = load i32, ptr %228, align 4, !tbaa !54
  %230 = load i32, ptr %169, align 4, !tbaa !54
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %253, label %232, !prof !103

232:                                              ; preds = %224
  %233 = icmp slt i32 %229, %138
  %234 = select i1 %135, i1 %233, i1 false, !prof !104
  br i1 %234, label %243, label %235, !prof !105

235:                                              ; preds = %232
  br i1 %135, label %245, label %236, !prof !106

236:                                              ; preds = %235
  %237 = mul nsw i32 %229, %22
  %238 = add nsw i32 %237, %24
  %239 = sext i32 %238 to i64
  %240 = getelementptr double, ptr %178, i64 %239
  %241 = load double, ptr %240, align 8, !tbaa !75
  %242 = fcmp olt double %241, %167
  br i1 %242, label %243, label %245, !prof !107

243:                                              ; preds = %232, %236
  %244 = add nsw i32 %227, 1
  br label %247

245:                                              ; preds = %236, %235
  %246 = add nsw i32 %226, 1
  br label %247

247:                                              ; preds = %243, %245
  %248 = phi i32 [ %246, %245 ], [ %244, %243 ]
  %249 = phi i32 [ %227, %245 ], [ %244, %243 ]
  %250 = phi i32 [ %246, %245 ], [ %226, %243 ]
  %251 = sext i32 %248 to i64
  %252 = getelementptr inbounds i32, ptr %1, i64 %251
  store i32 %229, ptr %252, align 4, !tbaa !54
  br label %253

253:                                              ; preds = %247, %224
  %254 = phi i32 [ %227, %224 ], [ %249, %247 ]
  %255 = phi i32 [ %226, %224 ], [ %250, %247 ]
  %256 = add nsw i64 %225, 1
  %257 = trunc i64 %256 to i32
  %258 = icmp eq i32 %182, %257
  br i1 %258, label %218, label %224, !prof !108, !llvm.loop !110

259:                                              ; preds = %221, %288
  %260 = phi i64 [ %222, %221 ], [ %291, %288 ]
  %261 = phi i32 [ %166, %221 ], [ %290, %288 ]
  %262 = phi i32 [ %171, %221 ], [ %289, %288 ]
  %263 = getelementptr inbounds i32, ptr %16, i64 %260
  %264 = load i32, ptr %263, align 4, !tbaa !54
  %265 = load i32, ptr %169, align 4, !tbaa !54
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %288, label %267, !prof !103

267:                                              ; preds = %259
  %268 = icmp slt i32 %264, %138
  %269 = select i1 %135, i1 %268, i1 false, !prof !104
  br i1 %269, label %278, label %270, !prof !105

270:                                              ; preds = %267
  br i1 %135, label %280, label %271, !prof !106

271:                                              ; preds = %270
  %272 = mul nsw i32 %264, %22
  %273 = add nsw i32 %272, %24
  %274 = sext i32 %273 to i64
  %275 = getelementptr double, ptr %219, i64 %274
  %276 = load double, ptr %275, align 8, !tbaa !75
  %277 = fcmp olt double %276, %167
  br i1 %277, label %278, label %280, !prof !107

278:                                              ; preds = %267, %271
  %279 = add nsw i32 %262, 1
  br label %282

280:                                              ; preds = %271, %270
  %281 = add nsw i32 %261, 1
  br label %282

282:                                              ; preds = %278, %280
  %283 = phi i32 [ %281, %280 ], [ %279, %278 ]
  %284 = phi i32 [ %262, %280 ], [ %279, %278 ]
  %285 = phi i32 [ %281, %280 ], [ %261, %278 ]
  %286 = sext i32 %283 to i64
  %287 = getelementptr inbounds i32, ptr %2, i64 %286
  store i32 %264, ptr %287, align 4, !tbaa !54
  br label %288

288:                                              ; preds = %282, %259
  %289 = phi i32 [ %262, %259 ], [ %284, %282 ]
  %290 = phi i32 [ %261, %259 ], [ %285, %282 ]
  %291 = add nsw i64 %260, 1
  %292 = trunc i64 %291 to i32
  %293 = icmp eq i32 %223, %292
  br i1 %293, label %294, label %259, !prof !108, !llvm.loop !111

294:                                              ; preds = %288, %218
  %295 = phi i32 [ %171, %218 ], [ %289, %288 ]
  %296 = phi i32 [ %166, %218 ], [ %290, %288 ]
  %297 = icmp eq i32 %22, 4
  br i1 %297, label %298, label %339, !prof !112

298:                                              ; preds = %294
  %299 = getelementptr double, ptr %10, i64 -1
  %300 = icmp sgt i32 %19, %7
  br i1 %300, label %339, label %301

301:                                              ; preds = %298
  %302 = sext i32 %19 to i64
  %303 = add i32 %7, 1
  br label %304

304:                                              ; preds = %301, %333
  %305 = phi i64 [ %302, %301 ], [ %336, %333 ]
  %306 = phi i32 [ %166, %301 ], [ %335, %333 ]
  %307 = phi i32 [ %171, %301 ], [ %334, %333 ]
  %308 = getelementptr inbounds i32, ptr %17, i64 %305
  %309 = load i32, ptr %308, align 4, !tbaa !54
  %310 = load i32, ptr %169, align 4, !tbaa !54
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %333, label %312

312:                                              ; preds = %304
  %313 = icmp slt i32 %309, %138
  %314 = select i1 %135, i1 %313, i1 false
  br i1 %314, label %323, label %315

315:                                              ; preds = %312
  br i1 %135, label %325, label %316

316:                                              ; preds = %315
  %317 = shl nsw i32 %309, 2
  %318 = add nsw i32 %317, %24
  %319 = sext i32 %318 to i64
  %320 = getelementptr double, ptr %299, i64 %319
  %321 = load double, ptr %320, align 8, !tbaa !75
  %322 = fcmp olt double %321, %167
  br i1 %322, label %323, label %325

323:                                              ; preds = %312, %316
  %324 = add nsw i32 %307, 1
  br label %327

325:                                              ; preds = %316, %315
  %326 = add nsw i32 %306, 1
  br label %327

327:                                              ; preds = %323, %325
  %328 = phi i32 [ %326, %325 ], [ %324, %323 ]
  %329 = phi i32 [ %307, %325 ], [ %324, %323 ]
  %330 = phi i32 [ %326, %325 ], [ %306, %323 ]
  %331 = sext i32 %328 to i64
  %332 = getelementptr inbounds i32, ptr %16, i64 %331
  store i32 %309, ptr %332, align 4, !tbaa !54
  br label %333

333:                                              ; preds = %327, %304
  %334 = phi i32 [ %307, %304 ], [ %329, %327 ]
  %335 = phi i32 [ %306, %304 ], [ %330, %327 ]
  %336 = add nsw i64 %305, 1
  %337 = trunc i64 %336 to i32
  %338 = icmp eq i32 %303, %337
  br i1 %338, label %339, label %304, !llvm.loop !113

339:                                              ; preds = %333, %298, %294
  %340 = phi i32 [ %295, %294 ], [ %171, %298 ], [ %334, %333 ]
  %341 = phi i32 [ %296, %294 ], [ %166, %298 ], [ %335, %333 ]
  %342 = icmp slt i32 %340, %19
  br i1 %342, label %354, label %343, !prof !112

343:                                              ; preds = %339
  %344 = load ptr, ptr %8, align 8, !tbaa !49
  %345 = getelementptr inbounds %struct.kdnode, ptr %344, i64 0, i32 1
  store ptr null, ptr %345, align 8, !tbaa !95
  %346 = load ptr, ptr %8, align 8, !tbaa !49
  %347 = getelementptr inbounds %struct.kdnode, ptr %346, i64 0, i32 2
  store ptr null, ptr %347, align 8, !tbaa !96
  %348 = load ptr, ptr %8, align 8, !tbaa !49
  %349 = getelementptr inbounds %struct.kdnode, ptr %348, i64 1
  store ptr %349, ptr %8, align 8, !tbaa !49
  %350 = getelementptr inbounds %struct.kdnode, ptr %20, i64 0, i32 1
  store ptr %348, ptr %350, align 8, !tbaa !95
  %351 = add nsw i32 %24, 1
  br i1 %297, label %352, label %353, !prof !112

352:                                              ; preds = %343
  tail call fastcc void @buildkdtree(ptr noundef %18, ptr noundef %1, ptr noundef %2, ptr noundef %16, ptr noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef %340, ptr noundef nonnull %8, ptr noundef %348, ptr noundef %10, i32 noundef %351, i32 noundef 4)
  br label %354

353:                                              ; preds = %343
  tail call fastcc void @buildkdtree(ptr noundef %18, ptr noundef %1, ptr noundef %2, ptr noundef %15, ptr noundef %17, ptr noundef %16, i32 noundef %19, i32 noundef %340, ptr noundef nonnull %8, ptr noundef %348, ptr noundef %10, i32 noundef %351, i32 noundef %22)
  br label %354

354:                                              ; preds = %352, %353, %339
  %355 = icmp sgt i32 %341, %166
  br i1 %355, label %356, label %370, !prof !114

356:                                              ; preds = %354
  %357 = load ptr, ptr %8, align 8, !tbaa !49
  %358 = getelementptr inbounds %struct.kdnode, ptr %357, i64 0, i32 1
  store ptr null, ptr %358, align 8, !tbaa !95
  %359 = load ptr, ptr %8, align 8, !tbaa !49
  %360 = getelementptr inbounds %struct.kdnode, ptr %359, i64 0, i32 2
  store ptr null, ptr %360, align 8, !tbaa !96
  %361 = load ptr, ptr %8, align 8, !tbaa !49
  %362 = getelementptr inbounds %struct.kdnode, ptr %361, i64 1
  store ptr %362, ptr %8, align 8, !tbaa !49
  %363 = getelementptr inbounds %struct.kdnode, ptr %20, i64 0, i32 2
  store ptr %361, ptr %363, align 8, !tbaa !96
  %364 = add nsw i32 %166, 1
  %365 = add nsw i32 %24, 1
  %366 = select i1 %297, ptr %16, ptr %15, !prof !112
  %367 = select i1 %297, ptr %15, ptr %17, !prof !112
  %368 = select i1 %297, ptr %17, ptr %16, !prof !112
  %369 = select i1 %297, i32 4, i32 %22, !prof !112
  br label %14

370:                                              ; preds = %104, %118, %60, %354, %26
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @searchkdtree(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, double noundef %8, double noundef %9, i32 noundef %10, ptr noundef %11) unnamed_addr #7 !prof !115 !PGOFuncName !116 {
  br label %13

13:                                               ; preds = %126, %12
  %14 = phi ptr [ %0, %12 ], [ %128, %126 ]
  %15 = phi i32 [ %2, %12 ], [ %129, %126 ]
  %16 = add nsw i32 %10, 1
  %17 = srem i32 %15, %16
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.kdnode, ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !96
  %21 = icmp eq ptr %20, null
  br i1 %18, label %22, label %23, !prof !117

22:                                               ; preds = %13
  br i1 %21, label %44, label %40, !prof !118

23:                                               ; preds = %13
  br i1 %21, label %44, label %24, !prof !119

24:                                               ; preds = %23
  %25 = mul nsw i32 %10, %3
  %26 = add nsw i32 %17, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr double, ptr %1, i64 %27
  %29 = getelementptr double, ptr %28, i64 -1
  %30 = load double, ptr %29, align 8, !tbaa !75
  %31 = fadd double %30, %8
  %32 = load i32, ptr %14, align 8, !tbaa !89
  %33 = mul nsw i32 %32, %10
  %34 = add nsw i32 %33, %17
  %35 = sext i32 %34 to i64
  %36 = getelementptr double, ptr %1, i64 %35
  %37 = getelementptr double, ptr %36, i64 -1
  %38 = load double, ptr %37, align 8, !tbaa !75
  %39 = fcmp ult double %31, %38
  br i1 %39, label %44, label %40, !prof !120

40:                                               ; preds = %24, %22
  %41 = getelementptr inbounds %struct.kdnode, ptr %14, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !96
  %43 = add nsw i32 %17, 1
  tail call fastcc void @searchkdtree(ptr noundef %42, ptr noundef %1, i32 noundef %43, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, double noundef %8, double noundef %9, i32 noundef %10, ptr noundef %11)
  br label %44

44:                                               ; preds = %22, %40, %24, %23
  %45 = load i32, ptr %14, align 8, !tbaa !89
  %46 = icmp eq i32 %45, %3
  br i1 %46, label %104, label %47, !prof !121

47:                                               ; preds = %44
  %48 = sext i32 %3 to i64
  %49 = getelementptr inbounds i32, ptr %11, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !54
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52, !prof !122

52:                                               ; preds = %47
  %53 = sext i32 %45 to i64
  %54 = getelementptr inbounds i32, ptr %11, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %104

57:                                               ; preds = %52, %47
  %58 = mul nsw i32 %10, %3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, ptr %1, i64 %59
  %61 = load double, ptr %60, align 8, !tbaa !75
  %62 = mul nsw i32 %45, %10
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, ptr %1, i64 %63
  %65 = load double, ptr %64, align 8, !tbaa !75
  %66 = fsub double %61, %65
  %67 = getelementptr double, ptr %60, i64 1
  %68 = load double, ptr %67, align 8, !tbaa !75
  %69 = getelementptr double, ptr %64, i64 1
  %70 = load double, ptr %69, align 8, !tbaa !75
  %71 = fsub double %68, %70
  %72 = getelementptr double, ptr %60, i64 2
  %73 = load double, ptr %72, align 8, !tbaa !75
  %74 = getelementptr double, ptr %64, i64 2
  %75 = load double, ptr %74, align 8, !tbaa !75
  %76 = fsub double %73, %75
  %77 = fmul double %71, %71
  %78 = tail call double @llvm.fmuladd.f64(double %66, double %66, double %77)
  %79 = tail call double @llvm.fmuladd.f64(double %76, double %76, double %78)
  %80 = icmp eq i32 %10, 4
  br i1 %80, label %81, label %92, !prof !123

81:                                               ; preds = %57
  %82 = or disjoint i32 %58, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, ptr %1, i64 %83
  %85 = load double, ptr %84, align 8, !tbaa !75
  %86 = or disjoint i32 %62, 3
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, ptr %1, i64 %87
  %89 = load double, ptr %88, align 8, !tbaa !75
  %90 = fsub double %85, %89
  %91 = tail call double @llvm.fmuladd.f64(double %90, double %90, double %79)
  br label %92

92:                                               ; preds = %81, %57
  %93 = phi double [ %91, %81 ], [ %79, %57 ]
  %94 = fcmp olt double %93, %9
  br i1 %94, label %95, label %104, !prof !124

95:                                               ; preds = %92
  %96 = icmp slt i32 %45, %3
  %97 = select i1 %96, ptr %4, ptr %5, !prof !125
  %98 = select i1 %96, ptr %6, ptr %7, !prof !125
  %99 = load i32, ptr %97, align 4, !tbaa !54
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %98, i64 %100
  store i32 %45, ptr %101, align 4, !tbaa !54
  %102 = load i32, ptr %97, align 4, !tbaa !54
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %97, align 4, !tbaa !54
  br label %104

104:                                              ; preds = %95, %92, %52, %44
  %105 = getelementptr inbounds %struct.kdnode, ptr %14, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !95
  %107 = icmp eq ptr %106, null
  br i1 %18, label %108, label %109, !prof !117

108:                                              ; preds = %104
  br i1 %107, label %130, label %126, !prof !126

109:                                              ; preds = %104
  br i1 %107, label %130, label %110, !prof !127

110:                                              ; preds = %109
  %111 = mul nsw i32 %10, %3
  %112 = add nsw i32 %17, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr double, ptr %1, i64 %113
  %115 = getelementptr double, ptr %114, i64 -1
  %116 = load double, ptr %115, align 8, !tbaa !75
  %117 = fsub double %116, %8
  %118 = load i32, ptr %14, align 8, !tbaa !89
  %119 = mul nsw i32 %118, %10
  %120 = add nsw i32 %119, %17
  %121 = sext i32 %120 to i64
  %122 = getelementptr double, ptr %1, i64 %121
  %123 = getelementptr double, ptr %122, i64 -1
  %124 = load double, ptr %123, align 8, !tbaa !75
  %125 = fcmp olt double %117, %124
  br i1 %125, label %126, label %130, !prof !128

126:                                              ; preds = %110, %108
  %127 = getelementptr inbounds %struct.kdnode, ptr %14, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !95
  %129 = add nsw i32 %17, 1
  br label %13

130:                                              ; preds = %108, %110, %109
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @heapsort_pairs(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !129 !PGOFuncName !130 {
  %3 = sdiv i32 %1, 2
  %4 = getelementptr i32, ptr %0, i64 -1
  %5 = getelementptr i32, ptr %0, i64 -1
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %12, !prof !131

7:                                                ; preds = %2
  %8 = getelementptr i32, ptr %0, i64 -1
  %9 = getelementptr i32, ptr %0, i64 -1
  %10 = zext nneg i32 %3 to i64
  %11 = zext nneg i32 %3 to i64
  br label %20

12:                                               ; preds = %51, %2
  %13 = getelementptr i32, ptr %0, i64 -1
  %14 = getelementptr i32, ptr %0, i64 -1
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %96, !prof !131

16:                                               ; preds = %12
  %17 = getelementptr i32, ptr %0, i64 -1
  %18 = getelementptr i32, ptr %0, i64 -1
  %19 = zext nneg i32 %1 to i64
  br label %57

20:                                               ; preds = %7, %51
  %21 = phi i64 [ %10, %7 ], [ %55, %51 ]
  %22 = getelementptr i32, ptr %4, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !54
  %24 = icmp sgt i64 %21, %11
  %25 = trunc i64 %21 to i32
  br i1 %24, label %51, label %26, !prof !132

26:                                               ; preds = %20
  %27 = trunc i64 %21 to i32
  br label %28

28:                                               ; preds = %26, %47
  %29 = phi i32 [ %42, %47 ], [ %27, %26 ]
  %30 = shl nsw i32 %29, 1
  %31 = icmp slt i32 %30, %1
  br i1 %31, label %32, label %41, !prof !133

32:                                               ; preds = %28
  %33 = sext i32 %30 to i64
  %34 = getelementptr i32, ptr %0, i64 %33
  %35 = getelementptr i32, ptr %34, i64 -1
  %36 = load i32, ptr %35, align 4, !tbaa !54
  %37 = load i32, ptr %34, align 4, !tbaa !54
  %38 = icmp slt i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = or disjoint i32 %30, %39
  br label %41

41:                                               ; preds = %32, %28
  %42 = phi i32 [ %30, %28 ], [ %40, %32 ]
  %43 = sext i32 %42 to i64
  %44 = getelementptr i32, ptr %8, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !54
  %46 = icmp slt i32 %23, %45
  br i1 %46, label %47, label %51, !prof !134

47:                                               ; preds = %41
  %48 = sext i32 %29 to i64
  %49 = getelementptr i32, ptr %9, i64 %48
  store i32 %45, ptr %49, align 4, !tbaa !54
  %50 = icmp sgt i32 %42, %3
  br i1 %50, label %51, label %28, !prof !135, !llvm.loop !136

51:                                               ; preds = %41, %47, %20
  %52 = phi i32 [ %25, %20 ], [ %29, %41 ], [ %42, %47 ]
  %53 = sext i32 %52 to i64
  %54 = getelementptr i32, ptr %5, i64 %53
  store i32 %23, ptr %54, align 4, !tbaa !54
  %55 = add nsw i64 %21, -1
  %56 = icmp sgt i64 %21, 1
  br i1 %56, label %20, label %12, !prof !137, !llvm.loop !138

57:                                               ; preds = %16, %91
  %58 = phi i64 [ %19, %16 ], [ %62, %91 ]
  %59 = load i32, ptr %0, align 4, !tbaa !54
  %60 = getelementptr i32, ptr %13, i64 %58
  %61 = load i32, ptr %60, align 4, !tbaa !54
  store i32 %61, ptr %0, align 4, !tbaa !54
  store i32 %59, ptr %60, align 4, !tbaa !54
  %62 = add nsw i64 %58, -1
  %63 = load i32, ptr %0, align 4, !tbaa !54
  %64 = trunc i64 %62 to i32
  %65 = sdiv i32 %64, 2
  %66 = icmp slt i64 %58, 3
  br i1 %66, label %91, label %67, !prof !139

67:                                               ; preds = %57, %87
  %68 = phi i32 [ %82, %87 ], [ 1, %57 ]
  %69 = shl nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = icmp sgt i64 %62, %70
  br i1 %71, label %72, label %81, !prof !140

72:                                               ; preds = %67
  %73 = sext i32 %69 to i64
  %74 = getelementptr i32, ptr %0, i64 %73
  %75 = getelementptr i32, ptr %74, i64 -1
  %76 = load i32, ptr %75, align 4, !tbaa !54
  %77 = load i32, ptr %74, align 4, !tbaa !54
  %78 = icmp slt i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = or disjoint i32 %69, %79
  br label %81

81:                                               ; preds = %72, %67
  %82 = phi i32 [ %69, %67 ], [ %80, %72 ]
  %83 = sext i32 %82 to i64
  %84 = getelementptr i32, ptr %17, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !54
  %86 = icmp slt i32 %63, %85
  br i1 %86, label %87, label %91, !prof !141

87:                                               ; preds = %81
  %88 = sext i32 %68 to i64
  %89 = getelementptr i32, ptr %18, i64 %88
  store i32 %85, ptr %89, align 4, !tbaa !54
  %90 = icmp sgt i32 %82, %65
  br i1 %90, label %91, label %67, !prof !142, !llvm.loop !136

91:                                               ; preds = %81, %87, %57
  %92 = phi i32 [ 1, %57 ], [ %68, %81 ], [ %82, %87 ]
  %93 = sext i32 %92 to i64
  %94 = getelementptr i32, ptr %14, i64 %93
  store i32 %63, ptr %94, align 4, !tbaa !54
  %95 = icmp sgt i64 %58, 2
  br i1 %95, label %57, label %96, !prof !143, !llvm.loop !144

96:                                               ; preds = %91, %12
  ret void
}

declare void @free_ivector(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!46}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 71759502456}
!8 = !{!"MaxCount", i64 6437746295}
!9 = !{!"MaxInternalCount", i64 6437746295}
!10 = !{!"MaxFunctionCount", i64 4086992896}
!11 = !{!"NumCounts", i64 3105}
!12 = !{!"NumFunctions", i64 247}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6437746295, i32 1}
!18 = !{i32 100000, i64 6429262894, i32 2}
!19 = !{i32 200000, i64 6273947450, i32 3}
!20 = !{i32 300000, i64 4086992896, i32 5}
!21 = !{i32 400000, i64 4086990118, i32 7}
!22 = !{i32 500000, i64 3500958832, i32 9}
!23 = !{i32 600000, i64 2110410321, i32 10}
!24 = !{i32 700000, i64 2043496448, i32 13}
!25 = !{i32 800000, i64 2030599974, i32 17}
!26 = !{i32 900000, i64 778157900, i32 22}
!27 = !{i32 950000, i64 477845251, i32 29}
!28 = !{i32 990000, i64 428072471, i32 35}
!29 = !{i32 999000, i64 4254510, i32 72}
!30 = !{i32 999900, i64 290502, i32 105}
!31 = !{i32 999990, i64 19030, i32 222}
!32 = !{i32 999999, i64 3606, i32 249}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @nblist, ptr @get_blocksize, i64 26}
!36 = !{ptr @nblist, ptr @malloc, i64 26}
!37 = !{ptr @nblist, ptr @ivector, i64 239898}
!38 = !{ptr @nblist, ptr @heapsort_index, i64 78}
!39 = !{ptr @nblist, ptr @buildkdtree, i64 26}
!40 = !{ptr @nblist, ptr @searchkdtree, i64 494779}
!41 = !{ptr @nblist, ptr @heapsort_pairs, i64 989558}
!42 = !{ptr @nblist, ptr @free_ivector, i64 201839}
!43 = !{ptr @nblist, ptr @free, i64 26}
!44 = !{ptr @buildkdtree, ptr @buildkdtree, i64 425904}
!45 = !{ptr @searchkdtree, ptr @searchkdtree, i64 2109279223}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 26}
!48 = !{!"branch_weights", i32 0, i32 26}
!49 = !{!50, !50, i64 0}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!"branch_weights", i32 207, i32 1}
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !51, i64 0}
!56 = !{!"branch_weights", i32 0, i32 494780}
!57 = !{!"branch_weights", i32 207, i32 3958033}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!"branch_weights", i32 38060, i32 456720}
!62 = !{!"branch_weights", i32 38060, i32 0}
!63 = !{!"branch_weights", i32 0, i32 456720}
!64 = !{!"branch_weights", i32 201657, i32 255063}
!65 = !{!"branch_weights", i32 0, i32 255063}
!66 = !{!"branch_weights", i32 494779, i32 1}
!67 = !{!"branch_weights", i32 427825414, i32 494779}
!68 = distinct !{!68, !59, !60}
!69 = distinct !{!69, !59, !60}
!70 = distinct !{!70, !59, !60}
!71 = !{!"function_entry_count", i64 78}
!72 = !{!"nblist.c;heapsort_index"}
!73 = !{!"branch_weights", i32 155, i32 1}
!74 = !{!"branch_weights", i32 1, i32 1782680}
!75 = !{!76, !76, i64 0}
!76 = !{!"double", !51, i64 0}
!77 = !{!"branch_weights", i32 18768303, i32 1142}
!78 = !{!"branch_weights", i32 9072759, i32 9695544}
!79 = !{!"branch_weights", i32 18325694, i32 443751}
!80 = !{!"branch_weights", i32 1782680, i32 16986765}
!81 = distinct !{!81, !59, !60}
!82 = !{!"branch_weights", i32 1484185, i32 155}
!83 = distinct !{!83, !59, !60}
!84 = !{!"branch_weights", i32 2968369, i32 155}
!85 = distinct !{!85, !59, !60}
!86 = !{!"function_entry_count", i64 425956}
!87 = !{!"nblist.c;buildkdtree"}
!88 = !{!"branch_weights", i32 144167, i32 281789}
!89 = !{!90, !55, i64 0}
!90 = !{!"kdnode", !55, i64 0, !50, i64 8, !50, i64 16}
!91 = !{!"branch_weights", i32 68824, i32 212965}
!92 = !{!"branch_weights", i32 1, i32 68823}
!93 = !{!"branch_weights", i32 1, i32 0}
!94 = !{!"branch_weights", i32 68819, i32 4}
!95 = !{!90, !50, i64 8}
!96 = !{!90, !50, i64 16}
!97 = !{!"branch_weights", i32 0, i32 4}
!98 = !{!"branch_weights", i32 113593, i32 99372}
!99 = !{!"branch_weights", i32 99380, i32 0}
!100 = !{!"branch_weights", i32 99372, i32 8}
!101 = distinct !{!101, !59, !60}
!102 = !{!"branch_weights", i32 1, i32 212964}
!103 = !{!"branch_weights", i32 212965, i32 6006545}
!104 = !{!"branch_weights", i32 1752035, i32 4254510}
!105 = !{!"branch_weights", i32 840348, i32 5166197}
!106 = !{!"branch_weights", i32 911687, i32 4254510}
!107 = !{!"branch_weights", i32 2093022, i32 2161488}
!108 = !{!"branch_weights", i32 212964, i32 6006546}
!109 = distinct !{!109, !59, !60}
!110 = distinct !{!110, !59, !60}
!111 = distinct !{!111, !59, !60}
!112 = !{!"branch_weights", i32 0, i32 212965}
!113 = distinct !{!113, !59, !60}
!114 = !{!"branch_weights", i32 212965, i32 0}
!115 = !{!"function_entry_count", i64 2110410321}
!116 = !{!"nblist.c;searchkdtree"}
!117 = !{!"branch_weights", i32 477845251, i32 1632565070}
!118 = !{!"branch_weights", i32 3695, i32 477841556}
!119 = !{!"branch_weights", i32 1137036137, i32 495528933}
!120 = !{!"branch_weights", i32 50702132, i32 444826801}
!121 = !{!"branch_weights", i32 494780, i32 2109915541}
!122 = !{!"branch_weights", i32 2109915541, i32 0}
!123 = !{!"branch_weights", i32 0, i32 2109915541}
!124 = !{!"branch_weights", i32 856640386, i32 1253275155}
!125 = !{!"branch_weights", i32 428320193, i32 428320193}
!126 = !{!"branch_weights", i32 0, i32 477845251}
!127 = !{!"branch_weights", i32 854407170, i32 778157900}
!128 = !{!"branch_weights", i32 709401933, i32 68755967}
!129 = !{!"function_entry_count", i64 989560}
!130 = !{!"nblist.c;heapsort_pairs"}
!131 = !{!"branch_weights", i32 989559, i32 1}
!132 = !{!"branch_weights", i32 1, i32 157619820}
!133 = !{!"branch_weights", i32 710889645, i32 770174}
!134 = !{!"branch_weights", i32 441207169, i32 270452650}
!135 = !{!"branch_weights", i32 157619820, i32 554039999}
!136 = distinct !{!136, !59, !60}
!137 = !{!"branch_weights", i32 427082912, i32 989559}
!138 = distinct !{!138, !59, !60}
!139 = !{!"branch_weights", i32 1, i32 345926028}
!140 = !{!"branch_weights", i32 -1080335849, i32 4241700}
!141 = !{!"branch_weights", i32 -1157993571, i32 81899422}
!142 = !{!"branch_weights", i32 345926028, i32 -1422020177}
!143 = !{!"branch_weights", i32 854661345, i32 989559}
!144 = distinct !{!144, !59, !60}
