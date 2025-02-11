; ModuleID = 'ldecod_src/erc_do_i.c'
source_filename = "ldecod_src/erc_do_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ercVariables_s = type { i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32 }
%struct.frame_s = type { ptr, ptr, ptr, ptr }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @ercConcealIntraFrame(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %4, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ercVariables_s, ptr %4, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ercVariables_s, ptr %4, i64 0, i32 9
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = ashr i32 %3, 3
  %17 = ashr i32 %2, 3
  %18 = getelementptr inbounds %struct.ercVariables_s, ptr %4, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  tail call fastcc void @concealBlocks(ptr noundef %0, i32 noundef %17, i32 noundef %16, i32 noundef 0, ptr noundef %1, i32 noundef %2, ptr noundef %19) #6
  %20 = ashr i32 %3, 4
  %21 = ashr i32 %2, 4
  %22 = getelementptr inbounds %struct.ercVariables_s, ptr %4, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  tail call fastcc void @concealBlocks(ptr noundef %0, i32 noundef %21, i32 noundef %20, i32 noundef 1, ptr noundef %1, i32 noundef %2, ptr noundef %23) #6
  %24 = getelementptr inbounds %struct.ercVariables_s, ptr %4, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !14
  tail call fastcc void @concealBlocks(ptr noundef %0, i32 noundef %21, i32 noundef %20, i32 noundef 2, ptr noundef %1, i32 noundef %2, ptr noundef %25) #6
  br label %26

26:                                               ; preds = %5, %7, %11, %15
  %27 = phi i32 [ 1, %15 ], [ 1, %11 ], [ 0, %7 ], [ 0, %5 ]
  ret i32 %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @concealBlocks(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #0 {
  %8 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #7
  %9 = icmp eq i32 %3, 0
  %10 = select i1 %9, i32 2, i32 1
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %154

12:                                               ; preds = %7
  %13 = icmp sgt i32 %2, 0
  %14 = getelementptr inbounds %struct.frame_s, ptr %4, i64 0, i32 3
  %15 = ashr i32 %5, 1
  %16 = getelementptr inbounds %struct.frame_s, ptr %4, i64 0, i32 2
  %17 = getelementptr inbounds %struct.frame_s, ptr %4, i64 0, i32 1
  %18 = zext nneg i32 %10 to i64
  %19 = zext nneg i32 %1 to i64
  %20 = sext i32 %2 to i64
  %21 = getelementptr i8, ptr %6, i64 %19
  br label %22

22:                                               ; preds = %12, %151
  %23 = phi i64 [ 0, %12 ], [ %152, %151 ]
  br i1 %13, label %24, label %151

24:                                               ; preds = %22
  %25 = getelementptr i8, ptr %6, i64 %23
  %26 = getelementptr i8, ptr %6, i64 %23
  %27 = trunc i64 %23 to i32
  %28 = getelementptr i8, ptr %6, i64 %23
  %29 = trunc i64 %23 to i32
  %30 = getelementptr i8, ptr %6, i64 %23
  %31 = trunc i64 %23 to i32
  %32 = getelementptr i8, ptr %6, i64 %23
  br label %33

33:                                               ; preds = %24, %147
  %34 = phi i32 [ %149, %147 ], [ 0, %24 ]
  %35 = mul nsw i32 %34, %1
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, ptr %25, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !15
  %39 = icmp slt i8 %38, 2
  br i1 %39, label %40, label %147

40:                                               ; preds = %33
  %41 = sext i32 %34 to i64
  br label %42

42:                                               ; preds = %40, %48
  %43 = phi i64 [ %41, %40 ], [ %44, %48 ]
  %44 = add i64 %43, %18
  %45 = icmp slt i64 %44, %20
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = icmp slt i32 %34, %2
  br i1 %47, label %53, label %147

48:                                               ; preds = %42
  %49 = mul nsw i64 %44, %19
  %50 = getelementptr i8, ptr %26, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !15
  %52 = icmp sgt i8 %51, 1
  br i1 %52, label %76, label %42, !llvm.loop !16

53:                                               ; preds = %46, %72
  %54 = phi i64 [ %74, %72 ], [ %41, %46 ]
  %55 = trunc i64 %54 to i32
  %56 = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %8, i32 noundef %55, i32 noundef %27, ptr noundef %6, i32 noundef %2, i32 noundef %1, i32 noundef %10, i8 noundef zeroext 1) #6
  switch i32 %3, label %58 [
    i32 0, label %59
    i32 1, label %67
    i32 2, label %57
  ]

57:                                               ; preds = %53
  br label %67

58:                                               ; preds = %53, %113, %81
  unreachable

59:                                               ; preds = %53
  %60 = load ptr, ptr %17, align 8, !tbaa !18
  call void @ercPixConcealIMB(ptr noundef %0, ptr noundef %60, i32 noundef %55, i32 noundef %27, ptr noundef nonnull %8, i32 noundef %5, i32 noundef 2) #6
  %61 = mul nsw i64 %54, %19
  %62 = add nsw i64 %61, %23
  %63 = getelementptr inbounds i8, ptr %6, i64 %62
  store i8 2, ptr %63, align 1, !tbaa !15
  %64 = getelementptr i8, ptr %63, i64 1
  store i8 2, ptr %64, align 1, !tbaa !15
  %65 = getelementptr i8, ptr %21, i64 %62
  store i8 2, ptr %65, align 1, !tbaa !15
  %66 = getelementptr i8, ptr %65, i64 1
  br label %72

67:                                               ; preds = %53, %57
  %68 = phi ptr [ %14, %57 ], [ %16, %53 ]
  %69 = load ptr, ptr %68, align 8, !tbaa !20
  call void @ercPixConcealIMB(ptr noundef %0, ptr noundef %69, i32 noundef %55, i32 noundef %27, ptr noundef nonnull %8, i32 noundef %15, i32 noundef 1) #6
  %70 = mul nsw i64 %54, %19
  %71 = getelementptr i8, ptr %28, i64 %70
  br label %72

72:                                               ; preds = %59, %67
  %73 = phi ptr [ %66, %59 ], [ %71, %67 ]
  store i8 2, ptr %73, align 1, !tbaa !15
  %74 = add i64 %54, %18
  %75 = icmp slt i64 %74, %20
  br i1 %75, label %53, label %147, !llvm.loop !21

76:                                               ; preds = %48
  %77 = trunc i64 %43 to i32
  %78 = icmp eq i32 %34, 0
  br i1 %78, label %79, label %108

79:                                               ; preds = %76
  %80 = icmp sgt i32 %77, -1
  br i1 %80, label %81, label %106

81:                                               ; preds = %79, %102
  %82 = phi i32 [ %104, %102 ], [ %77, %79 ]
  %83 = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %8, i32 noundef %82, i32 noundef %31, ptr noundef nonnull %6, i32 noundef %2, i32 noundef %1, i32 noundef %10, i8 noundef zeroext 1) #6
  switch i32 %3, label %58 [
    i32 0, label %85
    i32 1, label %96
    i32 2, label %84
  ]

