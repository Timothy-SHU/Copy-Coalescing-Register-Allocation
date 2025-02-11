; ModuleID = 'nblist.c'
source_filename = "nblist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.kdnode = type { i32, ptr, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [40 x i8] c"Error allocate kdnode array in nbtree!\0A\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer, align 8
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @nblist(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  store ptr %0, ptr %11, align 8, !tbaa !6
  store ptr %1, ptr %12, align 8, !tbaa !6
  store ptr %2, ptr %13, align 8, !tbaa !6
  store ptr %3, ptr %14, align 8, !tbaa !6
  store double %6, ptr %15, align 8, !tbaa !10
  store i32 %7, ptr %16, align 4, !tbaa !12
  store i32 %8, ptr %17, align 4, !tbaa !12
  store ptr %9, ptr %18, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #11
  %24 = fmul double %6, %6
  store double %24, ptr %21, align 8, !tbaa !10
  %25 = tail call i32 @get_blocksize() #17
  store i32 %25, ptr %20, align 4, !tbaa !12
  %26 = sext i32 %7 to i64
  %27 = mul nsw i64 %26, 24
  %28 = tail call noalias ptr @malloc(i64 noundef %27) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %10
  %31 = load ptr, ptr @stderr, align 8, !tbaa !6
  %32 = tail call i64 @fwrite(ptr nonnull @.str, i64 39, i64 1, ptr %31) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

33:                                               ; preds = %10
  %34 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #17
  %35 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #17
  %36 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #17
  %37 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #17
  %38 = icmp eq i32 %8, 4
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #17
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi ptr [ %40, %39 ], [ null, %33 ]
  %43 = tail call ptr @ivector(i32 noundef 0, i32 noundef %7) #17
  %44 = icmp sgt i32 %7, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %41, %53
  %46 = phi i64 [ %55, %53 ], [ 0, %41 ]
  %47 = getelementptr inbounds i32, ptr %36, i64 %46
  %48 = trunc i64 %46 to i32
  store i32 %48, ptr %47, align 4, !tbaa !12
  %49 = getelementptr inbounds i32, ptr %35, i64 %46
  store i32 %48, ptr %49, align 4, !tbaa !12
  %50 = getelementptr inbounds i32, ptr %34, i64 %46
  store i32 %48, ptr %50, align 4, !tbaa !12
  br i1 %38, label %51, label %53

51:                                               ; preds = %45
  %52 = getelementptr inbounds i32, ptr %42, i64 %46
  store i32 %48, ptr %52, align 4, !tbaa !12
  br label %53

53:                                               ; preds = %51, %45
  %54 = getelementptr inbounds i32, ptr %43, i64 %46
  store i32 %48, ptr %54, align 4, !tbaa !12
  %55 = add nuw nsw i64 %46, 1
  %56 = icmp slt i64 %55, %26
  br i1 %56, label %45, label %57, !llvm.loop !14

57:                                               ; preds = %53, %41
  tail call fastcc void @heapsort_index(ptr noundef %34, i32 noundef %7, ptr noundef %3, i32 noundef 0, i32 noundef %8) #21
  tail call fastcc void @heapsort_index(ptr noundef %35, i32 noundef %7, ptr noundef %3, i32 noundef 1, i32 noundef %8) #21
  tail call fastcc void @heapsort_index(ptr noundef %36, i32 noundef %7, ptr noundef %3, i32 noundef 2, i32 noundef %8) #21
  br i1 %38, label %58, label %59

58:                                               ; preds = %57
  tail call fastcc void @heapsort_index(ptr noundef %42, i32 noundef %7, ptr noundef %3, i32 noundef 3, i32 noundef 4) #21
  br label %59

59:                                               ; preds = %58, %57
  %60 = getelementptr inbounds %struct.kdnode, ptr %28, i64 1
  store ptr %60, ptr %22, align 8, !tbaa !6
  store ptr %28, ptr %23, align 8, !tbaa !6
  %61 = getelementptr inbounds %struct.kdnode, ptr %28, i64 0, i32 1
  %62 = add nsw i32 %7, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %61, i8 0, i64 16, i1 false)
  call fastcc void @buildkdtree(ptr noundef %43, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %42, ptr noundef %37, i32 noundef 0, i32 noundef %62, ptr noundef nonnull %22, ptr noundef nonnull %28, ptr noundef %3, i32 noundef 0, i32 noundef %8) #21
  store i32 0, ptr %19, align 4, !tbaa !12
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @nblist.omp_outlined, ptr nonnull %16, ptr nonnull %20, ptr nonnull %23, ptr nonnull %14, ptr nonnull %15, ptr nonnull %21, ptr nonnull %17, ptr nonnull %18, ptr nonnull %13, ptr nonnull %11, ptr nonnull %12, ptr nonnull %19)
  call void @free(ptr noundef %28) #17
  %63 = load i32, ptr %16, align 4, !tbaa !12
  call void @free_ivector(ptr noundef %34, i32 noundef 0, i32 noundef %63) #17
  %64 = load i32, ptr %16, align 4, !tbaa !12
  call void @free_ivector(ptr noundef %35, i32 noundef 0, i32 noundef %64) #17
  %65 = load i32, ptr %16, align 4, !tbaa !12
  call void @free_ivector(ptr noundef %36, i32 noundef 0, i32 noundef %65) #17
  %66 = load i32, ptr %16, align 4, !tbaa !12
  call void @free_ivector(ptr noundef %37, i32 noundef 0, i32 noundef %66) #17
  %67 = load i32, ptr %17, align 4, !tbaa !12
  %68 = icmp eq i32 %67, 4
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, ptr %16, align 4, !tbaa !12
  call void @free_ivector(ptr noundef %42, i32 noundef 0, i32 noundef %70) #17
  br label %71