84:                                               ; preds = %81
  br label %96

85:                                               ; preds = %81
  %86 = load ptr, ptr %17, align 8, !tbaa !18
  call void @ercPixConcealIMB(ptr noundef %0, ptr noundef %86, i32 noundef %82, i32 noundef %31, ptr noundef nonnull %8, i32 noundef %5, i32 noundef 2) #6
  %87 = mul nsw i32 %82, %1
  %88 = add nsw i32 %87, %31
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %6, i64 %89
  store i8 2, ptr %90, align 1, !tbaa !15
  %91 = getelementptr i8, ptr %90, i64 1
  store i8 2, ptr %91, align 1, !tbaa !15
  %92 = add nsw i32 %88, %1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %6, i64 %93
  store i8 2, ptr %94, align 1, !tbaa !15
  %95 = getelementptr i8, ptr %94, i64 1
  br label %102

96:                                               ; preds = %81, %84
  %97 = phi ptr [ %14, %84 ], [ %16, %81 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !20
  call void @ercPixConcealIMB(ptr noundef %0, ptr noundef %98, i32 noundef %82, i32 noundef %31, ptr noundef nonnull %8, i32 noundef %15, i32 noundef 1) #6
  %99 = mul nsw i32 %82, %1
  %100 = sext i32 %99 to i64
  %101 = getelementptr i8, ptr %32, i64 %100
  br label %102

102:                                              ; preds = %85, %96
  %103 = phi ptr [ %95, %85 ], [ %101, %96 ]
  store i8 2, ptr %103, align 1, !tbaa !15
  %104 = sub nsw i32 %82, %10
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %81, label %106, !llvm.loop !22

106:                                              ; preds = %102, %79
  %107 = add nsw i32 %10, %77
  br label %147

108:                                              ; preds = %76
  %109 = add nsw i32 %10, %77
  %110 = sub i32 %10, %34
  %111 = add i32 %110, %77
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %147

113:                                              ; preds = %108, %143
  %114 = phi i32 [ %145, %143 ], [ 0, %108 ]
  %115 = phi i32 [ %122, %143 ], [ %34, %108 ]
  %116 = phi i32 [ %120, %143 ], [ %77, %108 ]
  %117 = and i32 %114, 1
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 0, i32 %10
  %120 = sub nsw i32 %116, %119
  %121 = select i1 %118, i32 %10, i32 0
  %122 = add nsw i32 %121, %115
  %123 = select i1 %118, i32 %115, i32 %116
  %124 = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %8, i32 noundef %123, i32 noundef %29, ptr noundef nonnull %6, i32 noundef %2, i32 noundef %1, i32 noundef %10, i8 noundef zeroext 1) #6
  switch i32 %3, label %58 [
    i32 0, label %126
    i32 1, label %137
    i32 2, label %125
  ]

125:                                              ; preds = %113
  br label %137

126:                                              ; preds = %113
  %127 = load ptr, ptr %17, align 8, !tbaa !18
  call void @ercPixConcealIMB(ptr noundef %0, ptr noundef %127, i32 noundef %123, i32 noundef %29, ptr noundef nonnull %8, i32 noundef %5, i32 noundef 2) #6
  %128 = mul nsw i32 %123, %1
  %129 = add nsw i32 %128, %29
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, ptr %6, i64 %130
  store i8 2, ptr %131, align 1, !tbaa !15
  %132 = getelementptr i8, ptr %131, i64 1
  store i8 2, ptr %132, align 1, !tbaa !15
  %133 = add nsw i32 %129, %1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, ptr %6, i64 %134
  store i8 2, ptr %135, align 1, !tbaa !15
  %136 = getelementptr i8, ptr %135, i64 1
  br label %143

137:                                              ; preds = %113, %125
  %138 = phi ptr [ %14, %125 ], [ %16, %113 ]
  %139 = load ptr, ptr %138, align 8, !tbaa !20
  call void @ercPixConcealIMB(ptr noundef %0, ptr noundef %139, i32 noundef %123, i32 noundef %29, ptr noundef nonnull %8, i32 noundef %15, i32 noundef 1) #6
  %140 = mul nsw i32 %123, %1
  %141 = sext i32 %140 to i64
  %142 = getelementptr i8, ptr %30, i64 %141
  br label %143

143:                                              ; preds = %126, %137
  %144 = phi ptr [ %136, %126 ], [ %142, %137 ]
  store i8 2, ptr %144, align 1, !tbaa !15
  %145 = add nuw nsw i32 %114, %10
  %146 = icmp slt i32 %145, %111
  br i1 %146, label %113, label %147, !llvm.loop !23

147:                                              ; preds = %72, %143, %46, %108, %106, %33
  %148 = phi i32 [ %34, %33 ], [ %107, %106 ], [ %109, %108 ], [ %2, %46 ], [ %109, %143 ], [ %2, %72 ]
  %149 = add nsw i32 %148, %10
  %150 = icmp slt i32 %149, %2
  br i1 %150, label %33, label %151, !llvm.loop !24

151:                                              ; preds = %147, %22
  %152 = add i64 %23, %18
  %153 = icmp slt i64 %152, %19
  br i1 %153, label %22, label %154, !llvm.loop !25