71:                                               ; preds = %69, %59
  %72 = load i32, ptr %16, align 4, !tbaa !12
  call void @free_ivector(ptr noundef %43, i32 noundef 0, i32 noundef %72) #17
  %73 = load i32, ptr %19, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #11
  ret i32 %73
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
define internal fastcc void @heapsort_index(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 {
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %25

7:                                                ; preds = %5
  %8 = lshr i32 %1, 1
  br label %13

9:                                                ; preds = %13
  %10 = getelementptr i32, ptr %0, i64 -1
  br i1 %6, label %11, label %25

11:                                               ; preds = %9
  %12 = zext nneg i32 %1 to i64
  br label %17

13:                                               ; preds = %7, %13
  %14 = phi i32 [ %15, %13 ], [ %8, %7 ]
  tail call fastcc void @downheap_index(ptr noundef %0, i32 noundef %1, i32 noundef %14, ptr noundef %2, i32 noundef %3, i32 noundef %4) #21
  %15 = add nsw i32 %14, -1
  %16 = icmp ugt i32 %14, 1
  br i1 %16, label %13, label %9, !llvm.loop !16

17:                                               ; preds = %11, %17
  %18 = phi i64 [ %12, %11 ], [ %22, %17 ]
  %19 = load i32, ptr %0, align 4, !tbaa !12
  %20 = getelementptr i32, ptr %10, i64 %18
  %21 = load i32, ptr %20, align 4, !tbaa !12
  store i32 %21, ptr %0, align 4, !tbaa !12
  store i32 %19, ptr %20, align 4, !tbaa !12
  %22 = add nsw i64 %18, -1
  %23 = trunc i64 %22 to i32
  tail call fastcc void @downheap_index(ptr noundef nonnull %0, i32 noundef %23, i32 noundef 1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #21
  %24 = icmp ugt i64 %18, 2
  br i1 %24, label %17, label %25, !llvm.loop !17

25:                                               ; preds = %17, %5, %9
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @buildkdtree(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr nocapture noundef writeonly %9, ptr noundef %10, i32 noundef %11, i32 noundef %12) unnamed_addr #6 {
  %14 = getelementptr double, ptr %10, i64 -1
  %15 = icmp eq i32 %7, %6
  br i1 %15, label %29, label %16

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
  %34 = load i32, ptr %33, align 4, !tbaa !12
  store i32 %34, ptr %31, align 8, !tbaa !18
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
  br i1 %44, label %45, label %109

45:                                               ; preds = %35
  %46 = icmp eq i32 %36, 0
  %47 = sext i32 %39 to i64
  %48 = getelementptr inbounds i32, ptr %42, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !12
  br i1 %46, label %50, label %55

50:                                               ; preds = %45
  %51 = sext i32 %7 to i64
  %52 = getelementptr inbounds i32, ptr %42, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !12
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %72, label %83

55:                                               ; preds = %45
  %56 = mul nsw i32 %49, %37
  %57 = add nsw i32 %56, %36
  %58 = sext i32 %57 to i64
  %59 = getelementptr double, ptr %10, i64 %58
  %60 = getelementptr double, ptr %59, i64 -1
  %61 = load double, ptr %60, align 8, !tbaa !10
  %62 = sext i32 %7 to i64
  %63 = getelementptr inbounds i32, ptr %42, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !12
  %65 = mul nsw i32 %64, %37
  %66 = add nsw i32 %65, %36
  %67 = sext i32 %66 to i64
  %68 = getelementptr double, ptr %10, i64 %67
  %69 = getelementptr double, ptr %68, i64 -1
  %70 = load double, ptr %69, align 8, !tbaa !10
  %71 = fcmp olt double %61, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %55, %50
  %73 = phi i32 [ %64, %55 ], [ %53, %50 ]
  store i32 %73, ptr %38, align 8, !tbaa !18
  %74 = getelementptr inbounds i32, ptr %42, i64 %47
  %75 = load i32, ptr %74, align 4, !tbaa !12
  %76 = load ptr, ptr %8, align 8, !tbaa !6
  store i32 %75, ptr %76, align 8, !tbaa !18
  %77 = getelementptr inbounds %struct.kdnode, ptr %76, i64 0, i32 1
  store ptr null, ptr %77, align 8, !tbaa !20
  %78 = load ptr, ptr %8, align 8, !tbaa !6
  %79 = getelementptr inbounds %struct.kdnode, ptr %78, i64 0, i32 2
  store ptr null, ptr %79, align 8, !tbaa !21
  %80 = load ptr, ptr %8, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct.kdnode, ptr %80, i64 1
  store ptr %81, ptr %8, align 8, !tbaa !6
  %82 = getelementptr inbounds %struct.kdnode, ptr %38, i64 0, i32 1
  store ptr %80, ptr %82, align 8, !tbaa !20
  br label %341

83:                                               ; preds = %50
  %84 = icmp sgt i32 %49, %53
  br i1 %84, label %87, label %98

85:                                               ; preds = %55
  %86 = fcmp ogt double %61, %70
  br i1 %86, label %87, label %98

87:                                               ; preds = %85, %83
  %88 = phi i64 [ %62, %85 ], [ %51, %83 ]
  store i32 %49, ptr %38, align 8, !tbaa !18
  %89 = getelementptr inbounds i32, ptr %42, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !12
  %91 = load ptr, ptr %8, align 8, !tbaa !6
  store i32 %90, ptr %91, align 8, !tbaa !18
  %92 = getelementptr inbounds %struct.kdnode, ptr %91, i64 0, i32 1
  store ptr null, ptr %92, align 8, !tbaa !20
  %93 = load ptr, ptr %8, align 8, !tbaa !6
  %94 = getelementptr inbounds %struct.kdnode, ptr %93, i64 0, i32 2
  store ptr null, ptr %94, align 8, !tbaa !21
  %95 = load ptr, ptr %8, align 8, !tbaa !6
  %96 = getelementptr inbounds %struct.kdnode, ptr %95, i64 1
  store ptr %96, ptr %8, align 8, !tbaa !6
  %97 = getelementptr inbounds %struct.kdnode, ptr %38, i64 0, i32 1
  store ptr %95, ptr %97, align 8, !tbaa !20
  br label %341

98:                                               ; preds = %83, %85
  %99 = phi i64 [ %51, %83 ], [ %62, %85 ]
  store i32 %49, ptr %38, align 8, !tbaa !18
  %100 = getelementptr inbounds i32, ptr %42, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !12
  %102 = load ptr, ptr %8, align 8, !tbaa !6
  store i32 %101, ptr %102, align 8, !tbaa !18
  %103 = getelementptr inbounds %struct.kdnode, ptr %102, i64 0, i32 1
  store ptr null, ptr %103, align 8, !tbaa !20
  %104 = load ptr, ptr %8, align 8, !tbaa !6
  %105 = getelementptr inbounds %struct.kdnode, ptr %104, i64 0, i32 2
  store ptr null, ptr %105, align 8, !tbaa !21
  %106 = load ptr, ptr %8, align 8, !tbaa !6
  %107 = getelementptr inbounds %struct.kdnode, ptr %106, i64 1
  store ptr %107, ptr %8, align 8, !tbaa !6
  %108 = getelementptr inbounds %struct.kdnode, ptr %38, i64 0, i32 2
  store ptr %106, ptr %108, align 8, !tbaa !21
  br label %341

109:                                              ; preds = %35
  %110 = add nsw i32 %39, %7
  %111 = sdiv i32 %110, 2
  %112 = icmp eq i32 %36, 0
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, ptr %42, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !12
  br i1 %112, label %144, label %116

116:                                              ; preds = %109
  %117 = mul nsw i32 %115, %37
  %118 = add nsw i32 %117, %36
  %119 = sext i32 %118 to i64
  %120 = getelementptr double, ptr %14, i64 %119
  %121 = load double, ptr %120, align 8, !tbaa !10
  %122 = sext i32 %39 to i64
  %123 = tail call i32 @llvm.smin.i32(i32 %39, i32 %111)
  br label %124

124:                                              ; preds = %127, %116
  %125 = phi i64 [ %128, %127 ], [ %113, %116 ]
  %126 = icmp sgt i64 %125, %122
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = add nsw i64 %125, -1
  %129 = getelementptr inbounds i32, ptr %42, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !12
  %131 = mul nsw i32 %130, %37
  %132 = add nsw i32 %131, %36
  %133 = sext i32 %132 to i64
  %134 = getelementptr double, ptr %14, i64 %133
  %135 = load double, ptr %134, align 8, !tbaa !10
  %136 = fcmp olt double %135, %121
  br i1 %136, label %137, label %124, !llvm.loop !22

137:                                              ; preds = %127
  %138 = trunc i64 %125 to i32
  br label %139

139:                                              ; preds = %124, %137
  %140 = phi i32 [ %138, %137 ], [ %123, %124 ]
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, ptr %42, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !12
  br label %144

144:                                              ; preds = %109, %139
  %145 = phi i32 [ %143, %139 ], [ %115, %109 ]
  %146 = phi i64 [ %141, %139 ], [ %113, %109 ]
  %147 = phi i32 [ %140, %139 ], [ %111, %109 ]
  %148 = phi double [ %121, %139 ], [ 0.000000e+00, %109 ]
  %149 = getelementptr inbounds i32, ptr %42, i64 %146
  store i32 %145, ptr %38, align 8, !tbaa !18
  %150 = add nsw i32 %39, -1
  %151 = icmp sgt i32 %39, %7
  br i1 %151, label %265, label %152

152:                                              ; preds = %144
  %153 = sext i32 %39 to i64
  br label %157

154:                                              ; preds = %186
  br i1 %151, label %265, label %155

155:                                              ; preds = %154
  %156 = sext i32 %39 to i64
  br label %195

157:                                              ; preds = %152, %186
  %158 = phi i64 [ %153, %152 ], [ %189, %186 ]
  %159 = phi i32 [ %147, %152 ], [ %188, %186 ]
  %160 = phi i32 [ %150, %152 ], [ %187, %186 ]
  %161 = getelementptr inbounds i32, ptr %1, i64 %158
  %162 = load i32, ptr %161, align 4, !tbaa !12
  %163 = load i32, ptr %149, align 4, !tbaa !12
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %186, label %165

165:                                              ; preds = %157
  %166 = icmp slt i32 %162, %115
  %167 = select i1 %112, i1 %166, i1 false
  br i1 %167, label %176, label %168

168:                                              ; preds = %165
  br i1 %112, label %178, label %169

169:                                              ; preds = %168
  %170 = mul nsw i32 %162, %37
  %171 = add nsw i32 %170, %36
  %172 = sext i32 %171 to i64
  %173 = getelementptr double, ptr %14, i64 %172
  %174 = load double, ptr %173, align 8, !tbaa !10
  %175 = fcmp olt double %174, %148
  br i1 %175, label %176, label %178

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
  store i32 %162, ptr %185, align 4, !tbaa !12
  br label %186

186:                                              ; preds = %180, %157
  %187 = phi i32 [ %160, %157 ], [ %182, %180 ]
  %188 = phi i32 [ %159, %157 ], [ %183, %180 ]
  %189 = add nsw i64 %158, 1
  %190 = trunc i64 %189 to i32
  %191 = icmp eq i32 %19, %190
  br i1 %191, label %154, label %157, !llvm.loop !23

192:                                              ; preds = %224
  br i1 %151, label %265, label %193

193:                                              ; preds = %192
  %194 = sext i32 %39 to i64
  br label %230

195:                                              ; preds = %155, %224
  %196 = phi i64 [ %156, %155 ], [ %227, %224 ]
  %197 = phi i32 [ %147, %155 ], [ %226, %224 ]
  %198 = phi i32 [ %150, %155 ], [ %225, %224 ]
  %199 = getelementptr inbounds i32, ptr %2, i64 %196
  %200 = load i32, ptr %199, align 4, !tbaa !12
  %201 = load i32, ptr %149, align 4, !tbaa !12
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %224, label %203

203:                                              ; preds = %195
  %204 = icmp slt i32 %200, %115
  %205 = select i1 %112, i1 %204, i1 false
  br i1 %205, label %214, label %206

206:                                              ; preds = %203
  br i1 %112, label %216, label %207

207:                                              ; preds = %206
  %208 = mul nsw i32 %200, %37
  %209 = add nsw i32 %208, %36
  %210 = sext i32 %209 to i64
  %211 = getelementptr double, ptr %14, i64 %210
  %212 = load double, ptr %211, align 8, !tbaa !10
  %213 = fcmp olt double %212, %148
  br i1 %213, label %214, label %216

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
  store i32 %200, ptr %223, align 4, !tbaa !12
  br label %224

224:                                              ; preds = %218, %195
  %225 = phi i32 [ %198, %195 ], [ %220, %218 ]
  %226 = phi i32 [ %197, %195 ], [ %221, %218 ]
  %227 = add nsw i64 %196, 1
  %228 = trunc i64 %227 to i32
  %229 = icmp eq i32 %19, %228
  br i1 %229, label %192, label %195, !llvm.loop !24

230:                                              ; preds = %193, %259
  %231 = phi i64 [ %194, %193 ], [ %262, %259 ]
  %232 = phi i32 [ %147, %193 ], [ %261, %259 ]
  %233 = phi i32 [ %150, %193 ], [ %260, %259 ]
  %234 = getelementptr inbounds i32, ptr %27, i64 %231
  %235 = load i32, ptr %234, align 4, !tbaa !12
  %236 = load i32, ptr %149, align 4, !tbaa !12
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %259, label %238

238:                                              ; preds = %230
  %239 = icmp slt i32 %235, %115
  %240 = select i1 %112, i1 %239, i1 false
  br i1 %240, label %249, label %241

241:                                              ; preds = %238
  br i1 %112, label %251, label %242

242:                                              ; preds = %241
  %243 = mul nsw i32 %235, %37
  %244 = add nsw i32 %243, %36
  %245 = sext i32 %244 to i64
  %246 = getelementptr double, ptr %14, i64 %245
  %247 = load double, ptr %246, align 8, !tbaa !10
  %248 = fcmp olt double %247, %148
  br i1 %248, label %249, label %251

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
  store i32 %235, ptr %258, align 4, !tbaa !12
  br label %259

259:                                              ; preds = %253, %230
  %260 = phi i32 [ %233, %230 ], [ %255, %253 ]
  %261 = phi i32 [ %232, %230 ], [ %256, %253 ]
  %262 = add nsw i64 %231, 1
  %263 = trunc i64 %262 to i32
  %264 = icmp eq i32 %19, %263
  br i1 %264, label %265, label %230, !llvm.loop !25

265:                                              ; preds = %259, %144, %154, %192
  %266 = phi i32 [ %150, %192 ], [ %150, %154 ], [ %150, %144 ], [ %260, %259 ]
  %267 = phi i32 [ %147, %192 ], [ %147, %154 ], [ %147, %144 ], [ %261, %259 ]
  %268 = icmp eq i32 %37, 4
  br i1 %268, label %269, label %307

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
  %277 = load i32, ptr %276, align 4, !tbaa !12
  %278 = load i32, ptr %149, align 4, !tbaa !12
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
  %289 = load double, ptr %288, align 8, !tbaa !10
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
  store i32 %277, ptr %300, align 4, !tbaa !12
  br label %301

301:                                              ; preds = %295, %272
  %302 = phi i32 [ %275, %272 ], [ %297, %295 ]
  %303 = phi i32 [ %274, %272 ], [ %298, %295 ]
  %304 = add nsw i64 %273, 1
  %305 = trunc i64 %304 to i32
  %306 = icmp eq i32 %19, %305
  br i1 %306, label %307, label %272, !llvm.loop !26

307:                                              ; preds = %301, %265
  %308 = phi i32 [ %266, %265 ], [ %302, %301 ]
  %309 = phi i32 [ %267, %265 ], [ %303, %301 ]
  %310 = icmp slt i32 %308, %39
  br i1 %310, label %322, label %311

311:                                              ; preds = %307
  %312 = load ptr, ptr %8, align 8, !tbaa !6
  %313 = getelementptr inbounds %struct.kdnode, ptr %312, i64 0, i32 1
  store ptr null, ptr %313, align 8, !tbaa !20
  %314 = load ptr, ptr %8, align 8, !tbaa !6
  %315 = getelementptr inbounds %struct.kdnode, ptr %314, i64 0, i32 2
  store ptr null, ptr %315, align 8, !tbaa !21
  %316 = load ptr, ptr %8, align 8, !tbaa !6
  %317 = getelementptr inbounds %struct.kdnode, ptr %316, i64 1
  store ptr %317, ptr %8, align 8, !tbaa !6
  %318 = getelementptr inbounds %struct.kdnode, ptr %38, i64 0, i32 1
  store ptr %316, ptr %318, align 8, !tbaa !20
  %319 = add nsw i32 %36, 1
  br i1 %268, label %320, label %321

320:                                              ; preds = %311
  tail call fastcc void @buildkdtree(ptr noundef %40, ptr noundef %1, ptr noundef %2, ptr noundef %27, ptr noundef nonnull %42, ptr noundef %41, i32 noundef %39, i32 noundef %308, ptr noundef nonnull %8, ptr noundef %316, ptr noundef %10, i32 noundef %319, i32 noundef 4) #21
  br label %322

321:                                              ; preds = %311
  tail call fastcc void @buildkdtree(ptr noundef %40, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %42, ptr noundef %41, ptr noundef %27, i32 noundef %39, i32 noundef %308, ptr noundef nonnull %8, ptr noundef %316, ptr noundef %10, i32 noundef %319, i32 noundef %37) #21
  br label %322

322:                                              ; preds = %320, %321, %307
  %323 = icmp sgt i32 %309, %147
  br i1 %323, label %324, label %341

324:                                              ; preds = %322
  %325 = load ptr, ptr %8, align 8, !tbaa !6
  %326 = getelementptr inbounds %struct.kdnode, ptr %325, i64 0, i32 1
  store ptr null, ptr %326, align 8, !tbaa !20
  %327 = load ptr, ptr %8, align 8, !tbaa !6
  %328 = getelementptr inbounds %struct.kdnode, ptr %327, i64 0, i32 2
  store ptr null, ptr %328, align 8, !tbaa !21
  %329 = load ptr, ptr %8, align 8, !tbaa !6
  %330 = getelementptr inbounds %struct.kdnode, ptr %329, i64 1
  store ptr %330, ptr %8, align 8, !tbaa !6
  %331 = getelementptr inbounds %struct.kdnode, ptr %38, i64 0, i32 2
  store ptr %329, ptr %331, align 8, !tbaa !21
  %332 = add nsw i32 %147, 1
  %333 = add nsw i32 %36, 1
  br i1 %268, label %334, label %337

334:                                              ; preds = %324
  %335 = srem i32 %333, 5
  %336 = icmp eq i32 %332, %7
  br i1 %336, label %29, label %35

337:                                              ; preds = %324
  %338 = add nsw i32 %37, 1
  %339 = srem i32 %333, %338
  %340 = icmp eq i32 %332, %7
  br i1 %340, label %29, label %20

341:                                              ; preds = %269, %322, %87, %98, %72, %29
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @nblist.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %2, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %12, ptr nocapture noundef nonnull align 4 dereferenceable(4) %13) #7 {
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [1 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #11
  store i32 0, ptr %17, align 4, !tbaa !12
  %19 = tail call i32 @omp_get_thread_num() #21
  %20 = tail call i32 @omp_get_num_threads() #21
  %21 = load i32, ptr %2, align 4, !tbaa !12
  %22 = tail call ptr @ivector(i32 noundef 0, i32 noundef %21) #17
  %23 = load i32, ptr %2, align 4, !tbaa !12
  %24 = tail call ptr @ivector(i32 noundef 0, i32 noundef %23) #17
  %25 = load i32, ptr %2, align 4, !tbaa !12
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %111

27:                                               ; preds = %14, %105
  %28 = phi i32 [ %106, %105 ], [ 0, %14 ]
  %29 = phi i64 [ %107, %105 ], [ 0, %14 ]
  %30 = load i32, ptr %3, align 4, !tbaa !12
  %31 = trunc i64 %29 to i32
  %32 = tail call i32 @myroc(i32 noundef %31, i32 noundef %30, i32 noundef %20, i32 noundef %19) #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %105, label %34

34:                                               ; preds = %27
  store i32 0, ptr %16, align 4, !tbaa !12
  store i32 0, ptr %15, align 4, !tbaa !12
  %35 = load ptr, ptr %4, align 8, !tbaa !6
  %36 = load ptr, ptr %5, align 8, !tbaa !6
  %37 = load double, ptr %6, align 8, !tbaa !10
  %38 = load double, ptr %7, align 8, !tbaa !10
  %39 = load i32, ptr %8, align 4, !tbaa !12
  %40 = load ptr, ptr %9, align 8, !tbaa !6
  call fastcc void @searchkdtree(ptr noundef %35, ptr noundef %36, i32 noundef 0, i32 noundef %31, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef %22, ptr noundef %24, double noundef %37, double noundef %38, i32 noundef %39, ptr noundef %40) #21
  %41 = load i32, ptr %15, align 4, !tbaa !12
  tail call fastcc void @heapsort_pairs(ptr noundef %22, i32 noundef %41) #21
  %42 = load i32, ptr %16, align 4, !tbaa !12
  tail call fastcc void @heapsort_pairs(ptr noundef %24, i32 noundef %42) #21
  %43 = load ptr, ptr %10, align 8, !tbaa !6
  %44 = getelementptr inbounds ptr, ptr %43, i64 %29
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = icmp eq ptr %45, null
  %47 = add nsw i32 %42, %41
  br i1 %46, label %48, label %50

48:                                               ; preds = %34
  %49 = icmp sgt i32 %47, 0
  br i1 %49, label %64, label %68

50:                                               ; preds = %34
  %51 = load ptr, ptr %11, align 8, !tbaa !6
  %52 = getelementptr inbounds i32, ptr %51, i64 %29
  %53 = load i32, ptr %52, align 4, !tbaa !12
  %54 = load ptr, ptr %12, align 8, !tbaa !6
  %55 = getelementptr inbounds i32, ptr %54, i64 %29
  %56 = load i32, ptr %55, align 4, !tbaa !12
  %57 = add nsw i32 %56, %53
  %58 = icmp sgt i32 %47, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %50
  %60 = shl nsw i32 %47, 2
  %61 = mul nsw i32 %57, 3
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59, %50
  tail call void @free_ivector(ptr noundef nonnull %45, i32 noundef 0, i32 noundef %57) #17
  br label %64

64:                                               ; preds = %48, %63
  %65 = tail call ptr @ivector(i32 noundef 0, i32 noundef %47) #17
  %66 = load ptr, ptr %10, align 8, !tbaa !6
  %67 = getelementptr inbounds ptr, ptr %66, i64 %29
  store ptr %65, ptr %67, align 8, !tbaa !6
  br label %68

68:                                               ; preds = %64, %48, %59
  %69 = load ptr, ptr %11, align 8, !tbaa !6
  %70 = getelementptr inbounds i32, ptr %69, i64 %29
  store i32 %41, ptr %70, align 4, !tbaa !12
  %71 = load ptr, ptr %12, align 8, !tbaa !6
  %72 = getelementptr inbounds i32, ptr %71, i64 %29
  store i32 %42, ptr %72, align 4, !tbaa !12
  %73 = icmp sgt i32 %41, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load ptr, ptr %10, align 8, !tbaa !6
  %76 = getelementptr inbounds ptr, ptr %75, i64 %29
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = zext nneg i32 %41 to i64
  br label %88

79:                                               ; preds = %88, %68
  %80 = icmp sgt i32 %42, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %79
  %82 = load ptr, ptr %10, align 8, !tbaa !6
  %83 = getelementptr inbounds ptr, ptr %82, i64 %29
  %84 = load ptr, ptr %83, align 8, !tbaa !6
  %85 = sext i32 %41 to i64
  %86 = zext nneg i32 %42 to i64
  %87 = getelementptr i32, ptr %84, i64 %85
  br label %95

88:                                               ; preds = %74, %88
  %89 = phi i64 [ 0, %74 ], [ %93, %88 ]
  %90 = getelementptr inbounds i32, ptr %22, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !12
  %92 = getelementptr inbounds i32, ptr %77, i64 %89
  store i32 %91, ptr %92, align 4, !tbaa !12
  %93 = add nuw nsw i64 %89, 1
  %94 = icmp eq i64 %93, %78
  br i1 %94, label %79, label %88, !llvm.loop !27

95:                                               ; preds = %81, %95
  %96 = phi i64 [ 0, %81 ], [ %100, %95 ]
  %97 = getelementptr inbounds i32, ptr %24, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !12
  %99 = getelementptr i32, ptr %87, i64 %96
  store i32 %98, ptr %99, align 4, !tbaa !12
  %100 = add nuw nsw i64 %96, 1
  %101 = icmp eq i64 %100, %86
  br i1 %101, label %102, label %95, !llvm.loop !28

102:                                              ; preds = %95, %79
  %103 = add nsw i32 %42, %41
  %104 = add nsw i32 %103, %28
  store i32 %104, ptr %17, align 4, !tbaa !12
  br label %105

105:                                              ; preds = %27, %102
  %106 = phi i32 [ %28, %27 ], [ %104, %102 ]
  %107 = add nuw nsw i64 %29, 1
  %108 = load i32, ptr %2, align 4, !tbaa !12
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 %107, %109
  br i1 %110, label %27, label %111, !llvm.loop !29

111:                                              ; preds = %105, %14
  %112 = phi i32 [ %25, %14 ], [ %108, %105 ]
  tail call void @free_ivector(ptr noundef %22, i32 noundef 0, i32 noundef %112) #17
  %113 = load i32, ptr %2, align 4, !tbaa !12
  tail call void @free_ivector(ptr noundef %24, i32 noundef 0, i32 noundef %113) #17
  store ptr %17, ptr %18, align 8
  %114 = load i32, ptr %0, align 4, !tbaa !12
  %115 = call i32 @__kmpc_reduce_nowait(ptr nonnull @1, i32 %114, i32 1, i64 8, ptr nonnull %18, ptr nonnull @nblist.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %115, label %123 [
    i32 1, label %116
    i32 2, label %120
  ]

116:                                              ; preds = %111
  %117 = load i32, ptr %13, align 4, !tbaa !12
  %118 = load i32, ptr %17, align 4, !tbaa !12
  %119 = add nsw i32 %118, %117
  store i32 %119, ptr %13, align 4, !tbaa !12
  call void @__kmpc_end_reduce_nowait(ptr nonnull @1, i32 %114, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %123

120:                                              ; preds = %111
  %121 = load i32, ptr %17, align 4, !tbaa !12
  %122 = atomicrmw add ptr %13, i32 %121 monotonic, align 4
  br label %123

123:                                              ; preds = %120, %116, %111
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @omp_get_thread_num() local_unnamed_addr #8

; Function Attrs: nounwind optsize
declare i32 @omp_get_num_threads() local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @myroc(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @searchkdtree(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, double noundef %8, double noundef %9, i32 noundef %10, ptr nocapture noundef readonly %11) unnamed_addr #6 {
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
  %23 = or disjoint i32 %13, 3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, ptr %1, i64 %24
  br label %26

26:                                               ; preds = %119, %12
  %27 = phi ptr [ %0, %12 ], [ %102, %119 ]
  %28 = phi i32 [ %2, %12 ], [ %120, %119 ]
  %29 = srem i32 %28, %14
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.kdnode, ptr %27, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !21
  %33 = icmp eq ptr %32, null
  br i1 %30, label %34, label %35

34:                                               ; preds = %26
  br i1 %33, label %51, label %49

35:                                               ; preds = %26
  br i1 %33, label %51, label %36

36:                                               ; preds = %35
  %37 = add nsw i32 %29, %13
  %38 = sext i32 %37 to i64
  %39 = getelementptr double, ptr %15, i64 %38
  %40 = load double, ptr %39, align 8, !tbaa !10
  %41 = fadd double %40, %8
  %42 = load i32, ptr %27, align 8, !tbaa !18
  %43 = mul nsw i32 %42, %10
  %44 = add nsw i32 %43, %29
  %45 = sext i32 %44 to i64
  %46 = getelementptr double, ptr %15, i64 %45
  %47 = load double, ptr %46, align 8, !tbaa !10
  %48 = fcmp ult double %41, %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %36, %34
  %50 = add nsw i32 %29, 1
  tail call fastcc void @searchkdtree(ptr noundef nonnull %32, ptr noundef %1, i32 noundef %50, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, double noundef %8, double noundef %9, i32 noundef %10, ptr noundef %11) #21
  br label %51

51:                                               ; preds = %34, %49, %36, %35
  %52 = load i32, ptr %27, align 8, !tbaa !18
  %53 = icmp eq i32 %52, %3
  br i1 %53, label %100, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr %17, align 4, !tbaa !12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = sext i32 %52 to i64
  %59 = getelementptr inbounds i32, ptr %11, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !12
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %100

62:                                               ; preds = %57, %54
  %63 = load double, ptr %19, align 8, !tbaa !10
  %64 = mul nsw i32 %52, %10
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, ptr %1, i64 %65
  %67 = load double, ptr %66, align 8, !tbaa !10
  %68 = fsub double %63, %67
  %69 = load double, ptr %20, align 8, !tbaa !10
  %70 = getelementptr double, ptr %66, i64 1
  %71 = load double, ptr %70, align 8, !tbaa !10
  %72 = fsub double %69, %71
  %73 = load double, ptr %21, align 8, !tbaa !10
  %74 = getelementptr double, ptr %66, i64 2
  %75 = load double, ptr %74, align 8, !tbaa !10
  %76 = fsub double %73, %75
  %77 = fmul double %72, %72
  %78 = tail call double @llvm.fmuladd.f64(double %68, double %68, double %77)
  %79 = tail call double @llvm.fmuladd.f64(double %76, double %76, double %78)
  br i1 %22, label %80, label %88

80:                                               ; preds = %62
  %81 = load double, ptr %25, align 8, !tbaa !10
  %82 = or disjoint i32 %64, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, ptr %1, i64 %83
  %85 = load double, ptr %84, align 8, !tbaa !10
  %86 = fsub double %81, %85
  %87 = tail call double @llvm.fmuladd.f64(double %86, double %86, double %79)
  br label %88

88:                                               ; preds = %80, %62
  %89 = phi double [ %87, %80 ], [ %79, %62 ]
  %90 = fcmp olt double %89, %9
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = icmp slt i32 %52, %3
  %93 = select i1 %92, ptr %4, ptr %5
  %94 = select i1 %92, ptr %6, ptr %7
  %95 = load i32, ptr %93, align 4, !tbaa !12
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %94, i64 %96
  store i32 %52, ptr %97, align 4, !tbaa !12
  %98 = load i32, ptr %93, align 4, !tbaa !12
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %93, align 4, !tbaa !12
  br label %100

100:                                              ; preds = %91, %88, %57, %51
  %101 = getelementptr inbounds %struct.kdnode, ptr %27, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !20
  %103 = icmp eq ptr %102, null
  br i1 %30, label %104, label %105

104:                                              ; preds = %100
  br i1 %103, label %121, label %119

105:                                              ; preds = %100
  br i1 %103, label %121, label %106

106:                                              ; preds = %105
  %107 = add nsw i32 %29, %13
  %108 = sext i32 %107 to i64
  %109 = getelementptr double, ptr %15, i64 %108
  %110 = load double, ptr %109, align 8, !tbaa !10
  %111 = fsub double %110, %8
  %112 = load i32, ptr %27, align 8, !tbaa !18
  %113 = mul nsw i32 %112, %10
  %114 = add nsw i32 %113, %29
  %115 = sext i32 %114 to i64
  %116 = getelementptr double, ptr %15, i64 %115
  %117 = load double, ptr %116, align 8, !tbaa !10
  %118 = fcmp olt double %111, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %106, %104
  %120 = add nsw i32 %29, 1
  br label %26

121:                                              ; preds = %104, %106, %105
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @heapsort_pairs(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %22

4:                                                ; preds = %2
  %5 = lshr i32 %1, 1
  br label %10

6:                                                ; preds = %10
  %7 = getelementptr i32, ptr %0, i64 -1
  br i1 %3, label %8, label %22

8:                                                ; preds = %6
  %9 = zext nneg i32 %1 to i64
  br label %14

10:                                               ; preds = %4, %10
  %11 = phi i32 [ %12, %10 ], [ %5, %4 ]
  tail call fastcc void @downheap_pairs(ptr noundef %0, i32 noundef %1, i32 noundef %11) #21
  %12 = add nsw i32 %11, -1
  %13 = icmp ugt i32 %11, 1
  br i1 %13, label %10, label %6, !llvm.loop !30

14:                                               ; preds = %8, %14
  %15 = phi i64 [ %9, %8 ], [ %19, %14 ]
  %16 = load i32, ptr %0, align 4, !tbaa !12
  %17 = getelementptr i32, ptr %7, i64 %15
  %18 = load i32, ptr %17, align 4, !tbaa !12
  store i32 %18, ptr %0, align 4, !tbaa !12
  store i32 %16, ptr %17, align 4, !tbaa !12
  %19 = add nsw i64 %15, -1
  %20 = trunc i64 %19 to i32
  tail call fastcc void @downheap_pairs(ptr noundef nonnull %0, i32 noundef %20, i32 noundef 1) #21
  %21 = icmp ugt i64 %15, 2
  br i1 %21, label %14, label %22, !llvm.loop !31

22:                                               ; preds = %14, %2, %6
  ret void
}

; Function Attrs: optsize
declare void @free_ivector(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @nblist.omp_outlined.omp.reduction.reduction_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load ptr, ptr %1, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = load i32, ptr %4, align 4, !tbaa !12
  %6 = load i32, ptr %3, align 4, !tbaa !12
  %7 = add nsw i32 %6, %5
  store i32 %7, ptr %4, align 4, !tbaa !12
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !callback !32 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @downheap_index(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 {
  %7 = sext i32 %2 to i64
  %8 = getelementptr i32, ptr %0, i64 %7
  %9 = getelementptr i32, ptr %8, i64 -1
  %10 = load i32, ptr %9, align 4, !tbaa !12
  %11 = sdiv i32 %1, 2
  %12 = getelementptr i32, ptr %0, i64 -1
  %13 = icmp slt i32 %11, %2
  br i1 %13, label %58, label %14

14:                                               ; preds = %6
  %15 = mul nsw i32 %10, %5
  %16 = add nsw i32 %15, %4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double, ptr %3, i64 %17
  %19 = load double, ptr %18, align 8, !tbaa !10
  br label %20

20:                                               ; preds = %14, %55
  %21 = phi i32 [ %2, %14 ], [ %44, %55 ]
  %22 = shl nsw i32 %21, 1
  %23 = icmp slt i32 %22, %1
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = sext i32 %22 to i64
  %26 = getelementptr i32, ptr %0, i64 %25
  %27 = getelementptr i32, ptr %26, i64 -1
  %28 = load i32, ptr %27, align 4, !tbaa !12
  %29 = mul nsw i32 %28, %5
  %30 = add nsw i32 %29, %4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %3, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !10
  %34 = load i32, ptr %26, align 4, !tbaa !12
  %35 = mul nsw i32 %34, %5
  %36 = add nsw i32 %35, %4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, ptr %3, i64 %37
  %39 = load double, ptr %38, align 8, !tbaa !10
  %40 = fcmp olt double %33, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %24
  %42 = or disjoint i32 %22, 1
  br label %43

43:                                               ; preds = %41, %24, %20
  %44 = phi i32 [ %42, %41 ], [ %22, %24 ], [ %22, %20 ]
  %45 = sext i32 %44 to i64
  %46 = getelementptr i32, ptr %12, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !12
  %48 = mul nsw i32 %47, %5
  %49 = add nsw i32 %48, %4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, ptr %3, i64 %50
  %52 = load double, ptr %51, align 8, !tbaa !10
  %53 = fcmp ult double %19, %52
  %54 = sext i32 %21 to i64
  br i1 %53, label %55, label %58

55:                                               ; preds = %43
  %56 = getelementptr i32, ptr %12, i64 %54
  store i32 %47, ptr %56, align 4, !tbaa !12
  %57 = icmp sgt i32 %44, %11
  br i1 %57, label %58, label %20, !llvm.loop !34

58:                                               ; preds = %55, %43, %6
  %59 = phi i64 [ %7, %6 ], [ %45, %55 ], [ %54, %43 ]
  %60 = getelementptr i32, ptr %0, i64 %59
  %61 = getelementptr i32, ptr %60, i64 -1
  store i32 %10, ptr %61, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @downheap_pairs(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr i32, ptr %0, i64 %4
  %6 = getelementptr i32, ptr %5, i64 -1
  %7 = load i32, ptr %6, align 4, !tbaa !12
  %8 = sdiv i32 %1, 2
  %9 = getelementptr i32, ptr %0, i64 -1
  %10 = icmp slt i32 %8, %2
  br i1 %10, label %34, label %11

11:                                               ; preds = %3, %31
  %12 = phi i32 [ %25, %31 ], [ %2, %3 ]
  %13 = shl nsw i32 %12, 1
  %14 = icmp slt i32 %13, %1
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = sext i32 %13 to i64
  %17 = getelementptr i32, ptr %0, i64 %16
  %18 = getelementptr i32, ptr %17, i64 -1
  %19 = load i32, ptr %18, align 4, !tbaa !12
  %20 = load i32, ptr %17, align 4, !tbaa !12
  %21 = icmp slt i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %13, %22
  br label %24

24:                                               ; preds = %15, %11
  %25 = phi i32 [ %13, %11 ], [ %23, %15 ]
  %26 = sext i32 %25 to i64
  %27 = getelementptr i32, ptr %9, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !12
  %29 = icmp slt i32 %7, %28
  %30 = sext i32 %12 to i64
  br i1 %29, label %31, label %34

31:                                               ; preds = %24
  %32 = getelementptr i32, ptr %9, i64 %30
  store i32 %28, ptr %32, align 4, !tbaa !12
  %33 = icmp sgt i32 %25, %8
  br i1 %33, label %34, label %11, !llvm.loop !35

34:                                               ; preds = %31, %24, %3
  %35 = phi i64 [ %4, %3 ], [ %26, %31 ], [ %30, %24 ]
  %36 = getelementptr i32, ptr %0, i64 %35
  %37 = getelementptr i32, ptr %36, i64 -1
  store i32 %7, ptr %37, align 4, !tbaa !12
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { convergent nounwind }
attributes #11 = { nounwind }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind optsize allocsize(0) }
attributes #19 = { cold }
attributes #20 = { noreturn nounwind optsize }
attributes #21 = { optsize }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = !{!19, !13, i64 0}
!19 = !{!"kdnode", !13, i64 0, !7, i64 8, !7, i64 16}
!20 = !{!19, !7, i64 8}
!21 = !{!19, !7, i64 16}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = !{!33}
!33 = !{i64 2, i64 -1, i64 -1, i1 true}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