154:                                              ; preds = %151, %7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercPixConcealIMB(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
  %8 = alloca [8 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  %9 = load i32, ptr %4, align 4, !tbaa !26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = sub nsw i32 %2, %6
  %13 = shl i32 %5, 3
  %14 = mul i32 %13, %12
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr %1, i64 %15
  %17 = add nsw i32 %6, %3
  %18 = shl nsw i32 %17, 3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, ptr %16, i64 %19
  store ptr %20, ptr %8, align 16, !tbaa !20
  br label %21

21:                                               ; preds = %11, %7
  %22 = getelementptr inbounds i32, ptr %4, i64 1
  %23 = load i32, ptr %22, align 4, !tbaa !26
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = sub nsw i32 %2, %6
  %27 = shl i32 %5, 3
  %28 = mul i32 %27, %26
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, ptr %1, i64 %29
  %31 = sub nsw i32 %3, %6
  %32 = shl nsw i32 %31, 3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, ptr %30, i64 %33
  %35 = getelementptr inbounds [8 x ptr], ptr %8, i64 0, i64 1
  store ptr %34, ptr %35, align 8, !tbaa !20
  br label %36

36:                                               ; preds = %25, %21
  %37 = getelementptr inbounds i32, ptr %4, i64 2
  %38 = load i32, ptr %37, align 4, !tbaa !26
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %36
  %41 = add nsw i32 %6, %2
  %42 = shl i32 %5, 3
  %43 = mul i32 %42, %41
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, ptr %1, i64 %44
  %46 = sub nsw i32 %3, %6
  %47 = shl nsw i32 %46, 3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i16, ptr %45, i64 %48
  %50 = getelementptr inbounds [8 x ptr], ptr %8, i64 0, i64 2
  store ptr %49, ptr %50, align 16, !tbaa !20
  br label %51

51:                                               ; preds = %40, %36
  %52 = getelementptr inbounds i32, ptr %4, i64 3
  %53 = load i32, ptr %52, align 4, !tbaa !26
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %51
  %56 = add nsw i32 %6, %2
  %57 = shl i32 %5, 3
  %58 = mul i32 %57, %56
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16, ptr %1, i64 %59
  %61 = add nsw i32 %6, %3
  %62 = shl nsw i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16, ptr %60, i64 %63
  %65 = getelementptr inbounds [8 x ptr], ptr %8, i64 0, i64 3
  store ptr %64, ptr %65, align 8, !tbaa !20
  br label %66

66:                                               ; preds = %55, %51
  %67 = getelementptr inbounds i32, ptr %4, i64 4
  %68 = load i32, ptr %67, align 4, !tbaa !26
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %66
  %71 = sub nsw i32 %2, %6
  %72 = shl i32 %5, 3
  %73 = mul i32 %72, %71
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i16, ptr %1, i64 %74
  %76 = shl nsw i32 %3, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i16, ptr %75, i64 %77
  %79 = getelementptr inbounds [8 x ptr], ptr %8, i64 0, i64 4
  store ptr %78, ptr %79, align 16, !tbaa !20
  br label %80

80:                                               ; preds = %70, %66
  %81 = getelementptr inbounds i32, ptr %4, i64 5
  %82 = load i32, ptr %81, align 4, !tbaa !26
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %80
  %85 = mul nsw i32 %5, %2
  %86 = shl nsw i32 %85, 3
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i16, ptr %1, i64 %87
  %89 = sub nsw i32 %3, %6
  %90 = shl nsw i32 %89, 3
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i16, ptr %88, i64 %91
  %93 = getelementptr inbounds [8 x ptr], ptr %8, i64 0, i64 5
  store ptr %92, ptr %93, align 8, !tbaa !20
  br label %94

94:                                               ; preds = %84, %80
  %95 = getelementptr inbounds i32, ptr %4, i64 6
  %96 = load i32, ptr %95, align 4, !tbaa !26
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %94
  %99 = add nsw i32 %6, %2
  %100 = shl i32 %5, 3
  %101 = mul i32 %100, %99
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i16, ptr %1, i64 %102
  %104 = shl nsw i32 %3, 3
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i16, ptr %103, i64 %105
  %107 = getelementptr inbounds [8 x ptr], ptr %8, i64 0, i64 6
  store ptr %106, ptr %107, align 16, !tbaa !20
  br label %108

108:                                              ; preds = %98, %94
  %109 = getelementptr inbounds i32, ptr %4, i64 7
  %110 = load i32, ptr %109, align 4, !tbaa !26
  %111 = icmp eq i32 %110, 0
  %112 = mul nsw i32 %5, %2
  %113 = shl nsw i32 %112, 3
  %114 = sext i32 %113 to i64
  br i1 %111, label %122, label %115

115:                                              ; preds = %108
  %116 = getelementptr inbounds i16, ptr %1, i64 %114
  %117 = add nsw i32 %6, %3
  %118 = shl nsw i32 %117, 3
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i16, ptr %116, i64 %119
  %121 = getelementptr inbounds [8 x ptr], ptr %8, i64 0, i64 7
  store ptr %120, ptr %121, align 8, !tbaa !20
  br label %122

122:                                              ; preds = %108, %115
  %123 = getelementptr inbounds i16, ptr %1, i64 %114
  %124 = shl nsw i32 %3, 3
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i16, ptr %123, i64 %125
  %127 = shl nsw i32 %6, 3
  call fastcc void @pixMeanInterpolateBlock(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %126, i32 noundef %127, i32 noundef %5) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pixMeanInterpolateBlock(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %99

7:                                                ; preds = %5
  %8 = add nsw i32 %3, -1
  %9 = getelementptr inbounds ptr, ptr %1, i64 4
  %10 = mul nsw i32 %8, %4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %1, i64 5
  %13 = zext nneg i32 %8 to i64
  %14 = getelementptr inbounds ptr, ptr %1, i64 6
  %15 = getelementptr inbounds ptr, ptr %1, i64 7
  %16 = icmp eq i32 %3, 8
  %17 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69, i64 1
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69
  %19 = select i1 %16, ptr %17, ptr %18
  %20 = sext i32 %4 to i64
  %21 = zext nneg i32 %3 to i64
  %22 = load ptr, ptr %9, align 8, !tbaa !20
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds i16, ptr %22, i64 %11
  %25 = load ptr, ptr %12, align 8, !tbaa !20
  %26 = icmp eq ptr %25, null
  %27 = getelementptr i16, ptr %25, i64 %13
  %28 = load ptr, ptr %14, align 8, !tbaa !20
  %29 = icmp eq ptr %28, null
  %30 = load ptr, ptr %15, align 8, !tbaa !20
  %31 = icmp eq ptr %30, null
  br label %32

32:                                               ; preds = %96, %7
  %33 = phi i64 [ 0, %7 ], [ %97, %96 ]
  %34 = phi i64 [ 0, %7 ], [ %37, %96 ]
  %35 = mul nsw i64 %34, %20
  %36 = getelementptr i16, ptr %27, i64 %35
  %37 = add nuw nsw i64 %34, 1
  %38 = getelementptr inbounds i16, ptr %30, i64 %35
  %39 = trunc i64 %34 to i32
  %40 = sub i32 %3, %39
  %41 = trunc i64 %37 to i32
  %42 = getelementptr i16, ptr %2, i64 %33
  br label %43

43:                                               ; preds = %32, %90
  %44 = phi i64 [ 0, %32 ], [ %94, %90 ]
  br i1 %23, label %50, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds i16, ptr %24, i64 %44
  %47 = load i16, ptr %46, align 2, !tbaa !27
  %48 = zext i16 %47 to i32
  %49 = mul nsw i32 %40, %48
  br label %50

50:                                               ; preds = %45, %43
  %51 = phi i32 [ %49, %45 ], [ 0, %43 ]
  %52 = phi i32 [ %40, %45 ], [ 0, %43 ]
  br i1 %26, label %61, label %53

53:                                               ; preds = %50
  %54 = load i16, ptr %36, align 2, !tbaa !27
  %55 = zext i16 %54 to i32
  %56 = trunc i64 %44 to i32
  %57 = sub i32 %3, %56
  %58 = mul nsw i32 %57, %55
  %59 = add nsw i32 %58, %51
  %60 = add nsw i32 %52, %57
  br label %61

61:                                               ; preds = %53, %50
  %62 = phi i32 [ %59, %53 ], [ %51, %50 ]
  %63 = phi i32 [ %60, %53 ], [ %52, %50 ]
  br i1 %29, label %71, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds i16, ptr %28, i64 %44
  %66 = load i16, ptr %65, align 2, !tbaa !27
  %67 = zext i16 %66 to i32
  %68 = mul nsw i32 %41, %67
  %69 = add nsw i32 %68, %62
  %70 = add nsw i32 %63, %41
  br label %71

71:                                               ; preds = %64, %61
  %72 = phi i32 [ %69, %64 ], [ %62, %61 ]
  %73 = phi i32 [ %70, %64 ], [ %63, %61 ]
  br i1 %31, label %82, label %74

74:                                               ; preds = %71
  %75 = load i16, ptr %38, align 2, !tbaa !27
  %76 = zext i16 %75 to i32
  %77 = trunc i64 %44 to i32
  %78 = add i32 %77, 1
  %79 = mul nsw i32 %78, %76
  %80 = add nsw i32 %79, %72
  %81 = add nsw i32 %73, %78
  br label %82

82:                                               ; preds = %74, %71
  %83 = phi i32 [ %80, %74 ], [ %72, %71 ]
  %84 = phi i32 [ %81, %74 ], [ %73, %71 ]
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = sdiv i32 %83, %84
  br label %90

88:                                               ; preds = %82
  %89 = load i32, ptr %19, align 4, !tbaa !26
  br label %90

90:                                               ; preds = %86, %88
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = trunc i32 %91 to i16
  %93 = getelementptr i16, ptr %42, i64 %44
  store i16 %92, ptr %93, align 2, !tbaa !27
  %94 = add nuw nsw i64 %44, 1
  %95 = icmp eq i64 %94, %21
  br i1 %95, label %96, label %43, !llvm.loop !29

96:                                               ; preds = %90
  %97 = add i64 %33, %20
  %98 = icmp eq i64 %37, %21
  br i1 %98, label %99, label %32, !llvm.loop !30

99:                                               ; preds = %96, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local i32 @ercCollect8PredBlocks(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) local_unnamed_addr #4 {
  %9 = icmp eq i8 %7, 0
  %10 = select i1 %9, i32 4, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %11 = icmp sgt i32 %1, 0
  %12 = sub nsw i32 %4, %6
  %13 = icmp sgt i32 %12, %1
  %14 = icmp sgt i32 %2, 0
  %15 = getelementptr i8, ptr %3, i64 -1
  %16 = sub nsw i32 %5, %6
  %17 = icmp sgt i32 %16, %2
  %18 = add nsw i32 %1, -1
  %19 = mul nsw i32 %18, %5
  %20 = add nsw i32 %19, %2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %3, i64 %21
  %23 = getelementptr inbounds i32, ptr %0, i64 4
  %24 = add nsw i32 %6, %1
  %25 = mul nsw i32 %24, %5
  %26 = add nsw i32 %25, %2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %3, i64 %27
  %29 = getelementptr inbounds i32, ptr %0, i64 6
  %30 = mul nsw i32 %5, %1
  %31 = add nsw i32 %30, %2
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, ptr %15, i64 %32
  %34 = getelementptr inbounds i32, ptr %0, i64 5
  %35 = getelementptr i8, ptr %15, i64 %21
  %36 = getelementptr inbounds i32, ptr %0, i64 1
  %37 = getelementptr i8, ptr %15, i64 %27
  %38 = getelementptr inbounds i32, ptr %0, i64 2
  %39 = add nsw i32 %31, %6
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %3, i64 %40
  %42 = getelementptr inbounds i32, ptr %0, i64 7
  %43 = add nsw i32 %20, %6
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %3, i64 %44
  %46 = add i32 %6, %2
  %47 = add i32 %46, %25
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %3, i64 %48
  %50 = getelementptr inbounds i32, ptr %0, i64 3
  br label %51

51:                                               ; preds = %117, %8
  %52 = phi i1 [ true, %8 ], [ false, %117 ]
  %53 = phi i32 [ 3, %8 ], [ 2, %117 ]
  br i1 %11, label %54, label %59

54:                                               ; preds = %51
  %55 = load i8, ptr %22, align 1, !tbaa !15
  %56 = sext i8 %55 to i32
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i32 %56, ptr %23, align 4, !tbaa !26
  br label %59

59:                                               ; preds = %58, %54, %51
  %60 = phi i32 [ 1, %58 ], [ 0, %54 ], [ 0, %51 ]
  br i1 %13, label %61, label %67

61:                                               ; preds = %59
  %62 = load i8, ptr %28, align 1, !tbaa !15
  %63 = sext i8 %62 to i32
  %64 = icmp sgt i32 %53, %63
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  store i32 %63, ptr %29, align 4, !tbaa !26
  %66 = add nuw nsw i32 %60, 1
  br label %67

67:                                               ; preds = %65, %61, %59
  %68 = phi i32 [ %66, %65 ], [ %60, %61 ], [ %60, %59 ]
  br i1 %14, label %69, label %92

69:                                               ; preds = %67
  %70 = load i8, ptr %33, align 1, !tbaa !15
  %71 = sext i8 %70 to i32
  %72 = icmp sgt i32 %53, %71
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  store i32 %71, ptr %34, align 4, !tbaa !26
  %74 = add nuw nsw i32 %68, 1
  br label %75

75:                                               ; preds = %73, %69
  %76 = phi i32 [ %74, %73 ], [ %68, %69 ]
  br i1 %9, label %77, label %92

77:                                               ; preds = %75
  br i1 %11, label %78, label %84

78:                                               ; preds = %77
  %79 = load i8, ptr %35, align 1, !tbaa !15
  %80 = sext i8 %79 to i32
  %81 = icmp sgt i32 %53, %80
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  store i32 %80, ptr %36, align 4, !tbaa !26
  %83 = add nuw nsw i32 %76, 1
  br label %84

84:                                               ; preds = %82, %78, %77
  %85 = phi i32 [ %83, %82 ], [ %76, %78 ], [ %76, %77 ]
  br i1 %13, label %86, label %92

86:                                               ; preds = %84
  %87 = load i8, ptr %37, align 1, !tbaa !15
  %88 = sext i8 %87 to i32
  %89 = icmp sgt i32 %53, %88
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  store i32 %88, ptr %38, align 4, !tbaa !26
  %91 = add nuw nsw i32 %85, 1
  br label %92

92:                                               ; preds = %75, %90, %86, %84, %67
  %93 = phi i32 [ %76, %75 ], [ %91, %90 ], [ %85, %86 ], [ %85, %84 ], [ %68, %67 ]
  br i1 %17, label %94, label %117

94:                                               ; preds = %92
  %95 = load i8, ptr %41, align 1, !tbaa !15
  %96 = sext i8 %95 to i32
  %97 = icmp sgt i32 %53, %96
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  store i32 %96, ptr %42, align 4, !tbaa !26
  %99 = add nuw nsw i32 %93, 1
  br label %100

100:                                              ; preds = %98, %94
  %101 = phi i32 [ %99, %98 ], [ %93, %94 ]
  br i1 %9, label %102, label %117

102:                                              ; preds = %100
  br i1 %11, label %103, label %109

103:                                              ; preds = %102
  %104 = load i8, ptr %45, align 1, !tbaa !15
  %105 = sext i8 %104 to i32
  %106 = icmp sgt i32 %53, %105
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  store i32 %105, ptr %0, align 4, !tbaa !26
  %108 = add nuw nsw i32 %101, 1
  br label %109

109:                                              ; preds = %107, %103, %102
  %110 = phi i32 [ %108, %107 ], [ %101, %103 ], [ %101, %102 ]
  br i1 %13, label %111, label %117

111:                                              ; preds = %109
  %112 = load i8, ptr %49, align 1, !tbaa !15
  %113 = sext i8 %112 to i32
  %114 = icmp sgt i32 %53, %113
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  store i32 %113, ptr %50, align 4, !tbaa !26
  %116 = add nuw nsw i32 %110, 1
  br label %117

117:                                              ; preds = %100, %115, %111, %109, %92
  %118 = phi i32 [ %101, %100 ], [ %116, %115 ], [ %110, %111 ], [ %110, %109 ], [ %93, %92 ]
  %119 = icmp ult i32 %118, %10
  %120 = select i1 %52, i1 %119, i1 false
  br i1 %120, label %51, label %121, !llvm.loop !31

121:                                              ; preds = %117
  ret i32 %118
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @ercCollectColumnBlocks(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %8 = add nsw i32 %1, -1
  %9 = mul nsw i32 %8, %5
  %10 = add nsw i32 %9, %2
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %3, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !15
  %14 = icmp sgt i8 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = getelementptr inbounds i32, ptr %0, i64 4
  store i32 1, ptr %16, align 4, !tbaa !26
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi i32 [ 1, %15 ], [ 0, %7 ]
  %19 = add nsw i32 %6, %1
  %20 = mul nsw i32 %19, %5
  %21 = add nsw i32 %20, %2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %3, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !15
  %25 = icmp sgt i8 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = getelementptr inbounds i32, ptr %0, i64 6
  store i32 1, ptr %27, align 4, !tbaa !26
  %28 = add nuw nsw i32 %18, 1
  br label %29

29:                                               ; preds = %26, %17
  %30 = phi i32 [ %28, %26 ], [ %18, %17 ]
  ret i32 %30
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 64}
!6 = !{!"ercVariables_s", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !10, i64 48, !7, i64 56, !7, i64 60, !7, i64 64}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !7, i64 60}
!12 = !{!6, !10, i64 8}
!13 = !{!6, !10, i64 16}
!14 = !{!6, !10, i64 24}
!15 = !{!8, !8, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!19, !10, i64 8}
!19 = !{!"frame_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!20 = !{!10, !10, i64 0}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = !{!7, !7, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !8, i64 0}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
